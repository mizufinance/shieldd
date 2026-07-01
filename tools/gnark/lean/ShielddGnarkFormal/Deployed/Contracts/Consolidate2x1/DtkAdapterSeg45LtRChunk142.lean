import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk141

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep142L (rho : Nat -> Seg45.F) (r2042 : Seg45.relationRow2042 rho) :
    rho 40273 = seg45RPe143 rho * (1 - rho 39862) := by
  unfold Seg45.relationRow2042 at r2042
  unfold seg45RPe143
  linear_combination -r2042

theorem seg45RStep142IlMul (rho : Nat -> Seg45.F) (r2043 : Seg45.relationRow2043 rho) :
    rho 40274 = seg45RIl143 rho * (rho 40273) := by
  unfold Seg45.relationRow2043 at r2043
  rw [seg45RStep142IlLc rho] at r2043
  linear_combination -r2043

theorem seg45RStep142Acc (rho : Nat -> Seg45.F) :
    seg45RIl142 rho = seg45RIl143 rho + (rho 40273) - (rho 40274) := by
  have hstate : seg45RIl142 rho = seg45RIl143 rho + seg45RIlAtom56 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom56
  ring

theorem seg45RStep142Pe (rho : Nat -> Seg45.F) (r2044 : Seg45.relationRow2044 rho) :
    seg45RPe142 rho = seg45RPe143 rho * rho 39862 := by
  unfold Seg45.relationRow2044 at r2044
  unfold seg45RPe142 seg45RPe143
  linear_combination -r2044

theorem seg45RStep142 (rho : Nat -> Seg45.F) (r2042 : Seg45.relationRow2042 rho) (r2043 : Seg45.relationRow2043 rho) (r2044 : Seg45.relationRow2044 rho) :
    seg45RPe142 rho = seg45RPe143 rho * rho 39862 ∧
    seg45RIl142 rho = seg45RIl143 rho + seg45RPe143 rho * (1 - rho 39862) -
      seg45RIl143 rho * (seg45RPe143 rho * (1 - rho 39862)) := by
  constructor
  · exact seg45RStep142Pe rho r2044
  · rw [seg45RStep142Acc rho, seg45RStep142L rho r2042, seg45RStep142IlMul rho r2043, seg45RStep142L rho r2042]

theorem seg45_r_chunk142 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 143 (seg45RPeState rho 143) (seg45RIlState rho 143) := by
  have htail := seg45_r_chunk141 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2042, r2043, r2044, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 142 ≤ n → n < 143 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 142 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep142 rho r2042 r2043 r2044
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 142 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
