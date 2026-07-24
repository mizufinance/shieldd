import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1CompareChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_compare_chunk8 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ j, 128 ≤ j → j < 144 → pmBit j = false → (dtkCanon1Bits rho)[j]! * (1 - (dtkCanon1Bits rho)[j]! - dtkCanon1Flag rho (j + 1)) = 0 := by
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
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r423, r424, r425, r426, r427, r428, r429, r430, r431, r432, r433, r434, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow423 at r423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow424 at r424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow425 at r425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow426 at r426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow427 at r427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow428 at r428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow429 at r429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow430 at r430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow431 at r431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow432 at r432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow433 at r433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow434 at r434
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 128 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 129 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 130 = rho 332 from rfl]
    linear_combination r434
  · erw [dtkCanon1Bits_get rho 130 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 131 = rho 332 from rfl]
    linear_combination r433
  · erw [dtkCanon1Bits_get rho 131 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 132 = rho 332 from rfl]
    linear_combination r432
  · erw [dtkCanon1Bits_get rho 132 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 133 = rho 332 from rfl]
    linear_combination r431
  · erw [dtkCanon1Bits_get rho 133 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 134 = rho 332 from rfl]
    linear_combination r430
  · erw [dtkCanon1Bits_get rho 134 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 135 = rho 332 from rfl]
    linear_combination r429
  · erw [dtkCanon1Bits_get rho 135 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 136 = rho 332 from rfl]
    linear_combination r428
  · erw [dtkCanon1Bits_get rho 136 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 137 = rho 332 from rfl]
    linear_combination r427
  · erw [dtkCanon1Bits_get rho 137 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 138 = rho 332 from rfl]
    linear_combination r426
  · erw [dtkCanon1Bits_get rho 138 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 139 = rho 332 from rfl]
    linear_combination r425
  · erw [dtkCanon1Bits_get rho 139 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 140 = rho 332 from rfl]
    linear_combination r424
  · have hb : pmBit 140 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 141 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 142 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 143 = rho 330 from rfl]
    linear_combination r423
  · have hb : pmBit 143 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
