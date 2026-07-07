import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk191

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep192L (rho : Nat -> Seg34.F) (r1944 : Seg34.relationRow1944 rho) :
    rho 33219 = seg34RPe193 rho * (1 - rho 32956) := by
  unfold Seg34.relationRow1944 at r1944
  unfold seg34RPe193
  linear_combination -r1944

theorem seg34RStep192IlMul (rho : Nat -> Seg34.F) (r1945 : Seg34.relationRow1945 rho) :
    rho 33220 = seg34RIl193 rho * (rho 33219) := by
  unfold Seg34.relationRow1945 at r1945
  rw [seg34RStep192IlLc rho] at r1945
  linear_combination -r1945

theorem seg34RStep192Acc (rho : Nat -> Seg34.F) :
    seg34RIl192 rho = seg34RIl193 rho + (rho 33219) - (rho 33220) := by
  have hstate : seg34RIl192 rho = seg34RIl193 rho + seg34RIlAtom30 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom30
  ring

theorem seg34RStep192Pe (rho : Nat -> Seg34.F) (r1946 : Seg34.relationRow1946 rho) :
    seg34RPe192 rho = seg34RPe193 rho * rho 32956 := by
  unfold Seg34.relationRow1946 at r1946
  unfold seg34RPe192 seg34RPe193
  linear_combination -r1946

theorem seg34RStep192 (rho : Nat -> Seg34.F) (r1944 : Seg34.relationRow1944 rho) (r1945 : Seg34.relationRow1945 rho) (r1946 : Seg34.relationRow1946 rho) :
    seg34RPe192 rho = seg34RPe193 rho * rho 32956 ∧
    seg34RIl192 rho = seg34RIl193 rho + seg34RPe193 rho * (1 - rho 32956) -
      seg34RIl193 rho * (seg34RPe193 rho * (1 - rho 32956)) := by
  constructor
  · exact seg34RStep192Pe rho r1946
  · rw [seg34RStep192Acc rho, seg34RStep192L rho r1944, seg34RStep192IlMul rho r1945, seg34RStep192L rho r1944]

theorem seg34_r_chunk192 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 193 (seg34RPeState rho 193) (seg34RIlState rho 193) := by
  have htail := seg34_r_chunk191 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1944, r1945, r1946, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 192 ≤ n → n < 193 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 192 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep192 rho r1944 r1945 r1946
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 192 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
