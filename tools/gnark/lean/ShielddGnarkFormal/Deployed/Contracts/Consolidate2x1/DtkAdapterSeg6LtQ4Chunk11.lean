import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step11L (rho : Nat -> Seg6.F) (r2697 : Seg6.relationRow2697 rho) :
    rho 3097 = seg6Q4Pe12 rho * (1 - rho 1901) := by
  unfold Seg6.relationRow2697 at r2697
  unfold seg6Q4Pe12
  linear_combination -r2697

theorem seg6Q4Step11IlMul (rho : Nat -> Seg6.F) (r2698 : Seg6.relationRow2698 rho) :
    rho 3098 = seg6Q4Il12 rho * (rho 3097) := by
  unfold Seg6.relationRow2698 at r2698
  rw [seg6Q4Step11IlLc rho] at r2698
  linear_combination -r2698

theorem seg6Q4Step11Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il11 rho = seg6Q4Il12 rho + (rho 3097) - (rho 3098) := by
  have hstate : seg6Q4Il11 rho = seg6Q4Il12 rho + seg6Q4IlAtom59 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom59
  ring

theorem seg6Q4Step11Pe (rho : Nat -> Seg6.F) (r2699 : Seg6.relationRow2699 rho) :
    seg6Q4Pe11 rho = seg6Q4Pe12 rho * rho 1901 := by
  unfold Seg6.relationRow2699 at r2699
  unfold seg6Q4Pe11 seg6Q4Pe12
  linear_combination -r2699

theorem seg6Q4Step11 (rho : Nat -> Seg6.F) (r2697 : Seg6.relationRow2697 rho) (r2698 : Seg6.relationRow2698 rho) (r2699 : Seg6.relationRow2699 rho) :
    seg6Q4Pe11 rho = seg6Q4Pe12 rho * rho 1901 ∧
    seg6Q4Il11 rho = seg6Q4Il12 rho + seg6Q4Pe12 rho * (1 - rho 1901) -
      seg6Q4Il12 rho * (seg6Q4Pe12 rho * (1 - rho 1901)) := by
  constructor
  · exact seg6Q4Step11Pe rho r2699
  · rw [seg6Q4Step11Acc rho, seg6Q4Step11L rho r2697, seg6Q4Step11IlMul rho r2698, seg6Q4Step11L rho r2697]

theorem seg6_q4_chunk11 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 12 (seg6Q4PeState rho 12) (seg6Q4IlState rho 12) := by
  have htail := seg6_q4_chunk10 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2697, r2698, r2699, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 11 ≤ n → n < 12 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 11 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step11 rho r2697 r2698 r2699
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 11 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
