import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccX2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccX31 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX30 rho + rho 16534
def seg15AccX32 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX31 rho + rho 16539
def seg15AccX33 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX32 rho + rho 16544
def seg15AccX34 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX33 rho + rho 16549
def seg15AccX35 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX34 rho + rho 16554
def seg15AccX36 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX35 rho + rho 16559
def seg15AccX37 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX36 rho + rho 16564
def seg15AccX38 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX37 rho + rho 16569
def seg15AccX39 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX38 rho + rho 16574
def seg15AccX40 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX39 rho + rho 16579

theorem seg15AccX31_sum (rho : Nat -> Seg15.F) :
    seg15AccX31 rho = ((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) := by
  rw [seg15AccX31, seg15AccX30_sum]

theorem seg15AccX32_sum (rho : Nat -> Seg15.F) :
    seg15AccX32 rho = (((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) := by
  rw [seg15AccX32, seg15AccX31_sum]

theorem seg15AccX33_sum (rho : Nat -> Seg15.F) :
    seg15AccX33 rho = ((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) := by
  rw [seg15AccX33, seg15AccX32_sum]

theorem seg15AccX34_sum (rho : Nat -> Seg15.F) :
    seg15AccX34 rho = (((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) := by
  rw [seg15AccX34, seg15AccX33_sum]

theorem seg15AccX35_sum (rho : Nat -> Seg15.F) :
    seg15AccX35 rho = ((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) := by
  rw [seg15AccX35, seg15AccX34_sum]

theorem seg15AccX36_sum (rho : Nat -> Seg15.F) :
    seg15AccX36 rho = (((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) := by
  rw [seg15AccX36, seg15AccX35_sum]

theorem seg15AccX37_sum (rho : Nat -> Seg15.F) :
    seg15AccX37 rho = ((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) := by
  rw [seg15AccX37, seg15AccX36_sum]

theorem seg15AccX38_sum (rho : Nat -> Seg15.F) :
    seg15AccX38 rho = (((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) := by
  rw [seg15AccX38, seg15AccX37_sum]

theorem seg15AccX39_sum (rho : Nat -> Seg15.F) :
    seg15AccX39 rho = ((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) := by
  rw [seg15AccX39, seg15AccX38_sum]

theorem seg15AccX40_sum (rho : Nat -> Seg15.F) :
    seg15AccX40 rho = (((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) := by
  rw [seg15AccX40, seg15AccX39_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
