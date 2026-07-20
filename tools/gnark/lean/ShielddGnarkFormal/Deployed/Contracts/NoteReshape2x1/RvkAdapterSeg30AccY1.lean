import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccY0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccY11 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY10 rho + rho 28616
def seg30AccY12 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY11 rho + rho 28621
def seg30AccY13 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY12 rho + rho 28626
def seg30AccY14 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY13 rho + rho 28631
def seg30AccY15 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY14 rho + rho 28636
def seg30AccY16 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY15 rho + rho 28641
def seg30AccY17 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY16 rho + rho 28646
def seg30AccY18 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY17 rho + rho 28651
def seg30AccY19 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY18 rho + rho 28656
def seg30AccY20 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY19 rho + rho 28661

theorem seg30AccY11_sum (rho : Nat -> Seg30.F) :
    seg30AccY11 rho = ((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) := by
  rw [seg30AccY11, seg30AccY10_sum]

theorem seg30AccY12_sum (rho : Nat -> Seg30.F) :
    seg30AccY12 rho = (((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) := by
  rw [seg30AccY12, seg30AccY11_sum]

theorem seg30AccY13_sum (rho : Nat -> Seg30.F) :
    seg30AccY13 rho = ((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) := by
  rw [seg30AccY13, seg30AccY12_sum]

theorem seg30AccY14_sum (rho : Nat -> Seg30.F) :
    seg30AccY14 rho = (((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) := by
  rw [seg30AccY14, seg30AccY13_sum]

theorem seg30AccY15_sum (rho : Nat -> Seg30.F) :
    seg30AccY15 rho = ((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) := by
  rw [seg30AccY15, seg30AccY14_sum]

theorem seg30AccY16_sum (rho : Nat -> Seg30.F) :
    seg30AccY16 rho = (((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) := by
  rw [seg30AccY16, seg30AccY15_sum]

theorem seg30AccY17_sum (rho : Nat -> Seg30.F) :
    seg30AccY17 rho = ((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) := by
  rw [seg30AccY17, seg30AccY16_sum]

theorem seg30AccY18_sum (rho : Nat -> Seg30.F) :
    seg30AccY18 rho = (((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) := by
  rw [seg30AccY18, seg30AccY17_sum]

theorem seg30AccY19_sum (rho : Nat -> Seg30.F) :
    seg30AccY19 rho = ((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) := by
  rw [seg30AccY19, seg30AccY18_sum]

theorem seg30AccY20_sum (rho : Nat -> Seg30.F) :
    seg30AccY20 rho = (((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) := by
  rw [seg30AccY20, seg30AccY19_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
