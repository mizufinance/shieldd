import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk70

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep71L (rho : Nat -> Seg16.F) (r2175 : Seg16.relationRow2175 rho) :
    rho 14750 = seg16RPe72 rho * (1 - rho 14135) := by
  unfold Seg16.relationRow2175 at r2175
  unfold seg16RPe72
  linear_combination -r2175

theorem seg16RStep71IlMul (rho : Nat -> Seg16.F) (r2176 : Seg16.relationRow2176 rho) :
    rho 14751 = seg16RIl72 rho * (rho 14750) := by
  unfold Seg16.relationRow2176 at r2176
  rw [seg16RStep71IlLc rho] at r2176
  linear_combination -r2176

theorem seg16RStep71Acc (rho : Nat -> Seg16.F) :
    seg16RIl71 rho = seg16RIl72 rho + (rho 14750) - (rho 14751) := by
  have hstate : seg16RIl71 rho = seg16RIl72 rho + seg16RIlAtom89 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom89
  ring

theorem seg16RStep71Pe (rho : Nat -> Seg16.F) (r2177 : Seg16.relationRow2177 rho) :
    seg16RPe71 rho = seg16RPe72 rho * rho 14135 := by
  unfold Seg16.relationRow2177 at r2177
  unfold seg16RPe71 seg16RPe72
  linear_combination -r2177

theorem seg16RStep71 (rho : Nat -> Seg16.F) (r2175 : Seg16.relationRow2175 rho) (r2176 : Seg16.relationRow2176 rho) (r2177 : Seg16.relationRow2177 rho) :
    seg16RPe71 rho = seg16RPe72 rho * rho 14135 ∧
    seg16RIl71 rho = seg16RIl72 rho + seg16RPe72 rho * (1 - rho 14135) -
      seg16RIl72 rho * (seg16RPe72 rho * (1 - rho 14135)) := by
  constructor
  · exact seg16RStep71Pe rho r2177
  · rw [seg16RStep71Acc rho, seg16RStep71L rho r2175, seg16RStep71IlMul rho r2176, seg16RStep71L rho r2175]

theorem seg16_r_chunk71 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 72 (seg16RPeState rho 72) (seg16RIlState rho 72) := by
  have htail := seg16_r_chunk70 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2175, r2176, r2177, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 71 ≤ n → n < 72 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 71 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep71 rho r2175 r2176 r2177
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 71 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
