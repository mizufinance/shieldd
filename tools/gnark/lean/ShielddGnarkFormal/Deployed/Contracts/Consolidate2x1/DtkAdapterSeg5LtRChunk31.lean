import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk30

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep31L (rho : Nat -> Seg5.F) (r2267 : Seg5.relationRow2267 rho) :
    rho 1965 = seg5RPe32 rho * (1 - rho 1218) := by
  unfold Seg5.relationRow2267 at r2267
  unfold seg5RPe32
  linear_combination -r2267

theorem seg5RStep31IlMul (rho : Nat -> Seg5.F) (r2268 : Seg5.relationRow2268 rho) :
    rho 1966 = seg5RIl32 rho * (rho 1965) := by
  unfold Seg5.relationRow2268 at r2268
  rw [seg5RStep31IlLc rho] at r2268
  linear_combination -r2268

theorem seg5RStep31Acc (rho : Nat -> Seg5.F) :
    seg5RIl31 rho = seg5RIl32 rho + (rho 1965) - (rho 1966) := by
  have hstate : seg5RIl31 rho = seg5RIl32 rho + seg5RIlAtom116 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom116
  ring

theorem seg5RStep31Pe (rho : Nat -> Seg5.F) (r2269 : Seg5.relationRow2269 rho) :
    seg5RPe31 rho = seg5RPe32 rho * rho 1218 := by
  unfold Seg5.relationRow2269 at r2269
  unfold seg5RPe31 seg5RPe32
  linear_combination -r2269

theorem seg5RStep31 (rho : Nat -> Seg5.F) (r2267 : Seg5.relationRow2267 rho) (r2268 : Seg5.relationRow2268 rho) (r2269 : Seg5.relationRow2269 rho) :
    seg5RPe31 rho = seg5RPe32 rho * rho 1218 ∧
    seg5RIl31 rho = seg5RIl32 rho + seg5RPe32 rho * (1 - rho 1218) -
      seg5RIl32 rho * (seg5RPe32 rho * (1 - rho 1218)) := by
  constructor
  · exact seg5RStep31Pe rho r2269
  · rw [seg5RStep31Acc rho, seg5RStep31L rho r2267, seg5RStep31IlMul rho r2268, seg5RStep31L rho r2267]

theorem seg5_r_chunk31 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 32 (seg5RPeState rho 32) (seg5RIlState rho 32) := by
  have htail := seg5_r_chunk30 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2267, r2268, r2269, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 31 ≤ n → n < 32 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 31 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep31 rho r2267 r2268 r2269
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 31 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
