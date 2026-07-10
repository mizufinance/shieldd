import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk64

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step65L (rho : Nat -> Seg5.F) (r2599 : Seg5.relationRow2599 rho) :
    rho 2296 = seg5Q4Pe66 rho * (1 - rho 1252) := by
  unfold Seg5.relationRow2599 at r2599
  unfold seg5Q4Pe66
  linear_combination -r2599

theorem seg5Q4Step65IlMul (rho : Nat -> Seg5.F) (r2600 : Seg5.relationRow2600 rho) :
    rho 2297 = seg5Q4Il66 rho * (rho 2296) := by
  unfold Seg5.relationRow2600 at r2600
  rw [seg5Q4Step65IlLc rho] at r2600
  linear_combination -r2600

theorem seg5Q4Step65Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il65 rho = seg5Q4Il66 rho + (rho 2296) - (rho 2297) := by
  have hstate : seg5Q4Il65 rho = seg5Q4Il66 rho + seg5Q4IlAtom36 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom36
  ring

theorem seg5Q4Step65Pe (rho : Nat -> Seg5.F) (r2601 : Seg5.relationRow2601 rho) :
    seg5Q4Pe65 rho = seg5Q4Pe66 rho * rho 1252 := by
  unfold Seg5.relationRow2601 at r2601
  unfold seg5Q4Pe65 seg5Q4Pe66
  linear_combination -r2601

theorem seg5Q4Step65 (rho : Nat -> Seg5.F) (r2599 : Seg5.relationRow2599 rho) (r2600 : Seg5.relationRow2600 rho) (r2601 : Seg5.relationRow2601 rho) :
    seg5Q4Pe65 rho = seg5Q4Pe66 rho * rho 1252 ∧
    seg5Q4Il65 rho = seg5Q4Il66 rho + seg5Q4Pe66 rho * (1 - rho 1252) -
      seg5Q4Il66 rho * (seg5Q4Pe66 rho * (1 - rho 1252)) := by
  constructor
  · exact seg5Q4Step65Pe rho r2601
  · rw [seg5Q4Step65Acc rho, seg5Q4Step65L rho r2599, seg5Q4Step65IlMul rho r2600, seg5Q4Step65L rho r2599]

theorem seg5_q4_chunk65 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 66 (seg5Q4PeState rho 66) (seg5Q4IlState rho 66) := by
  have htail := seg5_q4_chunk64 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2599, r2600, r2601, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 65 ≤ n → n < 66 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 65 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step65 rho r2599 r2600 r2601
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 65 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
