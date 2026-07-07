import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk84

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep85L (rho : Nat -> Seg16.F) (r2147 : Seg16.relationRow2147 rho) :
    rho 14722 = seg16RPe86 rho * (1 - rho 14149) := by
  unfold Seg16.relationRow2147 at r2147
  unfold seg16RPe86
  linear_combination -r2147

theorem seg16RStep85IlMul (rho : Nat -> Seg16.F) (r2148 : Seg16.relationRow2148 rho) :
    rho 14723 = seg16RIl86 rho * (rho 14722) := by
  unfold Seg16.relationRow2148 at r2148
  rw [seg16RStep85IlLc rho] at r2148
  linear_combination -r2148

theorem seg16RStep85Acc (rho : Nat -> Seg16.F) :
    seg16RIl85 rho = seg16RIl86 rho + (rho 14722) - (rho 14723) := by
  have hstate : seg16RIl85 rho = seg16RIl86 rho + seg16RIlAtom81 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom81
  ring

theorem seg16RStep85Pe (rho : Nat -> Seg16.F) (r2149 : Seg16.relationRow2149 rho) :
    seg16RPe85 rho = seg16RPe86 rho * rho 14149 := by
  unfold Seg16.relationRow2149 at r2149
  unfold seg16RPe85 seg16RPe86
  linear_combination -r2149

theorem seg16RStep85 (rho : Nat -> Seg16.F) (r2147 : Seg16.relationRow2147 rho) (r2148 : Seg16.relationRow2148 rho) (r2149 : Seg16.relationRow2149 rho) :
    seg16RPe85 rho = seg16RPe86 rho * rho 14149 ∧
    seg16RIl85 rho = seg16RIl86 rho + seg16RPe86 rho * (1 - rho 14149) -
      seg16RIl86 rho * (seg16RPe86 rho * (1 - rho 14149)) := by
  constructor
  · exact seg16RStep85Pe rho r2149
  · rw [seg16RStep85Acc rho, seg16RStep85L rho r2147, seg16RStep85IlMul rho r2148, seg16RStep85L rho r2147]

theorem seg16_r_chunk85 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 86 (seg16RPeState rho 86) (seg16RIlState rho 86) := by
  have htail := seg16_r_chunk84 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2147, r2148, r2149, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 85 ≤ n → n < 86 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 85 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep85 rho r2147 r2148 r2149
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 85 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
