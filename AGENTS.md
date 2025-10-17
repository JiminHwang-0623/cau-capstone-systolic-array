# Repository Guidelines

## Project Structure & Module Organization
The IP source lives in `sa_engine_ip_1.0/hdl`, with simulation mirrors under `sa_engine_ip_1.0/src`; keep both copies in sync when touching pipeline, DMA, or systolic array RTL. Drive AXI-based bring-up through `sa_engine_ip_1.0/example_designs/bfm_design`, while hardware validation scripts sit in `sa_engine_ip_1.0/example_designs/debug_hw_design`. Treat everything under `capstone_design_final.srcs` and `capstone_design_final.runs` as generated Vivado artifacts—inspect outputs there, but never hand-edit.

## Build, Test, and Development Commands
- `vivado capstone_design_final.xpr` — launch the full project GUI for block design edits or IP repackaging.
- `vivado -mode batch -source sa_engine_ip_1.0/example_designs/bfm_design/design.tcl` — regenerate the behavioral xsim project and run the AXI BFM regression.
- `vivado -mode batch -source sa_engine_ip_1.0/example_designs/debug_hw_design/design.tcl` — rebuild the PYNQ-Z2 hardware harness and emit the latest bitstream.

## Coding Style & Naming Conventions
Use SystemVerilog `logic` with `always_ff`/`always_comb`, two-space indentation, and aligned port lists. Name modules, files, and internal signals in `lower_snake_case`; reserve parameters for `UPPER_SNAKE_CASE`. Group AXI ports by channel and refresh `component.xml` metadata whenever public interfaces change.

## Testing Guidelines
Primary verification runs through `sa_engine_ip_v1_0_tb.sv`; invoke it via the BFM batch flow above and review generated waveforms in `capstone_design_final.sim/sim_1/behav`. Add focused module benches under `sa_engine_ip_1.0/example_designs` using the `<module>_tb.sv` naming pattern. Target full functional coverage on DMA bursts and systolic datapath handshakes before requesting hardware time.

## Commit & Pull Request Guidelines
Write commits in ≤72-character, present-tense imperatives (e.g., `Fix DMA burst alignment`), elaborating in the body on timing-critical changes and referencing Vivado run IDs or Jira tickets. Pull requests must summarize verification evidence (xsim logs, waveform captures), call out register map or driver deltas, and tag the board owner for hardware validation before merge.
