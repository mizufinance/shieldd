import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk78

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep79L (rho : Nat -> Seg5.F) (r2161 : Seg5.relationRow2161 rho) :
    rho 1859 = seg5RPe80 rho * (1 - rho 1266) := by
  unfold Seg5.relationRow2161 at r2161
  unfold seg5RPe80
  linear_combination -r2161

theorem seg5RStep79IlMul (rho : Nat -> Seg5.F) (r2162 : Seg5.relationRow2162 rho) :
    rho 1860 = seg5RIl80 rho * (rho 1859) := by
  unfold Seg5.relationRow2162 at r2162
  rw [seg5RStep79IlLc rho] at r2162
  linear_combination -r2162

theorem seg5RStep79Acc (rho : Nat -> Seg5.F) :
    seg5RIl79 rho = seg5RIl80 rho + (rho 1859) - (rho 1860) := by
  have hstate : seg5RIl79 rho = seg5RIl80 rho + seg5RIlAtom86 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom86
  ring

theorem seg5RStep79Pe (rho : Nat -> Seg5.F) (r2163 : Seg5.relationRow2163 rho) :
    seg5RPe79 rho = seg5RPe80 rho * rho 1266 := by
  unfold Seg5.relationRow2163 at r2163
  unfold seg5RPe79 seg5RPe80
  linear_combination -r2163

theorem seg5RStep79 (rho : Nat -> Seg5.F) (r2161 : Seg5.relationRow2161 rho) (r2162 : Seg5.relationRow2162 rho) (r2163 : Seg5.relationRow2163 rho) :
    seg5RPe79 rho = seg5RPe80 rho * rho 1266 ∧
    seg5RIl79 rho = seg5RIl80 rho + seg5RPe80 rho * (1 - rho 1266) -
      seg5RIl80 rho * (seg5RPe80 rho * (1 - rho 1266)) := by
  constructor
  · exact seg5RStep79Pe rho r2163
  · rw [seg5RStep79Acc rho, seg5RStep79L rho r2161, seg5RStep79IlMul rho r2162, seg5RStep79L rho r2161]

theorem seg5_r_chunk79 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 80 (seg5RPeState rho 80) (seg5RIlState rho 80) := by
  have htail := seg5_r_chunk78 rho h k hq4
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
  rcases p27 with ⟨_, r2161, r2162, r2163, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 79 ≤ n → n < 80 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 79 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep79 rho r2161 r2162 r2163
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 79 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
