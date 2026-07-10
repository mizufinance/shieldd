import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk141

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep142L (rho : Nat -> Seg5.F) (r2042 : Seg5.relationRow2042 rho) :
    rho 1740 = seg5RPe143 rho * (1 - rho 1329) := by
  unfold Seg5.relationRow2042 at r2042
  unfold seg5RPe143
  linear_combination -r2042

theorem seg5RStep142IlMul (rho : Nat -> Seg5.F) (r2043 : Seg5.relationRow2043 rho) :
    rho 1741 = seg5RIl143 rho * (rho 1740) := by
  unfold Seg5.relationRow2043 at r2043
  rw [seg5RStep142IlLc rho] at r2043
  linear_combination -r2043

theorem seg5RStep142Acc (rho : Nat -> Seg5.F) :
    seg5RIl142 rho = seg5RIl143 rho + (rho 1740) - (rho 1741) := by
  have hstate : seg5RIl142 rho = seg5RIl143 rho + seg5RIlAtom56 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom56
  ring

theorem seg5RStep142Pe (rho : Nat -> Seg5.F) (r2044 : Seg5.relationRow2044 rho) :
    seg5RPe142 rho = seg5RPe143 rho * rho 1329 := by
  unfold Seg5.relationRow2044 at r2044
  unfold seg5RPe142 seg5RPe143
  linear_combination -r2044

theorem seg5RStep142 (rho : Nat -> Seg5.F) (r2042 : Seg5.relationRow2042 rho) (r2043 : Seg5.relationRow2043 rho) (r2044 : Seg5.relationRow2044 rho) :
    seg5RPe142 rho = seg5RPe143 rho * rho 1329 ∧
    seg5RIl142 rho = seg5RIl143 rho + seg5RPe143 rho * (1 - rho 1329) -
      seg5RIl143 rho * (seg5RPe143 rho * (1 - rho 1329)) := by
  constructor
  · exact seg5RStep142Pe rho r2044
  · rw [seg5RStep142Acc rho, seg5RStep142L rho r2042, seg5RStep142IlMul rho r2043, seg5RStep142L rho r2042]

theorem seg5_r_chunk142 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 143 (seg5RPeState rho 143) (seg5RIlState rho 143) := by
  have htail := seg5_r_chunk141 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2042, r2043, r2044, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 142 ≤ n → n < 143 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 142 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep142 rho r2042 r2043 r2044
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 142 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
