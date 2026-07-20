import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1CompareChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_compare_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ j, 48 ≤ j → j < 64 → pmBit j = false → (dtkCanon1Bits rho)[j]! * (1 - (dtkCanon1Bits rho)[j]! - dtkCanon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, p6, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r475, r476, r477, r478, r479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart6 at p6
  rcases p6 with ⟨r480, r481, r482, r483, r484, r485, r486, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow475 at r475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow476 at r476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow477 at r477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow478 at r478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow479 at r479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow480 at r480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow481 at r481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow482 at r482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow483 at r483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow484 at r484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow485 at r485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow486 at r486
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 48 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 49 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 50 = rho 1264 from rfl]
    linear_combination r486
  · erw [dtkCanon1Bits_get rho 50 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 51 = rho 1264 from rfl]
    linear_combination r485
  · erw [dtkCanon1Bits_get rho 51 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 52 = rho 1264 from rfl]
    linear_combination r484
  · have hb : pmBit 52 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 53 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 54 = rho 1263 from rfl]
    linear_combination r483
  · erw [dtkCanon1Bits_get rho 54 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 55 = rho 1263 from rfl]
    linear_combination r482
  · erw [dtkCanon1Bits_get rho 55 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 56 = rho 1263 from rfl]
    linear_combination r481
  · erw [dtkCanon1Bits_get rho 56 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 57 = rho 1263 from rfl]
    linear_combination r480
  · have hb : pmBit 57 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 58 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 59 = rho 1262 from rfl]
    linear_combination r479
  · have hb : pmBit 59 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 60 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 61 = rho 1261 from rfl]
    linear_combination r478
  · erw [dtkCanon1Bits_get rho 61 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 62 = rho 1261 from rfl]
    linear_combination r477
  · erw [dtkCanon1Bits_get rho 62 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 63 = rho 1261 from rfl]
    linear_combination r476
  · erw [dtkCanon1Bits_get rho 63 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 64 = rho 1261 from rfl]
    linear_combination r475

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
