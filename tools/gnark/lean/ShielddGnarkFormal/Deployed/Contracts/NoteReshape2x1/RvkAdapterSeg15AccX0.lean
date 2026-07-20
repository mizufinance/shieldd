import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg15

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccX1 (rho : Nat -> Seg15.F) : Seg15.F := rho 16384
def seg15AccX2 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX1 rho + rho 16389
def seg15AccX3 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX2 rho + rho 16394
def seg15AccX4 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX3 rho + rho 16399
def seg15AccX5 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX4 rho + rho 16404
def seg15AccX6 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX5 rho + rho 16409
def seg15AccX7 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX6 rho + rho 16414
def seg15AccX8 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX7 rho + rho 16419
def seg15AccX9 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX8 rho + rho 16424
def seg15AccX10 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX9 rho + rho 16429

theorem seg15AccX1_sum (rho : Nat -> Seg15.F) :
    seg15AccX1 rho = rho 16384 := by
  rfl

theorem seg15AccX2_sum (rho : Nat -> Seg15.F) :
    seg15AccX2 rho = (rho 16384 + rho 16389) := by
  rw [seg15AccX2, seg15AccX1_sum]

theorem seg15AccX3_sum (rho : Nat -> Seg15.F) :
    seg15AccX3 rho = ((rho 16384 + rho 16389) + rho 16394) := by
  rw [seg15AccX3, seg15AccX2_sum]

theorem seg15AccX4_sum (rho : Nat -> Seg15.F) :
    seg15AccX4 rho = (((rho 16384 + rho 16389) + rho 16394) + rho 16399) := by
  rw [seg15AccX4, seg15AccX3_sum]

theorem seg15AccX5_sum (rho : Nat -> Seg15.F) :
    seg15AccX5 rho = ((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) := by
  rw [seg15AccX5, seg15AccX4_sum]

theorem seg15AccX6_sum (rho : Nat -> Seg15.F) :
    seg15AccX6 rho = (((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) := by
  rw [seg15AccX6, seg15AccX5_sum]

theorem seg15AccX7_sum (rho : Nat -> Seg15.F) :
    seg15AccX7 rho = ((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) := by
  rw [seg15AccX7, seg15AccX6_sum]

theorem seg15AccX8_sum (rho : Nat -> Seg15.F) :
    seg15AccX8 rho = (((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) := by
  rw [seg15AccX8, seg15AccX7_sum]

theorem seg15AccX9_sum (rho : Nat -> Seg15.F) :
    seg15AccX9 rho = ((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) := by
  rw [seg15AccX9, seg15AccX8_sum]

theorem seg15AccX10_sum (rho : Nat -> Seg15.F) :
    seg15AccX10 rho = (((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) := by
  rw [seg15AccX10, seg15AccX9_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
