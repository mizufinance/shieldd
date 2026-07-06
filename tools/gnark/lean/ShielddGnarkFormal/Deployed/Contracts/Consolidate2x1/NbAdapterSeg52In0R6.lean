import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1757 rho ∧ Seg52.relationRow1758 rho ∧ Seg52.relationRow1759 rho ∧ Seg52.relationRow1760 rho ∧ Seg52.relationRow1761 rho ∧ Seg52.relationRow1762 rho ∧ Seg52.relationRow1763 rho ∧ Seg52.relationRow1764 rho ∧ Seg52.relationRow1765 rho ∧ Seg52.relationRow1766 rho ∧ Seg52.relationRow1767 rho ∧ Seg52.relationRow1768 rho ∧ Seg52.relationRow1769 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p21, p22, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1757, r1758, r1759⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨r1760, r1761, r1762, r1763, r1764, r1765, r1766, r1767, r1768, r1769, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1757, r1758, r1759, r1760, r1761, r1762, r1763, r1764, r1765, r1766, r1767, r1768, r1769⟩

theorem seg52In0_rung66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45234 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX66 rho, seg52In0AccY66 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46146, rho 46147⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX66 rho, seg52In0AccY66 rho⟩ ⟨rho 46146, rho 46147⟩
        ⟨seg52In0AccX67 rho, seg52In0AccY67 rho⟩ ⟨rho 46159, rho 46160⟩ := by
  obtain ⟨r1757, r1758, r1759, r1760, r1761, r1762, r1763, r1764, r1765, r1766, r1767, r1768, r1769⟩ := seg52In0_rows66 rho h
  unfold Seg52.relationRow1757 at r1757

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1757

  unfold Seg52.relationRow1758 at r1758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1758

  unfold Seg52.relationRow1759 at r1759

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1759

  unfold Seg52.relationRow1760 at r1760

  unfold Seg52.relationRow1761 at r1761

  unfold Seg52.relationRow1762 at r1762

  unfold Seg52.relationRow1763 at r1763

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1763

  unfold Seg52.relationRow1764 at r1764

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1764

  unfold Seg52.relationRow1765 at r1765

  unfold Seg52.relationRow1766 at r1766

  unfold Seg52.relationRow1767 at r1767

  unfold Seg52.relationRow1768 at r1768

  unfold Seg52.relationRow1769 at r1769

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX67 rho = seg52In0AccX66 rho + rho 46154 := by
    unfold seg52In0AccX67 seg52In0AccX66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 66]

    ring

  have hnexty : seg52In0AccY67 rho = seg52In0AccY66 rho + rho 46155 := by
    unfold seg52In0AccY67 seg52In0AccY66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 66]

    ring

  have ha0 : (rho 46146 + rho 46147) * (seg52In0AccX66 rho + seg52In0AccY66 rho) = rho 46148 := by
    unfold seg52In0AccX66 seg52In0AccY66
    linear_combination r1757
  have ha1 : rho 46147 * seg52In0AccX66 rho = rho 46149 := by
    unfold seg52In0AccX66
    linear_combination r1758
  have ha2 : rho 46146 * seg52In0AccY66 rho = rho 46150 := by
    unfold seg52In0AccY66
    linear_combination r1759
  have ha3 : 3021 * rho 46149 * rho 46150 = rho 46151 := by
    linear_combination r1760
  have ha4 : rho 46152 * (1 + rho 46151) = rho 46149 + rho 46150 := by
    linear_combination r1761
  have ha5 : rho 46153 * (1 - rho 46151) = rho 46148 - rho 46149 - rho 46150 := by
    linear_combination r1762
  have haddx :
      rho 46152 * (1 + 3021 * (rho 46147 * seg52In0AccX66 rho) * (rho 46146 * seg52In0AccY66 rho)) =
        rho 46147 * seg52In0AccX66 rho + rho 46146 * seg52In0AccY66 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46153 * (1 - 3021 * (rho 46147 * seg52In0AccX66 rho) * (rho 46146 * seg52In0AccY66 rho)) =
        (-1) * (rho 46147 * seg52In0AccX66 rho) - rho 46146 * seg52In0AccY66 rho +
          (seg52In0AccY66 rho - seg52In0AccX66 rho * (-1)) * (rho 46146 + rho 46147) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46153 * (1 - rho 46151) = rho 46148 - rho 46149 - rho 46150 := ha5
      _ = (-1) * rho 46149 - rho 46150 + (seg52In0AccY66 rho - seg52In0AccX66 rho * (-1)) *
          (rho 46146 + rho 46147) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX67 rho = seg52In0AccX66 rho - Bool.toZMod bit * (seg52In0AccX66 rho - rho 46152) := by
    have hd : rho 46154 = Bool.toZMod bit * (rho 46152 - seg52In0AccX66 rho) := by
      rw [← hbit]
      unfold seg52In0AccX66
      linear_combination -r1763
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY67 rho = seg52In0AccY66 rho - Bool.toZMod bit * (seg52In0AccY66 rho - rho 46153) := by
    have hd : rho 46155 = Bool.toZMod bit * (rho 46153 - seg52In0AccY66 rho) := by
      rw [← hbit]
      unfold seg52In0AccY66
      linear_combination -r1764
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46146 * rho 46147 = rho 46156 := by linear_combination r1765
  have hd1 : rho 46146 * rho 46146 = rho 46157 := by linear_combination r1766
  have hd2 : rho 46147 * rho 46147 = rho 46158 := by linear_combination r1767
  have hd3 : rho 46159 * (rho 46147 * rho 46147 + rho 46146 * rho 46146 * (-1)) =
      2 * (rho 46146 * rho 46147) := by
    rw [hd0, hd1, hd2]
    linear_combination r1768
  have hd4 : rho 46160 * (2 - (rho 46147 * rho 46147 + rho 46146 * rho 46146 * (-1))) =
      rho 46147 * rho 46147 - rho 46146 * rho 46146 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1769
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX66 rho, seg52In0AccY66 rho⟩ ⟨rho 46146, rho 46147⟩
    ⟨rho 46152, rho 46153⟩ ⟨seg52In0AccX67 rho, seg52In0AccY67 rho⟩ ⟨rho 46159, rho 46160⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1770 rho ∧ Seg52.relationRow1771 rho ∧ Seg52.relationRow1772 rho ∧ Seg52.relationRow1773 rho ∧ Seg52.relationRow1774 rho ∧ Seg52.relationRow1775 rho ∧ Seg52.relationRow1776 rho ∧ Seg52.relationRow1777 rho ∧ Seg52.relationRow1778 rho ∧ Seg52.relationRow1779 rho ∧ Seg52.relationRow1780 rho ∧ Seg52.relationRow1781 rho ∧ Seg52.relationRow1782 rho := by
  unfold Seg52.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, r1770, r1771, r1772, r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1770, r1771, r1772, r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782⟩

