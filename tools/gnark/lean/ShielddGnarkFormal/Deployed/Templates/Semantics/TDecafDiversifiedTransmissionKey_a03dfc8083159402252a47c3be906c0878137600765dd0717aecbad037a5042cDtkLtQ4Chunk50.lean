import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkLtQ4Chunk49

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem dtkQ4Step50L (rho : Nat -> F) (r2624 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2624 rho) :
    rho 2117 = dtkQ4Pe51 rho * (1 - rho 1033) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2624 at r2624
  unfold dtkQ4Pe51
  linear_combination -r2624

theorem dtkQ4Step50IlMul (rho : Nat -> F) (r2625 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2625 rho) :
    rho 2118 = dtkQ4Il51 rho * (rho 2117) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2625 at r2625
  rw [dtkQ4Step50IlLc rho] at r2625
  linear_combination -r2625

theorem dtkQ4Step50Acc (rho : Nat -> F) :
    dtkQ4Il50 rho = dtkQ4Il51 rho + (rho 2117) - (rho 2118) := by
  have hstate : dtkQ4Il50 rho = dtkQ4Il51 rho + dtkQ4IlAtom41 rho := by rfl
  rw [hstate]
  unfold dtkQ4IlAtom41
  ring

theorem dtkQ4Step50Pe (rho : Nat -> F) (r2626 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2626 rho) :
    dtkQ4Pe50 rho = dtkQ4Pe51 rho * rho 1033 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2626 at r2626
  unfold dtkQ4Pe50 dtkQ4Pe51
  linear_combination -r2626

theorem dtkQ4Step50 (rho : Nat -> F) (r2624 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2624 rho) (r2625 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2625 rho) (r2626 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2626 rho) :
    dtkQ4Pe50 rho = dtkQ4Pe51 rho * rho 1033 ∧
    dtkQ4Il50 rho = dtkQ4Il51 rho + dtkQ4Pe51 rho * (1 - rho 1033) -
      dtkQ4Il51 rho * (dtkQ4Pe51 rho * (1 - rho 1033)) := by
  constructor
  · exact dtkQ4Step50Pe rho r2626
  · rw [dtkQ4Step50Acc rho, dtkQ4Step50L rho r2624, dtkQ4Step50IlMul rho r2625, dtkQ4Step50L rho r2624]

theorem dtk_q4_chunk50 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 978) k) 51 (dtkQ4PeState rho 51) (dtkQ4IlState rho 51) := by
  have htail := dtk_q4_chunk49 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2624, r2625, r2626, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 50 ≤ n → n < 51 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        dtkQ4PeState rho n = dtkQ4PeState rho (n + 1) * rho (983 + n) ∧
        dtkQ4IlState rho n = dtkQ4IlState rho (n + 1) + dtkQ4PeState rho (n + 1) * (1 - rho (983 + n)) -
          dtkQ4IlState rho (n + 1) * (dtkQ4PeState rho (n + 1) * (1 - rho (983 + n)))
      else
        dtkQ4PeState rho n = dtkQ4PeState rho (n + 1) * (1 - rho (983 + n)) ∧
        dtkQ4IlState rho n = dtkQ4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 50 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact dtkQ4Step50 rho r2624 r2625 r2626
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 978) k)
    (dtkQ4PeState rho) (dtkQ4IlState rho) 50 1
    (by intro n hnlo hnhi; have key := dtkIvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
