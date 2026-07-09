import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In0_rows66 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1757 rho ∧ Seg48.relationRow1758 rho ∧ Seg48.relationRow1759 rho ∧ Seg48.relationRow1760 rho ∧ Seg48.relationRow1761 rho ∧ Seg48.relationRow1762 rho ∧ Seg48.relationRow1763 rho ∧ Seg48.relationRow1764 rho ∧ Seg48.relationRow1765 rho ∧ Seg48.relationRow1766 rho ∧ Seg48.relationRow1767 rho ∧ Seg48.relationRow1768 rho ∧ Seg48.relationRow1769 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart21 at p21

  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1757, r1758, r1759⟩

  unfold Seg48.relationPart22 at p22

  rcases p22 with ⟨r1760, r1761, r1762, r1763, r1764, r1765, r1766, r1767, r1768, r1769, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1757, r1758, r1759, r1760, r1761, r1762, r1763, r1764, r1765, r1766, r1767, r1768, r1769⟩

theorem seg48In0_rung66 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33602 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX66 rho, seg48In0AccY66 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34514, rho 34515⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX66 rho, seg48In0AccY66 rho⟩ ⟨rho 34514, rho 34515⟩
        ⟨seg48In0AccX67 rho, seg48In0AccY67 rho⟩ ⟨rho 34527, rho 34528⟩ := by
  obtain ⟨r1757, r1758, r1759, r1760, r1761, r1762, r1763, r1764, r1765, r1766, r1767, r1768, r1769⟩ := seg48In0_rows66 rho h
  unfold Seg48.relationRow1757 at r1757

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1757

  unfold Seg48.relationRow1758 at r1758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1758

  unfold Seg48.relationRow1759 at r1759

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1759

  unfold Seg48.relationRow1760 at r1760

  unfold Seg48.relationRow1761 at r1761

  unfold Seg48.relationRow1762 at r1762

  unfold Seg48.relationRow1763 at r1763

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1763

  unfold Seg48.relationRow1764 at r1764

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1764

  unfold Seg48.relationRow1765 at r1765

  unfold Seg48.relationRow1766 at r1766

  unfold Seg48.relationRow1767 at r1767

  unfold Seg48.relationRow1768 at r1768

  unfold Seg48.relationRow1769 at r1769

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX67 rho = seg48In0AccX66 rho + rho 34522 := by
    unfold seg48In0AccX67 seg48In0AccX66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 66]

    ring

  have hnexty : seg48In0AccY67 rho = seg48In0AccY66 rho + rho 34523 := by
    unfold seg48In0AccY67 seg48In0AccY66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 66]

    ring

  have ha0 : (rho 34514 + rho 34515) * (seg48In0AccX66 rho + seg48In0AccY66 rho) = rho 34516 := by
    unfold seg48In0AccX66 seg48In0AccY66
    linear_combination r1757
  have ha1 : rho 34515 * seg48In0AccX66 rho = rho 34517 := by
    unfold seg48In0AccX66
    linear_combination r1758
  have ha2 : rho 34514 * seg48In0AccY66 rho = rho 34518 := by
    unfold seg48In0AccY66
    linear_combination r1759
  have ha3 : 3021 * rho 34517 * rho 34518 = rho 34519 := by
    linear_combination r1760
  have ha4 : rho 34520 * (1 + rho 34519) = rho 34517 + rho 34518 := by
    linear_combination r1761
  have ha5 : rho 34521 * (1 - rho 34519) = rho 34516 - rho 34517 - rho 34518 := by
    linear_combination r1762
  have haddx :
      rho 34520 * (1 + 3021 * (rho 34515 * seg48In0AccX66 rho) * (rho 34514 * seg48In0AccY66 rho)) =
        rho 34515 * seg48In0AccX66 rho + rho 34514 * seg48In0AccY66 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34521 * (1 - 3021 * (rho 34515 * seg48In0AccX66 rho) * (rho 34514 * seg48In0AccY66 rho)) =
        (-1) * (rho 34515 * seg48In0AccX66 rho) - rho 34514 * seg48In0AccY66 rho +
          (seg48In0AccY66 rho - seg48In0AccX66 rho * (-1)) * (rho 34514 + rho 34515) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34521 * (1 - rho 34519) = rho 34516 - rho 34517 - rho 34518 := ha5
      _ = (-1) * rho 34517 - rho 34518 + (seg48In0AccY66 rho - seg48In0AccX66 rho * (-1)) *
          (rho 34514 + rho 34515) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX67 rho = seg48In0AccX66 rho - Bool.toZMod bit * (seg48In0AccX66 rho - rho 34520) := by
    have hd : rho 34522 = Bool.toZMod bit * (rho 34520 - seg48In0AccX66 rho) := by
      rw [← hbit]
      unfold seg48In0AccX66
      linear_combination -r1763
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY67 rho = seg48In0AccY66 rho - Bool.toZMod bit * (seg48In0AccY66 rho - rho 34521) := by
    have hd : rho 34523 = Bool.toZMod bit * (rho 34521 - seg48In0AccY66 rho) := by
      rw [← hbit]
      unfold seg48In0AccY66
      linear_combination -r1764
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34514 * rho 34515 = rho 34524 := by linear_combination r1765
  have hd1 : rho 34514 * rho 34514 = rho 34525 := by linear_combination r1766
  have hd2 : rho 34515 * rho 34515 = rho 34526 := by linear_combination r1767
  have hd3 : rho 34527 * (rho 34515 * rho 34515 + rho 34514 * rho 34514 * (-1)) =
      2 * (rho 34514 * rho 34515) := by
    rw [hd0, hd1, hd2]
    linear_combination r1768
  have hd4 : rho 34528 * (2 - (rho 34515 * rho 34515 + rho 34514 * rho 34514 * (-1))) =
      rho 34515 * rho 34515 - rho 34514 * rho 34514 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1769
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX66 rho, seg48In0AccY66 rho⟩ ⟨rho 34514, rho 34515⟩
    ⟨rho 34520, rho 34521⟩ ⟨seg48In0AccX67 rho, seg48In0AccY67 rho⟩ ⟨rho 34527, rho 34528⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows67 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1770 rho ∧ Seg48.relationRow1771 rho ∧ Seg48.relationRow1772 rho ∧ Seg48.relationRow1773 rho ∧ Seg48.relationRow1774 rho ∧ Seg48.relationRow1775 rho ∧ Seg48.relationRow1776 rho ∧ Seg48.relationRow1777 rho ∧ Seg48.relationRow1778 rho ∧ Seg48.relationRow1779 rho ∧ Seg48.relationRow1780 rho ∧ Seg48.relationRow1781 rho ∧ Seg48.relationRow1782 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, r1770, r1771, r1772, r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1770, r1771, r1772, r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782⟩

