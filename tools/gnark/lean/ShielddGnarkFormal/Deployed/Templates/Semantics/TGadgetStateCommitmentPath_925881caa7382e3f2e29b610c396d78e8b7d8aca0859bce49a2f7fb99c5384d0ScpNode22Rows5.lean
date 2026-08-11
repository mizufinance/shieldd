import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node22_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8551 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8551 rho)
    (r8552 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8552 rho)
    (r8553 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8553 rho)
    (r8554 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8554 rho)
    (r8555 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8555 rho)
    (tail : next (rho 8360) (rho 8365) (rho 8370) (rho 8375) (rho 8380) (rho 8385) (rho 8390) (rho 8395) (rho 8400) (rho 8405) (rho 8410) (rho 8415) (rho 8420) (rho 8425) (rho 8430) (rho 8435) (rho 8440) (rho 8445) (rho 8450) (rho 8455) (rho 8460) (rho 8465) (rho 8470) (rho 8475) (rho 8480) (rho 8485) (rho 8490) (rho 8495) (rho 8500) (rho 8505) (rho 8510) (rho 8515) (rho 8520) (rho 8525) (rho 8530) (rho 8535) (rho 8540)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg50 (rho 8360) (rho 8365) (rho 8370) (rho 8375) (rho 8380) (rho 8385) (rho 8390) (rho 8395) (rho 8400) (rho 8405) (rho 8410) (rho 8415) (rho 8420) (rho 8425) (rho 8430) (rho 8435) (rho 8440) (rho 8445) (rho 8450) (rho 8455) (rho 8460) (rho 8465) (rho 8470) (rho 8475) (rho 8480) (rho 8485) (rho 8490) (rho 8495) (rho 8500) (rho 8505) (rho 8510) (rho 8515) (rho 8520) (rho 8525) (rho 8530) (rho 8535) next := by
  exact ⟨rho 8536, rho 8537, rho 8538, rho 8539, rho 8540, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8551 at r8551; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc206, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc206Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc206Part1] at r8551; linear_combination r8551), r8552, r8553, r8554, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8555 at r8555; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc206, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc206Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc206Part1] at r8555; linear_combination r8555), tail⟩

theorem template_scp_node22_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8556 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8556 rho)
    (r8557 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8557 rho)
    (r8558 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8558 rho)
    (r8559 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8559 rho)
    (r8560 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8560 rho)
    (tail : next (rho 8360) (rho 8365) (rho 8370) (rho 8375) (rho 8380) (rho 8385) (rho 8390) (rho 8395) (rho 8400) (rho 8405) (rho 8410) (rho 8415) (rho 8420) (rho 8425) (rho 8430) (rho 8435) (rho 8440) (rho 8445) (rho 8450) (rho 8455) (rho 8460) (rho 8465) (rho 8470) (rho 8475) (rho 8480) (rho 8485) (rho 8490) (rho 8495) (rho 8500) (rho 8505) (rho 8510) (rho 8515) (rho 8520) (rho 8525) (rho 8530) (rho 8535) (rho 8540) (rho 8545)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg51 (rho 8360) (rho 8365) (rho 8370) (rho 8375) (rho 8380) (rho 8385) (rho 8390) (rho 8395) (rho 8400) (rho 8405) (rho 8410) (rho 8415) (rho 8420) (rho 8425) (rho 8430) (rho 8435) (rho 8440) (rho 8445) (rho 8450) (rho 8455) (rho 8460) (rho 8465) (rho 8470) (rho 8475) (rho 8480) (rho 8485) (rho 8490) (rho 8495) (rho 8500) (rho 8505) (rho 8510) (rho 8515) (rho 8520) (rho 8525) (rho 8530) (rho 8535) (rho 8540) next := by
  exact ⟨rho 8541, rho 8542, rho 8543, rho 8544, rho 8545, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8556 at r8556; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc207, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc207Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc207Part1] at r8556; linear_combination r8556), r8557, r8558, r8559, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8560 at r8560; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc207, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc207Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc207Part1] at r8560; linear_combination r8560), tail⟩

