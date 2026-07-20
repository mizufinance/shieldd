import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk195

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep196L (rho : Nat -> Seg6.F) (r1936 : Seg6.relationRow1936 rho) :
    rho 2331 = seg6RPe197 rho * (1 - rho 2080) := by
  unfold Seg6.relationRow1936 at r1936
  unfold seg6RPe197
  linear_combination -r1936

theorem seg6RStep196IlMul (rho : Nat -> Seg6.F) (r1937 : Seg6.relationRow1937 rho) :
    rho 2332 = seg6RIl197 rho * (rho 2331) := by
  unfold Seg6.relationRow1937 at r1937
  rw [seg6RStep196IlLc rho] at r1937
  linear_combination -r1937

theorem seg6RStep196Acc (rho : Nat -> Seg6.F) :
    seg6RIl196 rho = seg6RIl197 rho + (rho 2331) - (rho 2332) := by
  have hstate : seg6RIl196 rho = seg6RIl197 rho + seg6RIlAtom28 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom28
  ring

theorem seg6RStep196Pe (rho : Nat -> Seg6.F) (r1938 : Seg6.relationRow1938 rho) :
    seg6RPe196 rho = seg6RPe197 rho * rho 2080 := by
  unfold Seg6.relationRow1938 at r1938
  unfold seg6RPe196 seg6RPe197
  linear_combination -r1938

theorem seg6RStep196 (rho : Nat -> Seg6.F) (r1936 : Seg6.relationRow1936 rho) (r1937 : Seg6.relationRow1937 rho) (r1938 : Seg6.relationRow1938 rho) :
    seg6RPe196 rho = seg6RPe197 rho * rho 2080 ∧
    seg6RIl196 rho = seg6RIl197 rho + seg6RPe197 rho * (1 - rho 2080) -
      seg6RIl197 rho * (seg6RPe197 rho * (1 - rho 2080)) := by
  constructor
  · exact seg6RStep196Pe rho r1938
  · rw [seg6RStep196Acc rho, seg6RStep196L rho r1936, seg6RStep196IlMul rho r1937, seg6RStep196L rho r1936]

theorem seg6_r_chunk196 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 197 (seg6RPeState rho 197) (seg6RIlState rho 197) := by
  have htail := seg6_r_chunk195 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1936, r1937, r1938, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 196 ≤ n → n < 197 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 196 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep196 rho r1936 r1937 r1938
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 196 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