theorem seg48In0_rung67 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33603 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX67 rho, seg48In0AccY67 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34527, rho 34528⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX67 rho, seg48In0AccY67 rho⟩ ⟨rho 34527, rho 34528⟩
        ⟨seg48In0AccX68 rho, seg48In0AccY68 rho⟩ ⟨rho 34540, rho 34541⟩ := by
  obtain ⟨r1770, r1771, r1772, r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782⟩ := seg48In0_rows67 rho h
  unfold Seg48.relationRow1770 at r1770

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1770

  unfold Seg48.relationRow1771 at r1771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1771

  unfold Seg48.relationRow1772 at r1772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1772

  unfold Seg48.relationRow1773 at r1773

  unfold Seg48.relationRow1774 at r1774

  unfold Seg48.relationRow1775 at r1775

  unfold Seg48.relationRow1776 at r1776

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1776

  unfold Seg48.relationRow1777 at r1777

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1777

  unfold Seg48.relationRow1778 at r1778

  unfold Seg48.relationRow1779 at r1779

  unfold Seg48.relationRow1780 at r1780

  unfold Seg48.relationRow1781 at r1781

  unfold Seg48.relationRow1782 at r1782

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX68 rho = seg48In0AccX67 rho + rho 34535 := by
    unfold seg48In0AccX68 seg48In0AccX67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 67]

    ring

  have hnexty : seg48In0AccY68 rho = seg48In0AccY67 rho + rho 34536 := by
    unfold seg48In0AccY68 seg48In0AccY67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 67]

    ring

  have ha0 : (rho 34527 + rho 34528) * (seg48In0AccX67 rho + seg48In0AccY67 rho) = rho 34529 := by
    unfold seg48In0AccX67 seg48In0AccY67
    linear_combination r1770
  have ha1 : rho 34528 * seg48In0AccX67 rho = rho 34530 := by
    unfold seg48In0AccX67
    linear_combination r1771
  have ha2 : rho 34527 * seg48In0AccY67 rho = rho 34531 := by
    unfold seg48In0AccY67
    linear_combination r1772
  have ha3 : 3021 * rho 34530 * rho 34531 = rho 34532 := by
    linear_combination r1773
  have ha4 : rho 34533 * (1 + rho 34532) = rho 34530 + rho 34531 := by
    linear_combination r1774
  have ha5 : rho 34534 * (1 - rho 34532) = rho 34529 - rho 34530 - rho 34531 := by
    linear_combination r1775
  have haddx :
      rho 34533 * (1 + 3021 * (rho 34528 * seg48In0AccX67 rho) * (rho 34527 * seg48In0AccY67 rho)) =
        rho 34528 * seg48In0AccX67 rho + rho 34527 * seg48In0AccY67 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34534 * (1 - 3021 * (rho 34528 * seg48In0AccX67 rho) * (rho 34527 * seg48In0AccY67 rho)) =
        (-1) * (rho 34528 * seg48In0AccX67 rho) - rho 34527 * seg48In0AccY67 rho +
          (seg48In0AccY67 rho - seg48In0AccX67 rho * (-1)) * (rho 34527 + rho 34528) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34534 * (1 - rho 34532) = rho 34529 - rho 34530 - rho 34531 := ha5
      _ = (-1) * rho 34530 - rho 34531 + (seg48In0AccY67 rho - seg48In0AccX67 rho * (-1)) *
          (rho 34527 + rho 34528) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX68 rho = seg48In0AccX67 rho - Bool.toZMod bit * (seg48In0AccX67 rho - rho 34533) := by
    have hd : rho 34535 = Bool.toZMod bit * (rho 34533 - seg48In0AccX67 rho) := by
      rw [← hbit]
      unfold seg48In0AccX67
      linear_combination -r1776
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY68 rho = seg48In0AccY67 rho - Bool.toZMod bit * (seg48In0AccY67 rho - rho 34534) := by
    have hd : rho 34536 = Bool.toZMod bit * (rho 34534 - seg48In0AccY67 rho) := by
      rw [← hbit]
      unfold seg48In0AccY67
      linear_combination -r1777
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34527 * rho 34528 = rho 34537 := by linear_combination r1778
  have hd1 : rho 34527 * rho 34527 = rho 34538 := by linear_combination r1779
  have hd2 : rho 34528 * rho 34528 = rho 34539 := by linear_combination r1780
  have hd3 : rho 34540 * (rho 34528 * rho 34528 + rho 34527 * rho 34527 * (-1)) =
      2 * (rho 34527 * rho 34528) := by
    rw [hd0, hd1, hd2]
    linear_combination r1781
  have hd4 : rho 34541 * (2 - (rho 34528 * rho 34528 + rho 34527 * rho 34527 * (-1))) =
      rho 34528 * rho 34528 - rho 34527 * rho 34527 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1782
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX67 rho, seg48In0AccY67 rho⟩ ⟨rho 34527, rho 34528⟩
    ⟨rho 34533, rho 34534⟩ ⟨seg48In0AccX68 rho, seg48In0AccY68 rho⟩ ⟨rho 34540, rho 34541⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows68 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1783 rho ∧ Seg48.relationRow1784 rho ∧ Seg48.relationRow1785 rho ∧ Seg48.relationRow1786 rho ∧ Seg48.relationRow1787 rho ∧ Seg48.relationRow1788 rho ∧ Seg48.relationRow1789 rho ∧ Seg48.relationRow1790 rho ∧ Seg48.relationRow1791 rho ∧ Seg48.relationRow1792 rho ∧ Seg48.relationRow1793 rho ∧ Seg48.relationRow1794 rho ∧ Seg48.relationRow1795 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1783, r1784, r1785, r1786, r1787, r1788, r1789, r1790, r1791, r1792, r1793, r1794, r1795, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1783, r1784, r1785, r1786, r1787, r1788, r1789, r1790, r1791, r1792, r1793, r1794, r1795⟩

theorem seg48In0_rung68 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33604 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX68 rho, seg48In0AccY68 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34540, rho 34541⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX68 rho, seg48In0AccY68 rho⟩ ⟨rho 34540, rho 34541⟩
        ⟨seg48In0AccX69 rho, seg48In0AccY69 rho⟩ ⟨rho 34553, rho 34554⟩ := by
  obtain ⟨r1783, r1784, r1785, r1786, r1787, r1788, r1789, r1790, r1791, r1792, r1793, r1794, r1795⟩ := seg48In0_rows68 rho h
  unfold Seg48.relationRow1783 at r1783

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1783

  unfold Seg48.relationRow1784 at r1784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1784

  unfold Seg48.relationRow1785 at r1785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1785

  unfold Seg48.relationRow1786 at r1786

  unfold Seg48.relationRow1787 at r1787

  unfold Seg48.relationRow1788 at r1788

  unfold Seg48.relationRow1789 at r1789

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1789

  unfold Seg48.relationRow1790 at r1790

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1790

  unfold Seg48.relationRow1791 at r1791

  unfold Seg48.relationRow1792 at r1792

  unfold Seg48.relationRow1793 at r1793

  unfold Seg48.relationRow1794 at r1794

  unfold Seg48.relationRow1795 at r1795

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX69 rho = seg48In0AccX68 rho + rho 34548 := by
    unfold seg48In0AccX69 seg48In0AccX68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 68]

    ring

  have hnexty : seg48In0AccY69 rho = seg48In0AccY68 rho + rho 34549 := by
    unfold seg48In0AccY69 seg48In0AccY68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 68]

    ring

  have ha0 : (rho 34540 + rho 34541) * (seg48In0AccX68 rho + seg48In0AccY68 rho) = rho 34542 := by
    unfold seg48In0AccX68 seg48In0AccY68
    linear_combination r1783
  have ha1 : rho 34541 * seg48In0AccX68 rho = rho 34543 := by
    unfold seg48In0AccX68
    linear_combination r1784
  have ha2 : rho 34540 * seg48In0AccY68 rho = rho 34544 := by
    unfold seg48In0AccY68
    linear_combination r1785
  have ha3 : 3021 * rho 34543 * rho 34544 = rho 34545 := by
    linear_combination r1786
  have ha4 : rho 34546 * (1 + rho 34545) = rho 34543 + rho 34544 := by
    linear_combination r1787
  have ha5 : rho 34547 * (1 - rho 34545) = rho 34542 - rho 34543 - rho 34544 := by
    linear_combination r1788
  have haddx :
      rho 34546 * (1 + 3021 * (rho 34541 * seg48In0AccX68 rho) * (rho 34540 * seg48In0AccY68 rho)) =
        rho 34541 * seg48In0AccX68 rho + rho 34540 * seg48In0AccY68 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34547 * (1 - 3021 * (rho 34541 * seg48In0AccX68 rho) * (rho 34540 * seg48In0AccY68 rho)) =
        (-1) * (rho 34541 * seg48In0AccX68 rho) - rho 34540 * seg48In0AccY68 rho +
          (seg48In0AccY68 rho - seg48In0AccX68 rho * (-1)) * (rho 34540 + rho 34541) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34547 * (1 - rho 34545) = rho 34542 - rho 34543 - rho 34544 := ha5
      _ = (-1) * rho 34543 - rho 34544 + (seg48In0AccY68 rho - seg48In0AccX68 rho * (-1)) *
          (rho 34540 + rho 34541) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX69 rho = seg48In0AccX68 rho - Bool.toZMod bit * (seg48In0AccX68 rho - rho 34546) := by
    have hd : rho 34548 = Bool.toZMod bit * (rho 34546 - seg48In0AccX68 rho) := by
      rw [← hbit]
      unfold seg48In0AccX68
      linear_combination -r1789
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY69 rho = seg48In0AccY68 rho - Bool.toZMod bit * (seg48In0AccY68 rho - rho 34547) := by
    have hd : rho 34549 = Bool.toZMod bit * (rho 34547 - seg48In0AccY68 rho) := by
      rw [← hbit]
      unfold seg48In0AccY68
      linear_combination -r1790
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34540 * rho 34541 = rho 34550 := by linear_combination r1791
  have hd1 : rho 34540 * rho 34540 = rho 34551 := by linear_combination r1792
  have hd2 : rho 34541 * rho 34541 = rho 34552 := by linear_combination r1793
  have hd3 : rho 34553 * (rho 34541 * rho 34541 + rho 34540 * rho 34540 * (-1)) =
      2 * (rho 34540 * rho 34541) := by
    rw [hd0, hd1, hd2]
    linear_combination r1794
  have hd4 : rho 34554 * (2 - (rho 34541 * rho 34541 + rho 34540 * rho 34540 * (-1))) =
      rho 34541 * rho 34541 - rho 34540 * rho 34540 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1795
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX68 rho, seg48In0AccY68 rho⟩ ⟨rho 34540, rho 34541⟩
    ⟨rho 34546, rho 34547⟩ ⟨seg48In0AccX69 rho, seg48In0AccY69 rho⟩ ⟨rho 34553, rho 34554⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows69 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1796 rho ∧ Seg48.relationRow1797 rho ∧ Seg48.relationRow1798 rho ∧ Seg48.relationRow1799 rho ∧ Seg48.relationRow1800 rho ∧ Seg48.relationRow1801 rho ∧ Seg48.relationRow1802 rho ∧ Seg48.relationRow1803 rho ∧ Seg48.relationRow1804 rho ∧ Seg48.relationRow1805 rho ∧ Seg48.relationRow1806 rho ∧ Seg48.relationRow1807 rho ∧ Seg48.relationRow1808 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1796, r1797, r1798, r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1796, r1797, r1798, r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808⟩

