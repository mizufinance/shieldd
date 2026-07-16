import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccX24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccY1 (rho : Nat -> Seg15.F) : Seg15.F := rho 16391
def seg15AccY2 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY1 rho + rho 16396
def seg15AccY3 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY2 rho + rho 16401
def seg15AccY4 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY3 rho + rho 16406
def seg15AccY5 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY4 rho + rho 16411
def seg15AccY6 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY5 rho + rho 16416
def seg15AccY7 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY6 rho + rho 16421
def seg15AccY8 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY7 rho + rho 16426
def seg15AccY9 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY8 rho + rho 16431
def seg15AccY10 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY9 rho + rho 16436

theorem seg15AccY1_sum (rho : Nat -> Seg15.F) :
    seg15AccY1 rho = rho 16391 := by
  rfl

theorem seg15AccY2_sum (rho : Nat -> Seg15.F) :
    seg15AccY2 rho = (rho 16391 + rho 16396) := by
  rw [seg15AccY2, seg15AccY1_sum]

theorem seg15AccY3_sum (rho : Nat -> Seg15.F) :
    seg15AccY3 rho = ((rho 16391 + rho 16396) + rho 16401) := by
  rw [seg15AccY3, seg15AccY2_sum]

theorem seg15AccY4_sum (rho : Nat -> Seg15.F) :
    seg15AccY4 rho = (((rho 16391 + rho 16396) + rho 16401) + rho 16406) := by
  rw [seg15AccY4, seg15AccY3_sum]

theorem seg15AccY5_sum (rho : Nat -> Seg15.F) :
    seg15AccY5 rho = ((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) := by
  rw [seg15AccY5, seg15AccY4_sum]

theorem seg15AccY6_sum (rho : Nat -> Seg15.F) :
    seg15AccY6 rho = (((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) := by
  rw [seg15AccY6, seg15AccY5_sum]

theorem seg15AccY7_sum (rho : Nat -> Seg15.F) :
    seg15AccY7 rho = ((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) := by
  rw [seg15AccY7, seg15AccY6_sum]

theorem seg15AccY8_sum (rho : Nat -> Seg15.F) :
    seg15AccY8 rho = (((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) := by
  rw [seg15AccY8, seg15AccY7_sum]

theorem seg15AccY9_sum (rho : Nat -> Seg15.F) :
    seg15AccY9 rho = ((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) := by
  rw [seg15AccY9, seg15AccY8_sum]

theorem seg15AccY10_sum (rho : Nat -> Seg15.F) :
    seg15AccY10 rho = (((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) := by
  rw [seg15AccY10, seg15AccY9_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
