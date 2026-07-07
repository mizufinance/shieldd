import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk54

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step55L (rho : Nat -> Seg34.F) (r2615 : Seg34.relationRow2615 rho) :
    rho 33889 = seg34Q4Pe56 rho * (1 - rho 32819) := by
  unfold Seg34.relationRow2615 at r2615
  unfold seg34Q4Pe56
  linear_combination -r2615

theorem seg34Q4Step55IlMul (rho : Nat -> Seg34.F) (r2616 : Seg34.relationRow2616 rho) :
    rho 33890 = seg34Q4Il56 rho * (rho 33889) := by
  unfold Seg34.relationRow2616 at r2616
  rw [seg34Q4Step55IlLc rho] at r2616
  linear_combination -r2616

theorem seg34Q4Step55Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il55 rho = seg34Q4Il56 rho + (rho 33889) - (rho 33890) := by
  have hstate : seg34Q4Il55 rho = seg34Q4Il56 rho + seg34Q4IlAtom39 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom39
  ring

theorem seg34Q4Step55Pe (rho : Nat -> Seg34.F) (r2617 : Seg34.relationRow2617 rho) :
    seg34Q4Pe55 rho = seg34Q4Pe56 rho * rho 32819 := by
  unfold Seg34.relationRow2617 at r2617
  unfold seg34Q4Pe55 seg34Q4Pe56
  linear_combination -r2617

theorem seg34Q4Step55 (rho : Nat -> Seg34.F) (r2615 : Seg34.relationRow2615 rho) (r2616 : Seg34.relationRow2616 rho) (r2617 : Seg34.relationRow2617 rho) :
    seg34Q4Pe55 rho = seg34Q4Pe56 rho * rho 32819 ∧
    seg34Q4Il55 rho = seg34Q4Il56 rho + seg34Q4Pe56 rho * (1 - rho 32819) -
      seg34Q4Il56 rho * (seg34Q4Pe56 rho * (1 - rho 32819)) := by
  constructor
  · exact seg34Q4Step55Pe rho r2617
  · rw [seg34Q4Step55Acc rho, seg34Q4Step55L rho r2615, seg34Q4Step55IlMul rho r2616, seg34Q4Step55L rho r2615]

theorem seg34_q4_chunk55 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 56 (seg34Q4PeState rho 56) (seg34Q4IlState rho 56) := by
  have htail := seg34_q4_chunk54 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2615, r2616, r2617, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 55 ≤ n → n < 56 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 55 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step55 rho r2615 r2616 r2617
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 55 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