theorem seg48In0_rung69 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33605 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX69 rho, seg48In0AccY69 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34553, rho 34554⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX69 rho, seg48In0AccY69 rho⟩ ⟨rho 34553, rho 34554⟩
        ⟨seg48In0AccX70 rho, seg48In0AccY70 rho⟩ ⟨rho 34566, rho 34567⟩ := by
  obtain ⟨r1796, r1797, r1798, r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808⟩ := seg48In0_rows69 rho h
  unfold Seg48.relationRow1796 at r1796

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1796

  unfold Seg48.relationRow1797 at r1797

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1797

  unfold Seg48.relationRow1798 at r1798

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1798

  unfold Seg48.relationRow1799 at r1799

  unfold Seg48.relationRow1800 at r1800

  unfold Seg48.relationRow1801 at r1801

  unfold Seg48.relationRow1802 at r1802

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1802

  unfold Seg48.relationRow1803 at r1803

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1803

  unfold Seg48.relationRow1804 at r1804

  unfold Seg48.relationRow1805 at r1805

  unfold Seg48.relationRow1806 at r1806

  unfold Seg48.relationRow1807 at r1807

  unfold Seg48.relationRow1808 at r1808

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX70 rho = seg48In0AccX69 rho + rho 34561 := by
    unfold seg48In0AccX70 seg48In0AccX69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 69]

    ring

  have hnexty : seg48In0AccY70 rho = seg48In0AccY69 rho + rho 34562 := by
    unfold seg48In0AccY70 seg48In0AccY69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 69]

    ring

  have ha0 : (rho 34553 + rho 34554) * (seg48In0AccX69 rho + seg48In0AccY69 rho) = rho 34555 := by
    unfold seg48In0AccX69 seg48In0AccY69
    linear_combination r1796
  have ha1 : rho 34554 * seg48In0AccX69 rho = rho 34556 := by
    unfold seg48In0AccX69
    linear_combination r1797
  have ha2 : rho 34553 * seg48In0AccY69 rho = rho 34557 := by
    unfold seg48In0AccY69
    linear_combination r1798
  have ha3 : 3021 * rho 34556 * rho 34557 = rho 34558 := by
    linear_combination r1799
  have ha4 : rho 34559 * (1 + rho 34558) = rho 34556 + rho 34557 := by
    linear_combination r1800
  have ha5 : rho 34560 * (1 - rho 34558) = rho 34555 - rho 34556 - rho 34557 := by
    linear_combination r1801
  have haddx :
      rho 34559 * (1 + 3021 * (rho 34554 * seg48In0AccX69 rho) * (rho 34553 * seg48In0AccY69 rho)) =
        rho 34554 * seg48In0AccX69 rho + rho 34553 * seg48In0AccY69 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34560 * (1 - 3021 * (rho 34554 * seg48In0AccX69 rho) * (rho 34553 * seg48In0AccY69 rho)) =
        (-1) * (rho 34554 * seg48In0AccX69 rho) - rho 34553 * seg48In0AccY69 rho +
          (seg48In0AccY69 rho - seg48In0AccX69 rho * (-1)) * (rho 34553 + rho 34554) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34560 * (1 - rho 34558) = rho 34555 - rho 34556 - rho 34557 := ha5
      _ = (-1) * rho 34556 - rho 34557 + (seg48In0AccY69 rho - seg48In0AccX69 rho * (-1)) *
          (rho 34553 + rho 34554) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX70 rho = seg48In0AccX69 rho - Bool.toZMod bit * (seg48In0AccX69 rho - rho 34559) := by
    have hd : rho 34561 = Bool.toZMod bit * (rho 34559 - seg48In0AccX69 rho) := by
      rw [← hbit]
      unfold seg48In0AccX69
      linear_combination -r1802
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY70 rho = seg48In0AccY69 rho - Bool.toZMod bit * (seg48In0AccY69 rho - rho 34560) := by
    have hd : rho 34562 = Bool.toZMod bit * (rho 34560 - seg48In0AccY69 rho) := by
      rw [← hbit]
      unfold seg48In0AccY69
      linear_combination -r1803
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34553 * rho 34554 = rho 34563 := by linear_combination r1804
  have hd1 : rho 34553 * rho 34553 = rho 34564 := by linear_combination r1805
  have hd2 : rho 34554 * rho 34554 = rho 34565 := by linear_combination r1806
  have hd3 : rho 34566 * (rho 34554 * rho 34554 + rho 34553 * rho 34553 * (-1)) =
      2 * (rho 34553 * rho 34554) := by
    rw [hd0, hd1, hd2]
    linear_combination r1807
  have hd4 : rho 34567 * (2 - (rho 34554 * rho 34554 + rho 34553 * rho 34553 * (-1))) =
      rho 34554 * rho 34554 - rho 34553 * rho 34553 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1808
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX69 rho, seg48In0AccY69 rho⟩ ⟨rho 34553, rho 34554⟩
    ⟨rho 34559, rho 34560⟩ ⟨seg48In0AccX70 rho, seg48In0AccY70 rho⟩ ⟨rho 34566, rho 34567⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows70 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1809 rho ∧ Seg48.relationRow1810 rho ∧ Seg48.relationRow1811 rho ∧ Seg48.relationRow1812 rho ∧ Seg48.relationRow1813 rho ∧ Seg48.relationRow1814 rho ∧ Seg48.relationRow1815 rho ∧ Seg48.relationRow1816 rho ∧ Seg48.relationRow1817 rho ∧ Seg48.relationRow1818 rho ∧ Seg48.relationRow1819 rho ∧ Seg48.relationRow1820 rho ∧ Seg48.relationRow1821 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1809, r1810, r1811, r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1809, r1810, r1811, r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821⟩

