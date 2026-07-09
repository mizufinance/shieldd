import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk193

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep194L (rho : Nat -> Seg5.F) (r1940 : Seg5.relationRow1940 rho) :
    rho 1638 = seg5RPe195 rho * (1 - rho 1381) := by
  unfold Seg5.relationRow1940 at r1940
  unfold seg5RPe195
  linear_combination -r1940

theorem seg5RStep194IlMul (rho : Nat -> Seg5.F) (r1941 : Seg5.relationRow1941 rho) :
    rho 1639 = seg5RIl195 rho * (rho 1638) := by
  unfold Seg5.relationRow1941 at r1941
  rw [seg5RStep194IlLc rho] at r1941
  linear_combination -r1941

theorem seg5RStep194Acc (rho : Nat -> Seg5.F) :
    seg5RIl194 rho = seg5RIl195 rho + (rho 1638) - (rho 1639) := by
  have hstate : seg5RIl194 rho = seg5RIl195 rho + seg5RIlAtom29 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom29
  ring

theorem seg5RStep194Pe (rho : Nat -> Seg5.F) (r1942 : Seg5.relationRow1942 rho) :
    seg5RPe194 rho = seg5RPe195 rho * rho 1381 := by
  unfold Seg5.relationRow1942 at r1942
  unfold seg5RPe194 seg5RPe195
  linear_combination -r1942

theorem seg5RStep194 (rho : Nat -> Seg5.F) (r1940 : Seg5.relationRow1940 rho) (r1941 : Seg5.relationRow1941 rho) (r1942 : Seg5.relationRow1942 rho) :
    seg5RPe194 rho = seg5RPe195 rho * rho 1381 ∧
    seg5RIl194 rho = seg5RIl195 rho + seg5RPe195 rho * (1 - rho 1381) -
      seg5RIl195 rho * (seg5RPe195 rho * (1 - rho 1381)) := by
  constructor
  · exact seg5RStep194Pe rho r1942
  · rw [seg5RStep194Acc rho, seg5RStep194L rho r1940, seg5RStep194IlMul rho r1941, seg5RStep194L rho r1940]

theorem seg5_r_chunk194 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 195 (seg5RPeState rho 195) (seg5RIlState rho 195) := by
  have htail := seg5_r_chunk193 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1940, r1941, r1942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 194 ≤ n → n < 195 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 194 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep194 rho r1940 r1941 r1942
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 194 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
