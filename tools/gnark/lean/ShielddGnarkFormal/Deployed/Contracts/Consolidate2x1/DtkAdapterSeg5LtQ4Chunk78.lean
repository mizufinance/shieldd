import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk77

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step78L (rho : Nat -> Seg5.F) (r2578 : Seg5.relationRow2578 rho) :
    rho 2275 = seg5Q4Pe79 rho * (1 - rho 1265) := by
  unfold Seg5.relationRow2578 at r2578
  unfold seg5Q4Pe79
  linear_combination -r2578

theorem seg5Q4Step78IlMul (rho : Nat -> Seg5.F) (r2579 : Seg5.relationRow2579 rho) :
    rho 2276 = seg5Q4Il79 rho * (rho 2275) := by
  unfold Seg5.relationRow2579 at r2579
  rw [seg5Q4Step78IlLc rho] at r2579
  linear_combination -r2579

theorem seg5Q4Step78Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il78 rho = seg5Q4Il79 rho + (rho 2275) - (rho 2276) := by
  have hstate : seg5Q4Il78 rho = seg5Q4Il79 rho + seg5Q4IlAtom31 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom31
  ring

theorem seg5Q4Step78Pe (rho : Nat -> Seg5.F) (r2580 : Seg5.relationRow2580 rho) :
    seg5Q4Pe78 rho = seg5Q4Pe79 rho * rho 1265 := by
  unfold Seg5.relationRow2580 at r2580
  unfold seg5Q4Pe78 seg5Q4Pe79
  linear_combination -r2580

theorem seg5Q4Step78 (rho : Nat -> Seg5.F) (r2578 : Seg5.relationRow2578 rho) (r2579 : Seg5.relationRow2579 rho) (r2580 : Seg5.relationRow2580 rho) :
    seg5Q4Pe78 rho = seg5Q4Pe79 rho * rho 1265 ∧
    seg5Q4Il78 rho = seg5Q4Il79 rho + seg5Q4Pe79 rho * (1 - rho 1265) -
      seg5Q4Il79 rho * (seg5Q4Pe79 rho * (1 - rho 1265)) := by
  constructor
  · exact seg5Q4Step78Pe rho r2580
  · rw [seg5Q4Step78Acc rho, seg5Q4Step78L rho r2578, seg5Q4Step78IlMul rho r2579, seg5Q4Step78L rho r2578]

theorem seg5_q4_chunk78 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 79 (seg5Q4PeState rho 79) (seg5Q4IlState rho 79) := by
  have htail := seg5_q4_chunk77 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2578, r2579, r2580, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 78 ≤ n → n < 79 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 78 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step78 rho r2578 r2579 r2580
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 78 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
