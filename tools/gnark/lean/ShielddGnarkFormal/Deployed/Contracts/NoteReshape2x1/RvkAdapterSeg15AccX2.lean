import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccX1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccX21 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX20 rho + rho 16484
def seg15AccX22 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX21 rho + rho 16489
def seg15AccX23 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX22 rho + rho 16494
def seg15AccX24 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX23 rho + rho 16499
def seg15AccX25 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX24 rho + rho 16504
def seg15AccX26 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX25 rho + rho 16509
def seg15AccX27 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX26 rho + rho 16514
def seg15AccX28 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX27 rho + rho 16519
def seg15AccX29 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX28 rho + rho 16524
def seg15AccX30 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX29 rho + rho 16529

theorem seg15AccX21_sum (rho : Nat -> Seg15.F) :
    seg15AccX21 rho = ((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) := by
  rw [seg15AccX21, seg15AccX20_sum]

theorem seg15AccX22_sum (rho : Nat -> Seg15.F) :
    seg15AccX22 rho = (((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) := by
  rw [seg15AccX22, seg15AccX21_sum]

theorem seg15AccX23_sum (rho : Nat -> Seg15.F) :
    seg15AccX23 rho = ((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) := by
  rw [seg15AccX23, seg15AccX22_sum]

theorem seg15AccX24_sum (rho : Nat -> Seg15.F) :
    seg15AccX24 rho = (((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) := by
  rw [seg15AccX24, seg15AccX23_sum]

theorem seg15AccX25_sum (rho : Nat -> Seg15.F) :
    seg15AccX25 rho = ((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) := by
  rw [seg15AccX25, seg15AccX24_sum]

theorem seg15AccX26_sum (rho : Nat -> Seg15.F) :
    seg15AccX26 rho = (((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) := by
  rw [seg15AccX26, seg15AccX25_sum]

theorem seg15AccX27_sum (rho : Nat -> Seg15.F) :
    seg15AccX27 rho = ((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) := by
  rw [seg15AccX27, seg15AccX26_sum]

theorem seg15AccX28_sum (rho : Nat -> Seg15.F) :
    seg15AccX28 rho = (((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) := by
  rw [seg15AccX28, seg15AccX27_sum]

theorem seg15AccX29_sum (rho : Nat -> Seg15.F) :
    seg15AccX29 rho = ((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) := by
  rw [seg15AccX29, seg15AccX28_sum]

theorem seg15AccX30_sum (rho : Nat -> Seg15.F) :
    seg15AccX30 rho = (((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) := by
  rw [seg15AccX30, seg15AccX29_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
