import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccX0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccX11 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX10 rho + rho 28621
def seg30AccX12 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX11 rho + rho 28626
def seg30AccX13 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX12 rho + rho 28631
def seg30AccX14 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX13 rho + rho 28636
def seg30AccX15 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX14 rho + rho 28641
def seg30AccX16 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX15 rho + rho 28646
def seg30AccX17 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX16 rho + rho 28651
def seg30AccX18 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX17 rho + rho 28656
def seg30AccX19 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX18 rho + rho 28661
def seg30AccX20 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX19 rho + rho 28666

theorem seg30AccX11_sum (rho : Nat -> Seg30.F) :
    seg30AccX11 rho = ((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) := by
  rw [seg30AccX11, seg30AccX10_sum]

theorem seg30AccX12_sum (rho : Nat -> Seg30.F) :
    seg30AccX12 rho = (((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) := by
  rw [seg30AccX12, seg30AccX11_sum]

theorem seg30AccX13_sum (rho : Nat -> Seg30.F) :
    seg30AccX13 rho = ((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) := by
  rw [seg30AccX13, seg30AccX12_sum]

theorem seg30AccX14_sum (rho : Nat -> Seg30.F) :
    seg30AccX14 rho = (((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) := by
  rw [seg30AccX14, seg30AccX13_sum]

theorem seg30AccX15_sum (rho : Nat -> Seg30.F) :
    seg30AccX15 rho = ((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) := by
  rw [seg30AccX15, seg30AccX14_sum]

theorem seg30AccX16_sum (rho : Nat -> Seg30.F) :
    seg30AccX16 rho = (((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) := by
  rw [seg30AccX16, seg30AccX15_sum]

theorem seg30AccX17_sum (rho : Nat -> Seg30.F) :
    seg30AccX17 rho = ((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) := by
  rw [seg30AccX17, seg30AccX16_sum]

theorem seg30AccX18_sum (rho : Nat -> Seg30.F) :
    seg30AccX18 rho = (((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) := by
  rw [seg30AccX18, seg30AccX17_sum]

theorem seg30AccX19_sum (rho : Nat -> Seg30.F) :
    seg30AccX19 rho = ((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) := by
  rw [seg30AccX19, seg30AccX18_sum]

theorem seg30AccX20_sum (rho : Nat -> Seg30.F) :
    seg30AccX20 rho = (((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) := by
  rw [seg30AccX20, seg30AccX19_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
