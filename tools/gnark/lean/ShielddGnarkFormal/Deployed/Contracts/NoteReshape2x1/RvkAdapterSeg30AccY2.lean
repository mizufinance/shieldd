import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccY1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccY21 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY20 rho + rho 28666
def seg30AccY22 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY21 rho + rho 28671
def seg30AccY23 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY22 rho + rho 28676
def seg30AccY24 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY23 rho + rho 28681
def seg30AccY25 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY24 rho + rho 28686
def seg30AccY26 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY25 rho + rho 28691
def seg30AccY27 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY26 rho + rho 28696
def seg30AccY28 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY27 rho + rho 28701
def seg30AccY29 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY28 rho + rho 28706
def seg30AccY30 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY29 rho + rho 28711

theorem seg30AccY21_sum (rho : Nat -> Seg30.F) :
    seg30AccY21 rho = ((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) := by
  rw [seg30AccY21, seg30AccY20_sum]

theorem seg30AccY22_sum (rho : Nat -> Seg30.F) :
    seg30AccY22 rho = (((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) := by
  rw [seg30AccY22, seg30AccY21_sum]

theorem seg30AccY23_sum (rho : Nat -> Seg30.F) :
    seg30AccY23 rho = ((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) := by
  rw [seg30AccY23, seg30AccY22_sum]

theorem seg30AccY24_sum (rho : Nat -> Seg30.F) :
    seg30AccY24 rho = (((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) := by
  rw [seg30AccY24, seg30AccY23_sum]

theorem seg30AccY25_sum (rho : Nat -> Seg30.F) :
    seg30AccY25 rho = ((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) := by
  rw [seg30AccY25, seg30AccY24_sum]

theorem seg30AccY26_sum (rho : Nat -> Seg30.F) :
    seg30AccY26 rho = (((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) := by
  rw [seg30AccY26, seg30AccY25_sum]

theorem seg30AccY27_sum (rho : Nat -> Seg30.F) :
    seg30AccY27 rho = ((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) := by
  rw [seg30AccY27, seg30AccY26_sum]

theorem seg30AccY28_sum (rho : Nat -> Seg30.F) :
    seg30AccY28 rho = (((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) := by
  rw [seg30AccY28, seg30AccY27_sum]

theorem seg30AccY29_sum (rho : Nat -> Seg30.F) :
    seg30AccY29 rho = ((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) := by
  rw [seg30AccY29, seg30AccY28_sum]

theorem seg30AccY30_sum (rho : Nat -> Seg30.F) :
    seg30AccY30 rho = (((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) := by
  rw [seg30AccY30, seg30AccY29_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