theorem template_scp_node22_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8561 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8561 rho)
    (r8562 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8562 rho)
    (r8563 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8563 rho)
    (r8564 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8564 rho)
    (r8565 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8565 rho)
    (tail : next (rho 8360) (rho 8365) (rho 8370) (rho 8375) (rho 8380) (rho 8385) (rho 8390) (rho 8395) (rho 8400) (rho 8405) (rho 8410) (rho 8415) (rho 8420) (rho 8425) (rho 8430) (rho 8435) (rho 8440) (rho 8445) (rho 8450) (rho 8455) (rho 8460) (rho 8465) (rho 8470) (rho 8475) (rho 8480) (rho 8485) (rho 8490) (rho 8495) (rho 8500) (rho 8505) (rho 8510) (rho 8515) (rho 8520) (rho 8525) (rho 8530) (rho 8535) (rho 8540) (rho 8545) (rho 8550)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg52 (rho 8360) (rho 8365) (rho 8370) (rho 8375) (rho 8380) (rho 8385) (rho 8390) (rho 8395) (rho 8400) (rho 8405) (rho 8410) (rho 8415) (rho 8420) (rho 8425) (rho 8430) (rho 8435) (rho 8440) (rho 8445) (rho 8450) (rho 8455) (rho 8460) (rho 8465) (rho 8470) (rho 8475) (rho 8480) (rho 8485) (rho 8490) (rho 8495) (rho 8500) (rho 8505) (rho 8510) (rho 8515) (rho 8520) (rho 8525) (rho 8530) (rho 8535) (rho 8540) (rho 8545) next := by
  exact ⟨rho 8546, rho 8547, rho 8548, rho 8549, rho 8550, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8561 at r8561; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc208, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc208Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc208Part1] at r8561; linear_combination r8561), r8562, r8563, r8564, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8565 at r8565; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc208, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc208Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc208Part1] at r8565; linear_combination r8565), tail⟩

theorem template_scp_node22_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8566 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8566 rho)
    (r8567 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8567 rho)
    (r8568 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8568 rho)
    (r8569 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8569 rho)
    (r8570 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8570 rho)
    (tail : next (rho 8360) (rho 8365) (rho 8370) (rho 8375) (rho 8380) (rho 8385) (rho 8390) (rho 8395) (rho 8400) (rho 8405) (rho 8410) (rho 8415) (rho 8420) (rho 8425) (rho 8430) (rho 8435) (rho 8440) (rho 8445) (rho 8450) (rho 8455) (rho 8460) (rho 8465) (rho 8470) (rho 8475) (rho 8480) (rho 8485) (rho 8490) (rho 8495) (rho 8500) (rho 8505) (rho 8510) (rho 8515) (rho 8520) (rho 8525) (rho 8530) (rho 8535) (rho 8540) (rho 8545) (rho 8550) (rho 8555)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg53 (rho 8360) (rho 8365) (rho 8370) (rho 8375) (rho 8380) (rho 8385) (rho 8390) (rho 8395) (rho 8400) (rho 8405) (rho 8410) (rho 8415) (rho 8420) (rho 8425) (rho 8430) (rho 8435) (rho 8440) (rho 8445) (rho 8450) (rho 8455) (rho 8460) (rho 8465) (rho 8470) (rho 8475) (rho 8480) (rho 8485) (rho 8490) (rho 8495) (rho 8500) (rho 8505) (rho 8510) (rho 8515) (rho 8520) (rho 8525) (rho 8530) (rho 8535) (rho 8540) (rho 8545) (rho 8550) next := by
  exact ⟨rho 8551, rho 8552, rho 8553, rho 8554, rho 8555, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8566 at r8566; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc209, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc209Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc209Part1] at r8566; linear_combination r8566), r8567, r8568, r8569, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8570 at r8570; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc209, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc209Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc209Part1] at r8570; linear_combination r8570), tail⟩

