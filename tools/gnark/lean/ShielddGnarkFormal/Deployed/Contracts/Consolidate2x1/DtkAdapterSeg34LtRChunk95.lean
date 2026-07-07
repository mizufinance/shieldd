import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep95L (rho : Nat -> Seg34.F) (r2131 : Seg34.relationRow2131 rho) :
    rho 33406 = seg34RPe96 rho * (1 - rho 32859) := by
  unfold Seg34.relationRow2131 at r2131
  unfold seg34RPe96
  linear_combination -r2131

theorem seg34RStep95IlMul (rho : Nat -> Seg34.F) (r2132 : Seg34.relationRow2132 rho) :
    rho 33407 = seg34RIl96 rho * (rho 33406) := by
  unfold Seg34.relationRow2132 at r2132
  rw [seg34RStep95IlLc rho] at r2132
  linear_combination -r2132

theorem seg34RStep95Acc (rho : Nat -> Seg34.F) :
    seg34RIl95 rho = seg34RIl96 rho + (rho 33406) - (rho 33407) := by
  have hstate : seg34RIl95 rho = seg34RIl96 rho + seg34RIlAtom78 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom78
  ring

theorem seg34RStep95Pe (rho : Nat -> Seg34.F) (r2133 : Seg34.relationRow2133 rho) :
    seg34RPe95 rho = seg34RPe96 rho * rho 32859 := by
  unfold Seg34.relationRow2133 at r2133
  unfold seg34RPe95 seg34RPe96
  linear_combination -r2133

theorem seg34RStep95 (rho : Nat -> Seg34.F) (r2131 : Seg34.relationRow2131 rho) (r2132 : Seg34.relationRow2132 rho) (r2133 : Seg34.relationRow2133 rho) :
    seg34RPe95 rho = seg34RPe96 rho * rho 32859 ∧
    seg34RIl95 rho = seg34RIl96 rho + seg34RPe96 rho * (1 - rho 32859) -
      seg34RIl96 rho * (seg34RPe96 rho * (1 - rho 32859)) := by
  constructor
  · exact seg34RStep95Pe rho r2133
  · rw [seg34RStep95Acc rho, seg34RStep95L rho r2131, seg34RStep95IlMul rho r2132, seg34RStep95L rho r2131]

theorem seg34_r_chunk95 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 96 (seg34RPeState rho 96) (seg34RIlState rho 96) := by
  have htail := seg34_r_chunk94 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2131, r2132, r2133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 95 ≤ n → n < 96 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 95 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep95 rho r2131 r2132 r2133
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 95 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