theorem seg52In0_rung67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45235 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX67 rho, seg52In0AccY67 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46159, rho 46160⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX67 rho, seg52In0AccY67 rho⟩ ⟨rho 46159, rho 46160⟩
        ⟨seg52In0AccX68 rho, seg52In0AccY68 rho⟩ ⟨rho 46172, rho 46173⟩ := by
  obtain ⟨r1770, r1771, r1772, r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782⟩ := seg52In0_rows67 rho h
  unfold Seg52.relationRow1770 at r1770

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1770

  unfold Seg52.relationRow1771 at r1771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1771

  unfold Seg52.relationRow1772 at r1772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1772

  unfold Seg52.relationRow1773 at r1773

  unfold Seg52.relationRow1774 at r1774

  unfold Seg52.relationRow1775 at r1775

  unfold Seg52.relationRow1776 at r1776

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1776

  unfold Seg52.relationRow1777 at r1777

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1777

  unfold Seg52.relationRow1778 at r1778

  unfold Seg52.relationRow1779 at r1779

  unfold Seg52.relationRow1780 at r1780

  unfold Seg52.relationRow1781 at r1781

  unfold Seg52.relationRow1782 at r1782

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX68 rho = seg52In0AccX67 rho + rho 46167 := by
    unfold seg52In0AccX68 seg52In0AccX67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 67]

    ring

  have hnexty : seg52In0AccY68 rho = seg52In0AccY67 rho + rho 46168 := by
    unfold seg52In0AccY68 seg52In0AccY67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 67]

    ring

  have ha0 : (rho 46159 + rho 46160) * (seg52In0AccX67 rho + seg52In0AccY67 rho) = rho 46161 := by
    unfold seg52In0AccX67 seg52In0AccY67
    linear_combination r1770
  have ha1 : rho 46160 * seg52In0AccX67 rho = rho 46162 := by
    unfold seg52In0AccX67
    linear_combination r1771
  have ha2 : rho 46159 * seg52In0AccY67 rho = rho 46163 := by
    unfold seg52In0AccY67
    linear_combination r1772
  have ha3 : 3021 * rho 46162 * rho 46163 = rho 46164 := by
    linear_combination r1773
  have ha4 : rho 46165 * (1 + rho 46164) = rho 46162 + rho 46163 := by
    linear_combination r1774
  have ha5 : rho 46166 * (1 - rho 46164) = rho 46161 - rho 46162 - rho 46163 := by
    linear_combination r1775
  have haddx :
      rho 46165 * (1 + 3021 * (rho 46160 * seg52In0AccX67 rho) * (rho 46159 * seg52In0AccY67 rho)) =
        rho 46160 * seg52In0AccX67 rho + rho 46159 * seg52In0AccY67 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46166 * (1 - 3021 * (rho 46160 * seg52In0AccX67 rho) * (rho 46159 * seg52In0AccY67 rho)) =
        (-1) * (rho 46160 * seg52In0AccX67 rho) - rho 46159 * seg52In0AccY67 rho +
          (seg52In0AccY67 rho - seg52In0AccX67 rho * (-1)) * (rho 46159 + rho 46160) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46166 * (1 - rho 46164) = rho 46161 - rho 46162 - rho 46163 := ha5
      _ = (-1) * rho 46162 - rho 46163 + (seg52In0AccY67 rho - seg52In0AccX67 rho * (-1)) *
          (rho 46159 + rho 46160) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX68 rho = seg52In0AccX67 rho - Bool.toZMod bit * (seg52In0AccX67 rho - rho 46165) := by
    have hd : rho 46167 = Bool.toZMod bit * (rho 46165 - seg52In0AccX67 rho) := by
      rw [← hbit]
      unfold seg52In0AccX67
      linear_combination -r1776
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY68 rho = seg52In0AccY67 rho - Bool.toZMod bit * (seg52In0AccY67 rho - rho 46166) := by
    have hd : rho 46168 = Bool.toZMod bit * (rho 46166 - seg52In0AccY67 rho) := by
      rw [← hbit]
      unfold seg52In0AccY67
      linear_combination -r1777
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46159 * rho 46160 = rho 46169 := by linear_combination r1778
  have hd1 : rho 46159 * rho 46159 = rho 46170 := by linear_combination r1779
  have hd2 : rho 46160 * rho 46160 = rho 46171 := by linear_combination r1780
  have hd3 : rho 46172 * (rho 46160 * rho 46160 + rho 46159 * rho 46159 * (-1)) =
      2 * (rho 46159 * rho 46160) := by
    rw [hd0, hd1, hd2]
    linear_combination r1781
  have hd4 : rho 46173 * (2 - (rho 46160 * rho 46160 + rho 46159 * rho 46159 * (-1))) =
      rho 46160 * rho 46160 - rho 46159 * rho 46159 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1782
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX67 rho, seg52In0AccY67 rho⟩ ⟨rho 46159, rho 46160⟩
    ⟨rho 46165, rho 46166⟩ ⟨seg52In0AccX68 rho, seg52In0AccY68 rho⟩ ⟨rho 46172, rho 46173⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1783 rho ∧ Seg52.relationRow1784 rho ∧ Seg52.relationRow1785 rho ∧ Seg52.relationRow1786 rho ∧ Seg52.relationRow1787 rho ∧ Seg52.relationRow1788 rho ∧ Seg52.relationRow1789 rho ∧ Seg52.relationRow1790 rho ∧ Seg52.relationRow1791 rho ∧ Seg52.relationRow1792 rho ∧ Seg52.relationRow1793 rho ∧ Seg52.relationRow1794 rho ∧ Seg52.relationRow1795 rho := by
  unfold Seg52.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1783, r1784, r1785, r1786, r1787, r1788, r1789, r1790, r1791, r1792, r1793, r1794, r1795, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1783, r1784, r1785, r1786, r1787, r1788, r1789, r1790, r1791, r1792, r1793, r1794, r1795⟩

theorem seg52In0_rung68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45236 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX68 rho, seg52In0AccY68 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46172, rho 46173⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX68 rho, seg52In0AccY68 rho⟩ ⟨rho 46172, rho 46173⟩
        ⟨seg52In0AccX69 rho, seg52In0AccY69 rho⟩ ⟨rho 46185, rho 46186⟩ := by
  obtain ⟨r1783, r1784, r1785, r1786, r1787, r1788, r1789, r1790, r1791, r1792, r1793, r1794, r1795⟩ := seg52In0_rows68 rho h
  unfold Seg52.relationRow1783 at r1783

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1783

  unfold Seg52.relationRow1784 at r1784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1784

  unfold Seg52.relationRow1785 at r1785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1785

  unfold Seg52.relationRow1786 at r1786

  unfold Seg52.relationRow1787 at r1787

  unfold Seg52.relationRow1788 at r1788

  unfold Seg52.relationRow1789 at r1789

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1789

  unfold Seg52.relationRow1790 at r1790

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1790

  unfold Seg52.relationRow1791 at r1791

  unfold Seg52.relationRow1792 at r1792

  unfold Seg52.relationRow1793 at r1793

  unfold Seg52.relationRow1794 at r1794

  unfold Seg52.relationRow1795 at r1795

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX69 rho = seg52In0AccX68 rho + rho 46180 := by
    unfold seg52In0AccX69 seg52In0AccX68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 68]

    ring

  have hnexty : seg52In0AccY69 rho = seg52In0AccY68 rho + rho 46181 := by
    unfold seg52In0AccY69 seg52In0AccY68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 68]

    ring

  have ha0 : (rho 46172 + rho 46173) * (seg52In0AccX68 rho + seg52In0AccY68 rho) = rho 46174 := by
    unfold seg52In0AccX68 seg52In0AccY68
    linear_combination r1783
  have ha1 : rho 46173 * seg52In0AccX68 rho = rho 46175 := by
    unfold seg52In0AccX68
    linear_combination r1784
  have ha2 : rho 46172 * seg52In0AccY68 rho = rho 46176 := by
    unfold seg52In0AccY68
    linear_combination r1785
  have ha3 : 3021 * rho 46175 * rho 46176 = rho 46177 := by
    linear_combination r1786
  have ha4 : rho 46178 * (1 + rho 46177) = rho 46175 + rho 46176 := by
    linear_combination r1787
  have ha5 : rho 46179 * (1 - rho 46177) = rho 46174 - rho 46175 - rho 46176 := by
    linear_combination r1788
  have haddx :
      rho 46178 * (1 + 3021 * (rho 46173 * seg52In0AccX68 rho) * (rho 46172 * seg52In0AccY68 rho)) =
        rho 46173 * seg52In0AccX68 rho + rho 46172 * seg52In0AccY68 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46179 * (1 - 3021 * (rho 46173 * seg52In0AccX68 rho) * (rho 46172 * seg52In0AccY68 rho)) =
        (-1) * (rho 46173 * seg52In0AccX68 rho) - rho 46172 * seg52In0AccY68 rho +
          (seg52In0AccY68 rho - seg52In0AccX68 rho * (-1)) * (rho 46172 + rho 46173) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46179 * (1 - rho 46177) = rho 46174 - rho 46175 - rho 46176 := ha5
      _ = (-1) * rho 46175 - rho 46176 + (seg52In0AccY68 rho - seg52In0AccX68 rho * (-1)) *
          (rho 46172 + rho 46173) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX69 rho = seg52In0AccX68 rho - Bool.toZMod bit * (seg52In0AccX68 rho - rho 46178) := by
    have hd : rho 46180 = Bool.toZMod bit * (rho 46178 - seg52In0AccX68 rho) := by
      rw [← hbit]
      unfold seg52In0AccX68
      linear_combination -r1789
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY69 rho = seg52In0AccY68 rho - Bool.toZMod bit * (seg52In0AccY68 rho - rho 46179) := by
    have hd : rho 46181 = Bool.toZMod bit * (rho 46179 - seg52In0AccY68 rho) := by
      rw [← hbit]
      unfold seg52In0AccY68
      linear_combination -r1790
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46172 * rho 46173 = rho 46182 := by linear_combination r1791
  have hd1 : rho 46172 * rho 46172 = rho 46183 := by linear_combination r1792
  have hd2 : rho 46173 * rho 46173 = rho 46184 := by linear_combination r1793
  have hd3 : rho 46185 * (rho 46173 * rho 46173 + rho 46172 * rho 46172 * (-1)) =
      2 * (rho 46172 * rho 46173) := by
    rw [hd0, hd1, hd2]
    linear_combination r1794
  have hd4 : rho 46186 * (2 - (rho 46173 * rho 46173 + rho 46172 * rho 46172 * (-1))) =
      rho 46173 * rho 46173 - rho 46172 * rho 46172 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1795
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX68 rho, seg52In0AccY68 rho⟩ ⟨rho 46172, rho 46173⟩
    ⟨rho 46178, rho 46179⟩ ⟨seg52In0AccX69 rho, seg52In0AccY69 rho⟩ ⟨rho 46185, rho 46186⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1796 rho ∧ Seg52.relationRow1797 rho ∧ Seg52.relationRow1798 rho ∧ Seg52.relationRow1799 rho ∧ Seg52.relationRow1800 rho ∧ Seg52.relationRow1801 rho ∧ Seg52.relationRow1802 rho ∧ Seg52.relationRow1803 rho ∧ Seg52.relationRow1804 rho ∧ Seg52.relationRow1805 rho ∧ Seg52.relationRow1806 rho ∧ Seg52.relationRow1807 rho ∧ Seg52.relationRow1808 rho := by
  unfold Seg52.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1796, r1797, r1798, r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1796, r1797, r1798, r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808⟩

