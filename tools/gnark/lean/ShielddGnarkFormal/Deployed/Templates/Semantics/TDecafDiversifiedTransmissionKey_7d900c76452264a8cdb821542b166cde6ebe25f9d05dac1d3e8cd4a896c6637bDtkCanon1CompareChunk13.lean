import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1CompareChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_compare_chunk13 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ j, 208 ≤ j → j < 224 → pmBit j = false → (dtkCanon1Bits rho)[j]! * (1 - (dtkCanon1Bits rho)[j]! - dtkCanon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r381, r382, r383, r384, r385, r386, r387, r388, r389, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow381 at r381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow382 at r382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow383 at r383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow384 at r384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow385 at r385
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow386 at r386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow387 at r387
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow388 at r388
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow389 at r389
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [dtkCanon1Bits_get rho 208 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 209 = rho 1202 from rfl]
    linear_combination r389
  · erw [dtkCanon1Bits_get rho 209 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 210 = rho 1202 from rfl]
    linear_combination r388
  · have hb : pmBit 210 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 211 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 212 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 213 = rho 1200 from rfl]
    linear_combination r387
  · have hb : pmBit 213 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 214 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 215 = rho 1199 from rfl]
    linear_combination r386
  · erw [dtkCanon1Bits_get rho 215 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 216 = rho 1199 from rfl]
    linear_combination r385
  · erw [dtkCanon1Bits_get rho 216 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 217 = rho 1199 from rfl]
    linear_combination r384
  · have hb : pmBit 217 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 218 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 219 = rho 1198 from rfl]
    linear_combination r383
  · have hb : pmBit 219 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 220 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 221 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 222 = rho 1196 from rfl]
    linear_combination r382
  · erw [dtkCanon1Bits_get rho 222 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 223 = rho 1196 from rfl]
    linear_combination r381
  · have hb : pmBit 223 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
