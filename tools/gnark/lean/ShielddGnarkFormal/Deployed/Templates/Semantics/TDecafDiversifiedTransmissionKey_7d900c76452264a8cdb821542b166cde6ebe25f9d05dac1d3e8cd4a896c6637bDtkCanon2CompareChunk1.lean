import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon2CompareChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_compare_chunk1 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ j, 16 ≤ j → j < 32 → pmBit j = false → (dtkCanon2Bits rho)[j]! * (1 - (dtkCanon2Bits rho)[j]! - dtkCanon2Flag rho (j + 1)) = 0 := by
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
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1012, r1013, r1014, r1015, r1016, r1017, r1018, r1019, r1020, r1021, r1022, r1023, r1024, r1025, r1026, r1027, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1012 at r1012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1013 at r1013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1014 at r1014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1015 at r1015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1016 at r1016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1017 at r1017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1018 at r1018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1019 at r1019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1020 at r1020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1021 at r1021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1022 at r1022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1023 at r1023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1024 at r1024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1025 at r1025
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1026 at r1026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow1027 at r1027
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [dtkCanon2Bits_get rho 16 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 17 = rho 704 from rfl]
    linear_combination r1027
  · erw [dtkCanon2Bits_get rho 17 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 18 = rho 704 from rfl]
    linear_combination r1026
  · erw [dtkCanon2Bits_get rho 18 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 19 = rho 704 from rfl]
    linear_combination r1025
  · erw [dtkCanon2Bits_get rho 19 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 20 = rho 704 from rfl]
    linear_combination r1024
  · erw [dtkCanon2Bits_get rho 20 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 21 = rho 704 from rfl]
    linear_combination r1023
  · erw [dtkCanon2Bits_get rho 21 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 22 = rho 704 from rfl]
    linear_combination r1022
  · erw [dtkCanon2Bits_get rho 22 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 23 = rho 704 from rfl]
    linear_combination r1021
  · erw [dtkCanon2Bits_get rho 23 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 24 = rho 704 from rfl]
    linear_combination r1020
  · erw [dtkCanon2Bits_get rho 24 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 25 = rho 704 from rfl]
    linear_combination r1019
  · erw [dtkCanon2Bits_get rho 25 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 26 = rho 704 from rfl]
    linear_combination r1018
  · erw [dtkCanon2Bits_get rho 26 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 27 = rho 704 from rfl]
    linear_combination r1017
  · erw [dtkCanon2Bits_get rho 27 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 28 = rho 704 from rfl]
    linear_combination r1016
  · erw [dtkCanon2Bits_get rho 28 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 29 = rho 704 from rfl]
    linear_combination r1015
  · erw [dtkCanon2Bits_get rho 29 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 30 = rho 704 from rfl]
    linear_combination r1014
  · erw [dtkCanon2Bits_get rho 30 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 31 = rho 704 from rfl]
    linear_combination r1013
  · erw [dtkCanon2Bits_get rho 31 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 32 = rho 704 from rfl]
    linear_combination r1012

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
