import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk191

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep192L (rho : Nat -> Seg6.F) (r1944 : Seg6.relationRow1944 rho) :
    rho 2339 = seg6RPe193 rho * (1 - rho 2076) := by
  unfold Seg6.relationRow1944 at r1944
  unfold seg6RPe193
  linear_combination -r1944

theorem seg6RStep192IlMul (rho : Nat -> Seg6.F) (r1945 : Seg6.relationRow1945 rho) :
    rho 2340 = seg6RIl193 rho * (rho 2339) := by
  unfold Seg6.relationRow1945 at r1945
  rw [seg6RStep192IlLc rho] at r1945
  linear_combination -r1945

theorem seg6RStep192Acc (rho : Nat -> Seg6.F) :
    seg6RIl192 rho = seg6RIl193 rho + (rho 2339) - (rho 2340) := by
  have hstate : seg6RIl192 rho = seg6RIl193 rho + seg6RIlAtom30 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom30
  ring

theorem seg6RStep192Pe (rho : Nat -> Seg6.F) (r1946 : Seg6.relationRow1946 rho) :
    seg6RPe192 rho = seg6RPe193 rho * rho 2076 := by
  unfold Seg6.relationRow1946 at r1946
  unfold seg6RPe192 seg6RPe193
  linear_combination -r1946

theorem seg6RStep192 (rho : Nat -> Seg6.F) (r1944 : Seg6.relationRow1944 rho) (r1945 : Seg6.relationRow1945 rho) (r1946 : Seg6.relationRow1946 rho) :
    seg6RPe192 rho = seg6RPe193 rho * rho 2076 ∧
    seg6RIl192 rho = seg6RIl193 rho + seg6RPe193 rho * (1 - rho 2076) -
      seg6RIl193 rho * (seg6RPe193 rho * (1 - rho 2076)) := by
  constructor
  · exact seg6RStep192Pe rho r1946
  · rw [seg6RStep192Acc rho, seg6RStep192L rho r1944, seg6RStep192IlMul rho r1945, seg6RStep192L rho r1944]

theorem seg6_r_chunk192 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 193 (seg6RPeState rho 193) (seg6RIlState rho 193) := by
  have htail := seg6_r_chunk191 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1944, r1945, r1946, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 192 ≤ n → n < 193 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 192 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep192 rho r1944 r1945 r1946
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 192 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