theorem seg48In0_rung70 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33606 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX70 rho, seg48In0AccY70 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34566, rho 34567⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX70 rho, seg48In0AccY70 rho⟩ ⟨rho 34566, rho 34567⟩
        ⟨seg48In0AccX71 rho, seg48In0AccY71 rho⟩ ⟨rho 34579, rho 34580⟩ := by
  obtain ⟨r1809, r1810, r1811, r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821⟩ := seg48In0_rows70 rho h
  unfold Seg48.relationRow1809 at r1809

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1809

  unfold Seg48.relationRow1810 at r1810

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1810

  unfold Seg48.relationRow1811 at r1811

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1811

  unfold Seg48.relationRow1812 at r1812

  unfold Seg48.relationRow1813 at r1813

  unfold Seg48.relationRow1814 at r1814

  unfold Seg48.relationRow1815 at r1815

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1815

  unfold Seg48.relationRow1816 at r1816

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1816

  unfold Seg48.relationRow1817 at r1817

  unfold Seg48.relationRow1818 at r1818

  unfold Seg48.relationRow1819 at r1819

  unfold Seg48.relationRow1820 at r1820

  unfold Seg48.relationRow1821 at r1821

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX71 rho = seg48In0AccX70 rho + rho 34574 := by
    unfold seg48In0AccX71 seg48In0AccX70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 70]

    ring

  have hnexty : seg48In0AccY71 rho = seg48In0AccY70 rho + rho 34575 := by
    unfold seg48In0AccY71 seg48In0AccY70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 70]

    ring

  have ha0 : (rho 34566 + rho 34567) * (seg48In0AccX70 rho + seg48In0AccY70 rho) = rho 34568 := by
    unfold seg48In0AccX70 seg48In0AccY70
    linear_combination r1809
  have ha1 : rho 34567 * seg48In0AccX70 rho = rho 34569 := by
    unfold seg48In0AccX70
    linear_combination r1810
  have ha2 : rho 34566 * seg48In0AccY70 rho = rho 34570 := by
    unfold seg48In0AccY70
    linear_combination r1811
  have ha3 : 3021 * rho 34569 * rho 34570 = rho 34571 := by
    linear_combination r1812
  have ha4 : rho 34572 * (1 + rho 34571) = rho 34569 + rho 34570 := by
    linear_combination r1813
  have ha5 : rho 34573 * (1 - rho 34571) = rho 34568 - rho 34569 - rho 34570 := by
    linear_combination r1814
  have haddx :
      rho 34572 * (1 + 3021 * (rho 34567 * seg48In0AccX70 rho) * (rho 34566 * seg48In0AccY70 rho)) =
        rho 34567 * seg48In0AccX70 rho + rho 34566 * seg48In0AccY70 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34573 * (1 - 3021 * (rho 34567 * seg48In0AccX70 rho) * (rho 34566 * seg48In0AccY70 rho)) =
        (-1) * (rho 34567 * seg48In0AccX70 rho) - rho 34566 * seg48In0AccY70 rho +
          (seg48In0AccY70 rho - seg48In0AccX70 rho * (-1)) * (rho 34566 + rho 34567) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34573 * (1 - rho 34571) = rho 34568 - rho 34569 - rho 34570 := ha5
      _ = (-1) * rho 34569 - rho 34570 + (seg48In0AccY70 rho - seg48In0AccX70 rho * (-1)) *
          (rho 34566 + rho 34567) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX71 rho = seg48In0AccX70 rho - Bool.toZMod bit * (seg48In0AccX70 rho - rho 34572) := by
    have hd : rho 34574 = Bool.toZMod bit * (rho 34572 - seg48In0AccX70 rho) := by
      rw [← hbit]
      unfold seg48In0AccX70
      linear_combination -r1815
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY71 rho = seg48In0AccY70 rho - Bool.toZMod bit * (seg48In0AccY70 rho - rho 34573) := by
    have hd : rho 34575 = Bool.toZMod bit * (rho 34573 - seg48In0AccY70 rho) := by
      rw [← hbit]
      unfold seg48In0AccY70
      linear_combination -r1816
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34566 * rho 34567 = rho 34576 := by linear_combination r1817
  have hd1 : rho 34566 * rho 34566 = rho 34577 := by linear_combination r1818
  have hd2 : rho 34567 * rho 34567 = rho 34578 := by linear_combination r1819
  have hd3 : rho 34579 * (rho 34567 * rho 34567 + rho 34566 * rho 34566 * (-1)) =
      2 * (rho 34566 * rho 34567) := by
    rw [hd0, hd1, hd2]
    linear_combination r1820
  have hd4 : rho 34580 * (2 - (rho 34567 * rho 34567 + rho 34566 * rho 34566 * (-1))) =
      rho 34567 * rho 34567 - rho 34566 * rho 34566 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1821
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX70 rho, seg48In0AccY70 rho⟩ ⟨rho 34566, rho 34567⟩
    ⟨rho 34572, rho 34573⟩ ⟨seg48In0AccX71 rho, seg48In0AccY71 rho⟩ ⟨rho 34579, rho 34580⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows71 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1822 rho ∧ Seg48.relationRow1823 rho ∧ Seg48.relationRow1824 rho ∧ Seg48.relationRow1825 rho ∧ Seg48.relationRow1826 rho ∧ Seg48.relationRow1827 rho ∧ Seg48.relationRow1828 rho ∧ Seg48.relationRow1829 rho ∧ Seg48.relationRow1830 rho ∧ Seg48.relationRow1831 rho ∧ Seg48.relationRow1832 rho ∧ Seg48.relationRow1833 rho ∧ Seg48.relationRow1834 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1822, r1823, r1824, r1825, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834, _, _, _, _, _⟩

  exact ⟨r1822, r1823, r1824, r1825, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834⟩

