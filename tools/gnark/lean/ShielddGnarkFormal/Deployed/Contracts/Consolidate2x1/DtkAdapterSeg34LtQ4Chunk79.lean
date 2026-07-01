import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk78

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step79L (rho : Nat -> Seg34.F) (r2575 : Seg34.relationRow2575 rho) :
    rho 33849 = seg34Q4Pe80 rho * (1 - rho 32843) := by
  unfold Seg34.relationRow2575 at r2575
  unfold seg34Q4Pe80
  linear_combination -r2575

theorem seg34Q4Step79IlMul (rho : Nat -> Seg34.F) (r2576 : Seg34.relationRow2576 rho) :
    rho 33850 = seg34Q4Il80 rho * (rho 33849) := by
  unfold Seg34.relationRow2576 at r2576
  rw [seg34Q4Step79IlLc rho] at r2576
  linear_combination -r2576

theorem seg34Q4Step79Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il79 rho = seg34Q4Il80 rho + (rho 33849) - (rho 33850) := by
  have hstate : seg34Q4Il79 rho = seg34Q4Il80 rho + seg34Q4IlAtom30 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom30
  ring

theorem seg34Q4Step79Pe (rho : Nat -> Seg34.F) (r2577 : Seg34.relationRow2577 rho) :
    seg34Q4Pe79 rho = seg34Q4Pe80 rho * rho 32843 := by
  unfold Seg34.relationRow2577 at r2577
  unfold seg34Q4Pe79 seg34Q4Pe80
  linear_combination -r2577

theorem seg34Q4Step79 (rho : Nat -> Seg34.F) (r2575 : Seg34.relationRow2575 rho) (r2576 : Seg34.relationRow2576 rho) (r2577 : Seg34.relationRow2577 rho) :
    seg34Q4Pe79 rho = seg34Q4Pe80 rho * rho 32843 ∧
    seg34Q4Il79 rho = seg34Q4Il80 rho + seg34Q4Pe80 rho * (1 - rho 32843) -
      seg34Q4Il80 rho * (seg34Q4Pe80 rho * (1 - rho 32843)) := by
  constructor
  · exact seg34Q4Step79Pe rho r2577
  · rw [seg34Q4Step79Acc rho, seg34Q4Step79L rho r2575, seg34Q4Step79IlMul rho r2576, seg34Q4Step79L rho r2575]

theorem seg34_q4_chunk79 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 80 (seg34Q4PeState rho 80) (seg34Q4IlState rho 80) := by
  have htail := seg34_q4_chunk78 rho h k hk
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2575, r2576, r2577, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 79 ≤ n → n < 80 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 79 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step79 rho r2575 r2576 r2577
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 79 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
