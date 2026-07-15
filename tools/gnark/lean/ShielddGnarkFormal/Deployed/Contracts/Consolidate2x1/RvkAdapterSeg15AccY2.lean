import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15AccY1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg15AccY21 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY20 rho + rho 16491
def seg15AccY22 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY21 rho + rho 16496
def seg15AccY23 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY22 rho + rho 16501
def seg15AccY24 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY23 rho + rho 16506
def seg15AccY25 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY24 rho + rho 16511
def seg15AccY26 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY25 rho + rho 16516
def seg15AccY27 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY26 rho + rho 16521
def seg15AccY28 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY27 rho + rho 16526
def seg15AccY29 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY28 rho + rho 16531
def seg15AccY30 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY29 rho + rho 16536

theorem seg15AccY21_sum (rho : Nat -> Seg15.F) :
    seg15AccY21 rho = ((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) := by
  rw [seg15AccY21, seg15AccY20_sum]

theorem seg15AccY22_sum (rho : Nat -> Seg15.F) :
    seg15AccY22 rho = (((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) := by
  rw [seg15AccY22, seg15AccY21_sum]

theorem seg15AccY23_sum (rho : Nat -> Seg15.F) :
    seg15AccY23 rho = ((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) := by
  rw [seg15AccY23, seg15AccY22_sum]

theorem seg15AccY24_sum (rho : Nat -> Seg15.F) :
    seg15AccY24 rho = (((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) := by
  rw [seg15AccY24, seg15AccY23_sum]

theorem seg15AccY25_sum (rho : Nat -> Seg15.F) :
    seg15AccY25 rho = ((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) := by
  rw [seg15AccY25, seg15AccY24_sum]

theorem seg15AccY26_sum (rho : Nat -> Seg15.F) :
    seg15AccY26 rho = (((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) := by
  rw [seg15AccY26, seg15AccY25_sum]

theorem seg15AccY27_sum (rho : Nat -> Seg15.F) :
    seg15AccY27 rho = ((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) := by
  rw [seg15AccY27, seg15AccY26_sum]

theorem seg15AccY28_sum (rho : Nat -> Seg15.F) :
    seg15AccY28 rho = (((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) := by
  rw [seg15AccY28, seg15AccY27_sum]

theorem seg15AccY29_sum (rho : Nat -> Seg15.F) :
    seg15AccY29 rho = ((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) := by
  rw [seg15AccY29, seg15AccY28_sum]

theorem seg15AccY30_sum (rho : Nat -> Seg15.F) :
    seg15AccY30 rho = (((((((((((((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) + rho 16491) + rho 16496) + rho 16501) + rho 16506) + rho 16511) + rho 16516) + rho 16521) + rho 16526) + rho 16531) + rho 16536) := by
  rw [seg15AccY30, seg15AccY29_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
