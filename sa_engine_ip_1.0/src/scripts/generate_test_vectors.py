"""
Systolic Array Test Vector Generator
=====================================
8x8 UINT8 Matrix Multiplication Test Data Generator

Generates test vectors in multiple formats:
- Option 3: matrix_A_B.hex (combined A+B, 2 bytes per line) - for initial simulation
- Option 1: matrix_a.hex, matrix_b.hex (separated, 2 bytes per line)
- Option 2: matrix_a.mem, matrix_b.mem (separated, 1 byte per line) - final goal
- Common: golden_result.hex (UINT32 results; unsigned*unsigned, int32-accumulate equivalent)

Author: Jimin Hwang
Date: 2025-11-03
"""

import numpy as np
import os

# ------------------------------------------------------------
# HW 해석 규칙:
#   파일에는 한 줄에 2바이트를 LO-HI 순서로 저장(예: 66DC)
#   하드웨어는 이를 [HI, LO]로 바꿔서 원소 순서를 재구성해 연산
#   => 골든 계산 시에도 동일한 재배치를 적용해야 값이 일치
# ------------------------------------------------------------

def swap_pairs_as_hw(x_uint8_8x8: np.ndarray) -> np.ndarray:
    """플랫(64바이트)에서 2바이트씩 [lo,hi] -> [hi,lo]로 스왑해 8x8로 복원"""
    flat = x_uint8_8x8.flatten()
    assert flat.size % 2 == 0
    swapped = np.empty_like(flat)
    swapped[0::2] = flat[1::2]  # 짝수 index에 hi
    swapped[1::2] = flat[0::2]  # 홀수 index에 lo
    return swapped.reshape(8, 8)

