import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk87

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step88L (rho : Nat -> Seg5.F) (r2558 : Seg5.relationRow2558 rho) :
    rho 2255 = seg5Q4Pe89 rho * (1 - rho 1275) := by
  unfold Seg5.relationRow2558 at r2558
  unfold seg5Q4Pe89
  linear_combination -r2558

theorem seg5Q4Step88IlMul (rho : Nat -> Seg5.F) (r2559 : Seg5.relationRow2559 rho) :
    rho 2256 = seg5Q4Il89 rho * (rho 2255) := by
  unfold Seg5.relationRow2559 at r2559
  rw [seg5Q4Step88IlLc rho] at r2559
  linear_combination -r2559

theorem seg5Q4Step88Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il88 rho = seg5Q4Il89 rho + (rho 2255) - (rho 2256) := by
  have hstate : seg5Q4Il88 rho = seg5Q4Il89 rho + seg5Q4IlAtom26 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom26
  ring

theorem seg5Q4Step88Pe (rho : Nat -> Seg5.F) (r2560 : Seg5.relationRow2560 rho) :
    seg5Q4Pe88 rho = seg5Q4Pe89 rho * rho 1275 := by
  unfold Seg5.relationRow2560 at r2560
  unfold seg5Q4Pe88 seg5Q4Pe89
  linear_combination -r2560

theorem seg5Q4Step88 (rho : Nat -> Seg5.F) (r2558 : Seg5.relationRow2558 rho) (r2559 : Seg5.relationRow2559 rho) (r2560 : Seg5.relationRow2560 rho) :
    seg5Q4Pe88 rho = seg5Q4Pe89 rho * rho 1275 ∧
    seg5Q4Il88 rho = seg5Q4Il89 rho + seg5Q4Pe89 rho * (1 - rho 1275) -
      seg5Q4Il89 rho * (seg5Q4Pe89 rho * (1 - rho 1275)) := by
  constructor
  · exact seg5Q4Step88Pe rho r2560
  · rw [seg5Q4Step88Acc rho, seg5Q4Step88L rho r2558, seg5Q4Step88IlMul rho r2559, seg5Q4Step88L rho r2558]

theorem seg5_q4_chunk88 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 89 (seg5Q4PeState rho 89) (seg5Q4IlState rho 89) := by
  have htail := seg5_q4_chunk87 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2558, r2559⟩
  unfold Seg5.relationPart32 at p32
  rcases p32 with ⟨r2560, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 88 ≤ n → n < 89 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 88 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step88 rho r2558 r2559 r2560
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 88 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
