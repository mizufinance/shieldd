import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30AccY3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg30AccY41 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY40 rho + rho 28772
def seg30AccY42 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY41 rho + rho 28777
def seg30AccY43 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY42 rho + rho 28782
def seg30AccY44 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY43 rho + rho 28787
def seg30AccY45 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY44 rho + rho 28792
def seg30AccY46 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY45 rho + rho 28797
def seg30AccY47 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY46 rho + rho 28802
def seg30AccY48 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY47 rho + rho 28807
def seg30AccY49 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY48 rho + rho 28812
def seg30AccY50 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY49 rho + rho 28817

theorem seg30AccY41_sum (rho : Nat -> Seg30.F) :
    seg30AccY41 rho = ((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) := by
  rw [seg30AccY41, seg30AccY40_sum]

theorem seg30AccY42_sum (rho : Nat -> Seg30.F) :
    seg30AccY42 rho = (((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) := by
  rw [seg30AccY42, seg30AccY41_sum]

theorem seg30AccY43_sum (rho : Nat -> Seg30.F) :
    seg30AccY43 rho = ((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) := by
  rw [seg30AccY43, seg30AccY42_sum]

theorem seg30AccY44_sum (rho : Nat -> Seg30.F) :
    seg30AccY44 rho = (((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) := by
  rw [seg30AccY44, seg30AccY43_sum]

theorem seg30AccY45_sum (rho : Nat -> Seg30.F) :
    seg30AccY45 rho = ((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) := by
  rw [seg30AccY45, seg30AccY44_sum]

theorem seg30AccY46_sum (rho : Nat -> Seg30.F) :
    seg30AccY46 rho = (((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) := by
  rw [seg30AccY46, seg30AccY45_sum]

theorem seg30AccY47_sum (rho : Nat -> Seg30.F) :
    seg30AccY47 rho = ((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) := by
  rw [seg30AccY47, seg30AccY46_sum]

theorem seg30AccY48_sum (rho : Nat -> Seg30.F) :
    seg30AccY48 rho = (((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) := by
  rw [seg30AccY48, seg30AccY47_sum]

theorem seg30AccY49_sum (rho : Nat -> Seg30.F) :
    seg30AccY49 rho = ((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) := by
  rw [seg30AccY49, seg30AccY48_sum]

theorem seg30AccY50_sum (rho : Nat -> Seg30.F) :
    seg30AccY50 rho = (((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) := by
  rw [seg30AccY50, seg30AccY49_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
