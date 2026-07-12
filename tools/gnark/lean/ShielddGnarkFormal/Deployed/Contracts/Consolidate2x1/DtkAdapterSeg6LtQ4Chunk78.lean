import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk77

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step78L (rho : Nat -> Seg6.F) (r2578 : Seg6.relationRow2578 rho) :
    rho 2978 = seg6Q4Pe79 rho * (1 - rho 1968) := by
  unfold Seg6.relationRow2578 at r2578
  unfold seg6Q4Pe79
  linear_combination -r2578

theorem seg6Q4Step78IlMul (rho : Nat -> Seg6.F) (r2579 : Seg6.relationRow2579 rho) :
    rho 2979 = seg6Q4Il79 rho * (rho 2978) := by
  unfold Seg6.relationRow2579 at r2579
  rw [seg6Q4Step78IlLc rho] at r2579
  linear_combination -r2579

theorem seg6Q4Step78Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il78 rho = seg6Q4Il79 rho + (rho 2978) - (rho 2979) := by
  have hstate : seg6Q4Il78 rho = seg6Q4Il79 rho + seg6Q4IlAtom31 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom31
  ring

theorem seg6Q4Step78Pe (rho : Nat -> Seg6.F) (r2580 : Seg6.relationRow2580 rho) :
    seg6Q4Pe78 rho = seg6Q4Pe79 rho * rho 1968 := by
  unfold Seg6.relationRow2580 at r2580
  unfold seg6Q4Pe78 seg6Q4Pe79
  linear_combination -r2580

theorem seg6Q4Step78 (rho : Nat -> Seg6.F) (r2578 : Seg6.relationRow2578 rho) (r2579 : Seg6.relationRow2579 rho) (r2580 : Seg6.relationRow2580 rho) :
    seg6Q4Pe78 rho = seg6Q4Pe79 rho * rho 1968 ∧
    seg6Q4Il78 rho = seg6Q4Il79 rho + seg6Q4Pe79 rho * (1 - rho 1968) -
      seg6Q4Il79 rho * (seg6Q4Pe79 rho * (1 - rho 1968)) := by
  constructor
  · exact seg6Q4Step78Pe rho r2580
  · rw [seg6Q4Step78Acc rho, seg6Q4Step78L rho r2578, seg6Q4Step78IlMul rho r2579, seg6Q4Step78L rho r2578]

theorem seg6_q4_chunk78 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 79 (seg6Q4PeState rho 79) (seg6Q4IlState rho 79) := by
  have htail := seg6_q4_chunk77 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2578, r2579, r2580, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 78 ≤ n → n < 79 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 78 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step78 rho r2578 r2579 r2580
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 78 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
