import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2CompareChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_compare_chunk4 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 64 ≤ j → j < 80 → pmBit j = false → (seg45Canon2Bits rho)[j]! * (1 - (seg45Canon2Bits rho)[j]! - seg45Canon2Flag rho (j + 1)) = 0 := by
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
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, r970, r971, r972, r973, r974, r975, r976, r977, r978, r979, r980, r981, r982, r983, r984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow970 at r970
  unfold Seg45.relationRow971 at r971
  unfold Seg45.relationRow972 at r972
  unfold Seg45.relationRow973 at r973
  unfold Seg45.relationRow974 at r974
  unfold Seg45.relationRow975 at r975
  unfold Seg45.relationRow976 at r976
  unfold Seg45.relationRow977 at r977
  unfold Seg45.relationRow978 at r978
  unfold Seg45.relationRow979 at r979
  unfold Seg45.relationRow980 at r980
  unfold Seg45.relationRow981 at r981
  unfold Seg45.relationRow982 at r982
  unfold Seg45.relationRow983 at r983
  unfold Seg45.relationRow984 at r984
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 64 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 65 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 66 = rho 39438 from rfl]
    linear_combination r984
  · erw [seg45Canon2Bits_get rho 66 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 67 = rho 39438 from rfl]
    linear_combination r983
  · erw [seg45Canon2Bits_get rho 67 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 68 = rho 39438 from rfl]
    linear_combination r982
  · erw [seg45Canon2Bits_get rho 68 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 69 = rho 39438 from rfl]
    linear_combination r981
  · erw [seg45Canon2Bits_get rho 69 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 70 = rho 39438 from rfl]
    linear_combination r980
  · erw [seg45Canon2Bits_get rho 70 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 71 = rho 39438 from rfl]
    linear_combination r979
  · erw [seg45Canon2Bits_get rho 71 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 72 = rho 39438 from rfl]
    linear_combination r978
  · erw [seg45Canon2Bits_get rho 72 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 73 = rho 39438 from rfl]
    linear_combination r977
  · erw [seg45Canon2Bits_get rho 73 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 74 = rho 39438 from rfl]
    linear_combination r976
  · erw [seg45Canon2Bits_get rho 74 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 75 = rho 39438 from rfl]
    linear_combination r975
  · erw [seg45Canon2Bits_get rho 75 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 76 = rho 39438 from rfl]
    linear_combination r974
  · erw [seg45Canon2Bits_get rho 76 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 77 = rho 39438 from rfl]
    linear_combination r973
  · erw [seg45Canon2Bits_get rho 77 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 78 = rho 39438 from rfl]
    linear_combination r972
  · erw [seg45Canon2Bits_get rho 78 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 79 = rho 39438 from rfl]
    linear_combination r971
  · erw [seg45Canon2Bits_get rho 79 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 80 = rho 39438 from rfl]
    linear_combination r970

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
