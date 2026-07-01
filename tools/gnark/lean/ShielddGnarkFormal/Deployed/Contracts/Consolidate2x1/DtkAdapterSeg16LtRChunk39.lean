import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk38

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep39L (rho : Nat -> Seg16.F) (r2251 : Seg16.relationRow2251 rho) :
    rho 14826 = seg16RPe40 rho * (1 - rho 14103) := by
  unfold Seg16.relationRow2251 at r2251
  unfold seg16RPe40
  linear_combination -r2251

theorem seg16RStep39IlMul (rho : Nat -> Seg16.F) (r2252 : Seg16.relationRow2252 rho) :
    rho 14827 = seg16RIl40 rho * (rho 14826) := by
  unfold Seg16.relationRow2252 at r2252
  rw [seg16RStep39IlLc rho] at r2252
  linear_combination -r2252

theorem seg16RStep39Acc (rho : Nat -> Seg16.F) :
    seg16RIl39 rho = seg16RIl40 rho + (rho 14826) - (rho 14827) := by
  have hstate : seg16RIl39 rho = seg16RIl40 rho + seg16RIlAtom112 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom112
  ring

theorem seg16RStep39Pe (rho : Nat -> Seg16.F) (r2253 : Seg16.relationRow2253 rho) :
    seg16RPe39 rho = seg16RPe40 rho * rho 14103 := by
  unfold Seg16.relationRow2253 at r2253
  unfold seg16RPe39 seg16RPe40
  linear_combination -r2253

theorem seg16RStep39 (rho : Nat -> Seg16.F) (r2251 : Seg16.relationRow2251 rho) (r2252 : Seg16.relationRow2252 rho) (r2253 : Seg16.relationRow2253 rho) :
    seg16RPe39 rho = seg16RPe40 rho * rho 14103 ∧
    seg16RIl39 rho = seg16RIl40 rho + seg16RPe40 rho * (1 - rho 14103) -
      seg16RIl40 rho * (seg16RPe40 rho * (1 - rho 14103)) := by
  constructor
  · exact seg16RStep39Pe rho r2253
  · rw [seg16RStep39Acc rho, seg16RStep39L rho r2251, seg16RStep39IlMul rho r2252, seg16RStep39L rho r2251]

theorem seg16_r_chunk39 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 40 (seg16RPeState rho 40) (seg16RIlState rho 40) := by
  have htail := seg16_r_chunk38 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2251, r2252, r2253, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 39 ≤ n → n < 40 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 39 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep39 rho r2251 r2252 r2253
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 39 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
