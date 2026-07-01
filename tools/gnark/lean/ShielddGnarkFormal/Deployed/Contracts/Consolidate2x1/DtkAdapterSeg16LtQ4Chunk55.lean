import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk54

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step55L (rho : Nat -> Seg16.F) (r2615 : Seg16.relationRow2615 rho) :
    rho 15189 = seg16Q4Pe56 rho * (1 - rho 14119) := by
  unfold Seg16.relationRow2615 at r2615
  unfold seg16Q4Pe56
  linear_combination -r2615

theorem seg16Q4Step55IlMul (rho : Nat -> Seg16.F) (r2616 : Seg16.relationRow2616 rho) :
    rho 15190 = seg16Q4Il56 rho * (rho 15189) := by
  unfold Seg16.relationRow2616 at r2616
  rw [seg16Q4Step55IlLc rho] at r2616
  linear_combination -r2616

theorem seg16Q4Step55Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il55 rho = seg16Q4Il56 rho + (rho 15189) - (rho 15190) := by
  have hstate : seg16Q4Il55 rho = seg16Q4Il56 rho + seg16Q4IlAtom39 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom39
  ring

theorem seg16Q4Step55Pe (rho : Nat -> Seg16.F) (r2617 : Seg16.relationRow2617 rho) :
    seg16Q4Pe55 rho = seg16Q4Pe56 rho * rho 14119 := by
  unfold Seg16.relationRow2617 at r2617
  unfold seg16Q4Pe55 seg16Q4Pe56
  linear_combination -r2617

theorem seg16Q4Step55 (rho : Nat -> Seg16.F) (r2615 : Seg16.relationRow2615 rho) (r2616 : Seg16.relationRow2616 rho) (r2617 : Seg16.relationRow2617 rho) :
    seg16Q4Pe55 rho = seg16Q4Pe56 rho * rho 14119 ∧
    seg16Q4Il55 rho = seg16Q4Il56 rho + seg16Q4Pe56 rho * (1 - rho 14119) -
      seg16Q4Il56 rho * (seg16Q4Pe56 rho * (1 - rho 14119)) := by
  constructor
  · exact seg16Q4Step55Pe rho r2617
  · rw [seg16Q4Step55Acc rho, seg16Q4Step55L rho r2615, seg16Q4Step55IlMul rho r2616, seg16Q4Step55L rho r2615]

theorem seg16_q4_chunk55 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 56 (seg16Q4PeState rho 56) (seg16Q4IlState rho 56) := by
  have htail := seg16_q4_chunk54 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2615, r2616, r2617, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 55 ≤ n → n < 56 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 55 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step55 rho r2615 r2616 r2617
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 55 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
