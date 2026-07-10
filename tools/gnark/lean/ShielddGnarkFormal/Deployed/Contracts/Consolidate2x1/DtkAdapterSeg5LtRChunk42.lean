import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk41

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep42L (rho : Nat -> Seg5.F) (r2244 : Seg5.relationRow2244 rho) :
    rho 1942 = seg5RPe43 rho * (1 - rho 1229) := by
  unfold Seg5.relationRow2244 at r2244
  unfold seg5RPe43
  linear_combination -r2244

theorem seg5RStep42IlMul (rho : Nat -> Seg5.F) (r2245 : Seg5.relationRow2245 rho) :
    rho 1943 = seg5RIl43 rho * (rho 1942) := by
  unfold Seg5.relationRow2245 at r2245
  rw [seg5RStep42IlLc rho] at r2245
  linear_combination -r2245

theorem seg5RStep42Acc (rho : Nat -> Seg5.F) :
    seg5RIl42 rho = seg5RIl43 rho + (rho 1942) - (rho 1943) := by
  have hstate : seg5RIl42 rho = seg5RIl43 rho + seg5RIlAtom110 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom110
  ring

theorem seg5RStep42Pe (rho : Nat -> Seg5.F) (r2246 : Seg5.relationRow2246 rho) :
    seg5RPe42 rho = seg5RPe43 rho * rho 1229 := by
  unfold Seg5.relationRow2246 at r2246
  unfold seg5RPe42 seg5RPe43
  linear_combination -r2246

theorem seg5RStep42 (rho : Nat -> Seg5.F) (r2244 : Seg5.relationRow2244 rho) (r2245 : Seg5.relationRow2245 rho) (r2246 : Seg5.relationRow2246 rho) :
    seg5RPe42 rho = seg5RPe43 rho * rho 1229 ∧
    seg5RIl42 rho = seg5RIl43 rho + seg5RPe43 rho * (1 - rho 1229) -
      seg5RIl43 rho * (seg5RPe43 rho * (1 - rho 1229)) := by
  constructor
  · exact seg5RStep42Pe rho r2246
  · rw [seg5RStep42Acc rho, seg5RStep42L rho r2244, seg5RStep42IlMul rho r2245, seg5RStep42L rho r2244]

theorem seg5_r_chunk42 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 43 (seg5RPeState rho 43) (seg5RIlState rho 43) := by
  have htail := seg5_r_chunk41 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, r2244, r2245, r2246, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 42 ≤ n → n < 43 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 42 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep42 rho r2244 r2245 r2246
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 42 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
