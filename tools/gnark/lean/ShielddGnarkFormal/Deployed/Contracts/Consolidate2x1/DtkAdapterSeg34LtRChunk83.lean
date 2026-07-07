import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk82

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep83L (rho : Nat -> Seg34.F) (r2153 : Seg34.relationRow2153 rho) :
    rho 33428 = seg34RPe84 rho * (1 - rho 32847) := by
  unfold Seg34.relationRow2153 at r2153
  unfold seg34RPe84
  linear_combination -r2153

theorem seg34RStep83IlMul (rho : Nat -> Seg34.F) (r2154 : Seg34.relationRow2154 rho) :
    rho 33429 = seg34RIl84 rho * (rho 33428) := by
  unfold Seg34.relationRow2154 at r2154
  rw [seg34RStep83IlLc rho] at r2154
  linear_combination -r2154

theorem seg34RStep83Acc (rho : Nat -> Seg34.F) :
    seg34RIl83 rho = seg34RIl84 rho + (rho 33428) - (rho 33429) := by
  have hstate : seg34RIl83 rho = seg34RIl84 rho + seg34RIlAtom83 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom83
  ring

theorem seg34RStep83Pe (rho : Nat -> Seg34.F) (r2155 : Seg34.relationRow2155 rho) :
    seg34RPe83 rho = seg34RPe84 rho * rho 32847 := by
  unfold Seg34.relationRow2155 at r2155
  unfold seg34RPe83 seg34RPe84
  linear_combination -r2155

theorem seg34RStep83 (rho : Nat -> Seg34.F) (r2153 : Seg34.relationRow2153 rho) (r2154 : Seg34.relationRow2154 rho) (r2155 : Seg34.relationRow2155 rho) :
    seg34RPe83 rho = seg34RPe84 rho * rho 32847 ∧
    seg34RIl83 rho = seg34RIl84 rho + seg34RPe84 rho * (1 - rho 32847) -
      seg34RIl84 rho * (seg34RPe84 rho * (1 - rho 32847)) := by
  constructor
  · exact seg34RStep83Pe rho r2155
  · rw [seg34RStep83Acc rho, seg34RStep83L rho r2153, seg34RStep83IlMul rho r2154, seg34RStep83L rho r2153]

theorem seg34_r_chunk83 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 84 (seg34RPeState rho 84) (seg34RIlState rho 84) := by
  have htail := seg34_r_chunk82 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2153, r2154, r2155, _, _, _, _⟩
  have hsteps : ∀ n, 83 ≤ n → n < 84 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 83 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep83 rho r2153 r2154 r2155
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 83 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
