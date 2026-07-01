import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk195

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep196L (rho : Nat -> Seg45.F) (r1936 : Seg45.relationRow1936 rho) :
    rho 40167 = seg45RPe197 rho * (1 - rho 39916) := by
  unfold Seg45.relationRow1936 at r1936
  unfold seg45RPe197
  linear_combination -r1936

theorem seg45RStep196IlMul (rho : Nat -> Seg45.F) (r1937 : Seg45.relationRow1937 rho) :
    rho 40168 = seg45RIl197 rho * (rho 40167) := by
  unfold Seg45.relationRow1937 at r1937
  rw [seg45RStep196IlLc rho] at r1937
  linear_combination -r1937

theorem seg45RStep196Acc (rho : Nat -> Seg45.F) :
    seg45RIl196 rho = seg45RIl197 rho + (rho 40167) - (rho 40168) := by
  have hstate : seg45RIl196 rho = seg45RIl197 rho + seg45RIlAtom28 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom28
  ring

theorem seg45RStep196Pe (rho : Nat -> Seg45.F) (r1938 : Seg45.relationRow1938 rho) :
    seg45RPe196 rho = seg45RPe197 rho * rho 39916 := by
  unfold Seg45.relationRow1938 at r1938
  unfold seg45RPe196 seg45RPe197
  linear_combination -r1938

theorem seg45RStep196 (rho : Nat -> Seg45.F) (r1936 : Seg45.relationRow1936 rho) (r1937 : Seg45.relationRow1937 rho) (r1938 : Seg45.relationRow1938 rho) :
    seg45RPe196 rho = seg45RPe197 rho * rho 39916 ∧
    seg45RIl196 rho = seg45RIl197 rho + seg45RPe197 rho * (1 - rho 39916) -
      seg45RIl197 rho * (seg45RPe197 rho * (1 - rho 39916)) := by
  constructor
  · exact seg45RStep196Pe rho r1938
  · rw [seg45RStep196Acc rho, seg45RStep196L rho r1936, seg45RStep196IlMul rho r1937, seg45RStep196L rho r1936]

theorem seg45_r_chunk196 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 197 (seg45RPeState rho 197) (seg45RIlState rho 197) := by
  have htail := seg45_r_chunk195 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1936, r1937, r1938, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 196 ≤ n → n < 197 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 196 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep196 rho r1936 r1937 r1938
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 196 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