theorem seg52In0_rung69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45237 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX69 rho, seg52In0AccY69 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46185, rho 46186⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX69 rho, seg52In0AccY69 rho⟩ ⟨rho 46185, rho 46186⟩
        ⟨seg52In0AccX70 rho, seg52In0AccY70 rho⟩ ⟨rho 46198, rho 46199⟩ := by
  obtain ⟨r1796, r1797, r1798, r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808⟩ := seg52In0_rows69 rho h
  unfold Seg52.relationRow1796 at r1796

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1796

  unfold Seg52.relationRow1797 at r1797

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1797

  unfold Seg52.relationRow1798 at r1798

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1798

  unfold Seg52.relationRow1799 at r1799

  unfold Seg52.relationRow1800 at r1800

  unfold Seg52.relationRow1801 at r1801

  unfold Seg52.relationRow1802 at r1802

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1802

  unfold Seg52.relationRow1803 at r1803

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1803

  unfold Seg52.relationRow1804 at r1804

  unfold Seg52.relationRow1805 at r1805

  unfold Seg52.relationRow1806 at r1806

  unfold Seg52.relationRow1807 at r1807

  unfold Seg52.relationRow1808 at r1808

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX70 rho = seg52In0AccX69 rho + rho 46193 := by
    unfold seg52In0AccX70 seg52In0AccX69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 69]

    ring

  have hnexty : seg52In0AccY70 rho = seg52In0AccY69 rho + rho 46194 := by
    unfold seg52In0AccY70 seg52In0AccY69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 69]

    ring

  have ha0 : (rho 46185 + rho 46186) * (seg52In0AccX69 rho + seg52In0AccY69 rho) = rho 46187 := by
    unfold seg52In0AccX69 seg52In0AccY69
    linear_combination r1796
  have ha1 : rho 46186 * seg52In0AccX69 rho = rho 46188 := by
    unfold seg52In0AccX69
    linear_combination r1797
  have ha2 : rho 46185 * seg52In0AccY69 rho = rho 46189 := by
    unfold seg52In0AccY69
    linear_combination r1798
  have ha3 : 3021 * rho 46188 * rho 46189 = rho 46190 := by
    linear_combination r1799
  have ha4 : rho 46191 * (1 + rho 46190) = rho 46188 + rho 46189 := by
    linear_combination r1800
  have ha5 : rho 46192 * (1 - rho 46190) = rho 46187 - rho 46188 - rho 46189 := by
    linear_combination r1801
  have haddx :
      rho 46191 * (1 + 3021 * (rho 46186 * seg52In0AccX69 rho) * (rho 46185 * seg52In0AccY69 rho)) =
        rho 46186 * seg52In0AccX69 rho + rho 46185 * seg52In0AccY69 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46192 * (1 - 3021 * (rho 46186 * seg52In0AccX69 rho) * (rho 46185 * seg52In0AccY69 rho)) =
        (-1) * (rho 46186 * seg52In0AccX69 rho) - rho 46185 * seg52In0AccY69 rho +
          (seg52In0AccY69 rho - seg52In0AccX69 rho * (-1)) * (rho 46185 + rho 46186) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46192 * (1 - rho 46190) = rho 46187 - rho 46188 - rho 46189 := ha5
      _ = (-1) * rho 46188 - rho 46189 + (seg52In0AccY69 rho - seg52In0AccX69 rho * (-1)) *
          (rho 46185 + rho 46186) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX70 rho = seg52In0AccX69 rho - Bool.toZMod bit * (seg52In0AccX69 rho - rho 46191) := by
    have hd : rho 46193 = Bool.toZMod bit * (rho 46191 - seg52In0AccX69 rho) := by
      rw [← hbit]
      unfold seg52In0AccX69
      linear_combination -r1802
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY70 rho = seg52In0AccY69 rho - Bool.toZMod bit * (seg52In0AccY69 rho - rho 46192) := by
    have hd : rho 46194 = Bool.toZMod bit * (rho 46192 - seg52In0AccY69 rho) := by
      rw [← hbit]
      unfold seg52In0AccY69
      linear_combination -r1803
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46185 * rho 46186 = rho 46195 := by linear_combination r1804
  have hd1 : rho 46185 * rho 46185 = rho 46196 := by linear_combination r1805
  have hd2 : rho 46186 * rho 46186 = rho 46197 := by linear_combination r1806
  have hd3 : rho 46198 * (rho 46186 * rho 46186 + rho 46185 * rho 46185 * (-1)) =
      2 * (rho 46185 * rho 46186) := by
    rw [hd0, hd1, hd2]
    linear_combination r1807
  have hd4 : rho 46199 * (2 - (rho 46186 * rho 46186 + rho 46185 * rho 46185 * (-1))) =
      rho 46186 * rho 46186 - rho 46185 * rho 46185 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1808
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX69 rho, seg52In0AccY69 rho⟩ ⟨rho 46185, rho 46186⟩
    ⟨rho 46191, rho 46192⟩ ⟨seg52In0AccX70 rho, seg52In0AccY70 rho⟩ ⟨rho 46198, rho 46199⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1809 rho ∧ Seg52.relationRow1810 rho ∧ Seg52.relationRow1811 rho ∧ Seg52.relationRow1812 rho ∧ Seg52.relationRow1813 rho ∧ Seg52.relationRow1814 rho ∧ Seg52.relationRow1815 rho ∧ Seg52.relationRow1816 rho ∧ Seg52.relationRow1817 rho ∧ Seg52.relationRow1818 rho ∧ Seg52.relationRow1819 rho ∧ Seg52.relationRow1820 rho ∧ Seg52.relationRow1821 rho := by
  unfold Seg52.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1809, r1810, r1811, r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1809, r1810, r1811, r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821⟩