theorem seg48In0_rung71 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33607 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX71 rho, seg48In0AccY71 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34579, rho 34580⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX71 rho, seg48In0AccY71 rho⟩ ⟨rho 34579, rho 34580⟩
        ⟨seg48In0AccX72 rho, seg48In0AccY72 rho⟩ ⟨rho 34592, rho 34593⟩ := by
  obtain ⟨r1822, r1823, r1824, r1825, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834⟩ := seg48In0_rows71 rho h
  unfold Seg48.relationRow1822 at r1822

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1822

  unfold Seg48.relationRow1823 at r1823

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1823

  unfold Seg48.relationRow1824 at r1824

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1824

  unfold Seg48.relationRow1825 at r1825

  unfold Seg48.relationRow1826 at r1826

  unfold Seg48.relationRow1827 at r1827

  unfold Seg48.relationRow1828 at r1828

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1828

  unfold Seg48.relationRow1829 at r1829

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1829

  unfold Seg48.relationRow1830 at r1830

  unfold Seg48.relationRow1831 at r1831

  unfold Seg48.relationRow1832 at r1832

  unfold Seg48.relationRow1833 at r1833

  unfold Seg48.relationRow1834 at r1834

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX72 rho = seg48In0AccX71 rho + rho 34587 := by
    unfold seg48In0AccX72 seg48In0AccX71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 71]

    ring

  have hnexty : seg48In0AccY72 rho = seg48In0AccY71 rho + rho 34588 := by
    unfold seg48In0AccY72 seg48In0AccY71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 71]

    ring

  have ha0 : (rho 34579 + rho 34580) * (seg48In0AccX71 rho + seg48In0AccY71 rho) = rho 34581 := by
    unfold seg48In0AccX71 seg48In0AccY71
    linear_combination r1822
  have ha1 : rho 34580 * seg48In0AccX71 rho = rho 34582 := by
    unfold seg48In0AccX71
    linear_combination r1823
  have ha2 : rho 34579 * seg48In0AccY71 rho = rho 34583 := by
    unfold seg48In0AccY71
    linear_combination r1824
  have ha3 : 3021 * rho 34582 * rho 34583 = rho 34584 := by
    linear_combination r1825
  have ha4 : rho 34585 * (1 + rho 34584) = rho 34582 + rho 34583 := by
    linear_combination r1826
  have ha5 : rho 34586 * (1 - rho 34584) = rho 34581 - rho 34582 - rho 34583 := by
    linear_combination r1827
  have haddx :
      rho 34585 * (1 + 3021 * (rho 34580 * seg48In0AccX71 rho) * (rho 34579 * seg48In0AccY71 rho)) =
        rho 34580 * seg48In0AccX71 rho + rho 34579 * seg48In0AccY71 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34586 * (1 - 3021 * (rho 34580 * seg48In0AccX71 rho) * (rho 34579 * seg48In0AccY71 rho)) =
        (-1) * (rho 34580 * seg48In0AccX71 rho) - rho 34579 * seg48In0AccY71 rho +
          (seg48In0AccY71 rho - seg48In0AccX71 rho * (-1)) * (rho 34579 + rho 34580) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34586 * (1 - rho 34584) = rho 34581 - rho 34582 - rho 34583 := ha5
      _ = (-1) * rho 34582 - rho 34583 + (seg48In0AccY71 rho - seg48In0AccX71 rho * (-1)) *
          (rho 34579 + rho 34580) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX72 rho = seg48In0AccX71 rho - Bool.toZMod bit * (seg48In0AccX71 rho - rho 34585) := by
    have hd : rho 34587 = Bool.toZMod bit * (rho 34585 - seg48In0AccX71 rho) := by
      rw [← hbit]
      unfold seg48In0AccX71
      linear_combination -r1828
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY72 rho = seg48In0AccY71 rho - Bool.toZMod bit * (seg48In0AccY71 rho - rho 34586) := by
    have hd : rho 34588 = Bool.toZMod bit * (rho 34586 - seg48In0AccY71 rho) := by
      rw [← hbit]
      unfold seg48In0AccY71
      linear_combination -r1829
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34579 * rho 34580 = rho 34589 := by linear_combination r1830
  have hd1 : rho 34579 * rho 34579 = rho 34590 := by linear_combination r1831
  have hd2 : rho 34580 * rho 34580 = rho 34591 := by linear_combination r1832
  have hd3 : rho 34592 * (rho 34580 * rho 34580 + rho 34579 * rho 34579 * (-1)) =
      2 * (rho 34579 * rho 34580) := by
    rw [hd0, hd1, hd2]
    linear_combination r1833
  have hd4 : rho 34593 * (2 - (rho 34580 * rho 34580 + rho 34579 * rho 34579 * (-1))) =
      rho 34580 * rho 34580 - rho 34579 * rho 34579 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1834
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX71 rho, seg48In0AccY71 rho⟩ ⟨rho 34579, rho 34580⟩
    ⟨rho 34585, rho 34586⟩ ⟨seg48In0AccX72 rho, seg48In0AccY72 rho⟩ ⟨rho 34592, rho 34593⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows72 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1835 rho ∧ Seg48.relationRow1836 rho ∧ Seg48.relationRow1837 rho ∧ Seg48.relationRow1838 rho ∧ Seg48.relationRow1839 rho ∧ Seg48.relationRow1840 rho ∧ Seg48.relationRow1841 rho ∧ Seg48.relationRow1842 rho ∧ Seg48.relationRow1843 rho ∧ Seg48.relationRow1844 rho ∧ Seg48.relationRow1845 rho ∧ Seg48.relationRow1846 rho ∧ Seg48.relationRow1847 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1835, r1836, r1837, r1838, r1839⟩

  unfold Seg48.relationPart23 at p23

  rcases p23 with ⟨r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1835, r1836, r1837, r1838, r1839, r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847⟩

theorem seg48In0_rung72 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33608 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX72 rho, seg48In0AccY72 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34592, rho 34593⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX72 rho, seg48In0AccY72 rho⟩ ⟨rho 34592, rho 34593⟩
        ⟨seg48In0AccX73 rho, seg48In0AccY73 rho⟩ ⟨rho 34605, rho 34606⟩ := by
  obtain ⟨r1835, r1836, r1837, r1838, r1839, r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847⟩ := seg48In0_rows72 rho h
  unfold Seg48.relationRow1835 at r1835

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1835

  unfold Seg48.relationRow1836 at r1836

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1836

  unfold Seg48.relationRow1837 at r1837

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1837

  unfold Seg48.relationRow1838 at r1838

  unfold Seg48.relationRow1839 at r1839

  unfold Seg48.relationRow1840 at r1840

  unfold Seg48.relationRow1841 at r1841

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1841

  unfold Seg48.relationRow1842 at r1842

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1842

  unfold Seg48.relationRow1843 at r1843

  unfold Seg48.relationRow1844 at r1844

  unfold Seg48.relationRow1845 at r1845

  unfold Seg48.relationRow1846 at r1846

  unfold Seg48.relationRow1847 at r1847

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX73 rho = seg48In0AccX72 rho + rho 34600 := by
    unfold seg48In0AccX73 seg48In0AccX72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 72]

    ring

  have hnexty : seg48In0AccY73 rho = seg48In0AccY72 rho + rho 34601 := by
    unfold seg48In0AccY73 seg48In0AccY72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 72]

    ring

  have ha0 : (rho 34592 + rho 34593) * (seg48In0AccX72 rho + seg48In0AccY72 rho) = rho 34594 := by
    unfold seg48In0AccX72 seg48In0AccY72
    linear_combination r1835
  have ha1 : rho 34593 * seg48In0AccX72 rho = rho 34595 := by
    unfold seg48In0AccX72
    linear_combination r1836
  have ha2 : rho 34592 * seg48In0AccY72 rho = rho 34596 := by
    unfold seg48In0AccY72
    linear_combination r1837
  have ha3 : 3021 * rho 34595 * rho 34596 = rho 34597 := by
    linear_combination r1838
  have ha4 : rho 34598 * (1 + rho 34597) = rho 34595 + rho 34596 := by
    linear_combination r1839
  have ha5 : rho 34599 * (1 - rho 34597) = rho 34594 - rho 34595 - rho 34596 := by
    linear_combination r1840
  have haddx :
      rho 34598 * (1 + 3021 * (rho 34593 * seg48In0AccX72 rho) * (rho 34592 * seg48In0AccY72 rho)) =
        rho 34593 * seg48In0AccX72 rho + rho 34592 * seg48In0AccY72 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34599 * (1 - 3021 * (rho 34593 * seg48In0AccX72 rho) * (rho 34592 * seg48In0AccY72 rho)) =
        (-1) * (rho 34593 * seg48In0AccX72 rho) - rho 34592 * seg48In0AccY72 rho +
          (seg48In0AccY72 rho - seg48In0AccX72 rho * (-1)) * (rho 34592 + rho 34593) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34599 * (1 - rho 34597) = rho 34594 - rho 34595 - rho 34596 := ha5
      _ = (-1) * rho 34595 - rho 34596 + (seg48In0AccY72 rho - seg48In0AccX72 rho * (-1)) *
          (rho 34592 + rho 34593) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX73 rho = seg48In0AccX72 rho - Bool.toZMod bit * (seg48In0AccX72 rho - rho 34598) := by
    have hd : rho 34600 = Bool.toZMod bit * (rho 34598 - seg48In0AccX72 rho) := by
      rw [← hbit]
      unfold seg48In0AccX72
      linear_combination -r1841
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY73 rho = seg48In0AccY72 rho - Bool.toZMod bit * (seg48In0AccY72 rho - rho 34599) := by
    have hd : rho 34601 = Bool.toZMod bit * (rho 34599 - seg48In0AccY72 rho) := by
      rw [← hbit]
      unfold seg48In0AccY72
      linear_combination -r1842
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34592 * rho 34593 = rho 34602 := by linear_combination r1843
  have hd1 : rho 34592 * rho 34592 = rho 34603 := by linear_combination r1844
  have hd2 : rho 34593 * rho 34593 = rho 34604 := by linear_combination r1845
  have hd3 : rho 34605 * (rho 34593 * rho 34593 + rho 34592 * rho 34592 * (-1)) =
      2 * (rho 34592 * rho 34593) := by
    rw [hd0, hd1, hd2]
    linear_combination r1846
  have hd4 : rho 34606 * (2 - (rho 34593 * rho 34593 + rho 34592 * rho 34592 * (-1))) =
      rho 34593 * rho 34593 - rho 34592 * rho 34592 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1847
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX72 rho, seg48In0AccY72 rho⟩ ⟨rho 34592, rho 34593⟩
    ⟨rho 34598, rho 34599⟩ ⟨seg48In0AccX73 rho, seg48In0AccY73 rho⟩ ⟨rho 34605, rho 34606⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows73 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1848 rho ∧ Seg48.relationRow1849 rho ∧ Seg48.relationRow1850 rho ∧ Seg48.relationRow1851 rho ∧ Seg48.relationRow1852 rho ∧ Seg48.relationRow1853 rho ∧ Seg48.relationRow1854 rho ∧ Seg48.relationRow1855 rho ∧ Seg48.relationRow1856 rho ∧ Seg48.relationRow1857 rho ∧ Seg48.relationRow1858 rho ∧ Seg48.relationRow1859 rho ∧ Seg48.relationRow1860 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, r1848, r1849, r1850, r1851, r1852, r1853, r1854, r1855, r1856, r1857, r1858, r1859, r1860, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1848, r1849, r1850, r1851, r1852, r1853, r1854, r1855, r1856, r1857, r1858, r1859, r1860⟩

