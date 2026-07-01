import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk83

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep84L (rho : Nat -> Seg34.F) (r2150 : Seg34.relationRow2150 rho) :
    rho 33425 = seg34RPe85 rho * (1 - rho 32848) := by
  unfold Seg34.relationRow2150 at r2150
  unfold seg34RPe85
  linear_combination -r2150

theorem seg34RStep84IlMul (rho : Nat -> Seg34.F) (r2151 : Seg34.relationRow2151 rho) :
    rho 33426 = seg34RIl85 rho * (rho 33425) := by
  unfold Seg34.relationRow2151 at r2151
  rw [seg34RStep84IlLc rho] at r2151
  linear_combination -r2151

theorem seg34RStep84Acc (rho : Nat -> Seg34.F) :
    seg34RIl84 rho = seg34RIl85 rho + (rho 33425) - (rho 33426) := by
  have hstate : seg34RIl84 rho = seg34RIl85 rho + seg34RIlAtom82 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom82
  ring

theorem seg34RStep84Pe (rho : Nat -> Seg34.F) (r2152 : Seg34.relationRow2152 rho) :
    seg34RPe84 rho = seg34RPe85 rho * rho 32848 := by
  unfold Seg34.relationRow2152 at r2152
  unfold seg34RPe84 seg34RPe85
  linear_combination -r2152

theorem seg34RStep84 (rho : Nat -> Seg34.F) (r2150 : Seg34.relationRow2150 rho) (r2151 : Seg34.relationRow2151 rho) (r2152 : Seg34.relationRow2152 rho) :
    seg34RPe84 rho = seg34RPe85 rho * rho 32848 ∧
    seg34RIl84 rho = seg34RIl85 rho + seg34RPe85 rho * (1 - rho 32848) -
      seg34RIl85 rho * (seg34RPe85 rho * (1 - rho 32848)) := by
  constructor
  · exact seg34RStep84Pe rho r2152
  · rw [seg34RStep84Acc rho, seg34RStep84L rho r2150, seg34RStep84IlMul rho r2151, seg34RStep84L rho r2150]

theorem seg34_r_chunk84 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 85 (seg34RPeState rho 85) (seg34RIlState rho 85) := by
  have htail := seg34_r_chunk83 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2150, r2151, r2152, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 84 ≤ n → n < 85 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 84 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep84 rho r2150 r2151 r2152
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 84 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
