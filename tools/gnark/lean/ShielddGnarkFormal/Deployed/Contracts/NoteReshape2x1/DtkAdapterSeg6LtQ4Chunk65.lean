import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk64

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step65L (rho : Nat -> Seg6.F) (r2599 : Seg6.relationRow2599 rho) :
    rho 2993 = seg6Q4Pe66 rho * (1 - rho 1949) := by
  unfold Seg6.relationRow2599 at r2599
  unfold seg6Q4Pe66
  linear_combination -r2599

theorem seg6Q4Step65IlMul (rho : Nat -> Seg6.F) (r2600 : Seg6.relationRow2600 rho) :
    rho 2994 = seg6Q4Il66 rho * (rho 2993) := by
  unfold Seg6.relationRow2600 at r2600
  rw [seg6Q4Step65IlLc rho] at r2600
  linear_combination -r2600

theorem seg6Q4Step65Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il65 rho = seg6Q4Il66 rho + (rho 2993) - (rho 2994) := by
  have hstate : seg6Q4Il65 rho = seg6Q4Il66 rho + seg6Q4IlAtom36 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom36
  ring

theorem seg6Q4Step65Pe (rho : Nat -> Seg6.F) (r2601 : Seg6.relationRow2601 rho) :
    seg6Q4Pe65 rho = seg6Q4Pe66 rho * rho 1949 := by
  unfold Seg6.relationRow2601 at r2601
  unfold seg6Q4Pe65 seg6Q4Pe66
  linear_combination -r2601

theorem seg6Q4Step65 (rho : Nat -> Seg6.F) (r2599 : Seg6.relationRow2599 rho) (r2600 : Seg6.relationRow2600 rho) (r2601 : Seg6.relationRow2601 rho) :
    seg6Q4Pe65 rho = seg6Q4Pe66 rho * rho 1949 ∧
    seg6Q4Il65 rho = seg6Q4Il66 rho + seg6Q4Pe66 rho * (1 - rho 1949) -
      seg6Q4Il66 rho * (seg6Q4Pe66 rho * (1 - rho 1949)) := by
  constructor
  · exact seg6Q4Step65Pe rho r2601
  · rw [seg6Q4Step65Acc rho, seg6Q4Step65L rho r2599, seg6Q4Step65IlMul rho r2600, seg6Q4Step65L rho r2599]

theorem seg6_q4_chunk65 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 66 (seg6Q4PeState rho 66) (seg6Q4IlState rho 66) := by
  have htail := seg6_q4_chunk64 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2599, r2600, r2601, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 65 ≤ n → n < 66 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 65 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step65 rho r2599 r2600 r2601
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 65 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
