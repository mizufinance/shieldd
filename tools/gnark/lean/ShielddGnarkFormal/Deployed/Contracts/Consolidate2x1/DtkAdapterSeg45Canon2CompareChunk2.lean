import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2CompareChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_compare_chunk2 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 32 ≤ j → j < 48 → pmBit j = false → (seg45Canon2Bits rho)[j]! * (1 - (seg45Canon2Bits rho)[j]! - seg45Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r997, r998, r999, r1000, r1001, r1002, r1003, r1004, r1005, r1006, r1007, r1008, r1009, r1010, r1011, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow997 at r997
  unfold Seg45.relationRow998 at r998
  unfold Seg45.relationRow999 at r999
  unfold Seg45.relationRow1000 at r1000
  unfold Seg45.relationRow1001 at r1001
  unfold Seg45.relationRow1002 at r1002
  unfold Seg45.relationRow1003 at r1003
  unfold Seg45.relationRow1004 at r1004
  unfold Seg45.relationRow1005 at r1005
  unfold Seg45.relationRow1006 at r1006
  unfold Seg45.relationRow1007 at r1007
  unfold Seg45.relationRow1008 at r1008
  unfold Seg45.relationRow1009 at r1009
  unfold Seg45.relationRow1010 at r1010
  unfold Seg45.relationRow1011 at r1011
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg45Canon2Bits_get rho 32 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 33 = rho 39444 from rfl]
    linear_combination r1011
  · erw [seg45Canon2Bits_get rho 33 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 34 = rho 39444 from rfl]
    linear_combination r1010
  · erw [seg45Canon2Bits_get rho 34 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 35 = rho 39444 from rfl]
    linear_combination r1009
  · erw [seg45Canon2Bits_get rho 35 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 36 = rho 39444 from rfl]
    linear_combination r1008
  · erw [seg45Canon2Bits_get rho 36 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 37 = rho 39444 from rfl]
    linear_combination r1007
  · erw [seg45Canon2Bits_get rho 37 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 38 = rho 39444 from rfl]
    linear_combination r1006
  · erw [seg45Canon2Bits_get rho 38 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 39 = rho 39444 from rfl]
    linear_combination r1005
  · erw [seg45Canon2Bits_get rho 39 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 40 = rho 39444 from rfl]
    linear_combination r1004
  · erw [seg45Canon2Bits_get rho 40 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 41 = rho 39444 from rfl]
    linear_combination r1003
  · erw [seg45Canon2Bits_get rho 41 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 42 = rho 39444 from rfl]
    linear_combination r1002
  · erw [seg45Canon2Bits_get rho 42 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 43 = rho 39444 from rfl]
    linear_combination r1001
  · erw [seg45Canon2Bits_get rho 43 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 44 = rho 39444 from rfl]
    linear_combination r1000
  · erw [seg45Canon2Bits_get rho 44 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 45 = rho 39444 from rfl]
    linear_combination r999
  · erw [seg45Canon2Bits_get rho 45 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 46 = rho 39444 from rfl]
    linear_combination r998
  · erw [seg45Canon2Bits_get rho 46 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 47 = rho 39444 from rfl]
    linear_combination r997
  · have hb : pmBit 47 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
