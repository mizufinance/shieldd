import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon2CompareChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_compare_chunk6 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ j, 96 ≤ j → j < 112 → pmBit j = false → (dtkCanon2Bits rho)[j]! * (1 - (dtkCanon2Bits rho)[j]! - dtkCanon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r953, r954, r955, r956, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow953 at r953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow954 at r954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow955 at r955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow956 at r956
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [dtkCanon2Bits_get rho 96 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 97 = rho 695 from rfl]
    linear_combination r956
  · have hb : pmBit 97 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 98 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 99 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 100 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 101 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 102 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 103 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 104 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 105 = rho 688 from rfl]
    linear_combination r955
  · have hb : pmBit 105 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 106 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 107 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 108 = rho 686 from rfl]
    linear_combination r954
  · have hb : pmBit 108 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 109 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 110 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 111 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 112 = rho 683 from rfl]
    linear_combination r953

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
