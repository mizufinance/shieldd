import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk137

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep138L (rho : Nat -> Seg16.F) (r2052 : Seg16.relationRow2052 rho) :
    rho 14627 = seg16RPe139 rho * (1 - rho 14202) := by
  unfold Seg16.relationRow2052 at r2052
  unfold seg16RPe139
  linear_combination -r2052

theorem seg16RStep138IlMul (rho : Nat -> Seg16.F) (r2053 : Seg16.relationRow2053 rho) :
    rho 14628 = seg16RIl139 rho * (rho 14627) := by
  unfold Seg16.relationRow2053 at r2053
  rw [seg16RStep138IlLc rho] at r2053
  linear_combination -r2053

theorem seg16RStep138Acc (rho : Nat -> Seg16.F) :
    seg16RIl138 rho = seg16RIl139 rho + (rho 14627) - (rho 14628) := by
  have hstate : seg16RIl138 rho = seg16RIl139 rho + seg16RIlAtom59 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom59
  ring

theorem seg16RStep138Pe (rho : Nat -> Seg16.F) (r2054 : Seg16.relationRow2054 rho) :
    seg16RPe138 rho = seg16RPe139 rho * rho 14202 := by
  unfold Seg16.relationRow2054 at r2054
  unfold seg16RPe138 seg16RPe139
  linear_combination -r2054

theorem seg16RStep138 (rho : Nat -> Seg16.F) (r2052 : Seg16.relationRow2052 rho) (r2053 : Seg16.relationRow2053 rho) (r2054 : Seg16.relationRow2054 rho) :
    seg16RPe138 rho = seg16RPe139 rho * rho 14202 ∧
    seg16RIl138 rho = seg16RIl139 rho + seg16RPe139 rho * (1 - rho 14202) -
      seg16RIl139 rho * (seg16RPe139 rho * (1 - rho 14202)) := by
  constructor
  · exact seg16RStep138Pe rho r2054
  · rw [seg16RStep138Acc rho, seg16RStep138L rho r2052, seg16RStep138IlMul rho r2053, seg16RStep138L rho r2052]

theorem seg16_r_chunk138 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 139 (seg16RPeState rho 139) (seg16RIlState rho 139) := by
  have htail := seg16_r_chunk137 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2052, r2053, r2054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 138 ≤ n → n < 139 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 138 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep138 rho r2052 r2053 r2054
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 138 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
