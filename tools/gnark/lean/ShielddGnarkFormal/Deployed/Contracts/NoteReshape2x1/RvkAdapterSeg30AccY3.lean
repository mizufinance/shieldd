import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccY2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccY31 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY30 rho + rho 28716
def seg30AccY32 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY31 rho + rho 28721
def seg30AccY33 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY32 rho + rho 28726
def seg30AccY34 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY33 rho + rho 28731
def seg30AccY35 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY34 rho + rho 28736
def seg30AccY36 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY35 rho + rho 28741
def seg30AccY37 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY36 rho + rho 28746
def seg30AccY38 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY37 rho + rho 28751
def seg30AccY39 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY38 rho + rho 28756
def seg30AccY40 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY39 rho + rho 28761

theorem seg30AccY31_sum (rho : Nat -> Seg30.F) :
    seg30AccY31 rho = ((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) := by
  rw [seg30AccY31, seg30AccY30_sum]

theorem seg30AccY32_sum (rho : Nat -> Seg30.F) :
    seg30AccY32 rho = (((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) := by
  rw [seg30AccY32, seg30AccY31_sum]

theorem seg30AccY33_sum (rho : Nat -> Seg30.F) :
    seg30AccY33 rho = ((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) := by
  rw [seg30AccY33, seg30AccY32_sum]

theorem seg30AccY34_sum (rho : Nat -> Seg30.F) :
    seg30AccY34 rho = (((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) := by
  rw [seg30AccY34, seg30AccY33_sum]

theorem seg30AccY35_sum (rho : Nat -> Seg30.F) :
    seg30AccY35 rho = ((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) := by
  rw [seg30AccY35, seg30AccY34_sum]

theorem seg30AccY36_sum (rho : Nat -> Seg30.F) :
    seg30AccY36 rho = (((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) := by
  rw [seg30AccY36, seg30AccY35_sum]

theorem seg30AccY37_sum (rho : Nat -> Seg30.F) :
    seg30AccY37 rho = ((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) := by
  rw [seg30AccY37, seg30AccY36_sum]

theorem seg30AccY38_sum (rho : Nat -> Seg30.F) :
    seg30AccY38 rho = (((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) := by
  rw [seg30AccY38, seg30AccY37_sum]

theorem seg30AccY39_sum (rho : Nat -> Seg30.F) :
    seg30AccY39 rho = ((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) := by
  rw [seg30AccY39, seg30AccY38_sum]

theorem seg30AccY40_sum (rho : Nat -> Seg30.F) :
    seg30AccY40 rho = (((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) := by
  rw [seg30AccY40, seg30AccY39_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
