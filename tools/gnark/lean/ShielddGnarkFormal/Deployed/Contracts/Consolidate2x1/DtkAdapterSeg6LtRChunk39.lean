import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk38

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep39L (rho : Nat -> Seg6.F) (r2251 : Seg6.relationRow2251 rho) :
    rho 2652 = seg6RPe40 rho * (1 - rho 1929) := by
  unfold Seg6.relationRow2251 at r2251
  unfold seg6RPe40
  linear_combination -r2251

theorem seg6RStep39IlMul (rho : Nat -> Seg6.F) (r2252 : Seg6.relationRow2252 rho) :
    rho 2653 = seg6RIl40 rho * (rho 2652) := by
  unfold Seg6.relationRow2252 at r2252
  rw [seg6RStep39IlLc rho] at r2252
  linear_combination -r2252

theorem seg6RStep39Acc (rho : Nat -> Seg6.F) :
    seg6RIl39 rho = seg6RIl40 rho + (rho 2652) - (rho 2653) := by
  have hstate : seg6RIl39 rho = seg6RIl40 rho + seg6RIlAtom112 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom112
  ring

theorem seg6RStep39Pe (rho : Nat -> Seg6.F) (r2253 : Seg6.relationRow2253 rho) :
    seg6RPe39 rho = seg6RPe40 rho * rho 1929 := by
  unfold Seg6.relationRow2253 at r2253
  unfold seg6RPe39 seg6RPe40
  linear_combination -r2253

theorem seg6RStep39 (rho : Nat -> Seg6.F) (r2251 : Seg6.relationRow2251 rho) (r2252 : Seg6.relationRow2252 rho) (r2253 : Seg6.relationRow2253 rho) :
    seg6RPe39 rho = seg6RPe40 rho * rho 1929 ∧
    seg6RIl39 rho = seg6RIl40 rho + seg6RPe40 rho * (1 - rho 1929) -
      seg6RIl40 rho * (seg6RPe40 rho * (1 - rho 1929)) := by
  constructor
  · exact seg6RStep39Pe rho r2253
  · rw [seg6RStep39Acc rho, seg6RStep39L rho r2251, seg6RStep39IlMul rho r2252, seg6RStep39L rho r2251]

theorem seg6_r_chunk39 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 40 (seg6RPeState rho 40) (seg6RIlState rho 40) := by
  have htail := seg6_r_chunk38 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2251, r2252, r2253, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 39 ≤ n → n < 40 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 39 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep39 rho r2251 r2252 r2253
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 39 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