def generate_test_vectors():
    """Generate test vectors in all three formats (HW swap 규칙 적용 골든)"""
    
    print("=" * 70)
    print("Systolic Array Test Vector Generator  [UINT8 mode / HW swap-aware]")
    print("=" * 70)
    
    # Seed for reproducibility
    np.random.seed(42)
    
    # 8x8 UINT8 matrices (on-wire 값: 파일에 써지는 LOHI 순서 기준의 '원래' 행렬)
    A = np.random.randint(0, 256, (8, 8), dtype=np.uint8)
    B = np.random.randint(0, 256, (8, 8), dtype=np.uint8)
    
    print("\n[Step 1] Generated random 8x8 UINT8 matrices (on-wire order)")
    print(f"  Matrix A shape: {A.shape}, dtype: {A.dtype}")
    print(f"  Matrix B shape: {B.shape}, dtype: {B.dtype}")
    
    # ------------------ 핵심 포인트 ------------------
    # 하드웨어가 실제 연산에 사용하는 바이트 순서로 재배치
    A_hw = swap_pairs_as_hw(A)
    B_hw = swap_pairs_as_hw(B)
    # ------------------------------------------------
    
    # 골든: (uint8 * uint8) → uint32 누적
    C = A_hw.astype(np.uint32) @ B_hw.astype(np.uint32)
    
    print(f"\n[Step 2] Calculated golden result C = A_hw × B_hw (uint8*uint8, uint32 accumulate)")
    print(f"  Result C shape: {C.shape}, dtype: {C.dtype}")
    
    # 출력 디렉토리
    script_dir = os.path.dirname(os.path.abspath(__file__))
    data_dir   = os.path.join(script_dir, '..', 'data')
    os.makedirs(data_dir, exist_ok=True)
    print(f"\n[Step 3] Output directory: {data_dir}")
    
    # ------------------------------------------------------------
    # OPTION 3: combined A+B (각 줄 2바이트, LO-HI로 저장)  ← 파일 포맷은 유지
    # ------------------------------------------------------------
    print("\n" + "-" * 70)
    print("[OPTION 3] Generating matrix_A_B.hex (combined A+B, LO-HI per line)")
    print("-" * 70)
    output_file = os.path.join(data_dir, 'matrix_A_B.hex')
    with open(output_file, 'w') as f:
        a_flat = A.flatten()
        for i in range(0, a_flat.size, 2):
            lo = int(a_flat[i])   & 0xFF
            hi = int(a_flat[i+1]) & 0xFF
            f.write(f"{lo:02X}{hi:02X}\n")
        b_flat = B.flatten()
        for i in range(0, b_flat.size, 2):
            lo = int(b_flat[i])   & 0xFF
            hi = int(b_flat[i+1]) & 0xFF
            f.write(f"{lo:02X}{hi:02X}\n")
    print(f"  [OK] Created: {output_file}  (64 lines total)")
    
    # ------------------------------------------------------------
    # OPTION 1: separated hex (각 줄 2바이트, LO-HI로 저장)
    # ------------------------------------------------------------
    print("\n" + "-" * 70)
    print("[OPTION 1] Generating matrix_a.hex, matrix_b.hex (LO-HI per line)")
    print("-" * 70)
    out_a_hex = os.path.join(data_dir, 'matrix_a.hex')
    with open(out_a_hex, 'w') as f:
        af = A.flatten()
        for i in range(0, af.size, 2):
            lo = int(af[i])   & 0xFF
            hi = int(af[i+1]) & 0xFF
            f.write(f"{lo:02X}{hi:02X}\n")
    print(f"  [OK] Created: {out_a_hex}")
    
    out_b_hex = os.path.join(data_dir, 'matrix_b.hex')
    with open(out_b_hex, 'w') as f:
        bf = B.flatten()
        for i in range(0, bf.size, 2):
            lo = int(bf[i])   & 0xFF
            hi = int(bf[i+1]) & 0xFF
            f.write(f"{lo:02X}{hi:02X}\n")
    print(f"  [OK] Created: {out_b_hex}")
    
    # ------------------------------------------------------------
    # OPTION 2: mem (바이트 단위, 한 줄 1바이트)
    #   주의: 이 파일은 on-wire 바이트를 그대로 기록 (스왑 없음)
    #   하드웨어가 읽을 때 [hi,lo]로 재배치한다고 가정
    # ------------------------------------------------------------
    print("\n" + "-" * 70)
    print("[OPTION 2] Generating matrix_a.mem, matrix_b.mem (1 byte/line, on-wire bytes)")
    print("-" * 70)
    out_a_mem = os.path.join(data_dir, 'matrix_a.mem')
    with open(out_a_mem, 'w') as f:
        for v in A.flatten():
            f.write(f"{int(v) & 0xFF:02X}\n")
    print(f"  [OK] Created: {out_a_mem}")
    
    out_b_mem = os.path.join(data_dir, 'matrix_b.mem')
    with open(out_b_mem, 'w') as f:
        for v in B.flatten():
            f.write(f"{int(v) & 0xFF:02X}\n")
    print(f"  [OK] Created: {out_b_mem}")
    
    # ------------------------------------------------------------
    # COMMON: golden (UINT32) — 하드웨어 해석(A_hw, B_hw) 기준 결과
    # ------------------------------------------------------------
    print("\n" + "-" * 70)
    print("[COMMON] Generating golden_result.hex (UINT32, using A_hw & B_hw)")
    print("-" * 70)
    out_gold = os.path.join(data_dir, 'golden_result.hex')
    with open(out_gold, 'w') as f:
        for val in C.flatten():
            f.write(f"{int(val) & 0xFFFFFFFF:08X}\n")
    print(f"  [OK] Created: {out_gold}")
    
    # ------------------------------------------------------------
    # 샘플 덤프
    # ------------------------------------------------------------
    print("\n" + "=" * 70)
    print("SAMPLE DATA (on-wire vs. HW-interpreted)")
    print("=" * 70)
    print("\n[Matrix A] Row0 (on-wire):")
    print("  Hex: " + ' '.join(f"{int(x):02X}" for x in A[0]))
    print("[Matrix A] Row0 (HW-used, swapped by 2B):")
    print("  Hex: " + ' '.join(f"{int(x):02X}" for x in A_hw[0]))
    
    print("\n[Matrix B] Row0 (on-wire):")
    print("  Hex: " + ' '.join(f"{int(x):02X}" for x in B[0]))
    print("[Matrix B] Row0 (HW-used, swapped by 2B):")
    print("  Hex: " + ' '.join(f"{int(x):02X}" for x in B_hw[0]))
    
    # 수동 검증: C[0,0] = A_hw[0,:] · B_hw[:,0]
    manual_c00 = int(sum(int(A_hw[0, i]) * int(B_hw[i, 0]) for i in range(8)))
    print("\n[Verification] C[0,0] manual (uses A_hw, B_hw):", manual_c00, f"(0x{manual_c00:08X})")
    print("Matches computed:", manual_c00 == int(C[0,0]))
    
    print("\n" + "=" * 70)
    print("[SUCCESS] ALL TEST VECTORS GENERATED SUCCESSFULLY! (HW swap-aware golden)")
    print("=" * 70)
    print("\nGenerated files:")
    print("  matrix_A_B.hex        (A then B, 2 bytes/line, LO-HI on-wire)")
    print("  matrix_a.hex / matrix_b.hex   (LO-HI on-wire)")
    print("  matrix_a.mem / matrix_b.mem   (1 byte/line on-wire)")
    print("  golden_result.hex     (C from A_hw @ B_hw)")
    print("\nTip:")
    print("  - DUT가 2바이트 단위로 [hi,lo] 재배치하여 연산한다면 이 골든과 1:1로 맞다.")
    print("  - 반대로 재배치가 없다면 swap_pairs_as_hw 적용을 빼고 C를 계산.")

if __name__ == '__main__':
    generate_test_vectors()
