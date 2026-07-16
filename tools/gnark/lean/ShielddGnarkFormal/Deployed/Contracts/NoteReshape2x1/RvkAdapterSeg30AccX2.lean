import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccX1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccX21 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX20 rho + rho 28671
def seg30AccX22 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX21 rho + rho 28676
def seg30AccX23 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX22 rho + rho 28681
def seg30AccX24 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX23 rho + rho 28686
def seg30AccX25 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX24 rho + rho 28691
def seg30AccX26 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX25 rho + rho 28696
def seg30AccX27 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX26 rho + rho 28701
def seg30AccX28 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX27 rho + rho 28706
def seg30AccX29 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX28 rho + rho 28711
def seg30AccX30 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX29 rho + rho 28716

theorem seg30AccX21_sum (rho : Nat -> Seg30.F) :
    seg30AccX21 rho = ((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) := by
  rw [seg30AccX21, seg30AccX20_sum]

theorem seg30AccX22_sum (rho : Nat -> Seg30.F) :
    seg30AccX22 rho = (((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) := by
  rw [seg30AccX22, seg30AccX21_sum]

theorem seg30AccX23_sum (rho : Nat -> Seg30.F) :
    seg30AccX23 rho = ((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) := by
  rw [seg30AccX23, seg30AccX22_sum]

theorem seg30AccX24_sum (rho : Nat -> Seg30.F) :
    seg30AccX24 rho = (((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) := by
  rw [seg30AccX24, seg30AccX23_sum]

theorem seg30AccX25_sum (rho : Nat -> Seg30.F) :
    seg30AccX25 rho = ((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) := by
  rw [seg30AccX25, seg30AccX24_sum]

theorem seg30AccX26_sum (rho : Nat -> Seg30.F) :
    seg30AccX26 rho = (((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) := by
  rw [seg30AccX26, seg30AccX25_sum]

theorem seg30AccX27_sum (rho : Nat -> Seg30.F) :
    seg30AccX27 rho = ((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) := by
  rw [seg30AccX27, seg30AccX26_sum]

theorem seg30AccX28_sum (rho : Nat -> Seg30.F) :
    seg30AccX28 rho = (((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) := by
  rw [seg30AccX28, seg30AccX27_sum]

theorem seg30AccX29_sum (rho : Nat -> Seg30.F) :
    seg30AccX29 rho = ((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) := by
  rw [seg30AccX29, seg30AccX28_sum]

theorem seg30AccX30_sum (rho : Nat -> Seg30.F) :
    seg30AccX30 rho = (((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) := by
  rw [seg30AccX30, seg30AccX29_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
