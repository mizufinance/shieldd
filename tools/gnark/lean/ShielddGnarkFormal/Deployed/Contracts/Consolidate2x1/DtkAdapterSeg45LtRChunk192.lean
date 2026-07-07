import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk191

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep192L (rho : Nat -> Seg45.F) (r1944 : Seg45.relationRow1944 rho) :
    rho 40175 = seg45RPe193 rho * (1 - rho 39912) := by
  unfold Seg45.relationRow1944 at r1944
  unfold seg45RPe193
  linear_combination -r1944

theorem seg45RStep192IlMul (rho : Nat -> Seg45.F) (r1945 : Seg45.relationRow1945 rho) :
    rho 40176 = seg45RIl193 rho * (rho 40175) := by
  unfold Seg45.relationRow1945 at r1945
  rw [seg45RStep192IlLc rho] at r1945
  linear_combination -r1945

theorem seg45RStep192Acc (rho : Nat -> Seg45.F) :
    seg45RIl192 rho = seg45RIl193 rho + (rho 40175) - (rho 40176) := by
  have hstate : seg45RIl192 rho = seg45RIl193 rho + seg45RIlAtom30 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom30
  ring

theorem seg45RStep192Pe (rho : Nat -> Seg45.F) (r1946 : Seg45.relationRow1946 rho) :
    seg45RPe192 rho = seg45RPe193 rho * rho 39912 := by
  unfold Seg45.relationRow1946 at r1946
  unfold seg45RPe192 seg45RPe193
  linear_combination -r1946

theorem seg45RStep192 (rho : Nat -> Seg45.F) (r1944 : Seg45.relationRow1944 rho) (r1945 : Seg45.relationRow1945 rho) (r1946 : Seg45.relationRow1946 rho) :
    seg45RPe192 rho = seg45RPe193 rho * rho 39912 ∧
    seg45RIl192 rho = seg45RIl193 rho + seg45RPe193 rho * (1 - rho 39912) -
      seg45RIl193 rho * (seg45RPe193 rho * (1 - rho 39912)) := by
  constructor
  · exact seg45RStep192Pe rho r1946
  · rw [seg45RStep192Acc rho, seg45RStep192L rho r1944, seg45RStep192IlMul rho r1945, seg45RStep192L rho r1944]

theorem seg45_r_chunk192 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 193 (seg45RPeState rho 193) (seg45RIlState rho 193) := by
  have htail := seg45_r_chunk191 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1944, r1945, r1946, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 192 ≤ n → n < 193 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 192 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep192 rho r1944 r1945 r1946
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 192 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
