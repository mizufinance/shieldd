import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk97

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep98L (rho : Nat -> Seg34.F) (r2122 : Seg34.relationRow2122 rho) :
    rho 33397 = seg34RPe99 rho * (1 - rho 32862) := by
  unfold Seg34.relationRow2122 at r2122
  unfold seg34RPe99
  linear_combination -r2122

theorem seg34RStep98IlMul (rho : Nat -> Seg34.F) (r2123 : Seg34.relationRow2123 rho) :
    rho 33398 = seg34RIl99 rho * (rho 33397) := by
  unfold Seg34.relationRow2123 at r2123
  rw [seg34RStep98IlLc rho] at r2123
  linear_combination -r2123

theorem seg34RStep98Acc (rho : Nat -> Seg34.F) :
    seg34RIl98 rho = seg34RIl99 rho + (rho 33397) - (rho 33398) := by
  have hstate : seg34RIl98 rho = seg34RIl99 rho + seg34RIlAtom75 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom75
  ring

theorem seg34RStep98Pe (rho : Nat -> Seg34.F) (r2124 : Seg34.relationRow2124 rho) :
    seg34RPe98 rho = seg34RPe99 rho * rho 32862 := by
  unfold Seg34.relationRow2124 at r2124
  unfold seg34RPe98 seg34RPe99
  linear_combination -r2124

theorem seg34RStep98 (rho : Nat -> Seg34.F) (r2122 : Seg34.relationRow2122 rho) (r2123 : Seg34.relationRow2123 rho) (r2124 : Seg34.relationRow2124 rho) :
    seg34RPe98 rho = seg34RPe99 rho * rho 32862 ∧
    seg34RIl98 rho = seg34RIl99 rho + seg34RPe99 rho * (1 - rho 32862) -
      seg34RIl99 rho * (seg34RPe99 rho * (1 - rho 32862)) := by
  constructor
  · exact seg34RStep98Pe rho r2124
  · rw [seg34RStep98Acc rho, seg34RStep98L rho r2122, seg34RStep98IlMul rho r2123, seg34RStep98L rho r2122]

theorem seg34_r_chunk98 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 99 (seg34RPeState rho 99) (seg34RIlState rho 99) := by
  have htail := seg34_r_chunk97 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2122, r2123, r2124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 98 ≤ n → n < 99 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 98 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep98 rho r2122 r2123 r2124
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 98 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
