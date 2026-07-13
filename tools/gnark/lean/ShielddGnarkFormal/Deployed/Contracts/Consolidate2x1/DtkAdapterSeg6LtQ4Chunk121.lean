import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk120

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step121L (rho : Nat -> Seg6.F) (r2479 : Seg6.relationRow2479 rho) :
    rho 2879 = seg6Q4Pe122 rho * (1 - rho 2011) := by
  unfold Seg6.relationRow2479 at r2479
  unfold seg6Q4Pe122
  linear_combination -r2479

theorem seg6Q4Step121IlMul (rho : Nat -> Seg6.F) (r2480 : Seg6.relationRow2480 rho) :
    rho 2880 = seg6Q4Il122 rho * (rho 2879) := by
  unfold Seg6.relationRow2480 at r2480
  rw [seg6Q4Il122Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1
  linear_combination -r2480

theorem seg6Q4Step121Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il121 rho = seg6Q4Il122 rho + (rho 2879) - (rho 2880) := by
  have hstate : seg6Q4Il121 rho = seg6Q4Il122 rho + seg6Q4IlAtom2 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom2
  ring

theorem seg6Q4Step121Pe (rho : Nat -> Seg6.F) (r2481 : Seg6.relationRow2481 rho) :
    seg6Q4Pe121 rho = seg6Q4Pe122 rho * rho 2011 := by
  unfold Seg6.relationRow2481 at r2481
  unfold seg6Q4Pe121 seg6Q4Pe122
  linear_combination -r2481

theorem seg6Q4Step121 (rho : Nat -> Seg6.F) (r2479 : Seg6.relationRow2479 rho) (r2480 : Seg6.relationRow2480 rho) (r2481 : Seg6.relationRow2481 rho) :
    seg6Q4Pe121 rho = seg6Q4Pe122 rho * rho 2011 ∧
    seg6Q4Il121 rho = seg6Q4Il122 rho + seg6Q4Pe122 rho * (1 - rho 2011) -
      seg6Q4Il122 rho * (seg6Q4Pe122 rho * (1 - rho 2011)) := by
  constructor
  · exact seg6Q4Step121Pe rho r2481
  · rw [seg6Q4Step121Acc rho, seg6Q4Step121L rho r2479, seg6Q4Step121IlMul rho r2480, seg6Q4Step121L rho r2479]

theorem seg6_q4_chunk121 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 122 (seg6Q4PeState rho 122) (seg6Q4IlState rho 122) := by
  have htail := seg6_q4_chunk120 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2479⟩
  unfold Seg6.relationPart31 at p31
  rcases p31 with ⟨r2480, r2481, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 121 ≤ n → n < 122 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 121 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step121 rho r2479 r2480 r2481
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 121 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
