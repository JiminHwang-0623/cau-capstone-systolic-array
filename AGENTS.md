# Repository Guidelines

Contributors should treat this repository as the single source of truth for the systolic accelerator IP and its Vivado integration artifacts.

## Project Structure & Module Organization
- `sa_engine_ip_1.0/hdl` houses the synthesizable RTL for the accelerator pipeline, DMA, and systolic array; update the mirrored simulation sources in `sa_engine_ip_1.0/src` whenever you touch these blocks so regressions stay aligned.
- AXI BFM bring-up lives under `sa_engine_ip_1.0/example_designs/bfm_design`, while hardware debug scripts and bitstream packaging reside in `sa_engine_ip_1.0/example_designs/debug_hw_design`.
- Treat everything beneath `capstone_design_final.srcs` and `capstone_design_final.runs` as Vivado-generated; inspect log or DCP outputs there, but never hand-edit them.

## Build, Test, and Development Commands
- `vivado capstone_design_final.xpr` launches the GUI for block-diagram edits, IP repackaging, or timing review.
- `vivado -mode batch -source sa_engine_ip_1.0/example_designs/bfm_design/design.tcl` regenerates the behavioral xsim project and executes the AXI BFM regression.
- `vivado -mode batch -source sa_engine_ip_1.0/example_designs/debug_hw_design/design.tcl` rebuilds the PYNQ-Z2 harness and emits the latest hardware bitstream.

## Coding Style & Naming Conventions
- Author SystemVerilog with `logic` types, `always_ff`/`always_comb`, and two-space indentation; align port lists and keep AXI channels grouped.
- Name modules, files, and signals in `lower_snake_case`, reserve parameters for `UPPER_SNAKE_CASE`, and refresh `component.xml` metadata when interface ports change.

## Testing Guidelines
- Drive functional coverage through `sa_engine_ip_v1_0_tb.sv`; run it via the BFM batch flow above and review waveforms in `capstone_design_final.sim/sim_1/behav`.
- For targeted checks, add `<module>_tb.sv` benches under `sa_engine_ip_1.0/example_designs` and focus on DMA burst alignment plus systolic datapath handshakes.
- Do not request hardware time until xsim logs are clean and coverage goals on AXI transfers are met.

## Commit & Pull Request Guidelines
- Write commits in ≤72-character, present-tense imperatives (e.g., `Fix DMA burst alignment`), elaborating in the body on timing-critical deltas or Vivado run IDs.
- Pull requests must summarize verification evidence (xsim logs, relevant waveform captures), note register-map or driver changes, and tag the board owner for hardware validation before merge.
