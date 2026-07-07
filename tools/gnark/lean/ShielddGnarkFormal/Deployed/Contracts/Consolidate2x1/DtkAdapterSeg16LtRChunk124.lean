import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk123

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep124L (rho : Nat -> Seg16.F) (r2070 : Seg16.relationRow2070 rho) :
    rho 14645 = seg16RPe125 rho * (1 - rho 14188) := by
  unfold Seg16.relationRow2070 at r2070
  unfold seg16RPe125
  linear_combination -r2070

theorem seg16RStep124IlMul (rho : Nat -> Seg16.F) (r2071 : Seg16.relationRow2071 rho) :
    rho 14646 = seg16RIl125 rho * (rho 14645) := by
  unfold Seg16.relationRow2071 at r2071
  rw [seg16RStep124IlLc rho] at r2071
  linear_combination -r2071

theorem seg16RStep124Acc (rho : Nat -> Seg16.F) :
    seg16RIl124 rho = seg16RIl125 rho + (rho 14645) - (rho 14646) := by
  have hstate : seg16RIl124 rho = seg16RIl125 rho + seg16RIlAtom61 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom61
  ring

theorem seg16RStep124Pe (rho : Nat -> Seg16.F) (r2072 : Seg16.relationRow2072 rho) :
    seg16RPe124 rho = seg16RPe125 rho * rho 14188 := by
  unfold Seg16.relationRow2072 at r2072
  unfold seg16RPe124 seg16RPe125
  linear_combination -r2072

theorem seg16RStep124 (rho : Nat -> Seg16.F) (r2070 : Seg16.relationRow2070 rho) (r2071 : Seg16.relationRow2071 rho) (r2072 : Seg16.relationRow2072 rho) :
    seg16RPe124 rho = seg16RPe125 rho * rho 14188 ∧
    seg16RIl124 rho = seg16RIl125 rho + seg16RPe125 rho * (1 - rho 14188) -
      seg16RIl125 rho * (seg16RPe125 rho * (1 - rho 14188)) := by
  constructor
  · exact seg16RStep124Pe rho r2072
  · rw [seg16RStep124Acc rho, seg16RStep124L rho r2070, seg16RStep124IlMul rho r2071, seg16RStep124L rho r2070]

theorem seg16_r_chunk124 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 125 (seg16RPeState rho 125) (seg16RIlState rho 125) := by
  have htail := seg16_r_chunk123 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2070, r2071, r2072, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 124 ≤ n → n < 125 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 124 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep124 rho r2070 r2071 r2072
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 124 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