theorem seg48In0_rung73 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33609 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX73 rho, seg48In0AccY73 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34605, rho 34606⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX73 rho, seg48In0AccY73 rho⟩ ⟨rho 34605, rho 34606⟩
        ⟨seg48In0AccX74 rho, seg48In0AccY74 rho⟩ ⟨rho 34618, rho 34619⟩ := by
  obtain ⟨r1848, r1849, r1850, r1851, r1852, r1853, r1854, r1855, r1856, r1857, r1858, r1859, r1860⟩ := seg48In0_rows73 rho h
  unfold Seg48.relationRow1848 at r1848

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1848

  unfold Seg48.relationRow1849 at r1849

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1849

  unfold Seg48.relationRow1850 at r1850

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1850

  unfold Seg48.relationRow1851 at r1851

  unfold Seg48.relationRow1852 at r1852

  unfold Seg48.relationRow1853 at r1853

  unfold Seg48.relationRow1854 at r1854

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1854

  unfold Seg48.relationRow1855 at r1855

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1855

  unfold Seg48.relationRow1856 at r1856

  unfold Seg48.relationRow1857 at r1857

  unfold Seg48.relationRow1858 at r1858

  unfold Seg48.relationRow1859 at r1859

  unfold Seg48.relationRow1860 at r1860

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX74 rho = seg48In0AccX73 rho + rho 34613 := by
    unfold seg48In0AccX74 seg48In0AccX73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 73]

    ring

  have hnexty : seg48In0AccY74 rho = seg48In0AccY73 rho + rho 34614 := by
    unfold seg48In0AccY74 seg48In0AccY73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 73]

    ring

  have ha0 : (rho 34605 + rho 34606) * (seg48In0AccX73 rho + seg48In0AccY73 rho) = rho 34607 := by
    unfold seg48In0AccX73 seg48In0AccY73
    linear_combination r1848
  have ha1 : rho 34606 * seg48In0AccX73 rho = rho 34608 := by
    unfold seg48In0AccX73
    linear_combination r1849
  have ha2 : rho 34605 * seg48In0AccY73 rho = rho 34609 := by
    unfold seg48In0AccY73
    linear_combination r1850
  have ha3 : 3021 * rho 34608 * rho 34609 = rho 34610 := by
    linear_combination r1851
  have ha4 : rho 34611 * (1 + rho 34610) = rho 34608 + rho 34609 := by
    linear_combination r1852
  have ha5 : rho 34612 * (1 - rho 34610) = rho 34607 - rho 34608 - rho 34609 := by
    linear_combination r1853
  have haddx :
      rho 34611 * (1 + 3021 * (rho 34606 * seg48In0AccX73 rho) * (rho 34605 * seg48In0AccY73 rho)) =
        rho 34606 * seg48In0AccX73 rho + rho 34605 * seg48In0AccY73 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34612 * (1 - 3021 * (rho 34606 * seg48In0AccX73 rho) * (rho 34605 * seg48In0AccY73 rho)) =
        (-1) * (rho 34606 * seg48In0AccX73 rho) - rho 34605 * seg48In0AccY73 rho +
          (seg48In0AccY73 rho - seg48In0AccX73 rho * (-1)) * (rho 34605 + rho 34606) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34612 * (1 - rho 34610) = rho 34607 - rho 34608 - rho 34609 := ha5
      _ = (-1) * rho 34608 - rho 34609 + (seg48In0AccY73 rho - seg48In0AccX73 rho * (-1)) *
          (rho 34605 + rho 34606) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX74 rho = seg48In0AccX73 rho - Bool.toZMod bit * (seg48In0AccX73 rho - rho 34611) := by
    have hd : rho 34613 = Bool.toZMod bit * (rho 34611 - seg48In0AccX73 rho) := by
      rw [← hbit]
      unfold seg48In0AccX73
      linear_combination -r1854
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY74 rho = seg48In0AccY73 rho - Bool.toZMod bit * (seg48In0AccY73 rho - rho 34612) := by
    have hd : rho 34614 = Bool.toZMod bit * (rho 34612 - seg48In0AccY73 rho) := by
      rw [← hbit]
      unfold seg48In0AccY73
      linear_combination -r1855
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34605 * rho 34606 = rho 34615 := by linear_combination r1856
  have hd1 : rho 34605 * rho 34605 = rho 34616 := by linear_combination r1857
  have hd2 : rho 34606 * rho 34606 = rho 34617 := by linear_combination r1858
  have hd3 : rho 34618 * (rho 34606 * rho 34606 + rho 34605 * rho 34605 * (-1)) =
      2 * (rho 34605 * rho 34606) := by
    rw [hd0, hd1, hd2]
    linear_combination r1859
  have hd4 : rho 34619 * (2 - (rho 34606 * rho 34606 + rho 34605 * rho 34605 * (-1))) =
      rho 34606 * rho 34606 - rho 34605 * rho 34605 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1860
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX73 rho, seg48In0AccY73 rho⟩ ⟨rho 34605, rho 34606⟩
    ⟨rho 34611, rho 34612⟩ ⟨seg48In0AccX74 rho, seg48In0AccY74 rho⟩ ⟨rho 34618, rho 34619⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows74 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1861 rho ∧ Seg48.relationRow1862 rho ∧ Seg48.relationRow1863 rho ∧ Seg48.relationRow1864 rho ∧ Seg48.relationRow1865 rho ∧ Seg48.relationRow1866 rho ∧ Seg48.relationRow1867 rho ∧ Seg48.relationRow1868 rho ∧ Seg48.relationRow1869 rho ∧ Seg48.relationRow1870 rho ∧ Seg48.relationRow1871 rho ∧ Seg48.relationRow1872 rho ∧ Seg48.relationRow1873 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1861, r1862, r1863, r1864, r1865, r1866, r1867, r1868, r1869, r1870, r1871, r1872, r1873, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1861, r1862, r1863, r1864, r1865, r1866, r1867, r1868, r1869, r1870, r1871, r1872, r1873⟩

