import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk74

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep75L (rho : Nat -> Seg6.F) (r2167 : Seg6.relationRow2167 rho) :
    rho 2562 = seg6RPe76 rho * (1 - rho 1959) := by
  unfold Seg6.relationRow2167 at r2167
  unfold seg6RPe76
  linear_combination -r2167

theorem seg6RStep75IlMul (rho : Nat -> Seg6.F) (r2168 : Seg6.relationRow2168 rho) :
    rho 2563 = seg6RIl76 rho * (rho 2562) := by
  unfold Seg6.relationRow2168 at r2168
  rw [seg6RStep75IlLc rho] at r2168
  linear_combination -r2168

theorem seg6RStep75Acc (rho : Nat -> Seg6.F) :
    seg6RIl75 rho = seg6RIl76 rho + (rho 2562) - (rho 2563) := by
  have hstate : seg6RIl75 rho = seg6RIl76 rho + seg6RIlAtom87 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom87
  ring

theorem seg6RStep75Pe (rho : Nat -> Seg6.F) (r2169 : Seg6.relationRow2169 rho) :
    seg6RPe75 rho = seg6RPe76 rho * rho 1959 := by
  unfold Seg6.relationRow2169 at r2169
  unfold seg6RPe75 seg6RPe76
  linear_combination -r2169

theorem seg6RStep75 (rho : Nat -> Seg6.F) (r2167 : Seg6.relationRow2167 rho) (r2168 : Seg6.relationRow2168 rho) (r2169 : Seg6.relationRow2169 rho) :
    seg6RPe75 rho = seg6RPe76 rho * rho 1959 ∧
    seg6RIl75 rho = seg6RIl76 rho + seg6RPe76 rho * (1 - rho 1959) -
      seg6RIl76 rho * (seg6RPe76 rho * (1 - rho 1959)) := by
  constructor
  · exact seg6RStep75Pe rho r2169
  · rw [seg6RStep75Acc rho, seg6RStep75L rho r2167, seg6RStep75IlMul rho r2168, seg6RStep75L rho r2167]

theorem seg6_r_chunk75 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 76 (seg6RPeState rho 76) (seg6RIlState rho 76) := by
  have htail := seg6_r_chunk74 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, r2167, r2168, r2169, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 75 ≤ n → n < 76 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 75 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep75 rho r2167 r2168 r2169
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 75 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