theorem seg52In0_rung70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45238 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX70 rho, seg52In0AccY70 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46198, rho 46199⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX70 rho, seg52In0AccY70 rho⟩ ⟨rho 46198, rho 46199⟩
        ⟨seg52In0AccX71 rho, seg52In0AccY71 rho⟩ ⟨rho 46211, rho 46212⟩ := by
  obtain ⟨r1809, r1810, r1811, r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821⟩ := seg52In0_rows70 rho h
  unfold Seg52.relationRow1809 at r1809

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1809

  unfold Seg52.relationRow1810 at r1810

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1810

  unfold Seg52.relationRow1811 at r1811

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1811

  unfold Seg52.relationRow1812 at r1812

  unfold Seg52.relationRow1813 at r1813

  unfold Seg52.relationRow1814 at r1814

  unfold Seg52.relationRow1815 at r1815

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1815

  unfold Seg52.relationRow1816 at r1816

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1816

  unfold Seg52.relationRow1817 at r1817

  unfold Seg52.relationRow1818 at r1818

  unfold Seg52.relationRow1819 at r1819

  unfold Seg52.relationRow1820 at r1820

  unfold Seg52.relationRow1821 at r1821

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX71 rho = seg52In0AccX70 rho + rho 46206 := by
    unfold seg52In0AccX71 seg52In0AccX70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 70]

    ring

  have hnexty : seg52In0AccY71 rho = seg52In0AccY70 rho + rho 46207 := by
    unfold seg52In0AccY71 seg52In0AccY70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 70]

    ring

  have ha0 : (rho 46198 + rho 46199) * (seg52In0AccX70 rho + seg52In0AccY70 rho) = rho 46200 := by
    unfold seg52In0AccX70 seg52In0AccY70
    linear_combination r1809
  have ha1 : rho 46199 * seg52In0AccX70 rho = rho 46201 := by
    unfold seg52In0AccX70
    linear_combination r1810
  have ha2 : rho 46198 * seg52In0AccY70 rho = rho 46202 := by
    unfold seg52In0AccY70
    linear_combination r1811
  have ha3 : 3021 * rho 46201 * rho 46202 = rho 46203 := by
    linear_combination r1812
  have ha4 : rho 46204 * (1 + rho 46203) = rho 46201 + rho 46202 := by
    linear_combination r1813
  have ha5 : rho 46205 * (1 - rho 46203) = rho 46200 - rho 46201 - rho 46202 := by
    linear_combination r1814
  have haddx :
      rho 46204 * (1 + 3021 * (rho 46199 * seg52In0AccX70 rho) * (rho 46198 * seg52In0AccY70 rho)) =
        rho 46199 * seg52In0AccX70 rho + rho 46198 * seg52In0AccY70 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46205 * (1 - 3021 * (rho 46199 * seg52In0AccX70 rho) * (rho 46198 * seg52In0AccY70 rho)) =
        (-1) * (rho 46199 * seg52In0AccX70 rho) - rho 46198 * seg52In0AccY70 rho +
          (seg52In0AccY70 rho - seg52In0AccX70 rho * (-1)) * (rho 46198 + rho 46199) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46205 * (1 - rho 46203) = rho 46200 - rho 46201 - rho 46202 := ha5
      _ = (-1) * rho 46201 - rho 46202 + (seg52In0AccY70 rho - seg52In0AccX70 rho * (-1)) *
          (rho 46198 + rho 46199) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX71 rho = seg52In0AccX70 rho - Bool.toZMod bit * (seg52In0AccX70 rho - rho 46204) := by
    have hd : rho 46206 = Bool.toZMod bit * (rho 46204 - seg52In0AccX70 rho) := by
      rw [← hbit]
      unfold seg52In0AccX70
      linear_combination -r1815
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY71 rho = seg52In0AccY70 rho - Bool.toZMod bit * (seg52In0AccY70 rho - rho 46205) := by
    have hd : rho 46207 = Bool.toZMod bit * (rho 46205 - seg52In0AccY70 rho) := by
      rw [← hbit]
      unfold seg52In0AccY70
      linear_combination -r1816
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46198 * rho 46199 = rho 46208 := by linear_combination r1817
  have hd1 : rho 46198 * rho 46198 = rho 46209 := by linear_combination r1818
  have hd2 : rho 46199 * rho 46199 = rho 46210 := by linear_combination r1819
  have hd3 : rho 46211 * (rho 46199 * rho 46199 + rho 46198 * rho 46198 * (-1)) =
      2 * (rho 46198 * rho 46199) := by
    rw [hd0, hd1, hd2]
    linear_combination r1820
  have hd4 : rho 46212 * (2 - (rho 46199 * rho 46199 + rho 46198 * rho 46198 * (-1))) =
      rho 46199 * rho 46199 - rho 46198 * rho 46198 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1821
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX70 rho, seg52In0AccY70 rho⟩ ⟨rho 46198, rho 46199⟩
    ⟨rho 46204, rho 46205⟩ ⟨seg52In0AccX71 rho, seg52In0AccY71 rho⟩ ⟨rho 46211, rho 46212⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1822 rho ∧ Seg52.relationRow1823 rho ∧ Seg52.relationRow1824 rho ∧ Seg52.relationRow1825 rho ∧ Seg52.relationRow1826 rho ∧ Seg52.relationRow1827 rho ∧ Seg52.relationRow1828 rho ∧ Seg52.relationRow1829 rho ∧ Seg52.relationRow1830 rho ∧ Seg52.relationRow1831 rho ∧ Seg52.relationRow1832 rho ∧ Seg52.relationRow1833 rho ∧ Seg52.relationRow1834 rho := by
  unfold Seg52.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1822, r1823, r1824, r1825, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834, _, _, _, _, _⟩

  exact ⟨r1822, r1823, r1824, r1825, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834⟩

