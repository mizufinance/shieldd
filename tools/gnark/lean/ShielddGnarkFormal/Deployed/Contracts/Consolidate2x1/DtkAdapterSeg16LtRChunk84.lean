import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk83

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep84L (rho : Nat -> Seg16.F) (r2150 : Seg16.relationRow2150 rho) :
    rho 14725 = seg16RPe85 rho * (1 - rho 14148) := by
  unfold Seg16.relationRow2150 at r2150
  unfold seg16RPe85
  linear_combination -r2150

theorem seg16RStep84IlMul (rho : Nat -> Seg16.F) (r2151 : Seg16.relationRow2151 rho) :
    rho 14726 = seg16RIl85 rho * (rho 14725) := by
  unfold Seg16.relationRow2151 at r2151
  rw [seg16RStep84IlLc rho] at r2151
  linear_combination -r2151

theorem seg16RStep84Acc (rho : Nat -> Seg16.F) :
    seg16RIl84 rho = seg16RIl85 rho + (rho 14725) - (rho 14726) := by
  have hstate : seg16RIl84 rho = seg16RIl85 rho + seg16RIlAtom82 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom82
  ring

theorem seg16RStep84Pe (rho : Nat -> Seg16.F) (r2152 : Seg16.relationRow2152 rho) :
    seg16RPe84 rho = seg16RPe85 rho * rho 14148 := by
  unfold Seg16.relationRow2152 at r2152
  unfold seg16RPe84 seg16RPe85
  linear_combination -r2152

theorem seg16RStep84 (rho : Nat -> Seg16.F) (r2150 : Seg16.relationRow2150 rho) (r2151 : Seg16.relationRow2151 rho) (r2152 : Seg16.relationRow2152 rho) :
    seg16RPe84 rho = seg16RPe85 rho * rho 14148 ∧
    seg16RIl84 rho = seg16RIl85 rho + seg16RPe85 rho * (1 - rho 14148) -
      seg16RIl85 rho * (seg16RPe85 rho * (1 - rho 14148)) := by
  constructor
  · exact seg16RStep84Pe rho r2152
  · rw [seg16RStep84Acc rho, seg16RStep84L rho r2150, seg16RStep84IlMul rho r2151, seg16RStep84L rho r2150]

theorem seg16_r_chunk84 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 85 (seg16RPeState rho 85) (seg16RIlState rho 85) := by
  have htail := seg16_r_chunk83 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2150, r2151, r2152, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 84 ≤ n → n < 85 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 84 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep84 rho r2150 r2151 r2152
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 84 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
