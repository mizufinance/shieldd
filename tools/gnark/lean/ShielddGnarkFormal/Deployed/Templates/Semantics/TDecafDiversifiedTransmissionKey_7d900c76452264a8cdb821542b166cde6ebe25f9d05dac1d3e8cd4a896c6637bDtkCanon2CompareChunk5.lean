import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon2CompareChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_compare_chunk5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ j, 80 ≤ j → j < 96 → pmBit j = false → (dtkCanon2Bits rho)[j]! * (1 - (dtkCanon2Bits rho)[j]! - dtkCanon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r957, r958, r959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart12 at p12
  rcases p12 with ⟨r960, r961, r962, r963, r964, r965, r966, r967, r968, r969, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow957 at r957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow958 at r958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow959 at r959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow960 at r960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow961 at r961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow962 at r962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow963 at r963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow964 at r964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow965 at r965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow966 at r966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow967 at r967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow968 at r968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow969 at r969
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [dtkCanon2Bits_get rho 80 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 81 = rho 1608 from rfl]
    linear_combination r969
  · erw [dtkCanon2Bits_get rho 81 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 82 = rho 1608 from rfl]
    linear_combination r968
  · erw [dtkCanon2Bits_get rho 82 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 83 = rho 1608 from rfl]
    linear_combination r967
  · erw [dtkCanon2Bits_get rho 83 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 84 = rho 1608 from rfl]
    linear_combination r966
  · erw [dtkCanon2Bits_get rho 84 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 85 = rho 1608 from rfl]
    linear_combination r965
  · erw [dtkCanon2Bits_get rho 85 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 86 = rho 1608 from rfl]
    linear_combination r964
  · erw [dtkCanon2Bits_get rho 86 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 87 = rho 1608 from rfl]
    linear_combination r963
  · erw [dtkCanon2Bits_get rho 87 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 88 = rho 1608 from rfl]
    linear_combination r962
  · erw [dtkCanon2Bits_get rho 88 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 89 = rho 1608 from rfl]
    linear_combination r961
  · erw [dtkCanon2Bits_get rho 89 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 90 = rho 1608 from rfl]
    linear_combination r960
  · erw [dtkCanon2Bits_get rho 90 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 91 = rho 1608 from rfl]
    linear_combination r959
  · erw [dtkCanon2Bits_get rho 91 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 92 = rho 1608 from rfl]
    linear_combination r958
  · have hb : pmBit 92 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 93 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 94 = rho 1607 from rfl]
    linear_combination r957
  · have hb : pmBit 94 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 95 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
