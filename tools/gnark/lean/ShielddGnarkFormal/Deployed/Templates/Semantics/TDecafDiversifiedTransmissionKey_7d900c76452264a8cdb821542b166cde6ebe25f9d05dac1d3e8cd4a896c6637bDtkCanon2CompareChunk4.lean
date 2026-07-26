import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon2CompareChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_compare_chunk4 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ j, 64 ≤ j → j < 80 → pmBit j = false → (dtkCanon2Bits rho)[j]! * (1 - (dtkCanon2Bits rho)[j]! - dtkCanon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, r970, r971, r972, r973, r974, r975, r976, r977, r978, r979, r980, r981, r982, r983, r984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow970 at r970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow971 at r971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow972 at r972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow973 at r973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow974 at r974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow975 at r975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow976 at r976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow977 at r977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow978 at r978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow979 at r979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow980 at r980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow981 at r981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow982 at r982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow983 at r983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow984 at r984
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 64 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 65 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 66 = rho 698 from rfl]
    linear_combination r984
  · erw [dtkCanon2Bits_get rho 66 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 67 = rho 698 from rfl]
    linear_combination r983
  · erw [dtkCanon2Bits_get rho 67 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 68 = rho 698 from rfl]
    linear_combination r982
  · erw [dtkCanon2Bits_get rho 68 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 69 = rho 698 from rfl]
    linear_combination r981
  · erw [dtkCanon2Bits_get rho 69 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 70 = rho 698 from rfl]
    linear_combination r980
  · erw [dtkCanon2Bits_get rho 70 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 71 = rho 698 from rfl]
    linear_combination r979
  · erw [dtkCanon2Bits_get rho 71 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 72 = rho 698 from rfl]
    linear_combination r978
  · erw [dtkCanon2Bits_get rho 72 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 73 = rho 698 from rfl]
    linear_combination r977
  · erw [dtkCanon2Bits_get rho 73 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 74 = rho 698 from rfl]
    linear_combination r976
  · erw [dtkCanon2Bits_get rho 74 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 75 = rho 698 from rfl]
    linear_combination r975
  · erw [dtkCanon2Bits_get rho 75 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 76 = rho 698 from rfl]
    linear_combination r974
  · erw [dtkCanon2Bits_get rho 76 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 77 = rho 698 from rfl]
    linear_combination r973
  · erw [dtkCanon2Bits_get rho 77 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 78 = rho 698 from rfl]
    linear_combination r972
  · erw [dtkCanon2Bits_get rho 78 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 79 = rho 698 from rfl]
    linear_combination r971
  · erw [dtkCanon2Bits_get rho 79 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 80 = rho 698 from rfl]
    linear_combination r970

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
