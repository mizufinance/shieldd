import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep6L (rho : Nat -> Seg34.F) (r2324 : Seg34.relationRow2324 rho) :
    rho 33599 = seg34RPe7 rho * (1 - rho 32770) := by
  unfold Seg34.relationRow2324 at r2324
  unfold seg34RPe7
  linear_combination -r2324

theorem seg34RStep6IlMul (rho : Nat -> Seg34.F) (r2325 : Seg34.relationRow2325 rho) :
    rho 33600 = seg34RIl7 rho * (rho 33599) := by
  unfold Seg34.relationRow2325 at r2325
  rw [seg34RStep6IlLc rho] at r2325
  linear_combination -r2325

theorem seg34RStep6Acc (rho : Nat -> Seg34.F) :
    seg34RIl6 rho = seg34RIl7 rho + (rho 33599) - (rho 33600) := by
  have hstate : seg34RIl6 rho = seg34RIl7 rho + seg34RIlAtom133 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom133
  ring

theorem seg34RStep6Pe (rho : Nat -> Seg34.F) (r2326 : Seg34.relationRow2326 rho) :
    seg34RPe6 rho = seg34RPe7 rho * rho 32770 := by
  unfold Seg34.relationRow2326 at r2326
  unfold seg34RPe6 seg34RPe7
  linear_combination -r2326

theorem seg34RStep6 (rho : Nat -> Seg34.F) (r2324 : Seg34.relationRow2324 rho) (r2325 : Seg34.relationRow2325 rho) (r2326 : Seg34.relationRow2326 rho) :
    seg34RPe6 rho = seg34RPe7 rho * rho 32770 ∧
    seg34RIl6 rho = seg34RIl7 rho + seg34RPe7 rho * (1 - rho 32770) -
      seg34RIl7 rho * (seg34RPe7 rho * (1 - rho 32770)) := by
  constructor
  · exact seg34RStep6Pe rho r2326
  · rw [seg34RStep6Acc rho, seg34RStep6L rho r2324, seg34RStep6IlMul rho r2325, seg34RStep6L rho r2324]

theorem seg34_r_chunk6 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 7 (seg34RPeState rho 7) (seg34RIlState rho 7) := by
  have htail := seg34_r_chunk5 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, r2324, r2325, r2326, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 6 ≤ n → n < 7 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 6 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep6 rho r2324 r2325 r2326
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 6 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
