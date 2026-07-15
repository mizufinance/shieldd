import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30AccY4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg30AccY51 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY50 rho + rho 28822
def seg30AccY52 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY51 rho + rho 28827
def seg30AccY53 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY52 rho + rho 28832
def seg30AccY54 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY53 rho + rho 28837
def seg30AccY55 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY54 rho + rho 28842
def seg30AccY56 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY55 rho + rho 28847
def seg30AccY57 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY56 rho + rho 28852
def seg30AccY58 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY57 rho + rho 28857
def seg30AccY59 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY58 rho + rho 28862
def seg30AccY60 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY59 rho + rho 28867

theorem seg30AccY51_sum (rho : Nat -> Seg30.F) :
    seg30AccY51 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) := by
  rw [seg30AccY51, seg30AccY50_sum]

theorem seg30AccY52_sum (rho : Nat -> Seg30.F) :
    seg30AccY52 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) := by
  rw [seg30AccY52, seg30AccY51_sum]

theorem seg30AccY53_sum (rho : Nat -> Seg30.F) :
    seg30AccY53 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) := by
  rw [seg30AccY53, seg30AccY52_sum]

theorem seg30AccY54_sum (rho : Nat -> Seg30.F) :
    seg30AccY54 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) := by
  rw [seg30AccY54, seg30AccY53_sum]

theorem seg30AccY55_sum (rho : Nat -> Seg30.F) :
    seg30AccY55 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) := by
  rw [seg30AccY55, seg30AccY54_sum]

theorem seg30AccY56_sum (rho : Nat -> Seg30.F) :
    seg30AccY56 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) := by
  rw [seg30AccY56, seg30AccY55_sum]

theorem seg30AccY57_sum (rho : Nat -> Seg30.F) :
    seg30AccY57 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) := by
  rw [seg30AccY57, seg30AccY56_sum]

theorem seg30AccY58_sum (rho : Nat -> Seg30.F) :
    seg30AccY58 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) + rho 28857) := by
  rw [seg30AccY58, seg30AccY57_sum]

theorem seg30AccY59_sum (rho : Nat -> Seg30.F) :
    seg30AccY59 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) + rho 28857) + rho 28862) := by
  rw [seg30AccY59, seg30AccY58_sum]

theorem seg30AccY60_sum (rho : Nat -> Seg30.F) :
    seg30AccY60 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) + rho 28857) + rho 28862) + rho 28867) := by
  rw [seg30AccY60, seg30AccY59_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
