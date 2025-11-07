//----------------------------------------------------------------+
// Project: Capstone Design
// Module : dma_read_stub (SystemVerilog testbench)
// Description:
//   Simple DMA Read stub for unit tests.
//   - Accepts one burst command per rd_start_dma pulse
//   - Emits rd_data_vld for 'rd_num_trans' cycles with a simple data pattern
//   - Asserts rd_done for one cycle after the last beat
//
// Last Updated: 2025-11-07 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

module dma_read_stub #(
  parameter int ADDR_W = 32,
  parameter int DATA_W = 32
)(
  input  logic                 clk,
  input  logic                 rstn,

  // Command in
  input  logic                 rd_start_dma,
  input  logic [ADDR_W-1:0]    rd_start_addr,
  input  logic [7:0]           rd_num_trans,
  output logic                 rd_done,

  // Data out
  output logic [DATA_W-1:0]    rd_data,
  output logic                 rd_data_vld
);

  logic              inflight;
  logic [7:0]        beats_left;
  logic [ADDR_W-1:0] base_latch;
  logic [7:0]        beat_idx;

  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      inflight     <= 1'b0;
      beats_left   <= '0;
      base_latch   <= '0;
      beat_idx     <= '0;
      rd_data      <= '0;
      rd_data_vld  <= 1'b0;
      rd_done      <= 1'b0;
    end else begin
      rd_data_vld <= 1'b0;
      rd_done     <= 1'b0;

      if (!inflight) begin
        if (rd_start_dma) begin
          inflight   <= 1'b1;
          beats_left <= rd_num_trans;
          base_latch <= rd_start_addr;
          beat_idx   <= 8'd0;
        end
      end else begin
        // produce one beat per cycle
        rd_data     <= base_latch + beat_idx;
        rd_data_vld <= 1'b1;
        beat_idx    <= beat_idx + 1'b1;

        if (beats_left == 8'd1) begin
          inflight    <= 1'b0;
          rd_done     <= 1'b1;
          beats_left  <= 8'd0;
        end else begin
          beats_left  <= beats_left - 1'b1;
        end
      end
    end
  end

endmodule

