import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk67

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep68L (rho : Nat -> Seg5.F) (r2184 : Seg5.relationRow2184 rho) :
    rho 1882 = seg5RPe69 rho * (1 - rho 1255) := by
  unfold Seg5.relationRow2184 at r2184
  unfold seg5RPe69
  linear_combination -r2184

theorem seg5RStep68IlMul (rho : Nat -> Seg5.F) (r2185 : Seg5.relationRow2185 rho) :
    rho 1883 = seg5RIl69 rho * (rho 1882) := by
  unfold Seg5.relationRow2185 at r2185
  rw [seg5RStep68IlLc rho] at r2185
  linear_combination -r2185

theorem seg5RStep68Acc (rho : Nat -> Seg5.F) :
    seg5RIl68 rho = seg5RIl69 rho + (rho 1882) - (rho 1883) := by
  have hstate : seg5RIl68 rho = seg5RIl69 rho + seg5RIlAtom92 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom92
  ring

theorem seg5RStep68Pe (rho : Nat -> Seg5.F) (r2186 : Seg5.relationRow2186 rho) :
    seg5RPe68 rho = seg5RPe69 rho * rho 1255 := by
  unfold Seg5.relationRow2186 at r2186
  unfold seg5RPe68 seg5RPe69
  linear_combination -r2186

theorem seg5RStep68 (rho : Nat -> Seg5.F) (r2184 : Seg5.relationRow2184 rho) (r2185 : Seg5.relationRow2185 rho) (r2186 : Seg5.relationRow2186 rho) :
    seg5RPe68 rho = seg5RPe69 rho * rho 1255 ∧
    seg5RIl68 rho = seg5RIl69 rho + seg5RPe69 rho * (1 - rho 1255) -
      seg5RIl69 rho * (seg5RPe69 rho * (1 - rho 1255)) := by
  constructor
  · exact seg5RStep68Pe rho r2186
  · rw [seg5RStep68Acc rho, seg5RStep68L rho r2184, seg5RStep68IlMul rho r2185, seg5RStep68L rho r2184]

theorem seg5_r_chunk68 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 69 (seg5RPeState rho 69) (seg5RIlState rho 69) := by
  have htail := seg5_r_chunk67 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2184, r2185, r2186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 68 ≤ n → n < 69 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 68 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep68 rho r2184 r2185 r2186
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 68 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
