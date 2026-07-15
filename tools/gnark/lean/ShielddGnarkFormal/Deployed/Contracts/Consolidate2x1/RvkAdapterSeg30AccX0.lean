import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg30

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg30AccX1 (rho : Nat -> Seg30.F) : Seg30.F := rho 28571
def seg30AccX2 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX1 rho + rho 28576
def seg30AccX3 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX2 rho + rho 28581
def seg30AccX4 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX3 rho + rho 28586
def seg30AccX5 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX4 rho + rho 28591
def seg30AccX6 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX5 rho + rho 28596
def seg30AccX7 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX6 rho + rho 28601
def seg30AccX8 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX7 rho + rho 28606
def seg30AccX9 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX8 rho + rho 28611
def seg30AccX10 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX9 rho + rho 28616

theorem seg30AccX1_sum (rho : Nat -> Seg30.F) :
    seg30AccX1 rho = rho 28571 := by
  rfl

theorem seg30AccX2_sum (rho : Nat -> Seg30.F) :
    seg30AccX2 rho = (rho 28571 + rho 28576) := by
  rw [seg30AccX2, seg30AccX1_sum]

theorem seg30AccX3_sum (rho : Nat -> Seg30.F) :
    seg30AccX3 rho = ((rho 28571 + rho 28576) + rho 28581) := by
  rw [seg30AccX3, seg30AccX2_sum]

theorem seg30AccX4_sum (rho : Nat -> Seg30.F) :
    seg30AccX4 rho = (((rho 28571 + rho 28576) + rho 28581) + rho 28586) := by
  rw [seg30AccX4, seg30AccX3_sum]

theorem seg30AccX5_sum (rho : Nat -> Seg30.F) :
    seg30AccX5 rho = ((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) := by
  rw [seg30AccX5, seg30AccX4_sum]

theorem seg30AccX6_sum (rho : Nat -> Seg30.F) :
    seg30AccX6 rho = (((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) := by
  rw [seg30AccX6, seg30AccX5_sum]

theorem seg30AccX7_sum (rho : Nat -> Seg30.F) :
    seg30AccX7 rho = ((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) := by
  rw [seg30AccX7, seg30AccX6_sum]

theorem seg30AccX8_sum (rho : Nat -> Seg30.F) :
    seg30AccX8 rho = (((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) := by
  rw [seg30AccX8, seg30AccX7_sum]

theorem seg30AccX9_sum (rho : Nat -> Seg30.F) :
    seg30AccX9 rho = ((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) := by
  rw [seg30AccX9, seg30AccX8_sum]

theorem seg30AccX10_sum (rho : Nat -> Seg30.F) :
    seg30AccX10 rho = (((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) := by
  rw [seg30AccX10, seg30AccX9_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
