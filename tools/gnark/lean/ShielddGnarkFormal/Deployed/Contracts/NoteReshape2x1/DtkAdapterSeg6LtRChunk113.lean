import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk112

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep113L (rho : Nat -> Seg6.F) (r2089 : Seg6.relationRow2089 rho) :
    rho 2484 = seg6RPe114 rho * (1 - rho 1997) := by
  unfold Seg6.relationRow2089 at r2089
  unfold seg6RPe114
  linear_combination -r2089

theorem seg6RStep113IlMul (rho : Nat -> Seg6.F) (r2090 : Seg6.relationRow2090 rho) :
    rho 2485 = seg6RIl114 rho * (rho 2484) := by
  unfold Seg6.relationRow2090 at r2090
  rw [seg6RStep113IlLc rho] at r2090
  linear_combination -r2090

theorem seg6RStep113Acc (rho : Nat -> Seg6.F) :
    seg6RIl113 rho = seg6RIl114 rho + (rho 2484) - (rho 2485) := by
  have hstate : seg6RIl113 rho = seg6RIl114 rho + seg6RIlAtom65 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom65
  ring

theorem seg6RStep113Pe (rho : Nat -> Seg6.F) (r2091 : Seg6.relationRow2091 rho) :
    seg6RPe113 rho = seg6RPe114 rho * rho 1997 := by
  unfold Seg6.relationRow2091 at r2091
  unfold seg6RPe113 seg6RPe114
  linear_combination -r2091

theorem seg6RStep113 (rho : Nat -> Seg6.F) (r2089 : Seg6.relationRow2089 rho) (r2090 : Seg6.relationRow2090 rho) (r2091 : Seg6.relationRow2091 rho) :
    seg6RPe113 rho = seg6RPe114 rho * rho 1997 ∧
    seg6RIl113 rho = seg6RIl114 rho + seg6RPe114 rho * (1 - rho 1997) -
      seg6RIl114 rho * (seg6RPe114 rho * (1 - rho 1997)) := by
  constructor
  · exact seg6RStep113Pe rho r2091
  · rw [seg6RStep113Acc rho, seg6RStep113L rho r2089, seg6RStep113IlMul rho r2090, seg6RStep113L rho r2089]

theorem seg6_r_chunk113 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 114 (seg6RPeState rho 114) (seg6RIlState rho 114) := by
  have htail := seg6_r_chunk112 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, r2089, r2090, r2091, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 113 ≤ n → n < 114 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 113 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep113 rho r2089 r2090 r2091
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 113 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
