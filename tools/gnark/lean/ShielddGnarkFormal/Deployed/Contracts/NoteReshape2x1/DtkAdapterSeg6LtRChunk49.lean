import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk48

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep49L (rho : Nat -> Seg6.F) (r2227 : Seg6.relationRow2227 rho) :
    rho 2622 = seg6RPe50 rho * (1 - rho 1933) := by
  unfold Seg6.relationRow2227 at r2227
  unfold seg6RPe50
  linear_combination -r2227

theorem seg6RStep49IlMul (rho : Nat -> Seg6.F) (r2228 : Seg6.relationRow2228 rho) :
    rho 2623 = seg6RIl50 rho * (rho 2622) := by
  unfold Seg6.relationRow2228 at r2228
  rw [seg6RStep49IlLc rho] at r2228
  linear_combination -r2228

theorem seg6RStep49Acc (rho : Nat -> Seg6.F) :
    seg6RIl49 rho = seg6RIl50 rho + (rho 2622) - (rho 2623) := by
  have hstate : seg6RIl49 rho = seg6RIl50 rho + seg6RIlAtom105 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom105
  ring

theorem seg6RStep49Pe (rho : Nat -> Seg6.F) (r2229 : Seg6.relationRow2229 rho) :
    seg6RPe49 rho = seg6RPe50 rho * rho 1933 := by
  unfold Seg6.relationRow2229 at r2229
  unfold seg6RPe49 seg6RPe50
  linear_combination -r2229

theorem seg6RStep49 (rho : Nat -> Seg6.F) (r2227 : Seg6.relationRow2227 rho) (r2228 : Seg6.relationRow2228 rho) (r2229 : Seg6.relationRow2229 rho) :
    seg6RPe49 rho = seg6RPe50 rho * rho 1933 ∧
    seg6RIl49 rho = seg6RIl50 rho + seg6RPe50 rho * (1 - rho 1933) -
      seg6RIl50 rho * (seg6RPe50 rho * (1 - rho 1933)) := by
  constructor
  · exact seg6RStep49Pe rho r2229
  · rw [seg6RStep49Acc rho, seg6RStep49L rho r2227, seg6RStep49IlMul rho r2228, seg6RStep49L rho r2227]

theorem seg6_r_chunk49 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 50 (seg6RPeState rho 50) (seg6RIlState rho 50) := by
  have htail := seg6_r_chunk48 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2227, r2228, r2229, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 49 ≤ n → n < 50 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 49 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep49 rho r2227 r2228 r2229
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 49 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
