import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node12_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4911 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4911 rho)
    (r4912 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4912 rho)
    (r4913 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4913 rho)
    (r4914 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4914 rho)
    (r4915 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4915 rho)
    (tail : next (rho 4730) (rho 4735) (rho 4740) (rho 4745) (rho 4750) (rho 4755) (rho 4760) (rho 4765) (rho 4770) (rho 4775) (rho 4780) (rho 4785) (rho 4790) (rho 4795) (rho 4800) (rho 4805) (rho 4810) (rho 4815) (rho 4820) (rho 4825) (rho 4830) (rho 4835) (rho 4840) (rho 4845) (rho 4850) (rho 4855) (rho 4860) (rho 4865) (rho 4870) (rho 4875) (rho 4880) (rho 4885) (rho 4890) (rho 4895) (rho 4900) (rho 4905) (rho 4910)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg50 (rho 4730) (rho 4735) (rho 4740) (rho 4745) (rho 4750) (rho 4755) (rho 4760) (rho 4765) (rho 4770) (rho 4775) (rho 4780) (rho 4785) (rho 4790) (rho 4795) (rho 4800) (rho 4805) (rho 4810) (rho 4815) (rho 4820) (rho 4825) (rho 4830) (rho 4835) (rho 4840) (rho 4845) (rho 4850) (rho 4855) (rho 4860) (rho 4865) (rho 4870) (rho 4875) (rho 4880) (rho 4885) (rho 4890) (rho 4895) (rho 4900) (rho 4905) next := by
  exact ⟨rho 4906, rho 4907, rho 4908, rho 4909, rho 4910, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4911 at r4911; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc116, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc116Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc116Part1] at r4911; linear_combination r4911), r4912, r4913, r4914, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4915 at r4915; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc116, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc116Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc116Part1] at r4915; linear_combination r4915), tail⟩

theorem template_scp_node12_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4916 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4916 rho)
    (r4917 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4917 rho)
    (r4918 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4918 rho)
    (r4919 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4919 rho)
    (r4920 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4920 rho)
    (tail : next (rho 4730) (rho 4735) (rho 4740) (rho 4745) (rho 4750) (rho 4755) (rho 4760) (rho 4765) (rho 4770) (rho 4775) (rho 4780) (rho 4785) (rho 4790) (rho 4795) (rho 4800) (rho 4805) (rho 4810) (rho 4815) (rho 4820) (rho 4825) (rho 4830) (rho 4835) (rho 4840) (rho 4845) (rho 4850) (rho 4855) (rho 4860) (rho 4865) (rho 4870) (rho 4875) (rho 4880) (rho 4885) (rho 4890) (rho 4895) (rho 4900) (rho 4905) (rho 4910) (rho 4915)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg51 (rho 4730) (rho 4735) (rho 4740) (rho 4745) (rho 4750) (rho 4755) (rho 4760) (rho 4765) (rho 4770) (rho 4775) (rho 4780) (rho 4785) (rho 4790) (rho 4795) (rho 4800) (rho 4805) (rho 4810) (rho 4815) (rho 4820) (rho 4825) (rho 4830) (rho 4835) (rho 4840) (rho 4845) (rho 4850) (rho 4855) (rho 4860) (rho 4865) (rho 4870) (rho 4875) (rho 4880) (rho 4885) (rho 4890) (rho 4895) (rho 4900) (rho 4905) (rho 4910) next := by
  exact ⟨rho 4911, rho 4912, rho 4913, rho 4914, rho 4915, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4916 at r4916; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc117, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc117Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc117Part1] at r4916; linear_combination r4916), r4917, r4918, r4919, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4920 at r4920; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc117, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc117Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc117Part1] at r4920; linear_combination r4920), tail⟩

