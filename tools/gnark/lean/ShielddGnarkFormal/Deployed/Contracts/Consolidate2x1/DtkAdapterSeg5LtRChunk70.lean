import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk69

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep70L (rho : Nat -> Seg5.F) (r2178 : Seg5.relationRow2178 rho) :
    rho 1876 = seg5RPe71 rho * (1 - rho 1257) := by
  unfold Seg5.relationRow2178 at r2178
  unfold seg5RPe71
  linear_combination -r2178

theorem seg5RStep70IlMul (rho : Nat -> Seg5.F) (r2179 : Seg5.relationRow2179 rho) :
    rho 1877 = seg5RIl71 rho * (rho 1876) := by
  unfold Seg5.relationRow2179 at r2179
  rw [seg5RStep70IlLc rho] at r2179
  linear_combination -r2179

theorem seg5RStep70Acc (rho : Nat -> Seg5.F) :
    seg5RIl70 rho = seg5RIl71 rho + (rho 1876) - (rho 1877) := by
  have hstate : seg5RIl70 rho = seg5RIl71 rho + seg5RIlAtom90 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom90
  ring

theorem seg5RStep70Pe (rho : Nat -> Seg5.F) (r2180 : Seg5.relationRow2180 rho) :
    seg5RPe70 rho = seg5RPe71 rho * rho 1257 := by
  unfold Seg5.relationRow2180 at r2180
  unfold seg5RPe70 seg5RPe71
  linear_combination -r2180

theorem seg5RStep70 (rho : Nat -> Seg5.F) (r2178 : Seg5.relationRow2178 rho) (r2179 : Seg5.relationRow2179 rho) (r2180 : Seg5.relationRow2180 rho) :
    seg5RPe70 rho = seg5RPe71 rho * rho 1257 ∧
    seg5RIl70 rho = seg5RIl71 rho + seg5RPe71 rho * (1 - rho 1257) -
      seg5RIl71 rho * (seg5RPe71 rho * (1 - rho 1257)) := by
  constructor
  · exact seg5RStep70Pe rho r2180
  · rw [seg5RStep70Acc rho, seg5RStep70L rho r2178, seg5RStep70IlMul rho r2179, seg5RStep70L rho r2178]

theorem seg5_r_chunk70 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 71 (seg5RPeState rho 71) (seg5RIlState rho 71) := by
  have htail := seg5_r_chunk69 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2178, r2179, r2180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 70 ≤ n → n < 71 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 70 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep70 rho r2178 r2179 r2180
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 70 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
