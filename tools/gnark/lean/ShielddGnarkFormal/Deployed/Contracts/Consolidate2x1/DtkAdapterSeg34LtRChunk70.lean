import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk69

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep70L (rho : Nat -> Seg34.F) (r2178 : Seg34.relationRow2178 rho) :
    rho 33453 = seg34RPe71 rho * (1 - rho 32834) := by
  unfold Seg34.relationRow2178 at r2178
  unfold seg34RPe71
  linear_combination -r2178

theorem seg34RStep70IlMul (rho : Nat -> Seg34.F) (r2179 : Seg34.relationRow2179 rho) :
    rho 33454 = seg34RIl71 rho * (rho 33453) := by
  unfold Seg34.relationRow2179 at r2179
  rw [seg34RStep70IlLc rho] at r2179
  linear_combination -r2179

theorem seg34RStep70Acc (rho : Nat -> Seg34.F) :
    seg34RIl70 rho = seg34RIl71 rho + (rho 33453) - (rho 33454) := by
  have hstate : seg34RIl70 rho = seg34RIl71 rho + seg34RIlAtom90 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom90
  ring

theorem seg34RStep70Pe (rho : Nat -> Seg34.F) (r2180 : Seg34.relationRow2180 rho) :
    seg34RPe70 rho = seg34RPe71 rho * rho 32834 := by
  unfold Seg34.relationRow2180 at r2180
  unfold seg34RPe70 seg34RPe71
  linear_combination -r2180

theorem seg34RStep70 (rho : Nat -> Seg34.F) (r2178 : Seg34.relationRow2178 rho) (r2179 : Seg34.relationRow2179 rho) (r2180 : Seg34.relationRow2180 rho) :
    seg34RPe70 rho = seg34RPe71 rho * rho 32834 ∧
    seg34RIl70 rho = seg34RIl71 rho + seg34RPe71 rho * (1 - rho 32834) -
      seg34RIl71 rho * (seg34RPe71 rho * (1 - rho 32834)) := by
  constructor
  · exact seg34RStep70Pe rho r2180
  · rw [seg34RStep70Acc rho, seg34RStep70L rho r2178, seg34RStep70IlMul rho r2179, seg34RStep70L rho r2178]

theorem seg34_r_chunk70 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 71 (seg34RPeState rho 71) (seg34RIlState rho 71) := by
  have htail := seg34_r_chunk69 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2178, r2179, r2180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 70 ≤ n → n < 71 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 70 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep70 rho r2178 r2179 r2180
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 70 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
