import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk87

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step88L (rho : Nat -> Seg34.F) (r2558 : Seg34.relationRow2558 rho) :
    rho 33832 = seg34Q4Pe89 rho * (1 - rho 32852) := by
  unfold Seg34.relationRow2558 at r2558
  unfold seg34Q4Pe89
  linear_combination -r2558

theorem seg34Q4Step88IlMul (rho : Nat -> Seg34.F) (r2559 : Seg34.relationRow2559 rho) :
    rho 33833 = seg34Q4Il89 rho * (rho 33832) := by
  unfold Seg34.relationRow2559 at r2559
  rw [seg34Q4Step88IlLc rho] at r2559
  linear_combination -r2559

theorem seg34Q4Step88Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il88 rho = seg34Q4Il89 rho + (rho 33832) - (rho 33833) := by
  have hstate : seg34Q4Il88 rho = seg34Q4Il89 rho + seg34Q4IlAtom26 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom26
  ring

theorem seg34Q4Step88Pe (rho : Nat -> Seg34.F) (r2560 : Seg34.relationRow2560 rho) :
    seg34Q4Pe88 rho = seg34Q4Pe89 rho * rho 32852 := by
  unfold Seg34.relationRow2560 at r2560
  unfold seg34Q4Pe88 seg34Q4Pe89
  linear_combination -r2560

theorem seg34Q4Step88 (rho : Nat -> Seg34.F) (r2558 : Seg34.relationRow2558 rho) (r2559 : Seg34.relationRow2559 rho) (r2560 : Seg34.relationRow2560 rho) :
    seg34Q4Pe88 rho = seg34Q4Pe89 rho * rho 32852 ∧
    seg34Q4Il88 rho = seg34Q4Il89 rho + seg34Q4Pe89 rho * (1 - rho 32852) -
      seg34Q4Il89 rho * (seg34Q4Pe89 rho * (1 - rho 32852)) := by
  constructor
  · exact seg34Q4Step88Pe rho r2560
  · rw [seg34Q4Step88Acc rho, seg34Q4Step88L rho r2558, seg34Q4Step88IlMul rho r2559, seg34Q4Step88L rho r2558]

theorem seg34_q4_chunk88 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 89 (seg34Q4PeState rho 89) (seg34Q4IlState rho 89) := by
  have htail := seg34_q4_chunk87 rho h k hk
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2558, r2559⟩
  unfold Seg34.relationPart32 at p32
  rcases p32 with ⟨r2560, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 88 ≤ n → n < 89 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 88 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step88 rho r2558 r2559 r2560
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 88 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
