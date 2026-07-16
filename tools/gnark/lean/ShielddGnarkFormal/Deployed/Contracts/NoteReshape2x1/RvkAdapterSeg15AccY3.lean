import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccY2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccY31 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY30 rho + rho 16541
def seg15AccY32 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY31 rho + rho 16546
def seg15AccY33 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY32 rho + rho 16551
def seg15AccY34 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY33 rho + rho 16556
def seg15AccY35 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY34 rho + rho 16561
def seg15AccY36 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY35 rho + rho 16566
def seg15AccY37 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY36 rho + rho 16571
def seg15AccY38 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY37 rho + rho 16576
def seg15AccY39 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY38 rho + rho 16581
def seg15AccY40 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY39 rho + rho 16586

theorem seg15AccY31_sum (rho : Nat -> Seg15.F) :
    seg15AccY31 rho = ((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) := by
  rw [seg15AccY31, seg15AccY30_sum]

theorem seg15AccY32_sum (rho : Nat -> Seg15.F) :
    seg15AccY32 rho = (((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) := by
  rw [seg15AccY32, seg15AccY31_sum]

theorem seg15AccY33_sum (rho : Nat -> Seg15.F) :
    seg15AccY33 rho = ((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) := by
  rw [seg15AccY33, seg15AccY32_sum]

theorem seg15AccY34_sum (rho : Nat -> Seg15.F) :
    seg15AccY34 rho = (((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) := by
  rw [seg15AccY34, seg15AccY33_sum]

theorem seg15AccY35_sum (rho : Nat -> Seg15.F) :
    seg15AccY35 rho = ((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) := by
  rw [seg15AccY35, seg15AccY34_sum]

theorem seg15AccY36_sum (rho : Nat -> Seg15.F) :
    seg15AccY36 rho = (((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) := by
  rw [seg15AccY36, seg15AccY35_sum]

theorem seg15AccY37_sum (rho : Nat -> Seg15.F) :
    seg15AccY37 rho = ((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) := by
  rw [seg15AccY37, seg15AccY36_sum]

theorem seg15AccY38_sum (rho : Nat -> Seg15.F) :
    seg15AccY38 rho = (((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) := by
  rw [seg15AccY38, seg15AccY37_sum]

theorem seg15AccY39_sum (rho : Nat -> Seg15.F) :
    seg15AccY39 rho = ((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) := by
  rw [seg15AccY39, seg15AccY38_sum]

theorem seg15AccY40_sum (rho : Nat -> Seg15.F) :
    seg15AccY40 rho = (((((((((((((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) + rho 16541) + rho 16546) + rho 16551) + rho 16556) + rho 16561) + rho 16566) + rho 16571) + rho 16576) + rho 16581) + rho 16586) := by
  rw [seg15AccY40, seg15AccY39_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
