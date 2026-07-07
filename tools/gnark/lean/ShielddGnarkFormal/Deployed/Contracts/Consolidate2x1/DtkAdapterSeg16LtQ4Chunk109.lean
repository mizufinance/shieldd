import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk108

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step109L (rho : Nat -> Seg16.F) (r2509 : Seg16.relationRow2509 rho) :
    rho 15083 = seg16Q4Pe110 rho * (1 - rho 14173) := by
  unfold Seg16.relationRow2509 at r2509
  unfold seg16Q4Pe110
  linear_combination -r2509

theorem seg16Q4Step109IlMul (rho : Nat -> Seg16.F) (r2510 : Seg16.relationRow2510 rho) :
    rho 15084 = seg16Q4Il110 rho * (rho 15083) := by
  unfold Seg16.relationRow2510 at r2510
  rw [seg16Q4Il110Atoms rho]
  unfold seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  linear_combination -r2510

theorem seg16Q4Step109Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il109 rho = seg16Q4Il110 rho + (rho 15083) - (rho 15084) := by
  have hstate : seg16Q4Il109 rho = seg16Q4Il110 rho + seg16Q4IlAtom11 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom11
  ring

theorem seg16Q4Step109Pe (rho : Nat -> Seg16.F) (r2511 : Seg16.relationRow2511 rho) :
    seg16Q4Pe109 rho = seg16Q4Pe110 rho * rho 14173 := by
  unfold Seg16.relationRow2511 at r2511
  unfold seg16Q4Pe109 seg16Q4Pe110
  linear_combination -r2511

theorem seg16Q4Step109 (rho : Nat -> Seg16.F) (r2509 : Seg16.relationRow2509 rho) (r2510 : Seg16.relationRow2510 rho) (r2511 : Seg16.relationRow2511 rho) :
    seg16Q4Pe109 rho = seg16Q4Pe110 rho * rho 14173 ∧
    seg16Q4Il109 rho = seg16Q4Il110 rho + seg16Q4Pe110 rho * (1 - rho 14173) -
      seg16Q4Il110 rho * (seg16Q4Pe110 rho * (1 - rho 14173)) := by
  constructor
  · exact seg16Q4Step109Pe rho r2511
  · rw [seg16Q4Step109Acc rho, seg16Q4Step109L rho r2509, seg16Q4Step109IlMul rho r2510, seg16Q4Step109L rho r2509]

theorem seg16_q4_chunk109 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 110 (seg16Q4PeState rho 110) (seg16Q4IlState rho 110) := by
  have htail := seg16_q4_chunk108 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2509, r2510, r2511, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 109 ≤ n → n < 110 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 109 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step109 rho r2509 r2510 r2511
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 109 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