theorem seg48In0_rung74 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33610 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX74 rho, seg48In0AccY74 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34618, rho 34619⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX74 rho, seg48In0AccY74 rho⟩ ⟨rho 34618, rho 34619⟩
        ⟨seg48In0AccX75 rho, seg48In0AccY75 rho⟩ ⟨rho 34631, rho 34632⟩ := by
  obtain ⟨r1861, r1862, r1863, r1864, r1865, r1866, r1867, r1868, r1869, r1870, r1871, r1872, r1873⟩ := seg48In0_rows74 rho h
  unfold Seg48.relationRow1861 at r1861

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1861

  unfold Seg48.relationRow1862 at r1862

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1862

  unfold Seg48.relationRow1863 at r1863

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1863

  unfold Seg48.relationRow1864 at r1864

  unfold Seg48.relationRow1865 at r1865

  unfold Seg48.relationRow1866 at r1866

  unfold Seg48.relationRow1867 at r1867

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1867

  unfold Seg48.relationRow1868 at r1868

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1868

  unfold Seg48.relationRow1869 at r1869

  unfold Seg48.relationRow1870 at r1870

  unfold Seg48.relationRow1871 at r1871

  unfold Seg48.relationRow1872 at r1872

  unfold Seg48.relationRow1873 at r1873

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX75 rho = seg48In0AccX74 rho + rho 34626 := by
    unfold seg48In0AccX75 seg48In0AccX74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 74]

    ring

  have hnexty : seg48In0AccY75 rho = seg48In0AccY74 rho + rho 34627 := by
    unfold seg48In0AccY75 seg48In0AccY74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 74]

    ring

  have ha0 : (rho 34618 + rho 34619) * (seg48In0AccX74 rho + seg48In0AccY74 rho) = rho 34620 := by
    unfold seg48In0AccX74 seg48In0AccY74
    linear_combination r1861
  have ha1 : rho 34619 * seg48In0AccX74 rho = rho 34621 := by
    unfold seg48In0AccX74
    linear_combination r1862
  have ha2 : rho 34618 * seg48In0AccY74 rho = rho 34622 := by
    unfold seg48In0AccY74
    linear_combination r1863
  have ha3 : 3021 * rho 34621 * rho 34622 = rho 34623 := by
    linear_combination r1864
  have ha4 : rho 34624 * (1 + rho 34623) = rho 34621 + rho 34622 := by
    linear_combination r1865
  have ha5 : rho 34625 * (1 - rho 34623) = rho 34620 - rho 34621 - rho 34622 := by
    linear_combination r1866
  have haddx :
      rho 34624 * (1 + 3021 * (rho 34619 * seg48In0AccX74 rho) * (rho 34618 * seg48In0AccY74 rho)) =
        rho 34619 * seg48In0AccX74 rho + rho 34618 * seg48In0AccY74 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34625 * (1 - 3021 * (rho 34619 * seg48In0AccX74 rho) * (rho 34618 * seg48In0AccY74 rho)) =
        (-1) * (rho 34619 * seg48In0AccX74 rho) - rho 34618 * seg48In0AccY74 rho +
          (seg48In0AccY74 rho - seg48In0AccX74 rho * (-1)) * (rho 34618 + rho 34619) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34625 * (1 - rho 34623) = rho 34620 - rho 34621 - rho 34622 := ha5
      _ = (-1) * rho 34621 - rho 34622 + (seg48In0AccY74 rho - seg48In0AccX74 rho * (-1)) *
          (rho 34618 + rho 34619) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX75 rho = seg48In0AccX74 rho - Bool.toZMod bit * (seg48In0AccX74 rho - rho 34624) := by
    have hd : rho 34626 = Bool.toZMod bit * (rho 34624 - seg48In0AccX74 rho) := by
      rw [← hbit]
      unfold seg48In0AccX74
      linear_combination -r1867
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY75 rho = seg48In0AccY74 rho - Bool.toZMod bit * (seg48In0AccY74 rho - rho 34625) := by
    have hd : rho 34627 = Bool.toZMod bit * (rho 34625 - seg48In0AccY74 rho) := by
      rw [← hbit]
      unfold seg48In0AccY74
      linear_combination -r1868
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34618 * rho 34619 = rho 34628 := by linear_combination r1869
  have hd1 : rho 34618 * rho 34618 = rho 34629 := by linear_combination r1870
  have hd2 : rho 34619 * rho 34619 = rho 34630 := by linear_combination r1871
  have hd3 : rho 34631 * (rho 34619 * rho 34619 + rho 34618 * rho 34618 * (-1)) =
      2 * (rho 34618 * rho 34619) := by
    rw [hd0, hd1, hd2]
    linear_combination r1872
  have hd4 : rho 34632 * (2 - (rho 34619 * rho 34619 + rho 34618 * rho 34618 * (-1))) =
      rho 34619 * rho 34619 - rho 34618 * rho 34618 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1873
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX74 rho, seg48In0AccY74 rho⟩ ⟨rho 34618, rho 34619⟩
    ⟨rho 34624, rho 34625⟩ ⟨seg48In0AccX75 rho, seg48In0AccY75 rho⟩ ⟨rho 34631, rho 34632⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows75 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1874 rho ∧ Seg48.relationRow1875 rho ∧ Seg48.relationRow1876 rho ∧ Seg48.relationRow1877 rho ∧ Seg48.relationRow1878 rho ∧ Seg48.relationRow1879 rho ∧ Seg48.relationRow1880 rho ∧ Seg48.relationRow1881 rho ∧ Seg48.relationRow1882 rho ∧ Seg48.relationRow1883 rho ∧ Seg48.relationRow1884 rho ∧ Seg48.relationRow1885 rho ∧ Seg48.relationRow1886 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1874, r1875, r1876, r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1874, r1875, r1876, r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886⟩

theorem seg48In0_rung75 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33611 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX75 rho, seg48In0AccY75 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34631, rho 34632⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX75 rho, seg48In0AccY75 rho⟩ ⟨rho 34631, rho 34632⟩
        ⟨seg48In0AccX76 rho, seg48In0AccY76 rho⟩ ⟨rho 34644, rho 34645⟩ := by
  obtain ⟨r1874, r1875, r1876, r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886⟩ := seg48In0_rows75 rho h
  unfold Seg48.relationRow1874 at r1874

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1874

  unfold Seg48.relationRow1875 at r1875

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1875

  unfold Seg48.relationRow1876 at r1876

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1876

  unfold Seg48.relationRow1877 at r1877

  unfold Seg48.relationRow1878 at r1878

  unfold Seg48.relationRow1879 at r1879

  unfold Seg48.relationRow1880 at r1880

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1880

  unfold Seg48.relationRow1881 at r1881

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1881

  unfold Seg48.relationRow1882 at r1882

  unfold Seg48.relationRow1883 at r1883

  unfold Seg48.relationRow1884 at r1884

  unfold Seg48.relationRow1885 at r1885

  unfold Seg48.relationRow1886 at r1886

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX76 rho = seg48In0AccX75 rho + rho 34639 := by
    unfold seg48In0AccX76 seg48In0AccX75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 75]

    ring

  have hnexty : seg48In0AccY76 rho = seg48In0AccY75 rho + rho 34640 := by
    unfold seg48In0AccY76 seg48In0AccY75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 75]

    ring

  have ha0 : (rho 34631 + rho 34632) * (seg48In0AccX75 rho + seg48In0AccY75 rho) = rho 34633 := by
    unfold seg48In0AccX75 seg48In0AccY75
    linear_combination r1874
  have ha1 : rho 34632 * seg48In0AccX75 rho = rho 34634 := by
    unfold seg48In0AccX75
    linear_combination r1875
  have ha2 : rho 34631 * seg48In0AccY75 rho = rho 34635 := by
    unfold seg48In0AccY75
    linear_combination r1876
  have ha3 : 3021 * rho 34634 * rho 34635 = rho 34636 := by
    linear_combination r1877
  have ha4 : rho 34637 * (1 + rho 34636) = rho 34634 + rho 34635 := by
    linear_combination r1878
  have ha5 : rho 34638 * (1 - rho 34636) = rho 34633 - rho 34634 - rho 34635 := by
    linear_combination r1879
  have haddx :
      rho 34637 * (1 + 3021 * (rho 34632 * seg48In0AccX75 rho) * (rho 34631 * seg48In0AccY75 rho)) =
        rho 34632 * seg48In0AccX75 rho + rho 34631 * seg48In0AccY75 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34638 * (1 - 3021 * (rho 34632 * seg48In0AccX75 rho) * (rho 34631 * seg48In0AccY75 rho)) =
        (-1) * (rho 34632 * seg48In0AccX75 rho) - rho 34631 * seg48In0AccY75 rho +
          (seg48In0AccY75 rho - seg48In0AccX75 rho * (-1)) * (rho 34631 + rho 34632) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34638 * (1 - rho 34636) = rho 34633 - rho 34634 - rho 34635 := ha5
      _ = (-1) * rho 34634 - rho 34635 + (seg48In0AccY75 rho - seg48In0AccX75 rho * (-1)) *
          (rho 34631 + rho 34632) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX76 rho = seg48In0AccX75 rho - Bool.toZMod bit * (seg48In0AccX75 rho - rho 34637) := by
    have hd : rho 34639 = Bool.toZMod bit * (rho 34637 - seg48In0AccX75 rho) := by
      rw [← hbit]
      unfold seg48In0AccX75
      linear_combination -r1880
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY76 rho = seg48In0AccY75 rho - Bool.toZMod bit * (seg48In0AccY75 rho - rho 34638) := by
    have hd : rho 34640 = Bool.toZMod bit * (rho 34638 - seg48In0AccY75 rho) := by
      rw [← hbit]
      unfold seg48In0AccY75
      linear_combination -r1881
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34631 * rho 34632 = rho 34641 := by linear_combination r1882
  have hd1 : rho 34631 * rho 34631 = rho 34642 := by linear_combination r1883
  have hd2 : rho 34632 * rho 34632 = rho 34643 := by linear_combination r1884
  have hd3 : rho 34644 * (rho 34632 * rho 34632 + rho 34631 * rho 34631 * (-1)) =
      2 * (rho 34631 * rho 34632) := by
    rw [hd0, hd1, hd2]
    linear_combination r1885
  have hd4 : rho 34645 * (2 - (rho 34632 * rho 34632 + rho 34631 * rho 34631 * (-1))) =
      rho 34632 * rho 34632 - rho 34631 * rho 34631 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1886
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX75 rho, seg48In0AccY75 rho⟩ ⟨rho 34631, rho 34632⟩
    ⟨rho 34637, rho 34638⟩ ⟨seg48In0AccX76 rho, seg48In0AccY76 rho⟩ ⟨rho 34644, rho 34645⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows76 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1887 rho ∧ Seg48.relationRow1888 rho ∧ Seg48.relationRow1889 rho ∧ Seg48.relationRow1890 rho ∧ Seg48.relationRow1891 rho ∧ Seg48.relationRow1892 rho ∧ Seg48.relationRow1893 rho ∧ Seg48.relationRow1894 rho ∧ Seg48.relationRow1895 rho ∧ Seg48.relationRow1896 rho ∧ Seg48.relationRow1897 rho ∧ Seg48.relationRow1898 rho ∧ Seg48.relationRow1899 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1887, r1888, r1889, r1890, r1891, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1887, r1888, r1889, r1890, r1891, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899⟩

