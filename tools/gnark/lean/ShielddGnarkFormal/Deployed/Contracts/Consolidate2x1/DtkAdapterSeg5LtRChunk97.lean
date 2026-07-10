import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk96

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep97L (rho : Nat -> Seg5.F) (r2125 : Seg5.relationRow2125 rho) :
    rho 1823 = seg5RPe98 rho * (1 - rho 1284) := by
  unfold Seg5.relationRow2125 at r2125
  unfold seg5RPe98
  linear_combination -r2125

theorem seg5RStep97IlMul (rho : Nat -> Seg5.F) (r2126 : Seg5.relationRow2126 rho) :
    rho 1824 = seg5RIl98 rho * (rho 1823) := by
  unfold Seg5.relationRow2126 at r2126
  rw [seg5RStep97IlLc rho] at r2126
  linear_combination -r2126

theorem seg5RStep97Acc (rho : Nat -> Seg5.F) :
    seg5RIl97 rho = seg5RIl98 rho + (rho 1823) - (rho 1824) := by
  have hstate : seg5RIl97 rho = seg5RIl98 rho + seg5RIlAtom76 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom76
  ring

theorem seg5RStep97Pe (rho : Nat -> Seg5.F) (r2127 : Seg5.relationRow2127 rho) :
    seg5RPe97 rho = seg5RPe98 rho * rho 1284 := by
  unfold Seg5.relationRow2127 at r2127
  unfold seg5RPe97 seg5RPe98
  linear_combination -r2127

theorem seg5RStep97 (rho : Nat -> Seg5.F) (r2125 : Seg5.relationRow2125 rho) (r2126 : Seg5.relationRow2126 rho) (r2127 : Seg5.relationRow2127 rho) :
    seg5RPe97 rho = seg5RPe98 rho * rho 1284 ∧
    seg5RIl97 rho = seg5RIl98 rho + seg5RPe98 rho * (1 - rho 1284) -
      seg5RIl98 rho * (seg5RPe98 rho * (1 - rho 1284)) := by
  constructor
  · exact seg5RStep97Pe rho r2127
  · rw [seg5RStep97Acc rho, seg5RStep97L rho r2125, seg5RStep97IlMul rho r2126, seg5RStep97L rho r2125]

theorem seg5_r_chunk97 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 98 (seg5RPeState rho 98) (seg5RIlState rho 98) := by
  have htail := seg5_r_chunk96 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2125, r2126, r2127, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 97 ≤ n → n < 98 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 97 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep97 rho r2125 r2126 r2127
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 97 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
