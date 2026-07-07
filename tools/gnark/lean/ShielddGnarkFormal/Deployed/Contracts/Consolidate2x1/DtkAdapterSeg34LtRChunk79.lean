import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk78

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep79L (rho : Nat -> Seg34.F) (r2161 : Seg34.relationRow2161 rho) :
    rho 33436 = seg34RPe80 rho * (1 - rho 32843) := by
  unfold Seg34.relationRow2161 at r2161
  unfold seg34RPe80
  linear_combination -r2161

theorem seg34RStep79IlMul (rho : Nat -> Seg34.F) (r2162 : Seg34.relationRow2162 rho) :
    rho 33437 = seg34RIl80 rho * (rho 33436) := by
  unfold Seg34.relationRow2162 at r2162
  rw [seg34RStep79IlLc rho] at r2162
  linear_combination -r2162

theorem seg34RStep79Acc (rho : Nat -> Seg34.F) :
    seg34RIl79 rho = seg34RIl80 rho + (rho 33436) - (rho 33437) := by
  have hstate : seg34RIl79 rho = seg34RIl80 rho + seg34RIlAtom86 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom86
  ring

theorem seg34RStep79Pe (rho : Nat -> Seg34.F) (r2163 : Seg34.relationRow2163 rho) :
    seg34RPe79 rho = seg34RPe80 rho * rho 32843 := by
  unfold Seg34.relationRow2163 at r2163
  unfold seg34RPe79 seg34RPe80
  linear_combination -r2163

theorem seg34RStep79 (rho : Nat -> Seg34.F) (r2161 : Seg34.relationRow2161 rho) (r2162 : Seg34.relationRow2162 rho) (r2163 : Seg34.relationRow2163 rho) :
    seg34RPe79 rho = seg34RPe80 rho * rho 32843 ∧
    seg34RIl79 rho = seg34RIl80 rho + seg34RPe80 rho * (1 - rho 32843) -
      seg34RIl80 rho * (seg34RPe80 rho * (1 - rho 32843)) := by
  constructor
  · exact seg34RStep79Pe rho r2163
  · rw [seg34RStep79Acc rho, seg34RStep79L rho r2161, seg34RStep79IlMul rho r2162, seg34RStep79L rho r2161]

theorem seg34_r_chunk79 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 80 (seg34RPeState rho 80) (seg34RIlState rho 80) := by
  have htail := seg34_r_chunk78 rho h k hq4
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
  rcases p27 with ⟨_, r2161, r2162, r2163, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 79 ≤ n → n < 80 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 79 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep79 rho r2161 r2162 r2163
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 79 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