theorem template_scp_node12_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4921 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4921 rho)
    (r4922 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4922 rho)
    (r4923 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4923 rho)
    (r4924 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4924 rho)
    (r4925 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4925 rho)
    (tail : next (rho 4730) (rho 4735) (rho 4740) (rho 4745) (rho 4750) (rho 4755) (rho 4760) (rho 4765) (rho 4770) (rho 4775) (rho 4780) (rho 4785) (rho 4790) (rho 4795) (rho 4800) (rho 4805) (rho 4810) (rho 4815) (rho 4820) (rho 4825) (rho 4830) (rho 4835) (rho 4840) (rho 4845) (rho 4850) (rho 4855) (rho 4860) (rho 4865) (rho 4870) (rho 4875) (rho 4880) (rho 4885) (rho 4890) (rho 4895) (rho 4900) (rho 4905) (rho 4910) (rho 4915) (rho 4920)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg52 (rho 4730) (rho 4735) (rho 4740) (rho 4745) (rho 4750) (rho 4755) (rho 4760) (rho 4765) (rho 4770) (rho 4775) (rho 4780) (rho 4785) (rho 4790) (rho 4795) (rho 4800) (rho 4805) (rho 4810) (rho 4815) (rho 4820) (rho 4825) (rho 4830) (rho 4835) (rho 4840) (rho 4845) (rho 4850) (rho 4855) (rho 4860) (rho 4865) (rho 4870) (rho 4875) (rho 4880) (rho 4885) (rho 4890) (rho 4895) (rho 4900) (rho 4905) (rho 4910) (rho 4915) next := by
  exact ⟨rho 4916, rho 4917, rho 4918, rho 4919, rho 4920, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4921 at r4921; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc118, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc118Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc118Part1] at r4921; linear_combination r4921), r4922, r4923, r4924, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4925 at r4925; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc118, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc118Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc118Part1] at r4925; linear_combination r4925), tail⟩

theorem template_scp_node12_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4926 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4926 rho)
    (r4927 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4927 rho)
    (r4928 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4928 rho)
    (r4929 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4929 rho)
    (r4930 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4930 rho)
    (tail : next (rho 4730) (rho 4735) (rho 4740) (rho 4745) (rho 4750) (rho 4755) (rho 4760) (rho 4765) (rho 4770) (rho 4775) (rho 4780) (rho 4785) (rho 4790) (rho 4795) (rho 4800) (rho 4805) (rho 4810) (rho 4815) (rho 4820) (rho 4825) (rho 4830) (rho 4835) (rho 4840) (rho 4845) (rho 4850) (rho 4855) (rho 4860) (rho 4865) (rho 4870) (rho 4875) (rho 4880) (rho 4885) (rho 4890) (rho 4895) (rho 4900) (rho 4905) (rho 4910) (rho 4915) (rho 4920) (rho 4925)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg53 (rho 4730) (rho 4735) (rho 4740) (rho 4745) (rho 4750) (rho 4755) (rho 4760) (rho 4765) (rho 4770) (rho 4775) (rho 4780) (rho 4785) (rho 4790) (rho 4795) (rho 4800) (rho 4805) (rho 4810) (rho 4815) (rho 4820) (rho 4825) (rho 4830) (rho 4835) (rho 4840) (rho 4845) (rho 4850) (rho 4855) (rho 4860) (rho 4865) (rho 4870) (rho 4875) (rho 4880) (rho 4885) (rho 4890) (rho 4895) (rho 4900) (rho 4905) (rho 4910) (rho 4915) (rho 4920) next := by
  exact ⟨rho 4921, rho 4922, rho 4923, rho 4924, rho 4925, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4926 at r4926; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc119, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc119Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc119Part1] at r4926; linear_combination r4926), r4927, r4928, r4929, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4930 at r4930; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc119, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc119Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc119Part1] at r4930; linear_combination r4930), tail⟩

