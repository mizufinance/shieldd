import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccX0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccX11 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX10 rho + rho 16434
def seg15AccX12 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX11 rho + rho 16439
def seg15AccX13 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX12 rho + rho 16444
def seg15AccX14 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX13 rho + rho 16449
def seg15AccX15 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX14 rho + rho 16454
def seg15AccX16 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX15 rho + rho 16459
def seg15AccX17 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX16 rho + rho 16464
def seg15AccX18 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX17 rho + rho 16469
def seg15AccX19 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX18 rho + rho 16474
def seg15AccX20 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX19 rho + rho 16479

theorem seg15AccX11_sum (rho : Nat -> Seg15.F) :
    seg15AccX11 rho = ((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) := by
  rw [seg15AccX11, seg15AccX10_sum]

theorem seg15AccX12_sum (rho : Nat -> Seg15.F) :
    seg15AccX12 rho = (((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) := by
  rw [seg15AccX12, seg15AccX11_sum]

theorem seg15AccX13_sum (rho : Nat -> Seg15.F) :
    seg15AccX13 rho = ((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) := by
  rw [seg15AccX13, seg15AccX12_sum]

theorem seg15AccX14_sum (rho : Nat -> Seg15.F) :
    seg15AccX14 rho = (((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) := by
  rw [seg15AccX14, seg15AccX13_sum]

theorem seg15AccX15_sum (rho : Nat -> Seg15.F) :
    seg15AccX15 rho = ((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) := by
  rw [seg15AccX15, seg15AccX14_sum]

theorem seg15AccX16_sum (rho : Nat -> Seg15.F) :
    seg15AccX16 rho = (((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) := by
  rw [seg15AccX16, seg15AccX15_sum]

theorem seg15AccX17_sum (rho : Nat -> Seg15.F) :
    seg15AccX17 rho = ((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) := by
  rw [seg15AccX17, seg15AccX16_sum]

theorem seg15AccX18_sum (rho : Nat -> Seg15.F) :
    seg15AccX18 rho = (((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) := by
  rw [seg15AccX18, seg15AccX17_sum]

theorem seg15AccX19_sum (rho : Nat -> Seg15.F) :
    seg15AccX19 rho = ((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) := by
  rw [seg15AccX19, seg15AccX18_sum]

theorem seg15AccX20_sum (rho : Nat -> Seg15.F) :
    seg15AccX20 rho = (((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) := by
  rw [seg15AccX20, seg15AccX19_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
