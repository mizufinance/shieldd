import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk95

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep96L (rho : Nat -> Seg16.F) (r2128 : Seg16.relationRow2128 rho) :
    rho 14703 = seg16RPe97 rho * (1 - rho 14160) := by
  unfold Seg16.relationRow2128 at r2128
  unfold seg16RPe97
  linear_combination -r2128

theorem seg16RStep96IlMul (rho : Nat -> Seg16.F) (r2129 : Seg16.relationRow2129 rho) :
    rho 14704 = seg16RIl97 rho * (rho 14703) := by
  unfold Seg16.relationRow2129 at r2129
  rw [seg16RStep96IlLc rho] at r2129
  linear_combination -r2129

theorem seg16RStep96Acc (rho : Nat -> Seg16.F) :
    seg16RIl96 rho = seg16RIl97 rho + (rho 14703) - (rho 14704) := by
  have hstate : seg16RIl96 rho = seg16RIl97 rho + seg16RIlAtom77 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom77
  ring

theorem seg16RStep96Pe (rho : Nat -> Seg16.F) (r2130 : Seg16.relationRow2130 rho) :
    seg16RPe96 rho = seg16RPe97 rho * rho 14160 := by
  unfold Seg16.relationRow2130 at r2130
  unfold seg16RPe96 seg16RPe97
  linear_combination -r2130

theorem seg16RStep96 (rho : Nat -> Seg16.F) (r2128 : Seg16.relationRow2128 rho) (r2129 : Seg16.relationRow2129 rho) (r2130 : Seg16.relationRow2130 rho) :
    seg16RPe96 rho = seg16RPe97 rho * rho 14160 ∧
    seg16RIl96 rho = seg16RIl97 rho + seg16RPe97 rho * (1 - rho 14160) -
      seg16RIl97 rho * (seg16RPe97 rho * (1 - rho 14160)) := by
  constructor
  · exact seg16RStep96Pe rho r2130
  · rw [seg16RStep96Acc rho, seg16RStep96L rho r2128, seg16RStep96IlMul rho r2129, seg16RStep96L rho r2128]

theorem seg16_r_chunk96 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 97 (seg16RPeState rho 97) (seg16RIlState rho 97) := by
  have htail := seg16_r_chunk95 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2128, r2129, r2130, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 96 ≤ n → n < 97 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 96 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep96 rho r2128 r2129 r2130
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 96 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