theorem template_scp_node12_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4931 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4931 rho)
    (r4932 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4932 rho)
    (r4933 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4933 rho)
    (r4934 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4934 rho)
    (r4935 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4935 rho)
    (tail : next (rho 4910) (rho 4915) (rho 4920) (rho 4925) (rho 4930)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg54 (rho 4730) (rho 4735) (rho 4740) (rho 4745) (rho 4750) (rho 4755) (rho 4760) (rho 4765) (rho 4770) (rho 4775) (rho 4780) (rho 4785) (rho 4790) (rho 4795) (rho 4800) (rho 4805) (rho 4810) (rho 4815) (rho 4820) (rho 4825) (rho 4830) (rho 4835) (rho 4840) (rho 4845) (rho 4850) (rho 4855) (rho 4860) (rho 4865) (rho 4870) (rho 4875) (rho 4880) (rho 4885) (rho 4890) (rho 4895) (rho 4900) (rho 4905) (rho 4910) (rho 4915) (rho 4920) (rho 4925) next := by
  exact ⟨rho 4926, rho 4927, rho 4928, rho 4929, rho 4930, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4931 at r4931; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc120, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc120Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc120Part1] at r4931; linear_combination r4931), r4932, r4933, r4934, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4935 at r4935; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc120, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc120Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc120Part1] at r4935; linear_combination r4935), tail⟩

theorem template_scp_node12_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r4936 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4936 rho)
    (r4937 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4937 rho)
    (r4938 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4938 rho)
    (r4939 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4939 rho)
    (r4940 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4940 rho)
    (tail : next (rho 4910) (rho 4915) (rho 4920) (rho 4925) (rho 4930) (rho 4935)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg55 (rho 4910) (rho 4915) (rho 4920) (rho 4925) (rho 4930) next := by
  exact ⟨rho 4931, rho 4932, rho 4933, rho 4934, rho 4935, r4936, r4937, r4938, r4939, r4940, tail⟩

theorem template_scp_node12_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4941 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4941 rho)
    (r4942 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4942 rho)
    (r4943 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4943 rho)
    (r4944 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4944 rho)
    (r4945 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4945 rho)
    (tail : next (rho 4910) (rho 4915) (rho 4920) (rho 4925) (rho 4930) (rho 4935) (rho 4940)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg56 (rho 4910) (rho 4915) (rho 4920) (rho 4925) (rho 4930) (rho 4935) next := by
  exact ⟨rho 4936, rho 4937, rho 4938, rho 4939, rho 4940, r4941, r4942, r4943, r4944, r4945, tail⟩

theorem template_scp_node12_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4946 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4946 rho)
    (r4947 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4947 rho)
    (r4948 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4948 rho)
    (r4949 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4949 rho)
    (r4950 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4950 rho)
    (tail : next (rho 4910) (rho 4915) (rho 4920) (rho 4925) (rho 4930) (rho 4935) (rho 4940) (rho 4945)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg57 (rho 4910) (rho 4915) (rho 4920) (rho 4925) (rho 4930) (rho 4935) (rho 4940) next := by
  exact ⟨rho 4941, rho 4942, rho 4943, rho 4944, rho 4945, r4946, r4947, r4948, r4949, r4950, tail⟩

theorem template_scp_node12_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r4951 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4951 rho)
    (r4952 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4952 rho)
    (r4953 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4953 rho)
    (r4954 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4954 rho)
    (r4955 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4955 rho)
    (tail : next (rho 4910) (rho 4915) (rho 4920) (rho 4925) (rho 4930) (rho 4935) (rho 4940) (rho 4945) (rho 4950)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg58 (rho 4910) (rho 4915) (rho 4920) (rho 4925) (rho 4930) (rho 4935) (rho 4940) (rho 4945) next := by
  exact ⟨rho 4946, rho 4947, rho 4948, rho 4949, rho 4950, r4951, r4952, r4953, r4954, r4955, tail⟩

theorem template_scp_node12_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4956 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4956 rho)
    (r4957 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4957 rho)
    (r4958 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4958 rho)
    (r4959 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4959 rho)
    (r4960 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4960 rho)
    (tail : next (rho 4935) (rho 4940) (rho 4945) (rho 4950) (rho 4955)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg59 (rho 4910) (rho 4915) (rho 4920) (rho 4925) (rho 4930) (rho 4935) (rho 4940) (rho 4945) (rho 4950) next := by
  exact ⟨rho 4951, rho 4952, rho 4953, rho 4954, rho 4955, r4956, r4957, r4958, r4959, r4960, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
