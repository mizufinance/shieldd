import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk45

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep46L (rho : Nat -> Seg6.F) (r2234 : Seg6.relationRow2234 rho) :
    rho 2635 = seg6RPe47 rho * (1 - rho 1936) := by
  unfold Seg6.relationRow2234 at r2234
  unfold seg6RPe47
  linear_combination -r2234

theorem seg6RStep46IlMul (rho : Nat -> Seg6.F) (r2235 : Seg6.relationRow2235 rho) :
    rho 2636 = seg6RIl47 rho * (rho 2635) := by
  unfold Seg6.relationRow2235 at r2235
  rw [seg6RStep46IlLc rho] at r2235
  linear_combination -r2235

theorem seg6RStep46Acc (rho : Nat -> Seg6.F) :
    seg6RIl46 rho = seg6RIl47 rho + (rho 2635) - (rho 2636) := by
  have hstate : seg6RIl46 rho = seg6RIl47 rho + seg6RIlAtom107 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom107
  ring

theorem seg6RStep46Pe (rho : Nat -> Seg6.F) (r2236 : Seg6.relationRow2236 rho) :
    seg6RPe46 rho = seg6RPe47 rho * rho 1936 := by
  unfold Seg6.relationRow2236 at r2236
  unfold seg6RPe46 seg6RPe47
  linear_combination -r2236

theorem seg6RStep46 (rho : Nat -> Seg6.F) (r2234 : Seg6.relationRow2234 rho) (r2235 : Seg6.relationRow2235 rho) (r2236 : Seg6.relationRow2236 rho) :
    seg6RPe46 rho = seg6RPe47 rho * rho 1936 ∧
    seg6RIl46 rho = seg6RIl47 rho + seg6RPe47 rho * (1 - rho 1936) -
      seg6RIl47 rho * (seg6RPe47 rho * (1 - rho 1936)) := by
  constructor
  · exact seg6RStep46Pe rho r2236
  · rw [seg6RStep46Acc rho, seg6RStep46L rho r2234, seg6RStep46IlMul rho r2235, seg6RStep46L rho r2234]

theorem seg6_r_chunk46 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 47 (seg6RPeState rho 47) (seg6RIlState rho 47) := by
  have htail := seg6_r_chunk45 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2234, r2235, r2236, _, _, _⟩
  have hsteps : ∀ n, 46 ≤ n → n < 47 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 46 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep46 rho r2234 r2235 r2236
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 46 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
