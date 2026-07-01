import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk93

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep94L (rho : Nat -> Seg34.F) (r2134 : Seg34.relationRow2134 rho) :
    rho 33409 = seg34RPe95 rho * (1 - rho 32858) := by
  unfold Seg34.relationRow2134 at r2134
  unfold seg34RPe95
  linear_combination -r2134

theorem seg34RStep94IlMul (rho : Nat -> Seg34.F) (r2135 : Seg34.relationRow2135 rho) :
    rho 33410 = seg34RIl95 rho * (rho 33409) := by
  unfold Seg34.relationRow2135 at r2135
  rw [seg34RStep94IlLc rho] at r2135
  linear_combination -r2135

theorem seg34RStep94Acc (rho : Nat -> Seg34.F) :
    seg34RIl94 rho = seg34RIl95 rho + (rho 33409) - (rho 33410) := by
  have hstate : seg34RIl94 rho = seg34RIl95 rho + seg34RIlAtom79 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom79
  ring

theorem seg34RStep94Pe (rho : Nat -> Seg34.F) (r2136 : Seg34.relationRow2136 rho) :
    seg34RPe94 rho = seg34RPe95 rho * rho 32858 := by
  unfold Seg34.relationRow2136 at r2136
  unfold seg34RPe94 seg34RPe95
  linear_combination -r2136

theorem seg34RStep94 (rho : Nat -> Seg34.F) (r2134 : Seg34.relationRow2134 rho) (r2135 : Seg34.relationRow2135 rho) (r2136 : Seg34.relationRow2136 rho) :
    seg34RPe94 rho = seg34RPe95 rho * rho 32858 ∧
    seg34RIl94 rho = seg34RIl95 rho + seg34RPe95 rho * (1 - rho 32858) -
      seg34RIl95 rho * (seg34RPe95 rho * (1 - rho 32858)) := by
  constructor
  · exact seg34RStep94Pe rho r2136
  · rw [seg34RStep94Acc rho, seg34RStep94L rho r2134, seg34RStep94IlMul rho r2135, seg34RStep94L rho r2134]

theorem seg34_r_chunk94 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 95 (seg34RPeState rho 95) (seg34RIlState rho 95) := by
  have htail := seg34_r_chunk93 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2134, r2135, r2136, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 94 ≤ n → n < 95 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 94 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep94 rho r2134 r2135 r2136
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 94 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