theorem seg52In0_rung71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45239 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX71 rho, seg52In0AccY71 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46211, rho 46212⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX71 rho, seg52In0AccY71 rho⟩ ⟨rho 46211, rho 46212⟩
        ⟨seg52In0AccX72 rho, seg52In0AccY72 rho⟩ ⟨rho 46224, rho 46225⟩ := by
  obtain ⟨r1822, r1823, r1824, r1825, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834⟩ := seg52In0_rows71 rho h
  unfold Seg52.relationRow1822 at r1822

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1822

  unfold Seg52.relationRow1823 at r1823

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1823

  unfold Seg52.relationRow1824 at r1824

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1824

  unfold Seg52.relationRow1825 at r1825

  unfold Seg52.relationRow1826 at r1826

  unfold Seg52.relationRow1827 at r1827

  unfold Seg52.relationRow1828 at r1828

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1828

  unfold Seg52.relationRow1829 at r1829

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1829

  unfold Seg52.relationRow1830 at r1830

  unfold Seg52.relationRow1831 at r1831

  unfold Seg52.relationRow1832 at r1832

  unfold Seg52.relationRow1833 at r1833

  unfold Seg52.relationRow1834 at r1834

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX72 rho = seg52In0AccX71 rho + rho 46219 := by
    unfold seg52In0AccX72 seg52In0AccX71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 71]

    ring

  have hnexty : seg52In0AccY72 rho = seg52In0AccY71 rho + rho 46220 := by
    unfold seg52In0AccY72 seg52In0AccY71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 71]

    ring

  have ha0 : (rho 46211 + rho 46212) * (seg52In0AccX71 rho + seg52In0AccY71 rho) = rho 46213 := by
    unfold seg52In0AccX71 seg52In0AccY71
    linear_combination r1822
  have ha1 : rho 46212 * seg52In0AccX71 rho = rho 46214 := by
    unfold seg52In0AccX71
    linear_combination r1823
  have ha2 : rho 46211 * seg52In0AccY71 rho = rho 46215 := by
    unfold seg52In0AccY71
    linear_combination r1824
  have ha3 : 3021 * rho 46214 * rho 46215 = rho 46216 := by
    linear_combination r1825
  have ha4 : rho 46217 * (1 + rho 46216) = rho 46214 + rho 46215 := by
    linear_combination r1826
  have ha5 : rho 46218 * (1 - rho 46216) = rho 46213 - rho 46214 - rho 46215 := by
    linear_combination r1827
  have haddx :
      rho 46217 * (1 + 3021 * (rho 46212 * seg52In0AccX71 rho) * (rho 46211 * seg52In0AccY71 rho)) =
        rho 46212 * seg52In0AccX71 rho + rho 46211 * seg52In0AccY71 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46218 * (1 - 3021 * (rho 46212 * seg52In0AccX71 rho) * (rho 46211 * seg52In0AccY71 rho)) =
        (-1) * (rho 46212 * seg52In0AccX71 rho) - rho 46211 * seg52In0AccY71 rho +
          (seg52In0AccY71 rho - seg52In0AccX71 rho * (-1)) * (rho 46211 + rho 46212) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46218 * (1 - rho 46216) = rho 46213 - rho 46214 - rho 46215 := ha5
      _ = (-1) * rho 46214 - rho 46215 + (seg52In0AccY71 rho - seg52In0AccX71 rho * (-1)) *
          (rho 46211 + rho 46212) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX72 rho = seg52In0AccX71 rho - Bool.toZMod bit * (seg52In0AccX71 rho - rho 46217) := by
    have hd : rho 46219 = Bool.toZMod bit * (rho 46217 - seg52In0AccX71 rho) := by
      rw [← hbit]
      unfold seg52In0AccX71
      linear_combination -r1828
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY72 rho = seg52In0AccY71 rho - Bool.toZMod bit * (seg52In0AccY71 rho - rho 46218) := by
    have hd : rho 46220 = Bool.toZMod bit * (rho 46218 - seg52In0AccY71 rho) := by
      rw [← hbit]
      unfold seg52In0AccY71
      linear_combination -r1829
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46211 * rho 46212 = rho 46221 := by linear_combination r1830
  have hd1 : rho 46211 * rho 46211 = rho 46222 := by linear_combination r1831
  have hd2 : rho 46212 * rho 46212 = rho 46223 := by linear_combination r1832
  have hd3 : rho 46224 * (rho 46212 * rho 46212 + rho 46211 * rho 46211 * (-1)) =
      2 * (rho 46211 * rho 46212) := by
    rw [hd0, hd1, hd2]
    linear_combination r1833
  have hd4 : rho 46225 * (2 - (rho 46212 * rho 46212 + rho 46211 * rho 46211 * (-1))) =
      rho 46212 * rho 46212 - rho 46211 * rho 46211 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1834
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX71 rho, seg52In0AccY71 rho⟩ ⟨rho 46211, rho 46212⟩
    ⟨rho 46217, rho 46218⟩ ⟨seg52In0AccX72 rho, seg52In0AccY72 rho⟩ ⟨rho 46224, rho 46225⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1835 rho ∧ Seg52.relationRow1836 rho ∧ Seg52.relationRow1837 rho ∧ Seg52.relationRow1838 rho ∧ Seg52.relationRow1839 rho ∧ Seg52.relationRow1840 rho ∧ Seg52.relationRow1841 rho ∧ Seg52.relationRow1842 rho ∧ Seg52.relationRow1843 rho ∧ Seg52.relationRow1844 rho ∧ Seg52.relationRow1845 rho ∧ Seg52.relationRow1846 rho ∧ Seg52.relationRow1847 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p22, p23, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1835, r1836, r1837, r1838, r1839⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1835, r1836, r1837, r1838, r1839, r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847⟩

theorem seg52In0_rung72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45240 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX72 rho, seg52In0AccY72 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46224, rho 46225⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX72 rho, seg52In0AccY72 rho⟩ ⟨rho 46224, rho 46225⟩
        ⟨seg52In0AccX73 rho, seg52In0AccY73 rho⟩ ⟨rho 46237, rho 46238⟩ := by
  obtain ⟨r1835, r1836, r1837, r1838, r1839, r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847⟩ := seg52In0_rows72 rho h
  unfold Seg52.relationRow1835 at r1835

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1835

  unfold Seg52.relationRow1836 at r1836

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1836

  unfold Seg52.relationRow1837 at r1837

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1837

  unfold Seg52.relationRow1838 at r1838

  unfold Seg52.relationRow1839 at r1839

  unfold Seg52.relationRow1840 at r1840

  unfold Seg52.relationRow1841 at r1841

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1841

  unfold Seg52.relationRow1842 at r1842

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1842

  unfold Seg52.relationRow1843 at r1843

  unfold Seg52.relationRow1844 at r1844

  unfold Seg52.relationRow1845 at r1845

  unfold Seg52.relationRow1846 at r1846

  unfold Seg52.relationRow1847 at r1847

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX73 rho = seg52In0AccX72 rho + rho 46232 := by
    unfold seg52In0AccX73 seg52In0AccX72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 72]

    ring

  have hnexty : seg52In0AccY73 rho = seg52In0AccY72 rho + rho 46233 := by
    unfold seg52In0AccY73 seg52In0AccY72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 72]

    ring

  have ha0 : (rho 46224 + rho 46225) * (seg52In0AccX72 rho + seg52In0AccY72 rho) = rho 46226 := by
    unfold seg52In0AccX72 seg52In0AccY72
    linear_combination r1835
  have ha1 : rho 46225 * seg52In0AccX72 rho = rho 46227 := by
    unfold seg52In0AccX72
    linear_combination r1836
  have ha2 : rho 46224 * seg52In0AccY72 rho = rho 46228 := by
    unfold seg52In0AccY72
    linear_combination r1837
  have ha3 : 3021 * rho 46227 * rho 46228 = rho 46229 := by
    linear_combination r1838
  have ha4 : rho 46230 * (1 + rho 46229) = rho 46227 + rho 46228 := by
    linear_combination r1839
  have ha5 : rho 46231 * (1 - rho 46229) = rho 46226 - rho 46227 - rho 46228 := by
    linear_combination r1840
  have haddx :
      rho 46230 * (1 + 3021 * (rho 46225 * seg52In0AccX72 rho) * (rho 46224 * seg52In0AccY72 rho)) =
        rho 46225 * seg52In0AccX72 rho + rho 46224 * seg52In0AccY72 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46231 * (1 - 3021 * (rho 46225 * seg52In0AccX72 rho) * (rho 46224 * seg52In0AccY72 rho)) =
        (-1) * (rho 46225 * seg52In0AccX72 rho) - rho 46224 * seg52In0AccY72 rho +
          (seg52In0AccY72 rho - seg52In0AccX72 rho * (-1)) * (rho 46224 + rho 46225) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46231 * (1 - rho 46229) = rho 46226 - rho 46227 - rho 46228 := ha5
      _ = (-1) * rho 46227 - rho 46228 + (seg52In0AccY72 rho - seg52In0AccX72 rho * (-1)) *
          (rho 46224 + rho 46225) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX73 rho = seg52In0AccX72 rho - Bool.toZMod bit * (seg52In0AccX72 rho - rho 46230) := by
    have hd : rho 46232 = Bool.toZMod bit * (rho 46230 - seg52In0AccX72 rho) := by
      rw [← hbit]
      unfold seg52In0AccX72
      linear_combination -r1841
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY73 rho = seg52In0AccY72 rho - Bool.toZMod bit * (seg52In0AccY72 rho - rho 46231) := by
    have hd : rho 46233 = Bool.toZMod bit * (rho 46231 - seg52In0AccY72 rho) := by
      rw [← hbit]
      unfold seg52In0AccY72
      linear_combination -r1842
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46224 * rho 46225 = rho 46234 := by linear_combination r1843
  have hd1 : rho 46224 * rho 46224 = rho 46235 := by linear_combination r1844
  have hd2 : rho 46225 * rho 46225 = rho 46236 := by linear_combination r1845
  have hd3 : rho 46237 * (rho 46225 * rho 46225 + rho 46224 * rho 46224 * (-1)) =
      2 * (rho 46224 * rho 46225) := by
    rw [hd0, hd1, hd2]
    linear_combination r1846
  have hd4 : rho 46238 * (2 - (rho 46225 * rho 46225 + rho 46224 * rho 46224 * (-1))) =
      rho 46225 * rho 46225 - rho 46224 * rho 46224 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1847
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX72 rho, seg52In0AccY72 rho⟩ ⟨rho 46224, rho 46225⟩
    ⟨rho 46230, rho 46231⟩ ⟨seg52In0AccX73 rho, seg52In0AccY73 rho⟩ ⟨rho 46237, rho 46238⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1848 rho ∧ Seg52.relationRow1849 rho ∧ Seg52.relationRow1850 rho ∧ Seg52.relationRow1851 rho ∧ Seg52.relationRow1852 rho ∧ Seg52.relationRow1853 rho ∧ Seg52.relationRow1854 rho ∧ Seg52.relationRow1855 rho ∧ Seg52.relationRow1856 rho ∧ Seg52.relationRow1857 rho ∧ Seg52.relationRow1858 rho ∧ Seg52.relationRow1859 rho ∧ Seg52.relationRow1860 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p23, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, r1848, r1849, r1850, r1851, r1852, r1853, r1854, r1855, r1856, r1857, r1858, r1859, r1860, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1848, r1849, r1850, r1851, r1852, r1853, r1854, r1855, r1856, r1857, r1858, r1859, r1860⟩

