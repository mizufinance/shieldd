import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccY5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccY61 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY60 rho + rho 16691
def seg15AccY62 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY61 rho + rho 16696
def seg15AccY63 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY62 rho + rho 16701
def seg15AccY64 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY63 rho + rho 16706
def seg15AccY65 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY64 rho + rho 16711
def seg15AccY66 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY65 rho + rho 16716
def seg15AccY67 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY66 rho + rho 16721
def seg15AccY68 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY67 rho + rho 16726
def seg15AccY69 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY68 rho + rho 16731
def seg15AccY70 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY69 rho + rho 16736

theorem seg15AccY61_sum (rho : Nat -> Seg15.F) :
    seg15AccY61 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) + rho 16676) + rho 16681) + rho 16686) + rho 16691) := by
  rw [seg15AccY61, seg15AccY60_sum]

theorem seg15AccY62_sum (rho : Nat -> Seg15.F) :
    seg15AccY62 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) + rho 16676) + rho 16681) + rho 16686) + rho 16691) + rho 16696) := by
  rw [seg15AccY62, seg15AccY61_sum]

theorem seg15AccY63_sum (rho : Nat -> Seg15.F) :
    seg15AccY63 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) + rho 16676) + rho 16681) + rho 16686) + rho 16691) + rho 16696) + rho 16701) := by
  rw [seg15AccY63, seg15AccY62_sum]

theorem seg15AccY64_sum (rho : Nat -> Seg15.F) :
    seg15AccY64 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) + rho 16676) + rho 16681) + rho 16686) + rho 16691) + rho 16696) + rho 16701) + rho 16706) := by
  rw [seg15AccY64, seg15AccY63_sum]

theorem seg15AccY65_sum (rho : Nat -> Seg15.F) :
    seg15AccY65 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) + rho 16676) + rho 16681) + rho 16686) + rho 16691) + rho 16696) + rho 16701) + rho 16706) + rho 16711) := by
  rw [seg15AccY65, seg15AccY64_sum]

theorem seg15AccY66_sum (rho : Nat -> Seg15.F) :
    seg15AccY66 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) + rho 16676) + rho 16681) + rho 16686) + rho 16691) + rho 16696) + rho 16701) + rho 16706) + rho 16711) + rho 16716) := by
  rw [seg15AccY66, seg15AccY65_sum]

theorem seg15AccY67_sum (rho : Nat -> Seg15.F) :
    seg15AccY67 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) + rho 16676) + rho 16681) + rho 16686) + rho 16691) + rho 16696) + rho 16701) + rho 16706) + rho 16711) + rho 16716) + rho 16721) := by
  rw [seg15AccY67, seg15AccY66_sum]

theorem seg15AccY68_sum (rho : Nat -> Seg15.F) :
    seg15AccY68 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) + rho 16676) + rho 16681) + rho 16686) + rho 16691) + rho 16696) + rho 16701) + rho 16706) + rho 16711) + rho 16716) + rho 16721) + rho 16726) := by
  rw [seg15AccY68, seg15AccY67_sum]

theorem seg15AccY69_sum (rho : Nat -> Seg15.F) :
    seg15AccY69 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) + rho 16676) + rho 16681) + rho 16686) + rho 16691) + rho 16696) + rho 16701) + rho 16706) + rho 16711) + rho 16716) + rho 16721) + rho 16726) + rho 16731) := by
  rw [seg15AccY69, seg15AccY68_sum]

theorem seg15AccY70_sum (rho : Nat -> Seg15.F) :
    seg15AccY70 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) + rho 16591) + rho 16596) + rho 16601) + rho 16606) + rho 16611) + rho 16616) + rho 16621) + rho 16626) + rho 16631) + rho 16636) + rho 16641) + rho 16646) + rho 16651) + rho 16656) + rho 16661) + rho 16666) + rho 16671) + rho 16676) + rho 16681) + rho 16686) + rho 16691) + rho 16696) + rho 16701) + rho 16706) + rho 16711) + rho 16716) + rho 16721) + rho 16726) + rho 16731) + rho 16736) := by
  rw [seg15AccY70, seg15AccY69_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
