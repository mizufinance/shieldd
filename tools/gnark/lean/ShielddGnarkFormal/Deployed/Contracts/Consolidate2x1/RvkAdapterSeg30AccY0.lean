import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30AccX24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg30AccY1 (rho : Nat -> Seg30.F) : Seg30.F := rho 28572
def seg30AccY2 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY1 rho + rho 28577
def seg30AccY3 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY2 rho + rho 28582
def seg30AccY4 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY3 rho + rho 28587
def seg30AccY5 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY4 rho + rho 28592
def seg30AccY6 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY5 rho + rho 28597
def seg30AccY7 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY6 rho + rho 28602
def seg30AccY8 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY7 rho + rho 28607
def seg30AccY9 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY8 rho + rho 28612
def seg30AccY10 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY9 rho + rho 28617

theorem seg30AccY1_sum (rho : Nat -> Seg30.F) :
    seg30AccY1 rho = rho 28572 := by
  rfl

theorem seg30AccY2_sum (rho : Nat -> Seg30.F) :
    seg30AccY2 rho = (rho 28572 + rho 28577) := by
  rw [seg30AccY2, seg30AccY1_sum]

theorem seg30AccY3_sum (rho : Nat -> Seg30.F) :
    seg30AccY3 rho = ((rho 28572 + rho 28577) + rho 28582) := by
  rw [seg30AccY3, seg30AccY2_sum]

theorem seg30AccY4_sum (rho : Nat -> Seg30.F) :
    seg30AccY4 rho = (((rho 28572 + rho 28577) + rho 28582) + rho 28587) := by
  rw [seg30AccY4, seg30AccY3_sum]

theorem seg30AccY5_sum (rho : Nat -> Seg30.F) :
    seg30AccY5 rho = ((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) := by
  rw [seg30AccY5, seg30AccY4_sum]

theorem seg30AccY6_sum (rho : Nat -> Seg30.F) :
    seg30AccY6 rho = (((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) := by
  rw [seg30AccY6, seg30AccY5_sum]

theorem seg30AccY7_sum (rho : Nat -> Seg30.F) :
    seg30AccY7 rho = ((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) := by
  rw [seg30AccY7, seg30AccY6_sum]

theorem seg30AccY8_sum (rho : Nat -> Seg30.F) :
    seg30AccY8 rho = (((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) := by
  rw [seg30AccY8, seg30AccY7_sum]

theorem seg30AccY9_sum (rho : Nat -> Seg30.F) :
    seg30AccY9 rho = ((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) := by
  rw [seg30AccY9, seg30AccY8_sum]

theorem seg30AccY10_sum (rho : Nat -> Seg30.F) :
    seg30AccY10 rho = (((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) := by
  rw [seg30AccY10, seg30AccY9_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
