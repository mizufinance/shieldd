import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1CompareChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_compare_chunk2 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ j, 32 ≤ j → j < 48 → pmBit j = false → (dtkCanon1Bits rho)[j]! * (1 - (dtkCanon1Bits rho)[j]! - dtkCanon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, p6, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, r487, r488, r489, r490, r491, r492, r493, r494, r495, r496, r497, r498, r499, r500, r501, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow487 at r487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow488 at r488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow489 at r489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow490 at r490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow491 at r491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow492 at r492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow493 at r493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow494 at r494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow495 at r495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow496 at r496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow497 at r497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow498 at r498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow499 at r499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow500 at r500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow501 at r501
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [dtkCanon1Bits_get rho 32 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 33 = rho 1272 from rfl]
    linear_combination r501
  · erw [dtkCanon1Bits_get rho 33 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 34 = rho 1272 from rfl]
    linear_combination r500
  · erw [dtkCanon1Bits_get rho 34 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 35 = rho 1272 from rfl]
    linear_combination r499
  · erw [dtkCanon1Bits_get rho 35 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 36 = rho 1272 from rfl]
    linear_combination r498
  · erw [dtkCanon1Bits_get rho 36 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 37 = rho 1272 from rfl]
    linear_combination r497
  · erw [dtkCanon1Bits_get rho 37 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 38 = rho 1272 from rfl]
    linear_combination r496
  · erw [dtkCanon1Bits_get rho 38 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 39 = rho 1272 from rfl]
    linear_combination r495
  · erw [dtkCanon1Bits_get rho 39 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 40 = rho 1272 from rfl]
    linear_combination r494
  · erw [dtkCanon1Bits_get rho 40 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 41 = rho 1272 from rfl]
    linear_combination r493
  · erw [dtkCanon1Bits_get rho 41 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 42 = rho 1272 from rfl]
    linear_combination r492
  · erw [dtkCanon1Bits_get rho 42 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 43 = rho 1272 from rfl]
    linear_combination r491
  · erw [dtkCanon1Bits_get rho 43 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 44 = rho 1272 from rfl]
    linear_combination r490
  · erw [dtkCanon1Bits_get rho 44 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 45 = rho 1272 from rfl]
    linear_combination r489
  · erw [dtkCanon1Bits_get rho 45 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 46 = rho 1272 from rfl]
    linear_combination r488
  · erw [dtkCanon1Bits_get rho 46 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 47 = rho 1272 from rfl]
    linear_combination r487
  · have hb : pmBit 47 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
