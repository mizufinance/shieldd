import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk64

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep65L (rho : Nat -> Seg6.F) (r2193 : Seg6.relationRow2193 rho) :
    rho 2588 = seg6RPe66 rho * (1 - rho 1949) := by
  unfold Seg6.relationRow2193 at r2193
  unfold seg6RPe66
  linear_combination -r2193

theorem seg6RStep65IlMul (rho : Nat -> Seg6.F) (r2194 : Seg6.relationRow2194 rho) :
    rho 2589 = seg6RIl66 rho * (rho 2588) := by
  unfold Seg6.relationRow2194 at r2194
  rw [seg6RStep65IlLc rho] at r2194
  linear_combination -r2194

theorem seg6RStep65Acc (rho : Nat -> Seg6.F) :
    seg6RIl65 rho = seg6RIl66 rho + (rho 2588) - (rho 2589) := by
  have hstate : seg6RIl65 rho = seg6RIl66 rho + seg6RIlAtom95 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom95
  ring

theorem seg6RStep65Pe (rho : Nat -> Seg6.F) (r2195 : Seg6.relationRow2195 rho) :
    seg6RPe65 rho = seg6RPe66 rho * rho 1949 := by
  unfold Seg6.relationRow2195 at r2195
  unfold seg6RPe65 seg6RPe66
  linear_combination -r2195

theorem seg6RStep65 (rho : Nat -> Seg6.F) (r2193 : Seg6.relationRow2193 rho) (r2194 : Seg6.relationRow2194 rho) (r2195 : Seg6.relationRow2195 rho) :
    seg6RPe65 rho = seg6RPe66 rho * rho 1949 ∧
    seg6RIl65 rho = seg6RIl66 rho + seg6RPe66 rho * (1 - rho 1949) -
      seg6RIl66 rho * (seg6RPe66 rho * (1 - rho 1949)) := by
  constructor
  · exact seg6RStep65Pe rho r2195
  · rw [seg6RStep65Acc rho, seg6RStep65L rho r2193, seg6RStep65IlMul rho r2194, seg6RStep65L rho r2193]

theorem seg6_r_chunk65 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 66 (seg6RPeState rho 66) (seg6RIlState rho 66) := by
  have htail := seg6_r_chunk64 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2193, r2194, r2195, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 65 ≤ n → n < 66 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 65 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep65 rho r2193 r2194 r2195
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 65 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
