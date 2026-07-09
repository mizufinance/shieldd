import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk191

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep192L (rho : Nat -> Seg5.F) (r1944 : Seg5.relationRow1944 rho) :
    rho 1642 = seg5RPe193 rho * (1 - rho 1379) := by
  unfold Seg5.relationRow1944 at r1944
  unfold seg5RPe193
  linear_combination -r1944

theorem seg5RStep192IlMul (rho : Nat -> Seg5.F) (r1945 : Seg5.relationRow1945 rho) :
    rho 1643 = seg5RIl193 rho * (rho 1642) := by
  unfold Seg5.relationRow1945 at r1945
  rw [seg5RStep192IlLc rho] at r1945
  linear_combination -r1945

theorem seg5RStep192Acc (rho : Nat -> Seg5.F) :
    seg5RIl192 rho = seg5RIl193 rho + (rho 1642) - (rho 1643) := by
  have hstate : seg5RIl192 rho = seg5RIl193 rho + seg5RIlAtom30 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom30
  ring

theorem seg5RStep192Pe (rho : Nat -> Seg5.F) (r1946 : Seg5.relationRow1946 rho) :
    seg5RPe192 rho = seg5RPe193 rho * rho 1379 := by
  unfold Seg5.relationRow1946 at r1946
  unfold seg5RPe192 seg5RPe193
  linear_combination -r1946

theorem seg5RStep192 (rho : Nat -> Seg5.F) (r1944 : Seg5.relationRow1944 rho) (r1945 : Seg5.relationRow1945 rho) (r1946 : Seg5.relationRow1946 rho) :
    seg5RPe192 rho = seg5RPe193 rho * rho 1379 ∧
    seg5RIl192 rho = seg5RIl193 rho + seg5RPe193 rho * (1 - rho 1379) -
      seg5RIl193 rho * (seg5RPe193 rho * (1 - rho 1379)) := by
  constructor
  · exact seg5RStep192Pe rho r1946
  · rw [seg5RStep192Acc rho, seg5RStep192L rho r1944, seg5RStep192IlMul rho r1945, seg5RStep192L rho r1944]

theorem seg5_r_chunk192 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 193 (seg5RPeState rho 193) (seg5RIlState rho 193) := by
  have htail := seg5_r_chunk191 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1944, r1945, r1946, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 192 ≤ n → n < 193 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 192 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep192 rho r1944 r1945 r1946
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 192 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
