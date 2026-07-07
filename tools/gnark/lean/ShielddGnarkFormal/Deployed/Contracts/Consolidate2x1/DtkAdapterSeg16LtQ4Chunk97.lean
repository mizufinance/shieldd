import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk96

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step97L (rho : Nat -> Seg16.F) (r2533 : Seg16.relationRow2533 rho) :
    rho 15107 = seg16Q4Pe98 rho * (1 - rho 14161) := by
  unfold Seg16.relationRow2533 at r2533
  unfold seg16Q4Pe98
  linear_combination -r2533

theorem seg16Q4Step97IlMul (rho : Nat -> Seg16.F) (r2534 : Seg16.relationRow2534 rho) :
    rho 15108 = seg16Q4Il98 rho * (rho 15107) := by
  unfold Seg16.relationRow2534 at r2534
  rw [seg16Q4Step97IlLc rho] at r2534
  linear_combination -r2534

theorem seg16Q4Step97Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il97 rho = seg16Q4Il98 rho + (rho 15107) - (rho 15108) := by
  have hstate : seg16Q4Il97 rho = seg16Q4Il98 rho + seg16Q4IlAtom18 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom18
  ring

theorem seg16Q4Step97Pe (rho : Nat -> Seg16.F) (r2535 : Seg16.relationRow2535 rho) :
    seg16Q4Pe97 rho = seg16Q4Pe98 rho * rho 14161 := by
  unfold Seg16.relationRow2535 at r2535
  unfold seg16Q4Pe97 seg16Q4Pe98
  linear_combination -r2535

theorem seg16Q4Step97 (rho : Nat -> Seg16.F) (r2533 : Seg16.relationRow2533 rho) (r2534 : Seg16.relationRow2534 rho) (r2535 : Seg16.relationRow2535 rho) :
    seg16Q4Pe97 rho = seg16Q4Pe98 rho * rho 14161 ∧
    seg16Q4Il97 rho = seg16Q4Il98 rho + seg16Q4Pe98 rho * (1 - rho 14161) -
      seg16Q4Il98 rho * (seg16Q4Pe98 rho * (1 - rho 14161)) := by
  constructor
  · exact seg16Q4Step97Pe rho r2535
  · rw [seg16Q4Step97Acc rho, seg16Q4Step97L rho r2533, seg16Q4Step97IlMul rho r2534, seg16Q4Step97L rho r2533]

theorem seg16_q4_chunk97 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 98 (seg16Q4PeState rho 98) (seg16Q4IlState rho 98) := by
  have htail := seg16_q4_chunk96 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2533, r2534, r2535, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 97 ≤ n → n < 98 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 97 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step97 rho r2533 r2534 r2535
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 97 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