theorem seg52In0_rung73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45241 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX73 rho, seg52In0AccY73 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46237, rho 46238⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX73 rho, seg52In0AccY73 rho⟩ ⟨rho 46237, rho 46238⟩
        ⟨seg52In0AccX74 rho, seg52In0AccY74 rho⟩ ⟨rho 46250, rho 46251⟩ := by
  obtain ⟨r1848, r1849, r1850, r1851, r1852, r1853, r1854, r1855, r1856, r1857, r1858, r1859, r1860⟩ := seg52In0_rows73 rho h
  unfold Seg52.relationRow1848 at r1848

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1848

  unfold Seg52.relationRow1849 at r1849

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1849

  unfold Seg52.relationRow1850 at r1850

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1850

  unfold Seg52.relationRow1851 at r1851

  unfold Seg52.relationRow1852 at r1852

  unfold Seg52.relationRow1853 at r1853

  unfold Seg52.relationRow1854 at r1854

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1854

  unfold Seg52.relationRow1855 at r1855

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1855

  unfold Seg52.relationRow1856 at r1856

  unfold Seg52.relationRow1857 at r1857

  unfold Seg52.relationRow1858 at r1858

  unfold Seg52.relationRow1859 at r1859

  unfold Seg52.relationRow1860 at r1860

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX74 rho = seg52In0AccX73 rho + rho 46245 := by
    unfold seg52In0AccX74 seg52In0AccX73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 73]

    ring

  have hnexty : seg52In0AccY74 rho = seg52In0AccY73 rho + rho 46246 := by
    unfold seg52In0AccY74 seg52In0AccY73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 73]

    ring

  have ha0 : (rho 46237 + rho 46238) * (seg52In0AccX73 rho + seg52In0AccY73 rho) = rho 46239 := by
    unfold seg52In0AccX73 seg52In0AccY73
    linear_combination r1848
  have ha1 : rho 46238 * seg52In0AccX73 rho = rho 46240 := by
    unfold seg52In0AccX73
    linear_combination r1849
  have ha2 : rho 46237 * seg52In0AccY73 rho = rho 46241 := by
    unfold seg52In0AccY73
    linear_combination r1850
  have ha3 : 3021 * rho 46240 * rho 46241 = rho 46242 := by
    linear_combination r1851
  have ha4 : rho 46243 * (1 + rho 46242) = rho 46240 + rho 46241 := by
    linear_combination r1852
  have ha5 : rho 46244 * (1 - rho 46242) = rho 46239 - rho 46240 - rho 46241 := by
    linear_combination r1853
  have haddx :
      rho 46243 * (1 + 3021 * (rho 46238 * seg52In0AccX73 rho) * (rho 46237 * seg52In0AccY73 rho)) =
        rho 46238 * seg52In0AccX73 rho + rho 46237 * seg52In0AccY73 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46244 * (1 - 3021 * (rho 46238 * seg52In0AccX73 rho) * (rho 46237 * seg52In0AccY73 rho)) =
        (-1) * (rho 46238 * seg52In0AccX73 rho) - rho 46237 * seg52In0AccY73 rho +
          (seg52In0AccY73 rho - seg52In0AccX73 rho * (-1)) * (rho 46237 + rho 46238) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46244 * (1 - rho 46242) = rho 46239 - rho 46240 - rho 46241 := ha5
      _ = (-1) * rho 46240 - rho 46241 + (seg52In0AccY73 rho - seg52In0AccX73 rho * (-1)) *
          (rho 46237 + rho 46238) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX74 rho = seg52In0AccX73 rho - Bool.toZMod bit * (seg52In0AccX73 rho - rho 46243) := by
    have hd : rho 46245 = Bool.toZMod bit * (rho 46243 - seg52In0AccX73 rho) := by
      rw [← hbit]
      unfold seg52In0AccX73
      linear_combination -r1854
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY74 rho = seg52In0AccY73 rho - Bool.toZMod bit * (seg52In0AccY73 rho - rho 46244) := by
    have hd : rho 46246 = Bool.toZMod bit * (rho 46244 - seg52In0AccY73 rho) := by
      rw [← hbit]
      unfold seg52In0AccY73
      linear_combination -r1855
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46237 * rho 46238 = rho 46247 := by linear_combination r1856
  have hd1 : rho 46237 * rho 46237 = rho 46248 := by linear_combination r1857
  have hd2 : rho 46238 * rho 46238 = rho 46249 := by linear_combination r1858
  have hd3 : rho 46250 * (rho 46238 * rho 46238 + rho 46237 * rho 46237 * (-1)) =
      2 * (rho 46237 * rho 46238) := by
    rw [hd0, hd1, hd2]
    linear_combination r1859
  have hd4 : rho 46251 * (2 - (rho 46238 * rho 46238 + rho 46237 * rho 46237 * (-1))) =
      rho 46238 * rho 46238 - rho 46237 * rho 46237 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1860
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX73 rho, seg52In0AccY73 rho⟩ ⟨rho 46237, rho 46238⟩
    ⟨rho 46243, rho 46244⟩ ⟨seg52In0AccX74 rho, seg52In0AccY74 rho⟩ ⟨rho 46250, rho 46251⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1861 rho ∧ Seg52.relationRow1862 rho ∧ Seg52.relationRow1863 rho ∧ Seg52.relationRow1864 rho ∧ Seg52.relationRow1865 rho ∧ Seg52.relationRow1866 rho ∧ Seg52.relationRow1867 rho ∧ Seg52.relationRow1868 rho ∧ Seg52.relationRow1869 rho ∧ Seg52.relationRow1870 rho ∧ Seg52.relationRow1871 rho ∧ Seg52.relationRow1872 rho ∧ Seg52.relationRow1873 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p23, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1861, r1862, r1863, r1864, r1865, r1866, r1867, r1868, r1869, r1870, r1871, r1872, r1873, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1861, r1862, r1863, r1864, r1865, r1866, r1867, r1868, r1869, r1870, r1871, r1872, r1873⟩

