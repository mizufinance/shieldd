import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk42

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep43L (rho : Nat -> Seg34.F) (r2241 : Seg34.relationRow2241 rho) :
    rho 33516 = seg34RPe44 rho * (1 - rho 32807) := by
  unfold Seg34.relationRow2241 at r2241
  unfold seg34RPe44
  linear_combination -r2241

theorem seg34RStep43IlMul (rho : Nat -> Seg34.F) (r2242 : Seg34.relationRow2242 rho) :
    rho 33517 = seg34RIl44 rho * (rho 33516) := by
  unfold Seg34.relationRow2242 at r2242
  rw [seg34RStep43IlLc rho] at r2242
  linear_combination -r2242

theorem seg34RStep43Acc (rho : Nat -> Seg34.F) :
    seg34RIl43 rho = seg34RIl44 rho + (rho 33516) - (rho 33517) := by
  have hstate : seg34RIl43 rho = seg34RIl44 rho + seg34RIlAtom109 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom109
  ring

theorem seg34RStep43Pe (rho : Nat -> Seg34.F) (r2243 : Seg34.relationRow2243 rho) :
    seg34RPe43 rho = seg34RPe44 rho * rho 32807 := by
  unfold Seg34.relationRow2243 at r2243
  unfold seg34RPe43 seg34RPe44
  linear_combination -r2243

theorem seg34RStep43 (rho : Nat -> Seg34.F) (r2241 : Seg34.relationRow2241 rho) (r2242 : Seg34.relationRow2242 rho) (r2243 : Seg34.relationRow2243 rho) :
    seg34RPe43 rho = seg34RPe44 rho * rho 32807 ∧
    seg34RIl43 rho = seg34RIl44 rho + seg34RPe44 rho * (1 - rho 32807) -
      seg34RIl44 rho * (seg34RPe44 rho * (1 - rho 32807)) := by
  constructor
  · exact seg34RStep43Pe rho r2243
  · rw [seg34RStep43Acc rho, seg34RStep43L rho r2241, seg34RStep43IlMul rho r2242, seg34RStep43L rho r2241]

theorem seg34_r_chunk43 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 44 (seg34RPeState rho 44) (seg34RIlState rho 44) := by
  have htail := seg34_r_chunk42 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart28 at p28
  rcases p28 with ⟨_, r2241, r2242, r2243, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 43 ≤ n → n < 44 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 43 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep43 rho r2241 r2242 r2243
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 43 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
