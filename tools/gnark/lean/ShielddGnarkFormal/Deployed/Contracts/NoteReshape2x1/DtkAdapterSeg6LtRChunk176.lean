import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk175

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep176L (rho : Nat -> Seg6.F) (r1974 : Seg6.relationRow1974 rho) :
    rho 2375 = seg6RPe177 rho * (1 - rho 2066) := by
  unfold Seg6.relationRow1974 at r1974
  unfold seg6RPe177
  linear_combination -r1974

theorem seg6RStep176IlMul (rho : Nat -> Seg6.F) (r1975 : Seg6.relationRow1975 rho) :
    rho 2376 = seg6RIl177 rho * (rho 2375) := by
  unfold Seg6.relationRow1975 at r1975
  rw [seg6RStep176IlLc rho] at r1975
  linear_combination -r1975

theorem seg6RStep176Acc (rho : Nat -> Seg6.F) :
    seg6RIl176 rho = seg6RIl177 rho + (rho 2375) - (rho 2376) := by
  have hstate : seg6RIl176 rho = seg6RIl177 rho + seg6RIlAtom38 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom38
  ring

theorem seg6RStep176Pe (rho : Nat -> Seg6.F) (r1976 : Seg6.relationRow1976 rho) :
    seg6RPe176 rho = seg6RPe177 rho * rho 2066 := by
  unfold Seg6.relationRow1976 at r1976
  unfold seg6RPe176 seg6RPe177
  linear_combination -r1976

theorem seg6RStep176 (rho : Nat -> Seg6.F) (r1974 : Seg6.relationRow1974 rho) (r1975 : Seg6.relationRow1975 rho) (r1976 : Seg6.relationRow1976 rho) :
    seg6RPe176 rho = seg6RPe177 rho * rho 2066 ∧
    seg6RIl176 rho = seg6RIl177 rho + seg6RPe177 rho * (1 - rho 2066) -
      seg6RIl177 rho * (seg6RPe177 rho * (1 - rho 2066)) := by
  constructor
  · exact seg6RStep176Pe rho r1976
  · rw [seg6RStep176Acc rho, seg6RStep176L rho r1974, seg6RStep176IlMul rho r1975, seg6RStep176L rho r1974]

theorem seg6_r_chunk176 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 177 (seg6RPeState rho 177) (seg6RIlState rho 177) := by
  have htail := seg6_r_chunk175 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1974, r1975, r1976, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 176 ≤ n → n < 177 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 176 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep176 rho r1974 r1975 r1976
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 176 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
