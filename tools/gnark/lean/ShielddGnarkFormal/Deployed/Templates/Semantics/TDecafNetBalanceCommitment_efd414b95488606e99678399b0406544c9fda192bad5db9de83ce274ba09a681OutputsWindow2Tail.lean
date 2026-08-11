import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport

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
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2838, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381, r4382, r4383, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2838 at r2838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4371 at r4371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4372 at r4372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4373 at r4373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4374 at r4374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4375 at r4375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4376 at r4376
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4377 at r4377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4378 at r4378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4379 at r4379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4380 at r4380
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4381 at r4381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4382 at r4382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow4383 at r4383
  have hshift : EdwardsBridge.doubleSpec (acc63 rho) (tailShift rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4195) (rho 4196) (rho 4197) (rho 4198) (rho 4199) (rho 4200) (rho 4201)
      (by simpa [acc63] using hacc)
      (by linear_combination r4371)
      (by linear_combination r4372)
      (by linear_combination r4373)
      (by linear_combination r4374)
      (by linear_combination r4375)
    simpa [acc63, tailShift] using hraw
  have hshiftOn : EdwardsBridge.onCurve (tailShift rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc63 rho) (tailShift rho)
      hacc hshift
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc63 rho) hacc
  have hsum : EdwardsBridge.addSpec (tailShift rho) (base rho) (tailSum rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4200) (rho 4201) (rho 598) (rho 600)
      (rho 4202) (rho 4203) (rho 4204) (rho 4205) (rho 4206) (rho 4207)
      (by simpa [tailShift] using hshiftOn)
      (by simpa [base] using hbase)
      (by linear_combination r4376)
      (by linear_combination r4377)
      (by linear_combination r4378)
      (by linear_combination r4379)
      (by linear_combination r4380)
      (by linear_combination r4381)
    simpa [tailShift, base, tailSum] using hraw
  have hbit : GatesDef.is_bool (rho 2665) := by
    unfold GatesDef.is_bool
    linear_combination r2838
  have hselectX : GatesDef.select (rho 2665)
      (tailSum rho).x (tailShift rho).x (output rho).x := by
    refine ⟨hbit, ?_⟩
    unfold tailSum tailShift output
    linear_combination -r4382
  have hselectY : GatesDef.select (rho 2665)
      (tailSum rho).y (tailShift rho).y (output rho).y := by
    refine ⟨hbit, ?_⟩
    unfold tailSum tailShift output
    linear_combination -r4383
  have hraw : Window2ScalarMulBridge.FinalRel (rho 2665)
      (base rho) (acc63 rho) (output rho) :=
    ⟨tailShift rho, tailSum rho, hshift, hsum, hselectX, hselectY⟩
  simpa only [scalarBits_get] using hraw

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport
