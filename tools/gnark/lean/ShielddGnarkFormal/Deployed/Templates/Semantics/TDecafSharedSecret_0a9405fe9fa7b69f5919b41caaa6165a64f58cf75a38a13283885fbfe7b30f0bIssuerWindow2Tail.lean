import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bIssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem final_relation (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (hbase : EdwardsBridge.onCurve (base rho))
    (hacc : EdwardsBridge.onCurve (acc124 rho)) :
    Window2ScalarMulBridge.FinalRel (scalarBits rho)[0]!
      (base rho) (acc124 rho) (output rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    p0, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p91
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart0 at p0
  rcases p0 with ⟨_, r1, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart91 at p91
  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7312, r7313, r7314, r7315, r7316, r7317, r7318, r7319, r7320, r7321, r7322, r7323, r7324, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1 at r1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow7312 at r7312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow7313 at r7313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow7314 at r7314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow7315 at r7315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow7316 at r7316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow7317 at r7317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow7318 at r7318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow7319 at r7319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow7320 at r7320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow7321 at r7321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow7322 at r7322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow7323 at r7323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow7324 at r7324
  have hshift : EdwardsBridge.doubleSpec (acc124 rho) (tailShift rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7318) (rho 7319) (rho 7320) (rho 7321) (rho 7322) (rho 7323) (rho 7324)
      (by simpa [acc124] using hacc)
      (by linear_combination r7312)
      (by linear_combination r7313)
      (by linear_combination r7314)
      (by linear_combination r7315)
      (by linear_combination r7316)
    simpa [acc124, tailShift] using hraw
  have hshiftOn : EdwardsBridge.onCurve (tailShift rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc124 rho) (tailShift rho)
      hacc hshift
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc124 rho) hacc
  have hsum : EdwardsBridge.addSpec (tailShift rho) (base rho) (tailSum rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7323) (rho 7324) ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573) ((2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574)
      (rho 7325) (rho 7326) (rho 7327) (rho 7328) (rho 7329) (rho 7330)
      (by simpa [tailShift] using hshiftOn)
      (by simpa [base] using hbase)
      (by linear_combination r7317)
      (by linear_combination r7318)
      (by linear_combination r7319)
      (by linear_combination r7320)
      (by linear_combination r7321)
      (by linear_combination r7322)
    simpa [tailShift, base, tailSum] using hraw
  have hbit : GatesDef.is_bool (rho 2) := by
    unfold GatesDef.is_bool
    linear_combination r1
  have hselectX : GatesDef.select (rho 2)
      (tailSum rho).x (tailShift rho).x (output rho).x := by
    refine ⟨hbit, ?_⟩
    unfold tailSum tailShift output
    linear_combination -r7323
  have hselectY : GatesDef.select (rho 2)
      (tailSum rho).y (tailShift rho).y (output rho).y := by
    refine ⟨hbit, ?_⟩
    unfold tailSum tailShift output
    linear_combination -r7324
  have hraw : Window2ScalarMulBridge.FinalRel (rho 2)
      (base rho) (acc124 rho) (output rho) :=
    ⟨tailShift rho, tailSum rho, hshift, hsum, hselectX, hselectY⟩
  simpa only [scalarBits_get] using hraw

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport
