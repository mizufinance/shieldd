import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk108

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step109L (rho : Nat -> Seg45.F) (r2509 : Seg45.relationRow2509 rho) :
    rho 40739 = seg45Q4Pe110 rho * (1 - rho 39829) := by
  unfold Seg45.relationRow2509 at r2509
  unfold seg45Q4Pe110
  linear_combination -r2509

theorem seg45Q4Step109IlMul (rho : Nat -> Seg45.F) (r2510 : Seg45.relationRow2510 rho) :
    rho 40740 = seg45Q4Il110 rho * (rho 40739) := by
  unfold Seg45.relationRow2510 at r2510
  rw [seg45Q4Il110Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1 seg45Q4IlAtom10 seg45Q4IlAtom2 seg45Q4IlAtom3 seg45Q4IlAtom4 seg45Q4IlAtom5 seg45Q4IlAtom6 seg45Q4IlAtom7 seg45Q4IlAtom8 seg45Q4IlAtom9
  linear_combination -r2510

theorem seg45Q4Step109Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il109 rho = seg45Q4Il110 rho + (rho 40739) - (rho 40740) := by
  have hstate : seg45Q4Il109 rho = seg45Q4Il110 rho + seg45Q4IlAtom11 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom11
  ring

theorem seg45Q4Step109Pe (rho : Nat -> Seg45.F) (r2511 : Seg45.relationRow2511 rho) :
    seg45Q4Pe109 rho = seg45Q4Pe110 rho * rho 39829 := by
  unfold Seg45.relationRow2511 at r2511
  unfold seg45Q4Pe109 seg45Q4Pe110
  linear_combination -r2511

theorem seg45Q4Step109 (rho : Nat -> Seg45.F) (r2509 : Seg45.relationRow2509 rho) (r2510 : Seg45.relationRow2510 rho) (r2511 : Seg45.relationRow2511 rho) :
    seg45Q4Pe109 rho = seg45Q4Pe110 rho * rho 39829 ∧
    seg45Q4Il109 rho = seg45Q4Il110 rho + seg45Q4Pe110 rho * (1 - rho 39829) -
      seg45Q4Il110 rho * (seg45Q4Pe110 rho * (1 - rho 39829)) := by
  constructor
  · exact seg45Q4Step109Pe rho r2511
  · rw [seg45Q4Step109Acc rho, seg45Q4Step109L rho r2509, seg45Q4Step109IlMul rho r2510, seg45Q4Step109L rho r2509]

theorem seg45_q4_chunk109 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 110 (seg45Q4PeState rho 110) (seg45Q4IlState rho 110) := by
  have htail := seg45_q4_chunk108 rho h k hk
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2509, r2510, r2511, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 109 ≤ n → n < 110 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 109 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step109 rho r2509 r2510 r2511
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 109 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
