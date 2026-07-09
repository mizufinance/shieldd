import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon2CompareChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon2_compare_chunk4 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ j, 64 ≤ j → j < 80 → pmBit j = false → (seg5Canon2Bits rho)[j]! * (1 - (seg5Canon2Bits rho)[j]! - seg5Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, r970, r971, r972, r973, r974, r975, r976, r977, r978, r979, r980, r981, r982, r983, r984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow970 at r970
  unfold Seg5.relationRow971 at r971
  unfold Seg5.relationRow972 at r972
  unfold Seg5.relationRow973 at r973
  unfold Seg5.relationRow974 at r974
  unfold Seg5.relationRow975 at r975
  unfold Seg5.relationRow976 at r976
  unfold Seg5.relationRow977 at r977
  unfold Seg5.relationRow978 at r978
  unfold Seg5.relationRow979 at r979
  unfold Seg5.relationRow980 at r980
  unfold Seg5.relationRow981 at r981
  unfold Seg5.relationRow982 at r982
  unfold Seg5.relationRow983 at r983
  unfold Seg5.relationRow984 at r984
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 64 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 65 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 66 = rho 905 from rfl]
    linear_combination r984
  · erw [seg5Canon2Bits_get rho 66 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 67 = rho 905 from rfl]
    linear_combination r983
  · erw [seg5Canon2Bits_get rho 67 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 68 = rho 905 from rfl]
    linear_combination r982
  · erw [seg5Canon2Bits_get rho 68 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 69 = rho 905 from rfl]
    linear_combination r981
  · erw [seg5Canon2Bits_get rho 69 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 70 = rho 905 from rfl]
    linear_combination r980
  · erw [seg5Canon2Bits_get rho 70 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 71 = rho 905 from rfl]
    linear_combination r979
  · erw [seg5Canon2Bits_get rho 71 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 72 = rho 905 from rfl]
    linear_combination r978
  · erw [seg5Canon2Bits_get rho 72 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 73 = rho 905 from rfl]
    linear_combination r977
  · erw [seg5Canon2Bits_get rho 73 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 74 = rho 905 from rfl]
    linear_combination r976
  · erw [seg5Canon2Bits_get rho 74 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 75 = rho 905 from rfl]
    linear_combination r975
  · erw [seg5Canon2Bits_get rho 75 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 76 = rho 905 from rfl]
    linear_combination r974
  · erw [seg5Canon2Bits_get rho 76 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 77 = rho 905 from rfl]
    linear_combination r973
  · erw [seg5Canon2Bits_get rho 77 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 78 = rho 905 from rfl]
    linear_combination r972
  · erw [seg5Canon2Bits_get rho 78 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 79 = rho 905 from rfl]
    linear_combination r971
  · erw [seg5Canon2Bits_get rho 79 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 80 = rho 905 from rfl]
    linear_combination r970

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
