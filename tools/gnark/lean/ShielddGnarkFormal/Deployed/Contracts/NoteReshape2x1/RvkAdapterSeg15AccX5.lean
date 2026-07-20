import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccX4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccX51 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX50 rho + rho 16634
def seg15AccX52 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX51 rho + rho 16639
def seg15AccX53 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX52 rho + rho 16644
def seg15AccX54 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX53 rho + rho 16649
def seg15AccX55 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX54 rho + rho 16654
def seg15AccX56 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX55 rho + rho 16659
def seg15AccX57 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX56 rho + rho 16664
def seg15AccX58 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX57 rho + rho 16669
def seg15AccX59 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX58 rho + rho 16674
def seg15AccX60 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX59 rho + rho 16679

theorem seg15AccX51_sum (rho : Nat -> Seg15.F) :
    seg15AccX51 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) + rho 16619) + rho 16624) + rho 16629) + rho 16634) := by
  rw [seg15AccX51, seg15AccX50_sum]

theorem seg15AccX52_sum (rho : Nat -> Seg15.F) :
    seg15AccX52 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) + rho 16619) + rho 16624) + rho 16629) + rho 16634) + rho 16639) := by
  rw [seg15AccX52, seg15AccX51_sum]

theorem seg15AccX53_sum (rho : Nat -> Seg15.F) :
    seg15AccX53 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) + rho 16619) + rho 16624) + rho 16629) + rho 16634) + rho 16639) + rho 16644) := by
  rw [seg15AccX53, seg15AccX52_sum]

theorem seg15AccX54_sum (rho : Nat -> Seg15.F) :
    seg15AccX54 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) + rho 16619) + rho 16624) + rho 16629) + rho 16634) + rho 16639) + rho 16644) + rho 16649) := by
  rw [seg15AccX54, seg15AccX53_sum]

theorem seg15AccX55_sum (rho : Nat -> Seg15.F) :
    seg15AccX55 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) + rho 16619) + rho 16624) + rho 16629) + rho 16634) + rho 16639) + rho 16644) + rho 16649) + rho 16654) := by
  rw [seg15AccX55, seg15AccX54_sum]

theorem seg15AccX56_sum (rho : Nat -> Seg15.F) :
    seg15AccX56 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) + rho 16619) + rho 16624) + rho 16629) + rho 16634) + rho 16639) + rho 16644) + rho 16649) + rho 16654) + rho 16659) := by
  rw [seg15AccX56, seg15AccX55_sum]

theorem seg15AccX57_sum (rho : Nat -> Seg15.F) :
    seg15AccX57 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) + rho 16619) + rho 16624) + rho 16629) + rho 16634) + rho 16639) + rho 16644) + rho 16649) + rho 16654) + rho 16659) + rho 16664) := by
  rw [seg15AccX57, seg15AccX56_sum]

theorem seg15AccX58_sum (rho : Nat -> Seg15.F) :
    seg15AccX58 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) + rho 16619) + rho 16624) + rho 16629) + rho 16634) + rho 16639) + rho 16644) + rho 16649) + rho 16654) + rho 16659) + rho 16664) + rho 16669) := by
  rw [seg15AccX58, seg15AccX57_sum]

theorem seg15AccX59_sum (rho : Nat -> Seg15.F) :
    seg15AccX59 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) + rho 16619) + rho 16624) + rho 16629) + rho 16634) + rho 16639) + rho 16644) + rho 16649) + rho 16654) + rho 16659) + rho 16664) + rho 16669) + rho 16674) := by
  rw [seg15AccX59, seg15AccX58_sum]

theorem seg15AccX60_sum (rho : Nat -> Seg15.F) :
    seg15AccX60 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) + rho 16619) + rho 16624) + rho 16629) + rho 16634) + rho 16639) + rho 16644) + rho 16649) + rho 16654) + rho 16659) + rho 16664) + rho 16669) + rho 16674) + rho 16679) := by
  rw [seg15AccX60, seg15AccX59_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
