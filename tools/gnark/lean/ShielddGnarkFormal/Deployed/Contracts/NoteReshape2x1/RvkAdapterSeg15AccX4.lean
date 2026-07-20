import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccX3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccX41 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX40 rho + rho 16584
def seg15AccX42 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX41 rho + rho 16589
def seg15AccX43 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX42 rho + rho 16594
def seg15AccX44 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX43 rho + rho 16599
def seg15AccX45 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX44 rho + rho 16604
def seg15AccX46 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX45 rho + rho 16609
def seg15AccX47 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX46 rho + rho 16614
def seg15AccX48 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX47 rho + rho 16619
def seg15AccX49 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX48 rho + rho 16624
def seg15AccX50 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX49 rho + rho 16629

theorem seg15AccX41_sum (rho : Nat -> Seg15.F) :
    seg15AccX41 rho = ((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) := by
  rw [seg15AccX41, seg15AccX40_sum]

theorem seg15AccX42_sum (rho : Nat -> Seg15.F) :
    seg15AccX42 rho = (((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) := by
  rw [seg15AccX42, seg15AccX41_sum]

theorem seg15AccX43_sum (rho : Nat -> Seg15.F) :
    seg15AccX43 rho = ((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) := by
  rw [seg15AccX43, seg15AccX42_sum]

theorem seg15AccX44_sum (rho : Nat -> Seg15.F) :
    seg15AccX44 rho = (((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) := by
  rw [seg15AccX44, seg15AccX43_sum]

theorem seg15AccX45_sum (rho : Nat -> Seg15.F) :
    seg15AccX45 rho = ((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) := by
  rw [seg15AccX45, seg15AccX44_sum]

theorem seg15AccX46_sum (rho : Nat -> Seg15.F) :
    seg15AccX46 rho = (((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) := by
  rw [seg15AccX46, seg15AccX45_sum]

theorem seg15AccX47_sum (rho : Nat -> Seg15.F) :
    seg15AccX47 rho = ((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) := by
  rw [seg15AccX47, seg15AccX46_sum]

theorem seg15AccX48_sum (rho : Nat -> Seg15.F) :
    seg15AccX48 rho = (((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) + rho 16619) := by
  rw [seg15AccX48, seg15AccX47_sum]

theorem seg15AccX49_sum (rho : Nat -> Seg15.F) :
    seg15AccX49 rho = ((((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) + rho 16619) + rho 16624) := by
  rw [seg15AccX49, seg15AccX48_sum]

theorem seg15AccX50_sum (rho : Nat -> Seg15.F) :
    seg15AccX50 rho = (((((((((((((((((((((((((((((((((((((((((((((((((rho 16384 + rho 16389) + rho 16394) + rho 16399) + rho 16404) + rho 16409) + rho 16414) + rho 16419) + rho 16424) + rho 16429) + rho 16434) + rho 16439) + rho 16444) + rho 16449) + rho 16454) + rho 16459) + rho 16464) + rho 16469) + rho 16474) + rho 16479) + rho 16484) + rho 16489) + rho 16494) + rho 16499) + rho 16504) + rho 16509) + rho 16514) + rho 16519) + rho 16524) + rho 16529) + rho 16534) + rho 16539) + rho 16544) + rho 16549) + rho 16554) + rho 16559) + rho 16564) + rho 16569) + rho 16574) + rho 16579) + rho 16584) + rho 16589) + rho 16594) + rho 16599) + rho 16604) + rho 16609) + rho 16614) + rho 16619) + rho 16624) + rho 16629) := by
  rw [seg15AccX50, seg15AccX49_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