theorem template_scp_node22_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8571 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8571 rho)
    (r8572 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8572 rho)
    (r8573 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8573 rho)
    (r8574 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8574 rho)
    (r8575 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8575 rho)
    (tail : next (rho 8540) (rho 8545) (rho 8550) (rho 8555) (rho 8560)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg54 (rho 8360) (rho 8365) (rho 8370) (rho 8375) (rho 8380) (rho 8385) (rho 8390) (rho 8395) (rho 8400) (rho 8405) (rho 8410) (rho 8415) (rho 8420) (rho 8425) (rho 8430) (rho 8435) (rho 8440) (rho 8445) (rho 8450) (rho 8455) (rho 8460) (rho 8465) (rho 8470) (rho 8475) (rho 8480) (rho 8485) (rho 8490) (rho 8495) (rho 8500) (rho 8505) (rho 8510) (rho 8515) (rho 8520) (rho 8525) (rho 8530) (rho 8535) (rho 8540) (rho 8545) (rho 8550) (rho 8555) next := by
  exact ⟨rho 8556, rho 8557, rho 8558, rho 8559, rho 8560, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8571 at r8571; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc210, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc210Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc210Part1] at r8571; linear_combination r8571), r8572, r8573, r8574, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8575 at r8575; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc210, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc210Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc210Part1] at r8575; linear_combination r8575), tail⟩

theorem template_scp_node22_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8576 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8576 rho)
    (r8577 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8577 rho)
    (r8578 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8578 rho)
    (r8579 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8579 rho)
    (r8580 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8580 rho)
    (tail : next (rho 8540) (rho 8545) (rho 8550) (rho 8555) (rho 8560) (rho 8565)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg55 (rho 8540) (rho 8545) (rho 8550) (rho 8555) (rho 8560) next := by
  exact ⟨rho 8561, rho 8562, rho 8563, rho 8564, rho 8565, r8576, r8577, r8578, r8579, r8580, tail⟩

theorem template_scp_node22_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8581 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8581 rho)
    (r8582 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8582 rho)
    (r8583 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8583 rho)
    (r8584 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8584 rho)
    (r8585 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8585 rho)
    (tail : next (rho 8540) (rho 8545) (rho 8550) (rho 8555) (rho 8560) (rho 8565) (rho 8570)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg56 (rho 8540) (rho 8545) (rho 8550) (rho 8555) (rho 8560) (rho 8565) next := by
  exact ⟨rho 8566, rho 8567, rho 8568, rho 8569, rho 8570, r8581, r8582, r8583, r8584, r8585, tail⟩

theorem template_scp_node22_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8586 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8586 rho)
    (r8587 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8587 rho)
    (r8588 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8588 rho)
    (r8589 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8589 rho)
    (r8590 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8590 rho)
    (tail : next (rho 8540) (rho 8545) (rho 8550) (rho 8555) (rho 8560) (rho 8565) (rho 8570) (rho 8575)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg57 (rho 8540) (rho 8545) (rho 8550) (rho 8555) (rho 8560) (rho 8565) (rho 8570) next := by
  exact ⟨rho 8571, rho 8572, rho 8573, rho 8574, rho 8575, r8586, r8587, r8588, r8589, r8590, tail⟩

theorem template_scp_node22_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8591 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8591 rho)
    (r8592 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8592 rho)
    (r8593 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8593 rho)
    (r8594 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8594 rho)
    (r8595 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8595 rho)
    (tail : next (rho 8540) (rho 8545) (rho 8550) (rho 8555) (rho 8560) (rho 8565) (rho 8570) (rho 8575) (rho 8580)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg58 (rho 8540) (rho 8545) (rho 8550) (rho 8555) (rho 8560) (rho 8565) (rho 8570) (rho 8575) next := by
  exact ⟨rho 8576, rho 8577, rho 8578, rho 8579, rho 8580, r8591, r8592, r8593, r8594, r8595, tail⟩

theorem template_scp_node22_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8596 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8596 rho)
    (r8597 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8597 rho)
    (r8598 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8598 rho)
    (r8599 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8599 rho)
    (r8600 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8600 rho)
    (tail : next (rho 8565) (rho 8570) (rho 8575) (rho 8580) (rho 8585)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg59 (rho 8540) (rho 8545) (rho 8550) (rho 8555) (rho 8560) (rho 8565) (rho 8570) (rho 8575) (rho 8580) next := by
  exact ⟨rho 8581, rho 8582, rho 8583, rho 8584, rho 8585, r8596, r8597, r8598, r8599, r8600, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
