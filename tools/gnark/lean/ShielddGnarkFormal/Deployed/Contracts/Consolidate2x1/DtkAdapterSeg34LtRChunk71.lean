import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk70

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep71L (rho : Nat -> Seg34.F) (r2175 : Seg34.relationRow2175 rho) :
    rho 33450 = seg34RPe72 rho * (1 - rho 32835) := by
  unfold Seg34.relationRow2175 at r2175
  unfold seg34RPe72
  linear_combination -r2175

theorem seg34RStep71IlMul (rho : Nat -> Seg34.F) (r2176 : Seg34.relationRow2176 rho) :
    rho 33451 = seg34RIl72 rho * (rho 33450) := by
  unfold Seg34.relationRow2176 at r2176
  rw [seg34RStep71IlLc rho] at r2176
  linear_combination -r2176

theorem seg34RStep71Acc (rho : Nat -> Seg34.F) :
    seg34RIl71 rho = seg34RIl72 rho + (rho 33450) - (rho 33451) := by
  have hstate : seg34RIl71 rho = seg34RIl72 rho + seg34RIlAtom89 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom89
  ring

theorem seg34RStep71Pe (rho : Nat -> Seg34.F) (r2177 : Seg34.relationRow2177 rho) :
    seg34RPe71 rho = seg34RPe72 rho * rho 32835 := by
  unfold Seg34.relationRow2177 at r2177
  unfold seg34RPe71 seg34RPe72
  linear_combination -r2177

theorem seg34RStep71 (rho : Nat -> Seg34.F) (r2175 : Seg34.relationRow2175 rho) (r2176 : Seg34.relationRow2176 rho) (r2177 : Seg34.relationRow2177 rho) :
    seg34RPe71 rho = seg34RPe72 rho * rho 32835 ∧
    seg34RIl71 rho = seg34RIl72 rho + seg34RPe72 rho * (1 - rho 32835) -
      seg34RIl72 rho * (seg34RPe72 rho * (1 - rho 32835)) := by
  constructor
  · exact seg34RStep71Pe rho r2177
  · rw [seg34RStep71Acc rho, seg34RStep71L rho r2175, seg34RStep71IlMul rho r2176, seg34RStep71L rho r2175]

theorem seg34_r_chunk71 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 72 (seg34RPeState rho 72) (seg34RIlState rho 72) := by
  have htail := seg34_r_chunk70 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2175, r2176, r2177, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 71 ≤ n → n < 72 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 71 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep71 rho r2175 r2176 r2177
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 71 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
