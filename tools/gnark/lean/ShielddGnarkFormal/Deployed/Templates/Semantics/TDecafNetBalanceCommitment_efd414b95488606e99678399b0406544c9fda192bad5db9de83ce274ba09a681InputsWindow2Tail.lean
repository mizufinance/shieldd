import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681InputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem final_relation (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (hbase : EdwardsBridge.onCurve (base rho))
    (hacc : EdwardsBridge.onCurve (acc63 rho)) :
    Window2ScalarMulBridge.FinalRel (scalarBits rho)[0]!
      (base rho) (acc63 rho) (output rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r1292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2825, r2826, r2827, r2828, r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1292 at r1292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2825 at r2825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2826 at r2826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2827 at r2827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2828 at r2828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2829 at r2829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2830 at r2830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2831 at r2831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2832 at r2832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2833 at r2833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2834 at r2834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2835 at r2835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2836 at r2836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2837 at r2837
  have hshift : EdwardsBridge.doubleSpec (acc63 rho) (tailShift rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2650) (rho 2651) (rho 2652) (rho 2653) (rho 2654) (rho 2655) (rho 2656)
      (by simpa [acc63] using hacc)
      (by linear_combination r2825)
      (by linear_combination r2826)
      (by linear_combination r2827)
      (by linear_combination r2828)
      (by linear_combination r2829)
    simpa [acc63, tailShift] using hraw
  have hshiftOn : EdwardsBridge.onCurve (tailShift rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc63 rho) (tailShift rho)
      hacc hshift
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc63 rho) hacc
  have hsum : EdwardsBridge.addSpec (tailShift rho) (base rho) (tailSum rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2655) (rho 2656) (rho 598) (rho 600)
      (rho 2657) (rho 2658) (rho 2659) (rho 2660) (rho 2661) (rho 2662)
      (by simpa [tailShift] using hshiftOn)
      (by simpa [base] using hbase)
      (by linear_combination r2830)
      (by linear_combination r2831)
      (by linear_combination r2832)
      (by linear_combination r2833)
      (by linear_combination r2834)
      (by linear_combination r2835)
    simpa [tailShift, base, tailSum] using hraw
  have hbit : GatesDef.is_bool (rho 1120) := by
    unfold GatesDef.is_bool
    linear_combination r1292
  have hselectX : GatesDef.select (rho 1120)
      (tailSum rho).x (tailShift rho).x (output rho).x := by
    refine ⟨hbit, ?_⟩
    unfold tailSum tailShift output
    linear_combination -r2836
  have hselectY : GatesDef.select (rho 1120)
      (tailSum rho).y (tailShift rho).y (output rho).y := by
    refine ⟨hbit, ?_⟩
    unfold tailSum tailShift output
    linear_combination -r2837
  have hraw : Window2ScalarMulBridge.FinalRel (rho 1120)
      (base rho) (acc63 rho) (output rho) :=
    ⟨tailShift rho, tailSum rho, hshift, hsum, hselectX, hselectY⟩
  simpa only [scalarBits_get] using hraw

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport
