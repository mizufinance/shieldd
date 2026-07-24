import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon2TrueChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_flag_step_chunk6 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, 96 ≤ m → m < 112 → dtkCanon2Flag rho m = trueFactor (dtkCanon2Bits rho) m * dtkCanon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r857, r858, r859, r860, r861, r862, r863, r864, r865, r866, r867, r868, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow857 at r857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow858 at r858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow859 at r859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow860 at r860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow861 at r861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow862 at r862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow863 at r863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow864 at r864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow865 at r865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow866 at r866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow867 at r867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow868 at r868
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon2Flag rho 96 = rho 695 from rfl, show dtkCanon2Flag rho 97 = rho 695 from rfl]
    have hb : pmBit 96 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 96 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 97 = rho 695 from rfl, show dtkCanon2Flag rho 98 = rho 694 from rfl]
    have hb : pmBit 97 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 97 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r868
  · rw [show dtkCanon2Flag rho 98 = rho 694 from rfl, show dtkCanon2Flag rho 99 = rho 693 from rfl]
    have hb : pmBit 98 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 98 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r867
  · rw [show dtkCanon2Flag rho 99 = rho 693 from rfl, show dtkCanon2Flag rho 100 = rho 692 from rfl]
    have hb : pmBit 99 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 99 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r866
  · rw [show dtkCanon2Flag rho 100 = rho 692 from rfl, show dtkCanon2Flag rho 101 = rho 691 from rfl]
    have hb : pmBit 100 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 100 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r865
  · rw [show dtkCanon2Flag rho 101 = rho 691 from rfl, show dtkCanon2Flag rho 102 = rho 690 from rfl]
    have hb : pmBit 101 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 101 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r864
  · rw [show dtkCanon2Flag rho 102 = rho 690 from rfl, show dtkCanon2Flag rho 103 = rho 689 from rfl]
    have hb : pmBit 102 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 102 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r863
  · rw [show dtkCanon2Flag rho 103 = rho 689 from rfl, show dtkCanon2Flag rho 104 = rho 688 from rfl]
    have hb : pmBit 103 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 103 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r862
  · rw [show dtkCanon2Flag rho 104 = rho 688 from rfl, show dtkCanon2Flag rho 105 = rho 688 from rfl]
    have hb : pmBit 104 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 104 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 105 = rho 688 from rfl, show dtkCanon2Flag rho 106 = rho 687 from rfl]
    have hb : pmBit 105 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 105 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r861
  · rw [show dtkCanon2Flag rho 106 = rho 687 from rfl, show dtkCanon2Flag rho 107 = rho 686 from rfl]
    have hb : pmBit 106 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 106 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r860
  · rw [show dtkCanon2Flag rho 107 = rho 686 from rfl, show dtkCanon2Flag rho 108 = rho 686 from rfl]
    have hb : pmBit 107 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 107 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 108 = rho 686 from rfl, show dtkCanon2Flag rho 109 = rho 685 from rfl]
    have hb : pmBit 108 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 108 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r859
  · rw [show dtkCanon2Flag rho 109 = rho 685 from rfl, show dtkCanon2Flag rho 110 = rho 684 from rfl]
    have hb : pmBit 109 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 109 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r858
  · rw [show dtkCanon2Flag rho 110 = rho 684 from rfl, show dtkCanon2Flag rho 111 = rho 683 from rfl]
    have hb : pmBit 110 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 110 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r857
  · rw [show dtkCanon2Flag rho 111 = rho 683 from rfl, show dtkCanon2Flag rho 112 = rho 683 from rfl]
    have hb : pmBit 111 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 111 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
