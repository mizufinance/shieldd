import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk42

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep43L (rho : Nat -> Seg5.F) (r2241 : Seg5.relationRow2241 rho) :
    rho 1939 = seg5RPe44 rho * (1 - rho 1230) := by
  unfold Seg5.relationRow2241 at r2241
  unfold seg5RPe44
  linear_combination -r2241

theorem seg5RStep43IlMul (rho : Nat -> Seg5.F) (r2242 : Seg5.relationRow2242 rho) :
    rho 1940 = seg5RIl44 rho * (rho 1939) := by
  unfold Seg5.relationRow2242 at r2242
  rw [seg5RStep43IlLc rho] at r2242
  linear_combination -r2242

theorem seg5RStep43Acc (rho : Nat -> Seg5.F) :
    seg5RIl43 rho = seg5RIl44 rho + (rho 1939) - (rho 1940) := by
  have hstate : seg5RIl43 rho = seg5RIl44 rho + seg5RIlAtom109 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom109
  ring

theorem seg5RStep43Pe (rho : Nat -> Seg5.F) (r2243 : Seg5.relationRow2243 rho) :
    seg5RPe43 rho = seg5RPe44 rho * rho 1230 := by
  unfold Seg5.relationRow2243 at r2243
  unfold seg5RPe43 seg5RPe44
  linear_combination -r2243

theorem seg5RStep43 (rho : Nat -> Seg5.F) (r2241 : Seg5.relationRow2241 rho) (r2242 : Seg5.relationRow2242 rho) (r2243 : Seg5.relationRow2243 rho) :
    seg5RPe43 rho = seg5RPe44 rho * rho 1230 ∧
    seg5RIl43 rho = seg5RIl44 rho + seg5RPe44 rho * (1 - rho 1230) -
      seg5RIl44 rho * (seg5RPe44 rho * (1 - rho 1230)) := by
  constructor
  · exact seg5RStep43Pe rho r2243
  · rw [seg5RStep43Acc rho, seg5RStep43L rho r2241, seg5RStep43IlMul rho r2242, seg5RStep43L rho r2241]

theorem seg5_r_chunk43 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 44 (seg5RPeState rho 44) (seg5RIlState rho 44) := by
  have htail := seg5_r_chunk42 rho h k hq4
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
  rcases p28 with ⟨_, r2241, r2242, r2243, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 43 ≤ n → n < 44 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 43 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep43 rho r2241 r2242 r2243
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 43 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
