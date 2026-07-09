import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk54

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step55L (rho : Nat -> Seg5.F) (r2615 : Seg5.relationRow2615 rho) :
    rho 2312 = seg5Q4Pe56 rho * (1 - rho 1242) := by
  unfold Seg5.relationRow2615 at r2615
  unfold seg5Q4Pe56
  linear_combination -r2615

theorem seg5Q4Step55IlMul (rho : Nat -> Seg5.F) (r2616 : Seg5.relationRow2616 rho) :
    rho 2313 = seg5Q4Il56 rho * (rho 2312) := by
  unfold Seg5.relationRow2616 at r2616
  rw [seg5Q4Step55IlLc rho] at r2616
  linear_combination -r2616

theorem seg5Q4Step55Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il55 rho = seg5Q4Il56 rho + (rho 2312) - (rho 2313) := by
  have hstate : seg5Q4Il55 rho = seg5Q4Il56 rho + seg5Q4IlAtom39 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom39
  ring

theorem seg5Q4Step55Pe (rho : Nat -> Seg5.F) (r2617 : Seg5.relationRow2617 rho) :
    seg5Q4Pe55 rho = seg5Q4Pe56 rho * rho 1242 := by
  unfold Seg5.relationRow2617 at r2617
  unfold seg5Q4Pe55 seg5Q4Pe56
  linear_combination -r2617

theorem seg5Q4Step55 (rho : Nat -> Seg5.F) (r2615 : Seg5.relationRow2615 rho) (r2616 : Seg5.relationRow2616 rho) (r2617 : Seg5.relationRow2617 rho) :
    seg5Q4Pe55 rho = seg5Q4Pe56 rho * rho 1242 ∧
    seg5Q4Il55 rho = seg5Q4Il56 rho + seg5Q4Pe56 rho * (1 - rho 1242) -
      seg5Q4Il56 rho * (seg5Q4Pe56 rho * (1 - rho 1242)) := by
  constructor
  · exact seg5Q4Step55Pe rho r2617
  · rw [seg5Q4Step55Acc rho, seg5Q4Step55L rho r2615, seg5Q4Step55IlMul rho r2616, seg5Q4Step55L rho r2615]

theorem seg5_q4_chunk55 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 56 (seg5Q4PeState rho 56) (seg5Q4IlState rho 56) := by
  have htail := seg5_q4_chunk54 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2615, r2616, r2617, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 55 ≤ n → n < 56 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 55 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step55 rho r2615 r2616 r2617
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 55 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