theorem seg52In0_rung74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45242 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX74 rho, seg52In0AccY74 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46250, rho 46251⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX74 rho, seg52In0AccY74 rho⟩ ⟨rho 46250, rho 46251⟩
        ⟨seg52In0AccX75 rho, seg52In0AccY75 rho⟩ ⟨rho 46263, rho 46264⟩ := by
  obtain ⟨r1861, r1862, r1863, r1864, r1865, r1866, r1867, r1868, r1869, r1870, r1871, r1872, r1873⟩ := seg52In0_rows74 rho h
  unfold Seg52.relationRow1861 at r1861

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1861

  unfold Seg52.relationRow1862 at r1862

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1862

  unfold Seg52.relationRow1863 at r1863

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1863

  unfold Seg52.relationRow1864 at r1864

  unfold Seg52.relationRow1865 at r1865

  unfold Seg52.relationRow1866 at r1866

  unfold Seg52.relationRow1867 at r1867

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1867

  unfold Seg52.relationRow1868 at r1868

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1868

  unfold Seg52.relationRow1869 at r1869

  unfold Seg52.relationRow1870 at r1870

  unfold Seg52.relationRow1871 at r1871

  unfold Seg52.relationRow1872 at r1872

  unfold Seg52.relationRow1873 at r1873

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX75 rho = seg52In0AccX74 rho + rho 46258 := by
    unfold seg52In0AccX75 seg52In0AccX74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 74]

    ring

  have hnexty : seg52In0AccY75 rho = seg52In0AccY74 rho + rho 46259 := by
    unfold seg52In0AccY75 seg52In0AccY74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 74]

    ring

  have ha0 : (rho 46250 + rho 46251) * (seg52In0AccX74 rho + seg52In0AccY74 rho) = rho 46252 := by
    unfold seg52In0AccX74 seg52In0AccY74
    linear_combination r1861
  have ha1 : rho 46251 * seg52In0AccX74 rho = rho 46253 := by
    unfold seg52In0AccX74
    linear_combination r1862
  have ha2 : rho 46250 * seg52In0AccY74 rho = rho 46254 := by
    unfold seg52In0AccY74
    linear_combination r1863
  have ha3 : 3021 * rho 46253 * rho 46254 = rho 46255 := by
    linear_combination r1864
  have ha4 : rho 46256 * (1 + rho 46255) = rho 46253 + rho 46254 := by
    linear_combination r1865
  have ha5 : rho 46257 * (1 - rho 46255) = rho 46252 - rho 46253 - rho 46254 := by
    linear_combination r1866
  have haddx :
      rho 46256 * (1 + 3021 * (rho 46251 * seg52In0AccX74 rho) * (rho 46250 * seg52In0AccY74 rho)) =
        rho 46251 * seg52In0AccX74 rho + rho 46250 * seg52In0AccY74 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46257 * (1 - 3021 * (rho 46251 * seg52In0AccX74 rho) * (rho 46250 * seg52In0AccY74 rho)) =
        (-1) * (rho 46251 * seg52In0AccX74 rho) - rho 46250 * seg52In0AccY74 rho +
          (seg52In0AccY74 rho - seg52In0AccX74 rho * (-1)) * (rho 46250 + rho 46251) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46257 * (1 - rho 46255) = rho 46252 - rho 46253 - rho 46254 := ha5
      _ = (-1) * rho 46253 - rho 46254 + (seg52In0AccY74 rho - seg52In0AccX74 rho * (-1)) *
          (rho 46250 + rho 46251) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX75 rho = seg52In0AccX74 rho - Bool.toZMod bit * (seg52In0AccX74 rho - rho 46256) := by
    have hd : rho 46258 = Bool.toZMod bit * (rho 46256 - seg52In0AccX74 rho) := by
      rw [← hbit]
      unfold seg52In0AccX74
      linear_combination -r1867
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY75 rho = seg52In0AccY74 rho - Bool.toZMod bit * (seg52In0AccY74 rho - rho 46257) := by
    have hd : rho 46259 = Bool.toZMod bit * (rho 46257 - seg52In0AccY74 rho) := by
      rw [← hbit]
      unfold seg52In0AccY74
      linear_combination -r1868
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46250 * rho 46251 = rho 46260 := by linear_combination r1869
  have hd1 : rho 46250 * rho 46250 = rho 46261 := by linear_combination r1870
  have hd2 : rho 46251 * rho 46251 = rho 46262 := by linear_combination r1871
  have hd3 : rho 46263 * (rho 46251 * rho 46251 + rho 46250 * rho 46250 * (-1)) =
      2 * (rho 46250 * rho 46251) := by
    rw [hd0, hd1, hd2]
    linear_combination r1872
  have hd4 : rho 46264 * (2 - (rho 46251 * rho 46251 + rho 46250 * rho 46250 * (-1))) =
      rho 46251 * rho 46251 - rho 46250 * rho 46250 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1873
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX74 rho, seg52In0AccY74 rho⟩ ⟨rho 46250, rho 46251⟩
    ⟨rho 46256, rho 46257⟩ ⟨seg52In0AccX75 rho, seg52In0AccY75 rho⟩ ⟨rho 46263, rho 46264⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1874 rho ∧ Seg52.relationRow1875 rho ∧ Seg52.relationRow1876 rho ∧ Seg52.relationRow1877 rho ∧ Seg52.relationRow1878 rho ∧ Seg52.relationRow1879 rho ∧ Seg52.relationRow1880 rho ∧ Seg52.relationRow1881 rho ∧ Seg52.relationRow1882 rho ∧ Seg52.relationRow1883 rho ∧ Seg52.relationRow1884 rho ∧ Seg52.relationRow1885 rho ∧ Seg52.relationRow1886 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p23, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1874, r1875, r1876, r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1874, r1875, r1876, r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886⟩

theorem seg52In0_rung75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45243 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX75 rho, seg52In0AccY75 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46263, rho 46264⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX75 rho, seg52In0AccY75 rho⟩ ⟨rho 46263, rho 46264⟩
        ⟨seg52In0AccX76 rho, seg52In0AccY76 rho⟩ ⟨rho 46276, rho 46277⟩ := by
  obtain ⟨r1874, r1875, r1876, r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886⟩ := seg52In0_rows75 rho h
  unfold Seg52.relationRow1874 at r1874

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1874

  unfold Seg52.relationRow1875 at r1875

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1875

  unfold Seg52.relationRow1876 at r1876

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1876

  unfold Seg52.relationRow1877 at r1877

  unfold Seg52.relationRow1878 at r1878

  unfold Seg52.relationRow1879 at r1879

  unfold Seg52.relationRow1880 at r1880

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1880

  unfold Seg52.relationRow1881 at r1881

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1881

  unfold Seg52.relationRow1882 at r1882

  unfold Seg52.relationRow1883 at r1883

  unfold Seg52.relationRow1884 at r1884

  unfold Seg52.relationRow1885 at r1885

  unfold Seg52.relationRow1886 at r1886

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX76 rho = seg52In0AccX75 rho + rho 46271 := by
    unfold seg52In0AccX76 seg52In0AccX75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 75]

    ring

  have hnexty : seg52In0AccY76 rho = seg52In0AccY75 rho + rho 46272 := by
    unfold seg52In0AccY76 seg52In0AccY75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 75]

    ring

  have ha0 : (rho 46263 + rho 46264) * (seg52In0AccX75 rho + seg52In0AccY75 rho) = rho 46265 := by
    unfold seg52In0AccX75 seg52In0AccY75
    linear_combination r1874
  have ha1 : rho 46264 * seg52In0AccX75 rho = rho 46266 := by
    unfold seg52In0AccX75
    linear_combination r1875
  have ha2 : rho 46263 * seg52In0AccY75 rho = rho 46267 := by
    unfold seg52In0AccY75
    linear_combination r1876
  have ha3 : 3021 * rho 46266 * rho 46267 = rho 46268 := by
    linear_combination r1877
  have ha4 : rho 46269 * (1 + rho 46268) = rho 46266 + rho 46267 := by
    linear_combination r1878
  have ha5 : rho 46270 * (1 - rho 46268) = rho 46265 - rho 46266 - rho 46267 := by
    linear_combination r1879
  have haddx :
      rho 46269 * (1 + 3021 * (rho 46264 * seg52In0AccX75 rho) * (rho 46263 * seg52In0AccY75 rho)) =
        rho 46264 * seg52In0AccX75 rho + rho 46263 * seg52In0AccY75 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46270 * (1 - 3021 * (rho 46264 * seg52In0AccX75 rho) * (rho 46263 * seg52In0AccY75 rho)) =
        (-1) * (rho 46264 * seg52In0AccX75 rho) - rho 46263 * seg52In0AccY75 rho +
          (seg52In0AccY75 rho - seg52In0AccX75 rho * (-1)) * (rho 46263 + rho 46264) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46270 * (1 - rho 46268) = rho 46265 - rho 46266 - rho 46267 := ha5
      _ = (-1) * rho 46266 - rho 46267 + (seg52In0AccY75 rho - seg52In0AccX75 rho * (-1)) *
          (rho 46263 + rho 46264) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX76 rho = seg52In0AccX75 rho - Bool.toZMod bit * (seg52In0AccX75 rho - rho 46269) := by
    have hd : rho 46271 = Bool.toZMod bit * (rho 46269 - seg52In0AccX75 rho) := by
      rw [← hbit]
      unfold seg52In0AccX75
      linear_combination -r1880
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY76 rho = seg52In0AccY75 rho - Bool.toZMod bit * (seg52In0AccY75 rho - rho 46270) := by
    have hd : rho 46272 = Bool.toZMod bit * (rho 46270 - seg52In0AccY75 rho) := by
      rw [← hbit]
      unfold seg52In0AccY75
      linear_combination -r1881
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46263 * rho 46264 = rho 46273 := by linear_combination r1882
  have hd1 : rho 46263 * rho 46263 = rho 46274 := by linear_combination r1883
  have hd2 : rho 46264 * rho 46264 = rho 46275 := by linear_combination r1884
  have hd3 : rho 46276 * (rho 46264 * rho 46264 + rho 46263 * rho 46263 * (-1)) =
      2 * (rho 46263 * rho 46264) := by
    rw [hd0, hd1, hd2]
    linear_combination r1885
  have hd4 : rho 46277 * (2 - (rho 46264 * rho 46264 + rho 46263 * rho 46263 * (-1))) =
      rho 46264 * rho 46264 - rho 46263 * rho 46263 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1886
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX75 rho, seg52In0AccY75 rho⟩ ⟨rho 46263, rho 46264⟩
    ⟨rho 46269, rho 46270⟩ ⟨seg52In0AccX76 rho, seg52In0AccY76 rho⟩ ⟨rho 46276, rho 46277⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1887 rho ∧ Seg52.relationRow1888 rho ∧ Seg52.relationRow1889 rho ∧ Seg52.relationRow1890 rho ∧ Seg52.relationRow1891 rho ∧ Seg52.relationRow1892 rho ∧ Seg52.relationRow1893 rho ∧ Seg52.relationRow1894 rho ∧ Seg52.relationRow1895 rho ∧ Seg52.relationRow1896 rho ∧ Seg52.relationRow1897 rho ∧ Seg52.relationRow1898 rho ∧ Seg52.relationRow1899 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p23, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1887, r1888, r1889, r1890, r1891, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1887, r1888, r1889, r1890, r1891, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899⟩

