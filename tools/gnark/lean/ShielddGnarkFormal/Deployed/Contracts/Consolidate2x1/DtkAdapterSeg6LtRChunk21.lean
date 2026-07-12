import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep21L (rho : Nat -> Seg6.F) (r2285 : Seg6.relationRow2285 rho) :
    rho 2686 = seg6RPe22 rho * (1 - rho 1911) := by
  unfold Seg6.relationRow2285 at r2285
  unfold seg6RPe22
  linear_combination -r2285

theorem seg6RStep21IlMul (rho : Nat -> Seg6.F) (r2286 : Seg6.relationRow2286 rho) :
    rho 2687 = seg6RIl22 rho * (rho 2686) := by
  unfold Seg6.relationRow2286 at r2286
  rw [seg6RStep21IlLc rho] at r2286
  linear_combination -r2286

theorem seg6RStep21Acc (rho : Nat -> Seg6.F) :
    seg6RIl21 rho = seg6RIl22 rho + (rho 2686) - (rho 2687) := by
  have hstate : seg6RIl21 rho = seg6RIl22 rho + seg6RIlAtom121 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom121
  ring

theorem seg6RStep21Pe (rho : Nat -> Seg6.F) (r2287 : Seg6.relationRow2287 rho) :
    seg6RPe21 rho = seg6RPe22 rho * rho 1911 := by
  unfold Seg6.relationRow2287 at r2287
  unfold seg6RPe21 seg6RPe22
  linear_combination -r2287

theorem seg6RStep21 (rho : Nat -> Seg6.F) (r2285 : Seg6.relationRow2285 rho) (r2286 : Seg6.relationRow2286 rho) (r2287 : Seg6.relationRow2287 rho) :
    seg6RPe21 rho = seg6RPe22 rho * rho 1911 ∧
    seg6RIl21 rho = seg6RIl22 rho + seg6RPe22 rho * (1 - rho 1911) -
      seg6RIl22 rho * (seg6RPe22 rho * (1 - rho 1911)) := by
  constructor
  · exact seg6RStep21Pe rho r2287
  · rw [seg6RStep21Acc rho, seg6RStep21L rho r2285, seg6RStep21IlMul rho r2286, seg6RStep21L rho r2285]

theorem seg6_r_chunk21 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 22 (seg6RPeState rho 22) (seg6RIlState rho 22) := by
  have htail := seg6_r_chunk20 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2285, r2286, r2287, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 21 ≤ n → n < 22 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 21 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep21 rho r2285 r2286 r2287
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 21 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
