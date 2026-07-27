import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon2CompareChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_compare_chunk7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ j, 112 ≤ j → j < 128 → pmBit j = false → (dtkCanon2Bits rho)[j]! * (1 - (dtkCanon2Bits rho)[j]! - dtkCanon2Flag rho (j + 1)) = 0 := by
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
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r945, r946, r947, r948, r949, r950, r951, r952, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow945 at r945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow946 at r946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow947 at r947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow948 at r948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow949 at r949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow950 at r950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow951 at r951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow952 at r952
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [dtkCanon2Bits_get rho 112 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 113 = rho 683 from rfl]
    linear_combination r952
  · have hb : pmBit 113 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 114 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 115 = rho 682 from rfl]
    linear_combination r951
  · have hb : pmBit 115 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 116 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 117 = rho 681 from rfl]
    linear_combination r950
  · have hb : pmBit 117 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 118 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 119 = rho 680 from rfl]
    linear_combination r949
  · have hb : pmBit 119 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 120 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 121 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 122 = rho 678 from rfl]
    linear_combination r948
  · erw [dtkCanon2Bits_get rho 122 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 123 = rho 678 from rfl]
    linear_combination r947
  · have hb : pmBit 123 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 124 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 125 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 126 = rho 676 from rfl]
    linear_combination r946
  · have hb : pmBit 126 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 127 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 128 = rho 675 from rfl]
    linear_combination r945

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
