import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30AccY5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg30AccY61 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY60 rho + rho 28872
def seg30AccY62 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY61 rho + rho 28877
def seg30AccY63 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY62 rho + rho 28882
def seg30AccY64 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY63 rho + rho 28887
def seg30AccY65 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY64 rho + rho 28892
def seg30AccY66 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY65 rho + rho 28897
def seg30AccY67 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY66 rho + rho 28902
def seg30AccY68 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY67 rho + rho 28907
def seg30AccY69 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY68 rho + rho 28912
def seg30AccY70 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY69 rho + rho 28917

theorem seg30AccY61_sum (rho : Nat -> Seg30.F) :
    seg30AccY61 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) + rho 28857) + rho 28862) + rho 28867) + rho 28872) := by
  rw [seg30AccY61, seg30AccY60_sum]

theorem seg30AccY62_sum (rho : Nat -> Seg30.F) :
    seg30AccY62 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) + rho 28857) + rho 28862) + rho 28867) + rho 28872) + rho 28877) := by
  rw [seg30AccY62, seg30AccY61_sum]

theorem seg30AccY63_sum (rho : Nat -> Seg30.F) :
    seg30AccY63 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) + rho 28857) + rho 28862) + rho 28867) + rho 28872) + rho 28877) + rho 28882) := by
  rw [seg30AccY63, seg30AccY62_sum]

theorem seg30AccY64_sum (rho : Nat -> Seg30.F) :
    seg30AccY64 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) + rho 28857) + rho 28862) + rho 28867) + rho 28872) + rho 28877) + rho 28882) + rho 28887) := by
  rw [seg30AccY64, seg30AccY63_sum]

theorem seg30AccY65_sum (rho : Nat -> Seg30.F) :
    seg30AccY65 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) + rho 28857) + rho 28862) + rho 28867) + rho 28872) + rho 28877) + rho 28882) + rho 28887) + rho 28892) := by
  rw [seg30AccY65, seg30AccY64_sum]

theorem seg30AccY66_sum (rho : Nat -> Seg30.F) :
    seg30AccY66 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) + rho 28857) + rho 28862) + rho 28867) + rho 28872) + rho 28877) + rho 28882) + rho 28887) + rho 28892) + rho 28897) := by
  rw [seg30AccY66, seg30AccY65_sum]

theorem seg30AccY67_sum (rho : Nat -> Seg30.F) :
    seg30AccY67 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) + rho 28857) + rho 28862) + rho 28867) + rho 28872) + rho 28877) + rho 28882) + rho 28887) + rho 28892) + rho 28897) + rho 28902) := by
  rw [seg30AccY67, seg30AccY66_sum]

theorem seg30AccY68_sum (rho : Nat -> Seg30.F) :
    seg30AccY68 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) + rho 28857) + rho 28862) + rho 28867) + rho 28872) + rho 28877) + rho 28882) + rho 28887) + rho 28892) + rho 28897) + rho 28902) + rho 28907) := by
  rw [seg30AccY68, seg30AccY67_sum]

theorem seg30AccY69_sum (rho : Nat -> Seg30.F) :
    seg30AccY69 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) + rho 28857) + rho 28862) + rho 28867) + rho 28872) + rho 28877) + rho 28882) + rho 28887) + rho 28892) + rho 28897) + rho 28902) + rho 28907) + rho 28912) := by
  rw [seg30AccY69, seg30AccY68_sum]

theorem seg30AccY70_sum (rho : Nat -> Seg30.F) :
    seg30AccY70 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28572 + rho 28577) + rho 28582) + rho 28587) + rho 28592) + rho 28597) + rho 28602) + rho 28607) + rho 28612) + rho 28617) + rho 28622) + rho 28627) + rho 28632) + rho 28637) + rho 28642) + rho 28647) + rho 28652) + rho 28657) + rho 28662) + rho 28667) + rho 28672) + rho 28677) + rho 28682) + rho 28687) + rho 28692) + rho 28697) + rho 28702) + rho 28707) + rho 28712) + rho 28717) + rho 28722) + rho 28727) + rho 28732) + rho 28737) + rho 28742) + rho 28747) + rho 28752) + rho 28757) + rho 28762) + rho 28767) + rho 28772) + rho 28777) + rho 28782) + rho 28787) + rho 28792) + rho 28797) + rho 28802) + rho 28807) + rho 28812) + rho 28817) + rho 28822) + rho 28827) + rho 28832) + rho 28837) + rho 28842) + rho 28847) + rho 28852) + rho 28857) + rho 28862) + rho 28867) + rho 28872) + rho 28877) + rho 28882) + rho 28887) + rho 28892) + rho 28897) + rho 28902) + rho 28907) + rho 28912) + rho 28917) := by
  rw [seg30AccY70, seg30AccY69_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
