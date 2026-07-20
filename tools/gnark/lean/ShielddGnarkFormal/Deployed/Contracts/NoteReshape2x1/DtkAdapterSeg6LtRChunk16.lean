import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk15

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep16L (rho : Nat -> Seg6.F) (r2300 : Seg6.relationRow2300 rho) :
    rho 2695 = seg6RPe17 rho * (1 - rho 1900) := by
  unfold Seg6.relationRow2300 at r2300
  unfold seg6RPe17
  linear_combination -r2300

theorem seg6RStep16IlMul (rho : Nat -> Seg6.F) (r2301 : Seg6.relationRow2301 rho) :
    rho 2696 = seg6RIl17 rho * (rho 2695) := by
  unfold Seg6.relationRow2301 at r2301
  rw [seg6RStep16IlLc rho] at r2301
  linear_combination -r2301

theorem seg6RStep16Acc (rho : Nat -> Seg6.F) :
    seg6RIl16 rho = seg6RIl17 rho + (rho 2695) - (rho 2696) := by
  have hstate : seg6RIl16 rho = seg6RIl17 rho + seg6RIlAtom126 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom126
  ring

theorem seg6RStep16Pe (rho : Nat -> Seg6.F) (r2302 : Seg6.relationRow2302 rho) :
    seg6RPe16 rho = seg6RPe17 rho * rho 1900 := by
  unfold Seg6.relationRow2302 at r2302
  unfold seg6RPe16 seg6RPe17
  linear_combination -r2302

theorem seg6RStep16 (rho : Nat -> Seg6.F) (r2300 : Seg6.relationRow2300 rho) (r2301 : Seg6.relationRow2301 rho) (r2302 : Seg6.relationRow2302 rho) :
    seg6RPe16 rho = seg6RPe17 rho * rho 1900 ∧
    seg6RIl16 rho = seg6RIl17 rho + seg6RPe17 rho * (1 - rho 1900) -
      seg6RIl17 rho * (seg6RPe17 rho * (1 - rho 1900)) := by
  constructor
  · exact seg6RStep16Pe rho r2302
  · rw [seg6RStep16Acc rho, seg6RStep16L rho r2300, seg6RStep16IlMul rho r2301, seg6RStep16L rho r2300]

theorem seg6_r_chunk16 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 17 (seg6RPeState rho 17) (seg6RIlState rho 17) := by
  have htail := seg6_r_chunk15 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2300, r2301, r2302, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 16 ≤ n → n < 17 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 16 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep16 rho r2300 r2301 r2302
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 16 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
