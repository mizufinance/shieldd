import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk193

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep194L (rho : Nat -> Seg45.F) (r1940 : Seg45.relationRow1940 rho) :
    rho 40171 = seg45RPe195 rho * (1 - rho 39914) := by
  unfold Seg45.relationRow1940 at r1940
  unfold seg45RPe195
  linear_combination -r1940

theorem seg45RStep194IlMul (rho : Nat -> Seg45.F) (r1941 : Seg45.relationRow1941 rho) :
    rho 40172 = seg45RIl195 rho * (rho 40171) := by
  unfold Seg45.relationRow1941 at r1941
  rw [seg45RStep194IlLc rho] at r1941
  linear_combination -r1941

theorem seg45RStep194Acc (rho : Nat -> Seg45.F) :
    seg45RIl194 rho = seg45RIl195 rho + (rho 40171) - (rho 40172) := by
  have hstate : seg45RIl194 rho = seg45RIl195 rho + seg45RIlAtom29 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom29
  ring

theorem seg45RStep194Pe (rho : Nat -> Seg45.F) (r1942 : Seg45.relationRow1942 rho) :
    seg45RPe194 rho = seg45RPe195 rho * rho 39914 := by
  unfold Seg45.relationRow1942 at r1942
  unfold seg45RPe194 seg45RPe195
  linear_combination -r1942

theorem seg45RStep194 (rho : Nat -> Seg45.F) (r1940 : Seg45.relationRow1940 rho) (r1941 : Seg45.relationRow1941 rho) (r1942 : Seg45.relationRow1942 rho) :
    seg45RPe194 rho = seg45RPe195 rho * rho 39914 ∧
    seg45RIl194 rho = seg45RIl195 rho + seg45RPe195 rho * (1 - rho 39914) -
      seg45RIl195 rho * (seg45RPe195 rho * (1 - rho 39914)) := by
  constructor
  · exact seg45RStep194Pe rho r1942
  · rw [seg45RStep194Acc rho, seg45RStep194L rho r1940, seg45RStep194IlMul rho r1941, seg45RStep194L rho r1940]

theorem seg45_r_chunk194 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 195 (seg45RPeState rho 195) (seg45RIlState rho 195) := by
  have htail := seg45_r_chunk193 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1940, r1941, r1942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 194 ≤ n → n < 195 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 194 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep194 rho r1940 r1941 r1942
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 194 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
