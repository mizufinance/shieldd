import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk115

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep116L (rho : Nat -> Seg34.F) (r2084 : Seg34.relationRow2084 rho) :
    rho 33359 = seg34RPe117 rho * (1 - rho 32880) := by
  unfold Seg34.relationRow2084 at r2084
  unfold seg34RPe117
  linear_combination -r2084

theorem seg34RStep116IlMul (rho : Nat -> Seg34.F) (r2085 : Seg34.relationRow2085 rho) :
    rho 33360 = seg34RIl117 rho * (rho 33359) := by
  unfold Seg34.relationRow2085 at r2085
  rw [seg34RStep116IlLc rho] at r2085
  linear_combination -r2085

theorem seg34RStep116Acc (rho : Nat -> Seg34.F) :
    seg34RIl116 rho = seg34RIl117 rho + (rho 33359) - (rho 33360) := by
  have hstate : seg34RIl116 rho = seg34RIl117 rho + seg34RIlAtom64 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom64
  ring

theorem seg34RStep116Pe (rho : Nat -> Seg34.F) (r2086 : Seg34.relationRow2086 rho) :
    seg34RPe116 rho = seg34RPe117 rho * rho 32880 := by
  unfold Seg34.relationRow2086 at r2086
  unfold seg34RPe116 seg34RPe117
  linear_combination -r2086

theorem seg34RStep116 (rho : Nat -> Seg34.F) (r2084 : Seg34.relationRow2084 rho) (r2085 : Seg34.relationRow2085 rho) (r2086 : Seg34.relationRow2086 rho) :
    seg34RPe116 rho = seg34RPe117 rho * rho 32880 ∧
    seg34RIl116 rho = seg34RIl117 rho + seg34RPe117 rho * (1 - rho 32880) -
      seg34RIl117 rho * (seg34RPe117 rho * (1 - rho 32880)) := by
  constructor
  · exact seg34RStep116Pe rho r2086
  · rw [seg34RStep116Acc rho, seg34RStep116L rho r2084, seg34RStep116IlMul rho r2085, seg34RStep116L rho r2084]

theorem seg34_r_chunk116 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 117 (seg34RPeState rho 117) (seg34RIlState rho 117) := by
  have htail := seg34_r_chunk115 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, r2084, r2085, r2086, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 116 ≤ n → n < 117 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 116 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep116 rho r2084 r2085 r2086
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 116 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