theorem seg52In0_rung76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45244 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX76 rho, seg52In0AccY76 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46276, rho 46277⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX76 rho, seg52In0AccY76 rho⟩ ⟨rho 46276, rho 46277⟩
        ⟨seg52In0AccX77 rho, seg52In0AccY77 rho⟩ ⟨rho 46289, rho 46290⟩ := by
  obtain ⟨r1887, r1888, r1889, r1890, r1891, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899⟩ := seg52In0_rows76 rho h
  unfold Seg52.relationRow1887 at r1887

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1887

  unfold Seg52.relationRow1888 at r1888

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1888

  unfold Seg52.relationRow1889 at r1889

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1889

  unfold Seg52.relationRow1890 at r1890

  unfold Seg52.relationRow1891 at r1891

  unfold Seg52.relationRow1892 at r1892

  unfold Seg52.relationRow1893 at r1893

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1893

  unfold Seg52.relationRow1894 at r1894

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1894

  unfold Seg52.relationRow1895 at r1895

  unfold Seg52.relationRow1896 at r1896

  unfold Seg52.relationRow1897 at r1897

  unfold Seg52.relationRow1898 at r1898

  unfold Seg52.relationRow1899 at r1899

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX77 rho = seg52In0AccX76 rho + rho 46284 := by
    unfold seg52In0AccX77 seg52In0AccX76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 76]

    ring

  have hnexty : seg52In0AccY77 rho = seg52In0AccY76 rho + rho 46285 := by
    unfold seg52In0AccY77 seg52In0AccY76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 76]

    ring

  have ha0 : (rho 46276 + rho 46277) * (seg52In0AccX76 rho + seg52In0AccY76 rho) = rho 46278 := by
    unfold seg52In0AccX76 seg52In0AccY76
    linear_combination r1887
  have ha1 : rho 46277 * seg52In0AccX76 rho = rho 46279 := by
    unfold seg52In0AccX76
    linear_combination r1888
  have ha2 : rho 46276 * seg52In0AccY76 rho = rho 46280 := by
    unfold seg52In0AccY76
    linear_combination r1889
  have ha3 : 3021 * rho 46279 * rho 46280 = rho 46281 := by
    linear_combination r1890
  have ha4 : rho 46282 * (1 + rho 46281) = rho 46279 + rho 46280 := by
    linear_combination r1891
  have ha5 : rho 46283 * (1 - rho 46281) = rho 46278 - rho 46279 - rho 46280 := by
    linear_combination r1892
  have haddx :
      rho 46282 * (1 + 3021 * (rho 46277 * seg52In0AccX76 rho) * (rho 46276 * seg52In0AccY76 rho)) =
        rho 46277 * seg52In0AccX76 rho + rho 46276 * seg52In0AccY76 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46283 * (1 - 3021 * (rho 46277 * seg52In0AccX76 rho) * (rho 46276 * seg52In0AccY76 rho)) =
        (-1) * (rho 46277 * seg52In0AccX76 rho) - rho 46276 * seg52In0AccY76 rho +
          (seg52In0AccY76 rho - seg52In0AccX76 rho * (-1)) * (rho 46276 + rho 46277) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46283 * (1 - rho 46281) = rho 46278 - rho 46279 - rho 46280 := ha5
      _ = (-1) * rho 46279 - rho 46280 + (seg52In0AccY76 rho - seg52In0AccX76 rho * (-1)) *
          (rho 46276 + rho 46277) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX77 rho = seg52In0AccX76 rho - Bool.toZMod bit * (seg52In0AccX76 rho - rho 46282) := by
    have hd : rho 46284 = Bool.toZMod bit * (rho 46282 - seg52In0AccX76 rho) := by
      rw [← hbit]
      unfold seg52In0AccX76
      linear_combination -r1893
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY77 rho = seg52In0AccY76 rho - Bool.toZMod bit * (seg52In0AccY76 rho - rho 46283) := by
    have hd : rho 46285 = Bool.toZMod bit * (rho 46283 - seg52In0AccY76 rho) := by
      rw [← hbit]
      unfold seg52In0AccY76
      linear_combination -r1894
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46276 * rho 46277 = rho 46286 := by linear_combination r1895
  have hd1 : rho 46276 * rho 46276 = rho 46287 := by linear_combination r1896
  have hd2 : rho 46277 * rho 46277 = rho 46288 := by linear_combination r1897
  have hd3 : rho 46289 * (rho 46277 * rho 46277 + rho 46276 * rho 46276 * (-1)) =
      2 * (rho 46276 * rho 46277) := by
    rw [hd0, hd1, hd2]
    linear_combination r1898
  have hd4 : rho 46290 * (2 - (rho 46277 * rho 46277 + rho 46276 * rho 46276 * (-1))) =
      rho 46277 * rho 46277 - rho 46276 * rho 46276 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1899
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX76 rho, seg52In0AccY76 rho⟩ ⟨rho 46276, rho 46277⟩
    ⟨rho 46282, rho 46283⟩ ⟨seg52In0AccX77 rho, seg52In0AccY77 rho⟩ ⟨rho 46289, rho 46290⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c6 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45168 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg52In0_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg52In0_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg52In0_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg52In0_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg52In0_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg52In0_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg52In0_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg52In0_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg52In0_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg52In0_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
