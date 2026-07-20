import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccX24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccY1 (rho : Nat -> Seg30.F) : Seg30.F := rho 28566
def seg30AccY2 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY1 rho + rho 28571
def seg30AccY3 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY2 rho + rho 28576
def seg30AccY4 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY3 rho + rho 28581
def seg30AccY5 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY4 rho + rho 28586
def seg30AccY6 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY5 rho + rho 28591
def seg30AccY7 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY6 rho + rho 28596
def seg30AccY8 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY7 rho + rho 28601
def seg30AccY9 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY8 rho + rho 28606
def seg30AccY10 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY9 rho + rho 28611

theorem seg30AccY1_sum (rho : Nat -> Seg30.F) :
    seg30AccY1 rho = rho 28566 := by
  rfl

theorem seg30AccY2_sum (rho : Nat -> Seg30.F) :
    seg30AccY2 rho = (rho 28566 + rho 28571) := by
  rw [seg30AccY2, seg30AccY1_sum]

theorem seg30AccY3_sum (rho : Nat -> Seg30.F) :
    seg30AccY3 rho = ((rho 28566 + rho 28571) + rho 28576) := by
  rw [seg30AccY3, seg30AccY2_sum]

theorem seg30AccY4_sum (rho : Nat -> Seg30.F) :
    seg30AccY4 rho = (((rho 28566 + rho 28571) + rho 28576) + rho 28581) := by
  rw [seg30AccY4, seg30AccY3_sum]

theorem seg30AccY5_sum (rho : Nat -> Seg30.F) :
    seg30AccY5 rho = ((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) := by
  rw [seg30AccY5, seg30AccY4_sum]

theorem seg30AccY6_sum (rho : Nat -> Seg30.F) :
    seg30AccY6 rho = (((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) := by
  rw [seg30AccY6, seg30AccY5_sum]

theorem seg30AccY7_sum (rho : Nat -> Seg30.F) :
    seg30AccY7 rho = ((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) := by
  rw [seg30AccY7, seg30AccY6_sum]

theorem seg30AccY8_sum (rho : Nat -> Seg30.F) :
    seg30AccY8 rho = (((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) := by
  rw [seg30AccY8, seg30AccY7_sum]

theorem seg30AccY9_sum (rho : Nat -> Seg30.F) :
    seg30AccY9 rho = ((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) := by
  rw [seg30AccY9, seg30AccY8_sum]

theorem seg30AccY10_sum (rho : Nat -> Seg30.F) :
    seg30AccY10 rho = (((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) := by
  rw [seg30AccY10, seg30AccY9_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
