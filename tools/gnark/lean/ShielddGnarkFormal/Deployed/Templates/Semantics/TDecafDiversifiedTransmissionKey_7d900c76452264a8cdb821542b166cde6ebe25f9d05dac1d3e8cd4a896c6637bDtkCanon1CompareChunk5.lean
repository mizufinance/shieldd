import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1CompareChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_compare_chunk5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ j, 80 ≤ j → j < 96 → pmBit j = false → (dtkCanon1Bits rho)[j]! * (1 - (dtkCanon1Bits rho)[j]! - dtkCanon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r447, r448, r449, r450, r451, r452, r453, r454, r455, r456, r457, r458, r459, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow447 at r447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow448 at r448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow449 at r449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow450 at r450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow451 at r451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow452 at r452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow453 at r453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow454 at r454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow455 at r455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow456 at r456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow457 at r457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow458 at r458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow459 at r459
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [dtkCanon1Bits_get rho 80 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 81 = rho 1266 from rfl]
    linear_combination r459
  · erw [dtkCanon1Bits_get rho 81 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 82 = rho 1266 from rfl]
    linear_combination r458
  · erw [dtkCanon1Bits_get rho 82 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 83 = rho 1266 from rfl]
    linear_combination r457
  · erw [dtkCanon1Bits_get rho 83 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 84 = rho 1266 from rfl]
    linear_combination r456
  · erw [dtkCanon1Bits_get rho 84 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 85 = rho 1266 from rfl]
    linear_combination r455
  · erw [dtkCanon1Bits_get rho 85 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 86 = rho 1266 from rfl]
    linear_combination r454
  · erw [dtkCanon1Bits_get rho 86 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 87 = rho 1266 from rfl]
    linear_combination r453
  · erw [dtkCanon1Bits_get rho 87 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 88 = rho 1266 from rfl]
    linear_combination r452
  · erw [dtkCanon1Bits_get rho 88 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 89 = rho 1266 from rfl]
    linear_combination r451
  · erw [dtkCanon1Bits_get rho 89 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 90 = rho 1266 from rfl]
    linear_combination r450
  · erw [dtkCanon1Bits_get rho 90 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 91 = rho 1266 from rfl]
    linear_combination r449
  · erw [dtkCanon1Bits_get rho 91 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 92 = rho 1266 from rfl]
    linear_combination r448
  · have hb : pmBit 92 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 93 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 94 = rho 1265 from rfl]
    linear_combination r447
  · have hb : pmBit 94 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 95 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
