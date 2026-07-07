import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk191

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep192L (rho : Nat -> Seg16.F) (r1944 : Seg16.relationRow1944 rho) :
    rho 14519 = seg16RPe193 rho * (1 - rho 14256) := by
  unfold Seg16.relationRow1944 at r1944
  unfold seg16RPe193
  linear_combination -r1944

theorem seg16RStep192IlMul (rho : Nat -> Seg16.F) (r1945 : Seg16.relationRow1945 rho) :
    rho 14520 = seg16RIl193 rho * (rho 14519) := by
  unfold Seg16.relationRow1945 at r1945
  rw [seg16RStep192IlLc rho] at r1945
  linear_combination -r1945

theorem seg16RStep192Acc (rho : Nat -> Seg16.F) :
    seg16RIl192 rho = seg16RIl193 rho + (rho 14519) - (rho 14520) := by
  have hstate : seg16RIl192 rho = seg16RIl193 rho + seg16RIlAtom30 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom30
  ring

theorem seg16RStep192Pe (rho : Nat -> Seg16.F) (r1946 : Seg16.relationRow1946 rho) :
    seg16RPe192 rho = seg16RPe193 rho * rho 14256 := by
  unfold Seg16.relationRow1946 at r1946
  unfold seg16RPe192 seg16RPe193
  linear_combination -r1946

theorem seg16RStep192 (rho : Nat -> Seg16.F) (r1944 : Seg16.relationRow1944 rho) (r1945 : Seg16.relationRow1945 rho) (r1946 : Seg16.relationRow1946 rho) :
    seg16RPe192 rho = seg16RPe193 rho * rho 14256 ∧
    seg16RIl192 rho = seg16RIl193 rho + seg16RPe193 rho * (1 - rho 14256) -
      seg16RIl193 rho * (seg16RPe193 rho * (1 - rho 14256)) := by
  constructor
  · exact seg16RStep192Pe rho r1946
  · rw [seg16RStep192Acc rho, seg16RStep192L rho r1944, seg16RStep192IlMul rho r1945, seg16RStep192L rho r1944]

theorem seg16_r_chunk192 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 193 (seg16RPeState rho 193) (seg16RIlState rho 193) := by
  have htail := seg16_r_chunk191 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1944, r1945, r1946, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 192 ≤ n → n < 193 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 192 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep192 rho r1944 r1945 r1946
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 192 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
