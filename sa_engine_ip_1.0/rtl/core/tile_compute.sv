//----------------------------------------------------------------+
// Project: Capstone Design
// Module : tile_compute (SystemVerilog module)
// Description:
//   Option A accumulator scheme for one 8x8 tile:
//   - Segments K in chunks of T(=TILE_SIZE) and accumulates across segments.
//   - First segment only: acc_clr=1 to clear PE accumulators.
//   - After final segment: issues single c_drain_req to stream out C tile.
//   - Expects loader to 0-pad A/B when k_eff<T and to honor n_eff/m_eff masks.
//
// Notes:
//   - This is a control skeleton; it does not include the actual pe_array instance.
//   - Hook start_pe/acc_clr/c_drain_req to pe_array_8x8; route c_* to tile_store.
//   - Integrate with tile_loader via load_req/k_eff/ld_done.
//
// Last Updated: 2025-11-11 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

module tile_compute #(
  parameter int TILE_SIZE = 8,
  parameter int ACC_BITS  = 32
)(
  input  logic                    clk,
  input  logic                    rstn,

  // Tile meta/control
  input  logic                    start_tile,
  input  logic [15:0]             k_total,      // total K for this tile
  input  logic [3:0]              n_eff,        // 1..TILE_SIZE
  input  logic [3:0]              m_eff,        // 1..TILE_SIZE

  // Loader handshake
  output logic                    load_req,
  output logic [3:0]              k_eff,        // min(T, k_rem)
  input  logic                    ld_done,

  // PE control (connect to pe_array_8x8)
  output logic                    start_pe,
  output logic                    acc_clr,
  input  logic                    pe_done,

  // Drain/store
  output logic                    c_drain_req,
  output logic [6:0]              drain_limit,  // n_eff*m_eff (<=64)

  // Status
  output logic                    busy,
  output logic                    tile_done
);

  // ---------------------------------------------------------------------------
  // State / counters
  // ---------------------------------------------------------------------------
  typedef enum logic [2:0] {
    S_IDLE, S_PREP, S_LOAD, S_RUN, S_WAIT, S_DRAIN, S_DONE
  } state_e;

  state_e st, st_n;
  logic [15:0] k_rem;
  logic [15:0] k_rem_n;
  logic        first_seg;
  logic        first_seg_n;

  // combinational default outputs
  always_comb begin
    st_n         = st;
    k_rem_n      = k_rem;
    first_seg_n  = first_seg;
    // outs
    load_req     = 1'b0;
    k_eff        = '0;
    start_pe     = 1'b0;
    acc_clr      = 1'b0;
    c_drain_req  = 1'b0;
    tile_done    = 1'b0;

    case (st)
      // Idle state: wait for start_tile signal
      S_IDLE: begin
        if (start_tile) begin
          st_n        = S_PREP;
        end
      end

      // Prepare state: compute next k_eff
      S_PREP: begin
        // compute next k_eff
        if (k_rem == 0) begin
          st_n = S_DRAIN;
        end else begin
          k_eff = (k_rem >= TILE_SIZE) ? TILE_SIZE[3:0] : k_rem[3:0];
          st_n  = S_LOAD;
        end
      end

      // Load state: request loader fill for next segment
      S_LOAD: begin
        // request loader fill for next segment
        load_req = 1'b1;
        k_eff    = (k_rem >= TILE_SIZE) ? TILE_SIZE[3:0] : k_rem[3:0];
        if (ld_done) begin
          st_n = S_RUN;
        end
      end

      // Run state: start PE for this segment; clear only on first segment
      S_RUN: begin
        // start PE for this segment; clear only on first segment
        start_pe = 1'b1;
        acc_clr  = first_seg;
        st_n     = S_WAIT;
      end

      // Wait state: wait for PE to finish
      S_WAIT: begin
        if (pe_done) begin
          // segment finished
          k_rem_n     = k_rem - ((k_rem >= TILE_SIZE) ? TILE_SIZE : k_rem);
          first_seg_n = 1'b0;
          st_n        = (k_rem_n == 0) ? S_DRAIN : S_PREP;
        end
      end

      // Drain state: drain the result
      S_DRAIN: begin
        c_drain_req = 1'b1; // single-cycle pulse
        st_n        = S_DONE;
      end

      // Done state: tile is done
      S_DONE: begin
        tile_done   = 1'b1;
        st_n        = S_IDLE;
      end
    endcase
  end

  // registers
  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      st        <= S_IDLE;
      k_rem     <= '0;
      first_seg <= 1'b0;
      busy      <= 1'b0;
    end else begin
      st    <= st_n;
      k_rem <= k_rem_n;
      first_seg <= first_seg_n;

      case (st)
        S_IDLE: begin
          if (start_tile) begin
            k_rem     <= k_total;
            first_seg <= 1'b1;
            busy      <= 1'b1;  // accept start and latch busy high
          end else begin
            busy      <= 1'b0;  // idle when no start
          end
        end
        S_DONE: begin
          // keep busy high through DONE; it will drop next cycle in IDLE
          busy <= 1'b1;
        end
        default: begin
          // PREP/LOAD/RUN/WAIT/DRAIN: busy stays high
          busy <= 1'b1;
        end
      endcase
    end
  end

  // drain_limit is constant per tile
  assign drain_limit = n_eff * m_eff; // <= 64 when TILE_SIZE=8

endmodule
