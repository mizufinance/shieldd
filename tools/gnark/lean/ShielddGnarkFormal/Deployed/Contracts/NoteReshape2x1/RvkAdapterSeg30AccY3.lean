import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccY2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccY31 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY30 rho + rho 28722
def seg30AccY32 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY31 rho + rho 28727
def seg30AccY33 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY32 rho + rho 28732
def seg30AccY34 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY33 rho + rho 28737
def seg30AccY35 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY34 rho + rho 28742
def seg30AccY36 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY35 rho + rho 28747
def seg30AccY37 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY36 rho + rho 28752
def seg30AccY38 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY37 rho + rho 28757
def seg30AccY39 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY38 rho + rho 28762
def seg30AccY40 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY39 rho + rho 28767

theorem seg30AccY31_sum (rho : Nat -> Seg30.F) :
    seg30AccY31 rho = ((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) := by
  rw [seg30AccY31, seg30AccY30_sum]

theorem seg30AccY32_sum (rho : Nat -> Seg30.F) :
    seg30AccY32 rho = (((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) := by
  rw [seg30AccY32, seg30AccY31_sum]

theorem seg30AccY33_sum (rho : Nat -> Seg30.F) :
    seg30AccY33 rho = ((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) := by
  rw [seg30AccY33, seg30AccY32_sum]

theorem seg30AccY34_sum (rho : Nat -> Seg30.F) :
    seg30AccY34 rho = (((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) := by
  rw [seg30AccY34, seg30AccY33_sum]

theorem seg30AccY35_sum (rho : Nat -> Seg30.F) :
    seg30AccY35 rho = ((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) := by
  rw [seg30AccY35, seg30AccY34_sum]

theorem seg30AccY36_sum (rho : Nat -> Seg30.F) :
    seg30AccY36 rho = (((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) := by
  rw [seg30AccY36, seg30AccY35_sum]

theorem seg30AccY37_sum (rho : Nat -> Seg30.F) :
    seg30AccY37 rho = ((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) := by
  rw [seg30AccY37, seg30AccY36_sum]

theorem seg30AccY38_sum (rho : Nat -> Seg30.F) :
    seg30AccY38 rho = (((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) := by
  rw [seg30AccY38, seg30AccY37_sum]

theorem seg30AccY39_sum (rho : Nat -> Seg30.F) :
    seg30AccY39 rho = ((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) := by
  rw [seg30AccY39, seg30AccY38_sum]

theorem seg30AccY40_sum (rho : Nat -> Seg30.F) :
    seg30AccY40 rho = (((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) := by
  rw [seg30AccY40, seg30AccY39_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
