import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon2CompareChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_compare_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ j, 192 ≤ j → j < 208 → pmBit j = false → (dtkCanon2Bits rho)[j]! * (1 - (dtkCanon2Bits rho)[j]! - dtkCanon2Flag rho (j + 1)) = 0 := by
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
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r900, r901, r902, r903, r904, r905, r906, r907, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow900 at r900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow901 at r901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow902 at r902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow903 at r903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow904 at r904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow905 at r905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow906 at r906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow907 at r907
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [dtkCanon2Bits_get rho 192 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 193 = rho 1552 from rfl]
    linear_combination r907
  · have hb : pmBit 193 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 194 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 195 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 196 = rho 1550 from rfl]
    linear_combination r906
  · have hb : pmBit 196 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 197 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 198 = rho 1549 from rfl]
    linear_combination r905
  · have hb : pmBit 198 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 199 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 200 = rho 1548 from rfl]
    linear_combination r904
  · have hb : pmBit 200 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 201 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 202 = rho 1547 from rfl]
    linear_combination r903
  · have hb : pmBit 202 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 203 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 204 = rho 1546 from rfl]
    linear_combination r902
  · erw [dtkCanon2Bits_get rho 204 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 205 = rho 1546 from rfl]
    linear_combination r901
  · have hb : pmBit 205 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 206 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 207 = rho 1545 from rfl]
    linear_combination r900
  · have hb : pmBit 207 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
