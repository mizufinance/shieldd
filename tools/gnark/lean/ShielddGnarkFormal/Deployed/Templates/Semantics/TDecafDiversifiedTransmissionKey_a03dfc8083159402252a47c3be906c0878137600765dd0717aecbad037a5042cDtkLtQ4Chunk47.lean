import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkLtQ4Chunk46

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem dtkQ4Step47L (rho : Nat -> F) (r2631 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2631 rho) :
    rho 2124 = dtkQ4Pe48 rho * (1 - rho 1030) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2631 at r2631
  unfold dtkQ4Pe48
  linear_combination -r2631

theorem dtkQ4Step47IlMul (rho : Nat -> F) (r2632 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2632 rho) :
    rho 2125 = dtkQ4Il48 rho * (rho 2124) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2632 at r2632
  rw [dtkQ4Step47IlLc rho] at r2632
  linear_combination -r2632

theorem dtkQ4Step47Acc (rho : Nat -> F) :
    dtkQ4Il47 rho = dtkQ4Il48 rho + (rho 2124) - (rho 2125) := by
  have hstate : dtkQ4Il47 rho = dtkQ4Il48 rho + dtkQ4IlAtom43 rho := by rfl
  rw [hstate]
  unfold dtkQ4IlAtom43
  ring

theorem dtkQ4Step47Pe (rho : Nat -> F) (r2633 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2633 rho) :
    dtkQ4Pe47 rho = dtkQ4Pe48 rho * rho 1030 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2633 at r2633
  unfold dtkQ4Pe47 dtkQ4Pe48
  linear_combination -r2633

theorem dtkQ4Step47 (rho : Nat -> F) (r2631 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2631 rho) (r2632 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2632 rho) (r2633 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2633 rho) :
    dtkQ4Pe47 rho = dtkQ4Pe48 rho * rho 1030 ∧
    dtkQ4Il47 rho = dtkQ4Il48 rho + dtkQ4Pe48 rho * (1 - rho 1030) -
      dtkQ4Il48 rho * (dtkQ4Pe48 rho * (1 - rho 1030)) := by
  constructor
  · exact dtkQ4Step47Pe rho r2633
  · rw [dtkQ4Step47Acc rho, dtkQ4Step47L rho r2631, dtkQ4Step47IlMul rho r2632, dtkQ4Step47L rho r2631]

theorem dtk_q4_chunk47 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 978) k) 48 (dtkQ4PeState rho 48) (dtkQ4IlState rho 48) := by
  have htail := dtk_q4_chunk46 rho h k hk
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2631, r2632, r2633, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 47 ≤ n → n < 48 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        dtkQ4PeState rho n = dtkQ4PeState rho (n + 1) * rho (983 + n) ∧
        dtkQ4IlState rho n = dtkQ4IlState rho (n + 1) + dtkQ4PeState rho (n + 1) * (1 - rho (983 + n)) -
          dtkQ4IlState rho (n + 1) * (dtkQ4PeState rho (n + 1) * (1 - rho (983 + n)))
      else
        dtkQ4PeState rho n = dtkQ4PeState rho (n + 1) * (1 - rho (983 + n)) ∧
        dtkQ4IlState rho n = dtkQ4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 47 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact dtkQ4Step47 rho r2631 r2632 r2633
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 978) k)
    (dtkQ4PeState rho) (dtkQ4IlState rho) 47 1
    (by intro n hnlo hnhi; have key := dtkIvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
