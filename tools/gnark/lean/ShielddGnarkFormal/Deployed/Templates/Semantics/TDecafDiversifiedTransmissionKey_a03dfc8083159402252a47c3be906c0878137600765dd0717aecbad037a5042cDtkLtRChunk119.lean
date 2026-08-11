import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkLtRChunk118

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem dtkRStep119L (rho : Nat -> F) (r2079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2079 rho) :
    rho 1573 = dtkRPe120 rho * (1 - rho 1102) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2079 at r2079
  unfold dtkRPe120
  linear_combination -r2079

theorem dtkRStep119IlMul (rho : Nat -> F) (r2080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2080 rho) :
    rho 1574 = dtkRIl120 rho * (rho 1573) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2080 at r2080
  rw [dtkRStep119IlLc rho] at r2080
  linear_combination -r2080

theorem dtkRStep119Acc (rho : Nat -> F) :
    dtkRIl119 rho = dtkRIl120 rho + (rho 1573) - (rho 1574) := by
  have hstate : dtkRIl119 rho = dtkRIl120 rho + dtkRIlAtom63 rho := by rfl
  rw [hstate]
  unfold dtkRIlAtom63
  ring

theorem dtkRStep119Pe (rho : Nat -> F) (r2081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2081 rho) :
    dtkRPe119 rho = dtkRPe120 rho * rho 1102 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2081 at r2081
  unfold dtkRPe119 dtkRPe120
  linear_combination -r2081

theorem dtkRStep119 (rho : Nat -> F) (r2079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2079 rho) (r2080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2080 rho) (r2081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2081 rho) :
    dtkRPe119 rho = dtkRPe120 rho * rho 1102 ∧
    dtkRIl119 rho = dtkRIl120 rho + dtkRPe120 rho * (1 - rho 1102) -
      dtkRIl120 rho * (dtkRPe120 rho * (1 - rho 1102)) := by
  constructor
  · exact dtkRStep119Pe rho r2081
  · rw [dtkRStep119Acc rho, dtkRStep119L rho r2079, dtkRStep119IlMul rho r2080, dtkRStep119L rho r2079]

theorem dtk_r_chunk119 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 978) k) 253 (1 : F) (0 : F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (dtkIvkBits rho) (rho 978) k) 120 (dtkRPeState rho 120) (dtkRIlState rho 120) := by
  have htail := dtk_r_chunk118 rho h k hq4
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2079⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart26 at p26
  rcases p26 with ⟨r2080, r2081, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 119 ≤ n → n < 120 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        dtkRPeState rho n = dtkRPeState rho (n + 1) * rho (983 + n) ∧
        dtkRIlState rho n = dtkRIlState rho (n + 1) + dtkRPeState rho (n + 1) * (1 - rho (983 + n)) -
          dtkRIlState rho (n + 1) * (dtkRPeState rho (n + 1) * (1 - rho (983 + n)))
      else
        dtkRPeState rho n = dtkRPeState rho (n + 1) * (1 - rho (983 + n)) ∧
        dtkRIlState rho n = dtkRIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 119 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact dtkRStep119 rho r2079 r2080 r2081
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (dtkIvkBits rho) (rho 978) k)
    (dtkRPeState rho) (dtkRIlState rho) 119 1
    (by intro n hnlo hnhi; have key := dtkIvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
