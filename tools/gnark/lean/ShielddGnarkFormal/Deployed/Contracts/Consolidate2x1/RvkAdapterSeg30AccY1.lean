import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30AccY0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg30AccY11 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY10 rho + rho 28622
def seg30AccY12 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY11 rho + rho 28627
def seg30AccY13 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY12 rho + rho 28632
def seg30AccY14 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY13 rho + rho 28637
def seg30AccY15 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY14 rho + rho 28642
def seg30AccY16 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY15 rho + rho 28647
def seg30AccY17 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY16 rho + rho 28652
def seg30AccY18 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY17 rho + rho 28657
def seg30AccY19 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY18 rho + rho 28662
def seg30AccY20 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY19 rho + rho 28667

theorem seg30AccY11_sum (rho : Nat -> Seg30.F) :
    seg30AccY11 rho = ((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) := by
  rw [seg30AccY11, seg30AccY10_sum]

theorem seg30AccY12_sum (rho : Nat -> Seg30.F) :
    seg30AccY12 rho = (((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) := by
  rw [seg30AccY12, seg30AccY11_sum]

theorem seg30AccY13_sum (rho : Nat -> Seg30.F) :
    seg30AccY13 rho = ((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) := by
  rw [seg30AccY13, seg30AccY12_sum]

theorem seg30AccY14_sum (rho : Nat -> Seg30.F) :
    seg30AccY14 rho = (((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) := by
  rw [seg30AccY14, seg30AccY13_sum]

theorem seg30AccY15_sum (rho : Nat -> Seg30.F) :
    seg30AccY15 rho = ((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) := by
  rw [seg30AccY15, seg30AccY14_sum]

theorem seg30AccY16_sum (rho : Nat -> Seg30.F) :
    seg30AccY16 rho = (((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) := by
  rw [seg30AccY16, seg30AccY15_sum]

theorem seg30AccY17_sum (rho : Nat -> Seg30.F) :
    seg30AccY17 rho = ((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) := by
  rw [seg30AccY17, seg30AccY16_sum]

theorem seg30AccY18_sum (rho : Nat -> Seg30.F) :
    seg30AccY18 rho = (((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) := by
  rw [seg30AccY18, seg30AccY17_sum]

theorem seg30AccY19_sum (rho : Nat -> Seg30.F) :
    seg30AccY19 rho = ((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) := by
  rw [seg30AccY19, seg30AccY18_sum]

theorem seg30AccY20_sum (rho : Nat -> Seg30.F) :
    seg30AccY20 rho = (((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) := by
  rw [seg30AccY20, seg30AccY19_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
