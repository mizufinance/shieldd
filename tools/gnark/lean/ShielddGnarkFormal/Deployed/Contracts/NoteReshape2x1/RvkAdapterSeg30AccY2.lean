import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccY1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccY21 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY20 rho + rho 28672
def seg30AccY22 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY21 rho + rho 28677
def seg30AccY23 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY22 rho + rho 28682
def seg30AccY24 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY23 rho + rho 28687
def seg30AccY25 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY24 rho + rho 28692
def seg30AccY26 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY25 rho + rho 28697
def seg30AccY27 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY26 rho + rho 28702
def seg30AccY28 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY27 rho + rho 28707
def seg30AccY29 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY28 rho + rho 28712
def seg30AccY30 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY29 rho + rho 28717

theorem seg30AccY21_sum (rho : Nat -> Seg30.F) :
    seg30AccY21 rho = ((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) := by
  rw [seg30AccY21, seg30AccY20_sum]

theorem seg30AccY22_sum (rho : Nat -> Seg30.F) :
    seg30AccY22 rho = (((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) := by
  rw [seg30AccY22, seg30AccY21_sum]

theorem seg30AccY23_sum (rho : Nat -> Seg30.F) :
    seg30AccY23 rho = ((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) := by
  rw [seg30AccY23, seg30AccY22_sum]

theorem seg30AccY24_sum (rho : Nat -> Seg30.F) :
    seg30AccY24 rho = (((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) := by
  rw [seg30AccY24, seg30AccY23_sum]

theorem seg30AccY25_sum (rho : Nat -> Seg30.F) :
    seg30AccY25 rho = ((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) := by
  rw [seg30AccY25, seg30AccY24_sum]

theorem seg30AccY26_sum (rho : Nat -> Seg30.F) :
    seg30AccY26 rho = (((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) := by
  rw [seg30AccY26, seg30AccY25_sum]

theorem seg30AccY27_sum (rho : Nat -> Seg30.F) :
    seg30AccY27 rho = ((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) := by
  rw [seg30AccY27, seg30AccY26_sum]

theorem seg30AccY28_sum (rho : Nat -> Seg30.F) :
    seg30AccY28 rho = (((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) := by
  rw [seg30AccY28, seg30AccY27_sum]

theorem seg30AccY29_sum (rho : Nat -> Seg30.F) :
    seg30AccY29 rho = ((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) := by
  rw [seg30AccY29, seg30AccY28_sum]

theorem seg30AccY30_sum (rho : Nat -> Seg30.F) :
    seg30AccY30 rho = (((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) := by
  rw [seg30AccY30, seg30AccY29_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
