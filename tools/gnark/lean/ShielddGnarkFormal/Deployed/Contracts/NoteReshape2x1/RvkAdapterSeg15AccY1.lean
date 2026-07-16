import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccY0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccY11 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY10 rho + rho 16441
def seg15AccY12 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY11 rho + rho 16446
def seg15AccY13 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY12 rho + rho 16451
def seg15AccY14 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY13 rho + rho 16456
def seg15AccY15 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY14 rho + rho 16461
def seg15AccY16 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY15 rho + rho 16466
def seg15AccY17 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY16 rho + rho 16471
def seg15AccY18 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY17 rho + rho 16476
def seg15AccY19 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY18 rho + rho 16481
def seg15AccY20 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY19 rho + rho 16486

theorem seg15AccY11_sum (rho : Nat -> Seg15.F) :
    seg15AccY11 rho = ((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) := by
  rw [seg15AccY11, seg15AccY10_sum]

theorem seg15AccY12_sum (rho : Nat -> Seg15.F) :
    seg15AccY12 rho = (((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) := by
  rw [seg15AccY12, seg15AccY11_sum]

theorem seg15AccY13_sum (rho : Nat -> Seg15.F) :
    seg15AccY13 rho = ((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) := by
  rw [seg15AccY13, seg15AccY12_sum]

theorem seg15AccY14_sum (rho : Nat -> Seg15.F) :
    seg15AccY14 rho = (((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) := by
  rw [seg15AccY14, seg15AccY13_sum]

theorem seg15AccY15_sum (rho : Nat -> Seg15.F) :
    seg15AccY15 rho = ((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) := by
  rw [seg15AccY15, seg15AccY14_sum]

theorem seg15AccY16_sum (rho : Nat -> Seg15.F) :
    seg15AccY16 rho = (((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) := by
  rw [seg15AccY16, seg15AccY15_sum]

theorem seg15AccY17_sum (rho : Nat -> Seg15.F) :
    seg15AccY17 rho = ((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) := by
  rw [seg15AccY17, seg15AccY16_sum]

theorem seg15AccY18_sum (rho : Nat -> Seg15.F) :
    seg15AccY18 rho = (((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) := by
  rw [seg15AccY18, seg15AccY17_sum]

theorem seg15AccY19_sum (rho : Nat -> Seg15.F) :
    seg15AccY19 rho = ((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) := by
  rw [seg15AccY19, seg15AccY18_sum]

theorem seg15AccY20_sum (rho : Nat -> Seg15.F) :
    seg15AccY20 rho = (((((((((((((((((((rho 16391 + rho 16396) + rho 16401) + rho 16406) + rho 16411) + rho 16416) + rho 16421) + rho 16426) + rho 16431) + rho 16436) + rho 16441) + rho 16446) + rho 16451) + rho 16456) + rho 16461) + rho 16466) + rho 16471) + rho 16476) + rho 16481) + rho 16486) := by
  rw [seg15AccY20, seg15AccY19_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
