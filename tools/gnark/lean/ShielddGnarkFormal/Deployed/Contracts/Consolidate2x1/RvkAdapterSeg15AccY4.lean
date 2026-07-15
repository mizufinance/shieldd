import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15AccY3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg15AccY41 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY40 rho + rho 16591
def seg15AccY42 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY41 rho + rho 16596
def seg15AccY43 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY42 rho + rho 16601
def seg15AccY44 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY43 rho + rho 16606
def seg15AccY45 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY44 rho + rho 16611
def seg15AccY46 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY45 rho + rho 16616
def seg15AccY47 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY46 rho + rho 16621
def seg15AccY48 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY47 rho + rho 16626
def seg15AccY49 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY48 rho + rho 16631
def seg15AccY50 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY49 rho + rho 16636

theorem seg15AccY41_sum (rho : Nat -> Seg15.F) :
    seg15AccY41 rho = ((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) := by
  rw [seg15AccY41, seg15AccY40_sum]

theorem seg15AccY42_sum (rho : Nat -> Seg15.F) :
    seg15AccY42 rho = (((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) := by
  rw [seg15AccY42, seg15AccY41_sum]

theorem seg15AccY43_sum (rho : Nat -> Seg15.F) :
    seg15AccY43 rho = ((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) := by
  rw [seg15AccY43, seg15AccY42_sum]

theorem seg15AccY44_sum (rho : Nat -> Seg15.F) :
    seg15AccY44 rho = (((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) := by
  rw [seg15AccY44, seg15AccY43_sum]

theorem seg15AccY45_sum (rho : Nat -> Seg15.F) :
    seg15AccY45 rho = ((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) := by
  rw [seg15AccY45, seg15AccY44_sum]

theorem seg15AccY46_sum (rho : Nat -> Seg15.F) :
    seg15AccY46 rho = (((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) := by
  rw [seg15AccY46, seg15AccY45_sum]

theorem seg15AccY47_sum (rho : Nat -> Seg15.F) :
    seg15AccY47 rho = ((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) := by
  rw [seg15AccY47, seg15AccY46_sum]

theorem seg15AccY48_sum (rho : Nat -> Seg15.F) :
    seg15AccY48 rho = (((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) := by
  rw [seg15AccY48, seg15AccY47_sum]

theorem seg15AccY49_sum (rho : Nat -> Seg15.F) :
    seg15AccY49 rho = ((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) := by
  rw [seg15AccY49, seg15AccY48_sum]

theorem seg15AccY50_sum (rho : Nat -> Seg15.F) :
    seg15AccY50 rho = (((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) := by
  rw [seg15AccY50, seg15AccY49_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
