import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk108

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step109L (rho : Nat -> Seg5.F) (r2509 : Seg5.relationRow2509 rho) :
    rho 2206 = seg5Q4Pe110 rho * (1 - rho 1296) := by
  unfold Seg5.relationRow2509 at r2509
  unfold seg5Q4Pe110
  linear_combination -r2509

theorem seg5Q4Step109IlMul (rho : Nat -> Seg5.F) (r2510 : Seg5.relationRow2510 rho) :
    rho 2207 = seg5Q4Il110 rho * (rho 2206) := by
  unfold Seg5.relationRow2510 at r2510
  rw [seg5Q4Il110Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  linear_combination -r2510

theorem seg5Q4Step109Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il109 rho = seg5Q4Il110 rho + (rho 2206) - (rho 2207) := by
  have hstate : seg5Q4Il109 rho = seg5Q4Il110 rho + seg5Q4IlAtom11 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom11
  ring

theorem seg5Q4Step109Pe (rho : Nat -> Seg5.F) (r2511 : Seg5.relationRow2511 rho) :
    seg5Q4Pe109 rho = seg5Q4Pe110 rho * rho 1296 := by
  unfold Seg5.relationRow2511 at r2511
  unfold seg5Q4Pe109 seg5Q4Pe110
  linear_combination -r2511

theorem seg5Q4Step109 (rho : Nat -> Seg5.F) (r2509 : Seg5.relationRow2509 rho) (r2510 : Seg5.relationRow2510 rho) (r2511 : Seg5.relationRow2511 rho) :
    seg5Q4Pe109 rho = seg5Q4Pe110 rho * rho 1296 ∧
    seg5Q4Il109 rho = seg5Q4Il110 rho + seg5Q4Pe110 rho * (1 - rho 1296) -
      seg5Q4Il110 rho * (seg5Q4Pe110 rho * (1 - rho 1296)) := by
  constructor
  · exact seg5Q4Step109Pe rho r2511
  · rw [seg5Q4Step109Acc rho, seg5Q4Step109L rho r2509, seg5Q4Step109IlMul rho r2510, seg5Q4Step109L rho r2509]

theorem seg5_q4_chunk109 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 110 (seg5Q4PeState rho 110) (seg5Q4IlState rho 110) := by
  have htail := seg5_q4_chunk108 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2509, r2510, r2511, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 109 ≤ n → n < 110 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 109 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step109 rho r2509 r2510 r2511
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 109 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
