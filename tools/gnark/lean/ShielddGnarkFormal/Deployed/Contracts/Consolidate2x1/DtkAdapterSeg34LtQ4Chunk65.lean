import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk64

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step65L (rho : Nat -> Seg34.F) (r2599 : Seg34.relationRow2599 rho) :
    rho 33873 = seg34Q4Pe66 rho * (1 - rho 32829) := by
  unfold Seg34.relationRow2599 at r2599
  unfold seg34Q4Pe66
  linear_combination -r2599

theorem seg34Q4Step65IlMul (rho : Nat -> Seg34.F) (r2600 : Seg34.relationRow2600 rho) :
    rho 33874 = seg34Q4Il66 rho * (rho 33873) := by
  unfold Seg34.relationRow2600 at r2600
  rw [seg34Q4Step65IlLc rho] at r2600
  linear_combination -r2600

theorem seg34Q4Step65Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il65 rho = seg34Q4Il66 rho + (rho 33873) - (rho 33874) := by
  have hstate : seg34Q4Il65 rho = seg34Q4Il66 rho + seg34Q4IlAtom36 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom36
  ring

theorem seg34Q4Step65Pe (rho : Nat -> Seg34.F) (r2601 : Seg34.relationRow2601 rho) :
    seg34Q4Pe65 rho = seg34Q4Pe66 rho * rho 32829 := by
  unfold Seg34.relationRow2601 at r2601
  unfold seg34Q4Pe65 seg34Q4Pe66
  linear_combination -r2601

theorem seg34Q4Step65 (rho : Nat -> Seg34.F) (r2599 : Seg34.relationRow2599 rho) (r2600 : Seg34.relationRow2600 rho) (r2601 : Seg34.relationRow2601 rho) :
    seg34Q4Pe65 rho = seg34Q4Pe66 rho * rho 32829 ∧
    seg34Q4Il65 rho = seg34Q4Il66 rho + seg34Q4Pe66 rho * (1 - rho 32829) -
      seg34Q4Il66 rho * (seg34Q4Pe66 rho * (1 - rho 32829)) := by
  constructor
  · exact seg34Q4Step65Pe rho r2601
  · rw [seg34Q4Step65Acc rho, seg34Q4Step65L rho r2599, seg34Q4Step65IlMul rho r2600, seg34Q4Step65L rho r2599]

theorem seg34_q4_chunk65 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 66 (seg34Q4PeState rho 66) (seg34Q4IlState rho 66) := by
  have htail := seg34_q4_chunk64 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2599, r2600, r2601, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 65 ≤ n → n < 66 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 65 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step65 rho r2599 r2600 r2601
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 65 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
