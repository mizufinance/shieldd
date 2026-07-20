import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk153

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep154L (rho : Nat -> Seg6.F) (r2016 : Seg6.relationRow2016 rho) :
    rho 2411 = seg6RPe155 rho * (1 - rho 2038) := by
  unfold Seg6.relationRow2016 at r2016
  unfold seg6RPe155
  linear_combination -r2016

theorem seg6RStep154IlMul (rho : Nat -> Seg6.F) (r2017 : Seg6.relationRow2017 rho) :
    rho 2412 = seg6RIl155 rho * (rho 2411) := by
  unfold Seg6.relationRow2017 at r2017
  rw [seg6RStep154IlLc rho] at r2017
  linear_combination -r2017

theorem seg6RStep154Acc (rho : Nat -> Seg6.F) :
    seg6RIl154 rho = seg6RIl155 rho + (rho 2411) - (rho 2412) := by
  have hstate : seg6RIl154 rho = seg6RIl155 rho + seg6RIlAtom48 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom48
  ring

theorem seg6RStep154Pe (rho : Nat -> Seg6.F) (r2018 : Seg6.relationRow2018 rho) :
    seg6RPe154 rho = seg6RPe155 rho * rho 2038 := by
  unfold Seg6.relationRow2018 at r2018
  unfold seg6RPe154 seg6RPe155
  linear_combination -r2018

theorem seg6RStep154 (rho : Nat -> Seg6.F) (r2016 : Seg6.relationRow2016 rho) (r2017 : Seg6.relationRow2017 rho) (r2018 : Seg6.relationRow2018 rho) :
    seg6RPe154 rho = seg6RPe155 rho * rho 2038 ∧
    seg6RIl154 rho = seg6RIl155 rho + seg6RPe155 rho * (1 - rho 2038) -
      seg6RIl155 rho * (seg6RPe155 rho * (1 - rho 2038)) := by
  constructor
  · exact seg6RStep154Pe rho r2018
  · rw [seg6RStep154Acc rho, seg6RStep154L rho r2016, seg6RStep154IlMul rho r2017, seg6RStep154L rho r2016]

theorem seg6_r_chunk154 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 155 (seg6RPeState rho 155) (seg6RIlState rho 155) := by
  have htail := seg6_r_chunk153 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2016, r2017, r2018, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 154 ≤ n → n < 155 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 154 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep154 rho r2016 r2017 r2018
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 154 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
