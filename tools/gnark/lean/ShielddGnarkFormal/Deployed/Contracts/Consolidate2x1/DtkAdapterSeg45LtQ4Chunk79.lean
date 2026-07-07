import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk78

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step79L (rho : Nat -> Seg45.F) (r2575 : Seg45.relationRow2575 rho) :
    rho 40805 = seg45Q4Pe80 rho * (1 - rho 39799) := by
  unfold Seg45.relationRow2575 at r2575
  unfold seg45Q4Pe80
  linear_combination -r2575

theorem seg45Q4Step79IlMul (rho : Nat -> Seg45.F) (r2576 : Seg45.relationRow2576 rho) :
    rho 40806 = seg45Q4Il80 rho * (rho 40805) := by
  unfold Seg45.relationRow2576 at r2576
  rw [seg45Q4Step79IlLc rho] at r2576
  linear_combination -r2576

theorem seg45Q4Step79Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il79 rho = seg45Q4Il80 rho + (rho 40805) - (rho 40806) := by
  have hstate : seg45Q4Il79 rho = seg45Q4Il80 rho + seg45Q4IlAtom30 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom30
  ring

theorem seg45Q4Step79Pe (rho : Nat -> Seg45.F) (r2577 : Seg45.relationRow2577 rho) :
    seg45Q4Pe79 rho = seg45Q4Pe80 rho * rho 39799 := by
  unfold Seg45.relationRow2577 at r2577
  unfold seg45Q4Pe79 seg45Q4Pe80
  linear_combination -r2577

theorem seg45Q4Step79 (rho : Nat -> Seg45.F) (r2575 : Seg45.relationRow2575 rho) (r2576 : Seg45.relationRow2576 rho) (r2577 : Seg45.relationRow2577 rho) :
    seg45Q4Pe79 rho = seg45Q4Pe80 rho * rho 39799 ∧
    seg45Q4Il79 rho = seg45Q4Il80 rho + seg45Q4Pe80 rho * (1 - rho 39799) -
      seg45Q4Il80 rho * (seg45Q4Pe80 rho * (1 - rho 39799)) := by
  constructor
  · exact seg45Q4Step79Pe rho r2577
  · rw [seg45Q4Step79Acc rho, seg45Q4Step79L rho r2575, seg45Q4Step79IlMul rho r2576, seg45Q4Step79L rho r2575]

theorem seg45_q4_chunk79 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 80 (seg45Q4PeState rho 80) (seg45Q4IlState rho 80) := by
  have htail := seg45_q4_chunk78 rho h k hk
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2575, r2576, r2577, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 79 ≤ n → n < 80 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 79 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step79 rho r2575 r2576 r2577
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 79 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
