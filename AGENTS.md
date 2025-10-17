# Repository Guidelines

## Project Structure & Module Organization
- `sa_engine_ip_1.0/hdl` houses synthesizable SystemVerilog (pipeline, DMA, systolic array); mirror copies under `src` for simulation include.
- `sa_engine_ip_1.0/example_designs/bfm_design` provides TCL + testbench to exercise AXI interfaces; `debug_hw_design` contains board bring-up scripts.
- Generated Vivado artifacts live under `capstone_design_final.srcs` (block design) and `capstone_design_final.runs` (synthesis/implementation logs); avoid editing by hand.

## Build, Test, and Development Commands
- `vivado capstone_design_final.xpr` opens the full project in the GUI; use for block-design edits or IP packaging.
- `vivado -mode batch -source sa_engine_ip_1.0/example_designs/bfm_design/design.tcl` regenerates the simulation project and launches behavioral xsim; rerun after HDL changes.
- `vivado -mode batch -source sa_engine_ip_1.0/example_designs/debug_hw_design/design.tcl` builds the hardware test harness used on PYNQ-Z2; review generated bitstream in `capstone_design_final.runs`.

## Coding Style & Naming Conventions
- Modules, files, and internal signals follow `lower_snake_case` (e.g., `sa_core_pipeline`); keep parameter constants `UPPER_SNAKE_CASE`.
- Indent SystemVerilog with two spaces, align port lists, and group interface signals by AXI channel; prefer `logic` + `always_ff/always_comb`.
- Document non-obvious FSMs with header banners similar to existing comment blocks; update `component.xml` metadata when public ports change.

## Testing Guidelines
- Primary regression is the SystemVerilog testbench `sa_engine_ip_v1_0_tb.sv`; run through the BFM design flow above.
- Add focused module tests under `sa_engine_ip_1.0/example_designs` and keep filenames `<module>_tb.sv`.
- Target 100% functional coverage on DMA and systolic datapath handshake states; capture waveforms in `capstone_design_final.sim/sim_1/behav` and attach key screenshots to reviews.

## Commit & Pull Request Guidelines
- Commit titles should be ≤72 chars, present-tense imperatives (e.g., `Fix DMA burst alignment`); elaborate in the body when touching timing-critical logic.
- Reference related Vivado run IDs or Jira issues (`JIRA-123`) in the body; include `Co-authored-by:` trailers for joint debugging sessions.
- Pull requests must summarize verification evidence (xsim log link, waveform captures) and note any register map or driver changes; request hardware validation from the board owner before merge.
