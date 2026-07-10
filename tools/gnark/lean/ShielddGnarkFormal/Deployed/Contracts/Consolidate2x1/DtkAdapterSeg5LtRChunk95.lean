import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep95L (rho : Nat -> Seg5.F) (r2131 : Seg5.relationRow2131 rho) :
    rho 1829 = seg5RPe96 rho * (1 - rho 1282) := by
  unfold Seg5.relationRow2131 at r2131
  unfold seg5RPe96
  linear_combination -r2131

theorem seg5RStep95IlMul (rho : Nat -> Seg5.F) (r2132 : Seg5.relationRow2132 rho) :
    rho 1830 = seg5RIl96 rho * (rho 1829) := by
  unfold Seg5.relationRow2132 at r2132
  rw [seg5RStep95IlLc rho] at r2132
  linear_combination -r2132

theorem seg5RStep95Acc (rho : Nat -> Seg5.F) :
    seg5RIl95 rho = seg5RIl96 rho + (rho 1829) - (rho 1830) := by
  have hstate : seg5RIl95 rho = seg5RIl96 rho + seg5RIlAtom78 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom78
  ring

theorem seg5RStep95Pe (rho : Nat -> Seg5.F) (r2133 : Seg5.relationRow2133 rho) :
    seg5RPe95 rho = seg5RPe96 rho * rho 1282 := by
  unfold Seg5.relationRow2133 at r2133
  unfold seg5RPe95 seg5RPe96
  linear_combination -r2133

theorem seg5RStep95 (rho : Nat -> Seg5.F) (r2131 : Seg5.relationRow2131 rho) (r2132 : Seg5.relationRow2132 rho) (r2133 : Seg5.relationRow2133 rho) :
    seg5RPe95 rho = seg5RPe96 rho * rho 1282 ∧
    seg5RIl95 rho = seg5RIl96 rho + seg5RPe96 rho * (1 - rho 1282) -
      seg5RIl96 rho * (seg5RPe96 rho * (1 - rho 1282)) := by
  constructor
  · exact seg5RStep95Pe rho r2133
  · rw [seg5RStep95Acc rho, seg5RStep95L rho r2131, seg5RStep95IlMul rho r2132, seg5RStep95L rho r2131]

theorem seg5_r_chunk95 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 96 (seg5RPeState rho 96) (seg5RIlState rho 96) := by
  have htail := seg5_r_chunk94 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2131, r2132, r2133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 95 ≤ n → n < 96 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 95 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep95 rho r2131 r2132 r2133
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 95 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
