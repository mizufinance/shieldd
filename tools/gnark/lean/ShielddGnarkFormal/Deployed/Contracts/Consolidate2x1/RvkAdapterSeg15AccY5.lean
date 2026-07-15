import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15AccY4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg15AccY51 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY50 rho + rho 16641
def seg15AccY52 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY51 rho + rho 16646
def seg15AccY53 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY52 rho + rho 16651
def seg15AccY54 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY53 rho + rho 16656
def seg15AccY55 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY54 rho + rho 16661
def seg15AccY56 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY55 rho + rho 16666
def seg15AccY57 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY56 rho + rho 16671
def seg15AccY58 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY57 rho + rho 16676
def seg15AccY59 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY58 rho + rho 16681
def seg15AccY60 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY59 rho + rho 16686

theorem seg15AccY51_sum (rho : Nat -> Seg15.F) :
    seg15AccY51 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) := by
  rw [seg15AccY51, seg15AccY50_sum]

theorem seg15AccY52_sum (rho : Nat -> Seg15.F) :
    seg15AccY52 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) := by
  rw [seg15AccY52, seg15AccY51_sum]

theorem seg15AccY53_sum (rho : Nat -> Seg15.F) :
    seg15AccY53 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) := by
  rw [seg15AccY53, seg15AccY52_sum]

theorem seg15AccY54_sum (rho : Nat -> Seg15.F) :
    seg15AccY54 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) := by
  rw [seg15AccY54, seg15AccY53_sum]

theorem seg15AccY55_sum (rho : Nat -> Seg15.F) :
    seg15AccY55 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) := by
  rw [seg15AccY55, seg15AccY54_sum]

theorem seg15AccY56_sum (rho : Nat -> Seg15.F) :
    seg15AccY56 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) := by
  rw [seg15AccY56, seg15AccY55_sum]

theorem seg15AccY57_sum (rho : Nat -> Seg15.F) :
    seg15AccY57 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) := by
  rw [seg15AccY57, seg15AccY56_sum]

theorem seg15AccY58_sum (rho : Nat -> Seg15.F) :
    seg15AccY58 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) + rho 16676) := by
  rw [seg15AccY58, seg15AccY57_sum]

theorem seg15AccY59_sum (rho : Nat -> Seg15.F) :
    seg15AccY59 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) + rho 16676) + rho 16681) := by
  rw [seg15AccY59, seg15AccY58_sum]

theorem seg15AccY60_sum (rho : Nat -> Seg15.F) :
    seg15AccY60 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) + rho 16676) + rho 16681) + rho 16686) := by
  rw [seg15AccY60, seg15AccY59_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
