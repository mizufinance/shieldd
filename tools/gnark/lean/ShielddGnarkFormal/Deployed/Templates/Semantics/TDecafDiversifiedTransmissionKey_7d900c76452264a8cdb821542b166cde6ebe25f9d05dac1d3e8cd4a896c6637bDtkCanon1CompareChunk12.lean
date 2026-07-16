import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1CompareChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_compare_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ j, 192 ≤ j → j < 208 → pmBit j = false → (dtkCanon1Bits rho)[j]! * (1 - (dtkCanon1Bits rho)[j]! - dtkCanon1Flag rho (j + 1)) = 0 := by
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
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r390, r391, r392, r393, r394, r395, r396, r397, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow390 at r390
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow391 at r391
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow392 at r392
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow393 at r393
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow394 at r394
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow395 at r395
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow396 at r396
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow397 at r397
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [dtkCanon1Bits_get rho 192 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 193 = rho 1216 from rfl]
    linear_combination r397
  · have hb : pmBit 193 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 194 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 195 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 196 = rho 1214 from rfl]
    linear_combination r396
  · have hb : pmBit 196 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 197 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 198 = rho 1213 from rfl]
    linear_combination r395
  · have hb : pmBit 198 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 199 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 200 = rho 1212 from rfl]
    linear_combination r394
  · have hb : pmBit 200 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 201 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 202 = rho 1211 from rfl]
    linear_combination r393
  · have hb : pmBit 202 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 203 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 204 = rho 1210 from rfl]
    linear_combination r392
  · erw [dtkCanon1Bits_get rho 204 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 205 = rho 1210 from rfl]
    linear_combination r391
  · have hb : pmBit 205 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 206 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 207 = rho 1209 from rfl]
    linear_combination r390
  · have hb : pmBit 207 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
