import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1CompareChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_compare_chunk4 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ j, 64 ≤ j → j < 80 → pmBit j = false → (dtkCanon1Bits rho)[j]! * (1 - (dtkCanon1Bits rho)[j]! - dtkCanon1Flag rho (j + 1)) = 0 := by
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
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r460, r461, r462, r463, r464, r465, r466, r467, r468, r469, r470, r471, r472, r473, r474, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow460 at r460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow461 at r461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow462 at r462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow463 at r463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow464 at r464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow465 at r465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow466 at r466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow467 at r467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow468 at r468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow469 at r469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow470 at r470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow471 at r471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow472 at r472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow473 at r473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow474 at r474
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 64 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 65 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 66 = rho 356 from rfl]
    linear_combination r474
  · erw [dtkCanon1Bits_get rho 66 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 67 = rho 356 from rfl]
    linear_combination r473
  · erw [dtkCanon1Bits_get rho 67 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 68 = rho 356 from rfl]
    linear_combination r472
  · erw [dtkCanon1Bits_get rho 68 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 69 = rho 356 from rfl]
    linear_combination r471
  · erw [dtkCanon1Bits_get rho 69 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 70 = rho 356 from rfl]
    linear_combination r470
  · erw [dtkCanon1Bits_get rho 70 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 71 = rho 356 from rfl]
    linear_combination r469
  · erw [dtkCanon1Bits_get rho 71 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 72 = rho 356 from rfl]
    linear_combination r468
  · erw [dtkCanon1Bits_get rho 72 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 73 = rho 356 from rfl]
    linear_combination r467
  · erw [dtkCanon1Bits_get rho 73 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 74 = rho 356 from rfl]
    linear_combination r466
  · erw [dtkCanon1Bits_get rho 74 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 75 = rho 356 from rfl]
    linear_combination r465
  · erw [dtkCanon1Bits_get rho 75 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 76 = rho 356 from rfl]
    linear_combination r464
  · erw [dtkCanon1Bits_get rho 76 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 77 = rho 356 from rfl]
    linear_combination r463
  · erw [dtkCanon1Bits_get rho 77 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 78 = rho 356 from rfl]
    linear_combination r462
  · erw [dtkCanon1Bits_get rho 78 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 79 = rho 356 from rfl]
    linear_combination r461
  · erw [dtkCanon1Bits_get rho 79 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 80 = rho 356 from rfl]
    linear_combination r460

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
