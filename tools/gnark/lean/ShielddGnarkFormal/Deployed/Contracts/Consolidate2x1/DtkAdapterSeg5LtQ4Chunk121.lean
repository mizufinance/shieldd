import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk120

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step121L (rho : Nat -> Seg5.F) (r2479 : Seg5.relationRow2479 rho) :
    rho 2176 = seg5Q4Pe122 rho * (1 - rho 1308) := by
  unfold Seg5.relationRow2479 at r2479
  unfold seg5Q4Pe122
  linear_combination -r2479

theorem seg5Q4Step121IlMul (rho : Nat -> Seg5.F) (r2480 : Seg5.relationRow2480 rho) :
    rho 2177 = seg5Q4Il122 rho * (rho 2176) := by
  unfold Seg5.relationRow2480 at r2480
  rw [seg5Q4Il122Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1
  linear_combination -r2480

theorem seg5Q4Step121Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il121 rho = seg5Q4Il122 rho + (rho 2176) - (rho 2177) := by
  have hstate : seg5Q4Il121 rho = seg5Q4Il122 rho + seg5Q4IlAtom2 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom2
  ring

theorem seg5Q4Step121Pe (rho : Nat -> Seg5.F) (r2481 : Seg5.relationRow2481 rho) :
    seg5Q4Pe121 rho = seg5Q4Pe122 rho * rho 1308 := by
  unfold Seg5.relationRow2481 at r2481
  unfold seg5Q4Pe121 seg5Q4Pe122
  linear_combination -r2481

theorem seg5Q4Step121 (rho : Nat -> Seg5.F) (r2479 : Seg5.relationRow2479 rho) (r2480 : Seg5.relationRow2480 rho) (r2481 : Seg5.relationRow2481 rho) :
    seg5Q4Pe121 rho = seg5Q4Pe122 rho * rho 1308 ∧
    seg5Q4Il121 rho = seg5Q4Il122 rho + seg5Q4Pe122 rho * (1 - rho 1308) -
      seg5Q4Il122 rho * (seg5Q4Pe122 rho * (1 - rho 1308)) := by
  constructor
  · exact seg5Q4Step121Pe rho r2481
  · rw [seg5Q4Step121Acc rho, seg5Q4Step121L rho r2479, seg5Q4Step121IlMul rho r2480, seg5Q4Step121L rho r2479]

theorem seg5_q4_chunk121 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 122 (seg5Q4PeState rho 122) (seg5Q4IlState rho 122) := by
  have htail := seg5_q4_chunk120 rho h k hk
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2479⟩
  unfold Seg5.relationPart31 at p31
  rcases p31 with ⟨r2480, r2481, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 121 ≤ n → n < 122 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 121 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step121 rho r2479 r2480 r2481
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 121 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
