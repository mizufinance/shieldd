import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk108

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step109L (rho : Nat -> Seg34.F) (r2509 : Seg34.relationRow2509 rho) :
    rho 33783 = seg34Q4Pe110 rho * (1 - rho 32873) := by
  unfold Seg34.relationRow2509 at r2509
  unfold seg34Q4Pe110
  linear_combination -r2509

theorem seg34Q4Step109IlMul (rho : Nat -> Seg34.F) (r2510 : Seg34.relationRow2510 rho) :
    rho 33784 = seg34Q4Il110 rho * (rho 33783) := by
  unfold Seg34.relationRow2510 at r2510
  rw [seg34Q4Il110Atoms rho]
  unfold seg34Q4IlAtom0 seg34Q4IlAtom1 seg34Q4IlAtom10 seg34Q4IlAtom2 seg34Q4IlAtom3 seg34Q4IlAtom4 seg34Q4IlAtom5 seg34Q4IlAtom6 seg34Q4IlAtom7 seg34Q4IlAtom8 seg34Q4IlAtom9
  linear_combination -r2510

theorem seg34Q4Step109Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il109 rho = seg34Q4Il110 rho + (rho 33783) - (rho 33784) := by
  have hstate : seg34Q4Il109 rho = seg34Q4Il110 rho + seg34Q4IlAtom11 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom11
  ring

theorem seg34Q4Step109Pe (rho : Nat -> Seg34.F) (r2511 : Seg34.relationRow2511 rho) :
    seg34Q4Pe109 rho = seg34Q4Pe110 rho * rho 32873 := by
  unfold Seg34.relationRow2511 at r2511
  unfold seg34Q4Pe109 seg34Q4Pe110
  linear_combination -r2511

theorem seg34Q4Step109 (rho : Nat -> Seg34.F) (r2509 : Seg34.relationRow2509 rho) (r2510 : Seg34.relationRow2510 rho) (r2511 : Seg34.relationRow2511 rho) :
    seg34Q4Pe109 rho = seg34Q4Pe110 rho * rho 32873 ∧
    seg34Q4Il109 rho = seg34Q4Il110 rho + seg34Q4Pe110 rho * (1 - rho 32873) -
      seg34Q4Il110 rho * (seg34Q4Pe110 rho * (1 - rho 32873)) := by
  constructor
  · exact seg34Q4Step109Pe rho r2511
  · rw [seg34Q4Step109Acc rho, seg34Q4Step109L rho r2509, seg34Q4Step109IlMul rho r2510, seg34Q4Step109L rho r2509]

theorem seg34_q4_chunk109 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 110 (seg34Q4PeState rho 110) (seg34Q4IlState rho 110) := by
  have htail := seg34_q4_chunk108 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2509, r2510, r2511, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 109 ≤ n → n < 110 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 109 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step109 rho r2509 r2510 r2511
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 109 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
