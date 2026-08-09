import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkLtRChunk106

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem dtkRStep107Pe (rho : Nat -> F) (r2103 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2103 rho) :
    dtkRPe107 rho = dtkRPe108 rho * (1 - rho 1090) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2103 at r2103
  unfold dtkRPe107 dtkRPe108
  linear_combination -r2103

theorem dtkRStep107 (rho : Nat -> F) (r2103 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2103 rho) :
    dtkRPe107 rho = dtkRPe108 rho * (1 - rho 1090) ∧
    dtkRIl107 rho = dtkRIl108 rho := by
  exact ⟨dtkRStep107Pe rho r2103, rfl⟩

theorem dtk_r_chunk107 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 978) k) 253 (1 : F) (0 : F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (dtkIvkBits rho) (rho 978) k) 108 (dtkRPeState rho 108) (dtkRIlState rho 108) := by
  have htail := dtk_r_chunk106 rho h k hq4
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2103, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 107 ≤ n → n < 108 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        dtkRPeState rho n = dtkRPeState rho (n + 1) * rho (983 + n) ∧
        dtkRIlState rho n = dtkRIlState rho (n + 1) + dtkRPeState rho (n + 1) * (1 - rho (983 + n)) -
          dtkRIlState rho (n + 1) * (dtkRPeState rho (n + 1) * (1 - rho (983 + n)))
      else
        dtkRPeState rho n = dtkRPeState rho (n + 1) * (1 - rho (983 + n)) ∧
        dtkRIlState rho n = dtkRIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 107 = false := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact dtkRStep107 rho r2103
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (dtkIvkBits rho) (rho 978) k)
    (dtkRPeState rho) (dtkRIlState rho) 107 1
    (by intro n hnlo hnhi; have key := dtkIvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