theorem seg48In0_rung76 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33612 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX76 rho, seg48In0AccY76 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34644, rho 34645⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX76 rho, seg48In0AccY76 rho⟩ ⟨rho 34644, rho 34645⟩
        ⟨seg48In0AccX77 rho, seg48In0AccY77 rho⟩ ⟨rho 34657, rho 34658⟩ := by
  obtain ⟨r1887, r1888, r1889, r1890, r1891, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899⟩ := seg48In0_rows76 rho h
  unfold Seg48.relationRow1887 at r1887

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1887

  unfold Seg48.relationRow1888 at r1888

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1888

  unfold Seg48.relationRow1889 at r1889

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1889

  unfold Seg48.relationRow1890 at r1890

  unfold Seg48.relationRow1891 at r1891

  unfold Seg48.relationRow1892 at r1892

  unfold Seg48.relationRow1893 at r1893

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1893

  unfold Seg48.relationRow1894 at r1894

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1894

  unfold Seg48.relationRow1895 at r1895

  unfold Seg48.relationRow1896 at r1896

  unfold Seg48.relationRow1897 at r1897

  unfold Seg48.relationRow1898 at r1898

  unfold Seg48.relationRow1899 at r1899

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX77 rho = seg48In0AccX76 rho + rho 34652 := by
    unfold seg48In0AccX77 seg48In0AccX76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 76]

    ring

  have hnexty : seg48In0AccY77 rho = seg48In0AccY76 rho + rho 34653 := by
    unfold seg48In0AccY77 seg48In0AccY76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 76]

    ring

  have ha0 : (rho 34644 + rho 34645) * (seg48In0AccX76 rho + seg48In0AccY76 rho) = rho 34646 := by
    unfold seg48In0AccX76 seg48In0AccY76
    linear_combination r1887
  have ha1 : rho 34645 * seg48In0AccX76 rho = rho 34647 := by
    unfold seg48In0AccX76
    linear_combination r1888
  have ha2 : rho 34644 * seg48In0AccY76 rho = rho 34648 := by
    unfold seg48In0AccY76
    linear_combination r1889
  have ha3 : 3021 * rho 34647 * rho 34648 = rho 34649 := by
    linear_combination r1890
  have ha4 : rho 34650 * (1 + rho 34649) = rho 34647 + rho 34648 := by
    linear_combination r1891
  have ha5 : rho 34651 * (1 - rho 34649) = rho 34646 - rho 34647 - rho 34648 := by
    linear_combination r1892
  have haddx :
      rho 34650 * (1 + 3021 * (rho 34645 * seg48In0AccX76 rho) * (rho 34644 * seg48In0AccY76 rho)) =
        rho 34645 * seg48In0AccX76 rho + rho 34644 * seg48In0AccY76 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34651 * (1 - 3021 * (rho 34645 * seg48In0AccX76 rho) * (rho 34644 * seg48In0AccY76 rho)) =
        (-1) * (rho 34645 * seg48In0AccX76 rho) - rho 34644 * seg48In0AccY76 rho +
          (seg48In0AccY76 rho - seg48In0AccX76 rho * (-1)) * (rho 34644 + rho 34645) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34651 * (1 - rho 34649) = rho 34646 - rho 34647 - rho 34648 := ha5
      _ = (-1) * rho 34647 - rho 34648 + (seg48In0AccY76 rho - seg48In0AccX76 rho * (-1)) *
          (rho 34644 + rho 34645) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX77 rho = seg48In0AccX76 rho - Bool.toZMod bit * (seg48In0AccX76 rho - rho 34650) := by
    have hd : rho 34652 = Bool.toZMod bit * (rho 34650 - seg48In0AccX76 rho) := by
      rw [← hbit]
      unfold seg48In0AccX76
      linear_combination -r1893
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY77 rho = seg48In0AccY76 rho - Bool.toZMod bit * (seg48In0AccY76 rho - rho 34651) := by
    have hd : rho 34653 = Bool.toZMod bit * (rho 34651 - seg48In0AccY76 rho) := by
      rw [← hbit]
      unfold seg48In0AccY76
      linear_combination -r1894
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34644 * rho 34645 = rho 34654 := by linear_combination r1895
  have hd1 : rho 34644 * rho 34644 = rho 34655 := by linear_combination r1896
  have hd2 : rho 34645 * rho 34645 = rho 34656 := by linear_combination r1897
  have hd3 : rho 34657 * (rho 34645 * rho 34645 + rho 34644 * rho 34644 * (-1)) =
      2 * (rho 34644 * rho 34645) := by
    rw [hd0, hd1, hd2]
    linear_combination r1898
  have hd4 : rho 34658 * (2 - (rho 34645 * rho 34645 + rho 34644 * rho 34644 * (-1))) =
      rho 34645 * rho 34645 - rho 34644 * rho 34644 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1899
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX76 rho, seg48In0AccY76 rho⟩ ⟨rho 34644, rho 34645⟩
    ⟨rho 34650, rho 34651⟩ ⟨seg48In0AccX77 rho, seg48In0AccY77 rho⟩ ⟨rho 34657, rho 34658⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_hstep_c6 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (33536 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg48In0AccState rho i) →
      EdwardsBridge.onCurve (seg48In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In0AccState rho i) (seg48In0CurState rho i)
        (seg48In0AccState rho (i + 1)) (seg48In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In0_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg48In0_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg48In0_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg48In0_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg48In0_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg48In0_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg48In0_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg48In0_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg48In0_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg48In0_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg48In0_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
