import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk55

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep56L (rho : Nat -> Seg6.F) (r2212 : Seg6.relationRow2212 rho) :
    rho 2607 = seg6RPe57 rho * (1 - rho 1940) := by
  unfold Seg6.relationRow2212 at r2212
  unfold seg6RPe57
  linear_combination -r2212

theorem seg6RStep56IlMul (rho : Nat -> Seg6.F) (r2213 : Seg6.relationRow2213 rho) :
    rho 2608 = seg6RIl57 rho * (rho 2607) := by
  unfold Seg6.relationRow2213 at r2213
  rw [seg6RStep56IlLc rho] at r2213
  linear_combination -r2213

theorem seg6RStep56Acc (rho : Nat -> Seg6.F) :
    seg6RIl56 rho = seg6RIl57 rho + (rho 2607) - (rho 2608) := by
  have hstate : seg6RIl56 rho = seg6RIl57 rho + seg6RIlAtom100 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom100
  ring

theorem seg6RStep56Pe (rho : Nat -> Seg6.F) (r2214 : Seg6.relationRow2214 rho) :
    seg6RPe56 rho = seg6RPe57 rho * rho 1940 := by
  unfold Seg6.relationRow2214 at r2214
  unfold seg6RPe56 seg6RPe57
  linear_combination -r2214

theorem seg6RStep56 (rho : Nat -> Seg6.F) (r2212 : Seg6.relationRow2212 rho) (r2213 : Seg6.relationRow2213 rho) (r2214 : Seg6.relationRow2214 rho) :
    seg6RPe56 rho = seg6RPe57 rho * rho 1940 ∧
    seg6RIl56 rho = seg6RIl57 rho + seg6RPe57 rho * (1 - rho 1940) -
      seg6RIl57 rho * (seg6RPe57 rho * (1 - rho 1940)) := by
  constructor
  · exact seg6RStep56Pe rho r2214
  · rw [seg6RStep56Acc rho, seg6RStep56L rho r2212, seg6RStep56IlMul rho r2213, seg6RStep56L rho r2212]

theorem seg6_r_chunk56 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 57 (seg6RPeState rho 57) (seg6RIlState rho 57) := by
  have htail := seg6_r_chunk55 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2212, r2213, r2214, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 56 ≤ n → n < 57 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 56 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep56 rho r2212 r2213 r2214
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 56 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
