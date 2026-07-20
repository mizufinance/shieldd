import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk62

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep63L (rho : Nat -> Seg6.F) (r2197 : Seg6.relationRow2197 rho) :
    rho 2592 = seg6RPe64 rho * (1 - rho 1947) := by
  unfold Seg6.relationRow2197 at r2197
  unfold seg6RPe64
  linear_combination -r2197

theorem seg6RStep63IlMul (rho : Nat -> Seg6.F) (r2198 : Seg6.relationRow2198 rho) :
    rho 2593 = seg6RIl64 rho * (rho 2592) := by
  unfold Seg6.relationRow2198 at r2198
  rw [seg6RStep63IlLc rho] at r2198
  linear_combination -r2198

theorem seg6RStep63Acc (rho : Nat -> Seg6.F) :
    seg6RIl63 rho = seg6RIl64 rho + (rho 2592) - (rho 2593) := by
  have hstate : seg6RIl63 rho = seg6RIl64 rho + seg6RIlAtom96 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom96
  ring

theorem seg6RStep63Pe (rho : Nat -> Seg6.F) (r2199 : Seg6.relationRow2199 rho) :
    seg6RPe63 rho = seg6RPe64 rho * rho 1947 := by
  unfold Seg6.relationRow2199 at r2199
  unfold seg6RPe63 seg6RPe64
  linear_combination -r2199

theorem seg6RStep63 (rho : Nat -> Seg6.F) (r2197 : Seg6.relationRow2197 rho) (r2198 : Seg6.relationRow2198 rho) (r2199 : Seg6.relationRow2199 rho) :
    seg6RPe63 rho = seg6RPe64 rho * rho 1947 ∧
    seg6RIl63 rho = seg6RIl64 rho + seg6RPe64 rho * (1 - rho 1947) -
      seg6RIl64 rho * (seg6RPe64 rho * (1 - rho 1947)) := by
  constructor
  · exact seg6RStep63Pe rho r2199
  · rw [seg6RStep63Acc rho, seg6RStep63L rho r2197, seg6RStep63IlMul rho r2198, seg6RStep63L rho r2197]

theorem seg6_r_chunk63 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 64 (seg6RPeState rho 64) (seg6RIlState rho 64) := by
  have htail := seg6_r_chunk62 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2197, r2198, r2199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 63 ≤ n → n < 64 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 63 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep63 rho r2197 r2198 r2199
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 63 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
