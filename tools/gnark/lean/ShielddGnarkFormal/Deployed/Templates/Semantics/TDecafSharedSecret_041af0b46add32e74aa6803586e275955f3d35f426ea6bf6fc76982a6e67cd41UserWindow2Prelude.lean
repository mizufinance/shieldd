import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41UserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem table_and_initial (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (hbase : EdwardsBridge.onCurve (base rho)) :
    Window2ScalarMulBridge.TableRel (base rho) (twice rho) (triple rho) ∧
      Window2ScalarMulBridge.Lookup2Rel
        (scalarBits rho)[250]! (scalarBits rho)[249]!
        (base rho) (twice rho) (triple rho) (initial rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1808, r1809, r1810, r1811, r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821, r1822, r1823, r1824, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1808 at r1808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1809 at r1809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1810 at r1810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1811 at r1811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1812 at r1812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1813 at r1813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1814 at r1814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1815 at r1815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1816 at r1816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1817 at r1817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1818 at r1818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1819 at r1819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1820 at r1820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1821 at r1821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1822 at r1822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1823 at r1823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow1824 at r1824
  have htwice : EdwardsBridge.doubleSpec (base rho) (twice rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1810 + rho 1811) (rho 1812 + rho 1813) (rho 1814) (rho 1815) (rho 1816) (rho 1817) (rho 1818)
      (by simpa [base] using hbase)
      (by linear_combination r1808)
      (by linear_combination r1809)
      (by linear_combination r1810)
      (by linear_combination r1811)
      (by linear_combination r1812)
    simpa [base, twice] using hraw
  have htwiceOn : EdwardsBridge.onCurve (twice rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (base rho) (twice rho)
      hbase htwice
    rw [heq]
    exact EdwardsBridge.double_onCurve (base rho) hbase
  have htriple : EdwardsBridge.addSpec (twice rho) (base rho) (triple rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1817) (rho 1818) (rho 1810 + rho 1811) (rho 1812 + rho 1813)
      (rho 1819) (rho 1820) (rho 1821) (rho 1822) (rho 1823) (rho 1824)
      (by simpa [twice] using htwiceOn)
      (by simpa [base] using hbase)
      (by linear_combination r1813)
      (by linear_combination r1814)
      (by linear_combination r1815)
      (by linear_combination r1816)
      (by linear_combination r1817)
      (by linear_combination r1818)
    simpa [twice, base, triple] using hraw
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 251) (rho 250)
      (base rho) (twice rho) (triple rho) (initial rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 251) (rho 250)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 1826 + rho 1827, (1 : F) + rho 1829 + rho 1830⟩ := by
      constructor
      · refine ⟨(rho 1825 + (rho 1817) - (0)), rho 1826, ?_, ?_, ?_⟩
        · linear_combination r1819
        · linear_combination r1820
        · linear_combination r1821
      · refine ⟨(rho 1828 + (rho 1818) - ((1 : F))), rho 1829, ?_, ?_, ?_⟩
        · linear_combination r1822
        · linear_combination r1823
        · linear_combination r1824
    simpa [base, twice, triple, initial] using hraw
  refine ⟨⟨htwice, htriple⟩, ?_⟩
  simpa only [scalarBits_get] using hlookup

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport
