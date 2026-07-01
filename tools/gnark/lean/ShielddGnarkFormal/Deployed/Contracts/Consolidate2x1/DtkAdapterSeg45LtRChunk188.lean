import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk187

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep188L (rho : Nat -> Seg45.F) (r1952 : Seg45.relationRow1952 rho) :
    rho 40183 = seg45RPe189 rho * (1 - rho 39908) := by
  unfold Seg45.relationRow1952 at r1952
  unfold seg45RPe189
  linear_combination -r1952

theorem seg45RStep188IlMul (rho : Nat -> Seg45.F) (r1953 : Seg45.relationRow1953 rho) :
    rho 40184 = seg45RIl189 rho * (rho 40183) := by
  unfold Seg45.relationRow1953 at r1953
  rw [seg45RStep188IlLc rho] at r1953
  linear_combination -r1953

theorem seg45RStep188Acc (rho : Nat -> Seg45.F) :
    seg45RIl188 rho = seg45RIl189 rho + (rho 40183) - (rho 40184) := by
  have hstate : seg45RIl188 rho = seg45RIl189 rho + seg45RIlAtom32 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom32
  ring

theorem seg45RStep188Pe (rho : Nat -> Seg45.F) (r1954 : Seg45.relationRow1954 rho) :
    seg45RPe188 rho = seg45RPe189 rho * rho 39908 := by
  unfold Seg45.relationRow1954 at r1954
  unfold seg45RPe188 seg45RPe189
  linear_combination -r1954

theorem seg45RStep188 (rho : Nat -> Seg45.F) (r1952 : Seg45.relationRow1952 rho) (r1953 : Seg45.relationRow1953 rho) (r1954 : Seg45.relationRow1954 rho) :
    seg45RPe188 rho = seg45RPe189 rho * rho 39908 ∧
    seg45RIl188 rho = seg45RIl189 rho + seg45RPe189 rho * (1 - rho 39908) -
      seg45RIl189 rho * (seg45RPe189 rho * (1 - rho 39908)) := by
  constructor
  · exact seg45RStep188Pe rho r1954
  · rw [seg45RStep188Acc rho, seg45RStep188L rho r1952, seg45RStep188IlMul rho r1953, seg45RStep188L rho r1952]

theorem seg45_r_chunk188 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 189 (seg45RPeState rho 189) (seg45RIlState rho 189) := by
  have htail := seg45_r_chunk187 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1952, r1953, r1954, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 188 ≤ n → n < 189 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 188 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep188 rho r1952 r1953 r1954
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 188 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
