import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node9_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3819 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3819 rho)
    (r3820 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3820 rho)
    (r3821 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3821 rho)
    (r3822 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3822 rho)
    (r3823 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3823 rho)
    (tail : next (rho 3641) (rho 3646) (rho 3651) (rho 3656) (rho 3661) (rho 3666) (rho 3671) (rho 3676) (rho 3681) (rho 3686) (rho 3691) (rho 3696) (rho 3701) (rho 3706) (rho 3711) (rho 3716) (rho 3721) (rho 3726) (rho 3731) (rho 3736) (rho 3741) (rho 3746) (rho 3751) (rho 3756) (rho 3761) (rho 3766) (rho 3771) (rho 3776) (rho 3781) (rho 3786) (rho 3791) (rho 3796) (rho 3801) (rho 3806) (rho 3811) (rho 3816) (rho 3821)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg50 (rho 3641) (rho 3646) (rho 3651) (rho 3656) (rho 3661) (rho 3666) (rho 3671) (rho 3676) (rho 3681) (rho 3686) (rho 3691) (rho 3696) (rho 3701) (rho 3706) (rho 3711) (rho 3716) (rho 3721) (rho 3726) (rho 3731) (rho 3736) (rho 3741) (rho 3746) (rho 3751) (rho 3756) (rho 3761) (rho 3766) (rho 3771) (rho 3776) (rho 3781) (rho 3786) (rho 3791) (rho 3796) (rho 3801) (rho 3806) (rho 3811) (rho 3816) next := by
  exact ⟨rho 3817, rho 3818, rho 3819, rho 3820, rho 3821, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3819 at r3819; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc89, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc89Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc89Part1] at r3819; linear_combination r3819), r3820, r3821, r3822, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3823 at r3823; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc89, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc89Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc89Part1] at r3823; linear_combination r3823), tail⟩

theorem template_scp_node9_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3824 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3824 rho)
    (r3825 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3825 rho)
    (r3826 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3826 rho)
    (r3827 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3827 rho)
    (r3828 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3828 rho)
    (tail : next (rho 3641) (rho 3646) (rho 3651) (rho 3656) (rho 3661) (rho 3666) (rho 3671) (rho 3676) (rho 3681) (rho 3686) (rho 3691) (rho 3696) (rho 3701) (rho 3706) (rho 3711) (rho 3716) (rho 3721) (rho 3726) (rho 3731) (rho 3736) (rho 3741) (rho 3746) (rho 3751) (rho 3756) (rho 3761) (rho 3766) (rho 3771) (rho 3776) (rho 3781) (rho 3786) (rho 3791) (rho 3796) (rho 3801) (rho 3806) (rho 3811) (rho 3816) (rho 3821) (rho 3826)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg51 (rho 3641) (rho 3646) (rho 3651) (rho 3656) (rho 3661) (rho 3666) (rho 3671) (rho 3676) (rho 3681) (rho 3686) (rho 3691) (rho 3696) (rho 3701) (rho 3706) (rho 3711) (rho 3716) (rho 3721) (rho 3726) (rho 3731) (rho 3736) (rho 3741) (rho 3746) (rho 3751) (rho 3756) (rho 3761) (rho 3766) (rho 3771) (rho 3776) (rho 3781) (rho 3786) (rho 3791) (rho 3796) (rho 3801) (rho 3806) (rho 3811) (rho 3816) (rho 3821) next := by
  exact ⟨rho 3822, rho 3823, rho 3824, rho 3825, rho 3826, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3824 at r3824; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc90, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc90Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc90Part1] at r3824; linear_combination r3824), r3825, r3826, r3827, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3828 at r3828; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc90, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc90Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc90Part1] at r3828; linear_combination r3828), tail⟩

theorem template_scp_node9_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3829 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3829 rho)
    (r3830 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3830 rho)
    (r3831 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3831 rho)
    (r3832 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3832 rho)
    (r3833 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3833 rho)
    (tail : next (rho 3641) (rho 3646) (rho 3651) (rho 3656) (rho 3661) (rho 3666) (rho 3671) (rho 3676) (rho 3681) (rho 3686) (rho 3691) (rho 3696) (rho 3701) (rho 3706) (rho 3711) (rho 3716) (rho 3721) (rho 3726) (rho 3731) (rho 3736) (rho 3741) (rho 3746) (rho 3751) (rho 3756) (rho 3761) (rho 3766) (rho 3771) (rho 3776) (rho 3781) (rho 3786) (rho 3791) (rho 3796) (rho 3801) (rho 3806) (rho 3811) (rho 3816) (rho 3821) (rho 3826) (rho 3831)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg52 (rho 3641) (rho 3646) (rho 3651) (rho 3656) (rho 3661) (rho 3666) (rho 3671) (rho 3676) (rho 3681) (rho 3686) (rho 3691) (rho 3696) (rho 3701) (rho 3706) (rho 3711) (rho 3716) (rho 3721) (rho 3726) (rho 3731) (rho 3736) (rho 3741) (rho 3746) (rho 3751) (rho 3756) (rho 3761) (rho 3766) (rho 3771) (rho 3776) (rho 3781) (rho 3786) (rho 3791) (rho 3796) (rho 3801) (rho 3806) (rho 3811) (rho 3816) (rho 3821) (rho 3826) next := by
  exact ⟨rho 3827, rho 3828, rho 3829, rho 3830, rho 3831, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3829 at r3829; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc91, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc91Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc91Part1] at r3829; linear_combination r3829), r3830, r3831, r3832, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3833 at r3833; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc91, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc91Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc91Part1] at r3833; linear_combination r3833), tail⟩

theorem template_scp_node9_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3834 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3834 rho)
    (r3835 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3835 rho)
    (r3836 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3836 rho)
    (r3837 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3837 rho)
    (r3838 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3838 rho)
    (tail : next (rho 3641) (rho 3646) (rho 3651) (rho 3656) (rho 3661) (rho 3666) (rho 3671) (rho 3676) (rho 3681) (rho 3686) (rho 3691) (rho 3696) (rho 3701) (rho 3706) (rho 3711) (rho 3716) (rho 3721) (rho 3726) (rho 3731) (rho 3736) (rho 3741) (rho 3746) (rho 3751) (rho 3756) (rho 3761) (rho 3766) (rho 3771) (rho 3776) (rho 3781) (rho 3786) (rho 3791) (rho 3796) (rho 3801) (rho 3806) (rho 3811) (rho 3816) (rho 3821) (rho 3826) (rho 3831) (rho 3836)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg53 (rho 3641) (rho 3646) (rho 3651) (rho 3656) (rho 3661) (rho 3666) (rho 3671) (rho 3676) (rho 3681) (rho 3686) (rho 3691) (rho 3696) (rho 3701) (rho 3706) (rho 3711) (rho 3716) (rho 3721) (rho 3726) (rho 3731) (rho 3736) (rho 3741) (rho 3746) (rho 3751) (rho 3756) (rho 3761) (rho 3766) (rho 3771) (rho 3776) (rho 3781) (rho 3786) (rho 3791) (rho 3796) (rho 3801) (rho 3806) (rho 3811) (rho 3816) (rho 3821) (rho 3826) (rho 3831) next := by
  exact ⟨rho 3832, rho 3833, rho 3834, rho 3835, rho 3836, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3834 at r3834; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc92, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc92Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc92Part1] at r3834; linear_combination r3834), r3835, r3836, r3837, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3838 at r3838; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc92, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc92Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc92Part1] at r3838; linear_combination r3838), tail⟩

theorem template_scp_node9_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3839 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3839 rho)
    (r3840 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3840 rho)
    (r3841 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3841 rho)
    (r3842 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3842 rho)
    (r3843 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3843 rho)
    (tail : next (rho 3821) (rho 3826) (rho 3831) (rho 3836) (rho 3841)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg54 (rho 3641) (rho 3646) (rho 3651) (rho 3656) (rho 3661) (rho 3666) (rho 3671) (rho 3676) (rho 3681) (rho 3686) (rho 3691) (rho 3696) (rho 3701) (rho 3706) (rho 3711) (rho 3716) (rho 3721) (rho 3726) (rho 3731) (rho 3736) (rho 3741) (rho 3746) (rho 3751) (rho 3756) (rho 3761) (rho 3766) (rho 3771) (rho 3776) (rho 3781) (rho 3786) (rho 3791) (rho 3796) (rho 3801) (rho 3806) (rho 3811) (rho 3816) (rho 3821) (rho 3826) (rho 3831) (rho 3836) next := by
  exact ⟨rho 3837, rho 3838, rho 3839, rho 3840, rho 3841, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3839 at r3839; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc93, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc93Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc93Part1] at r3839; linear_combination r3839), r3840, r3841, r3842, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3843 at r3843; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc93, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc93Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc93Part1] at r3843; linear_combination r3843), tail⟩

theorem template_scp_node9_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3844 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3844 rho)
    (r3845 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3845 rho)
    (r3846 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3846 rho)
    (r3847 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3847 rho)
    (r3848 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3848 rho)
    (tail : next (rho 3821) (rho 3826) (rho 3831) (rho 3836) (rho 3841) (rho 3846)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg55 (rho 3821) (rho 3826) (rho 3831) (rho 3836) (rho 3841) next := by
  exact ⟨rho 3842, rho 3843, rho 3844, rho 3845, rho 3846, r3844, r3845, r3846, r3847, r3848, tail⟩

theorem template_scp_node9_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3849 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3849 rho)
    (r3850 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3850 rho)
    (r3851 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3851 rho)
    (r3852 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3852 rho)
    (r3853 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3853 rho)
    (tail : next (rho 3821) (rho 3826) (rho 3831) (rho 3836) (rho 3841) (rho 3846) (rho 3851)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg56 (rho 3821) (rho 3826) (rho 3831) (rho 3836) (rho 3841) (rho 3846) next := by
  exact ⟨rho 3847, rho 3848, rho 3849, rho 3850, rho 3851, r3849, r3850, r3851, r3852, r3853, tail⟩

theorem template_scp_node9_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3854 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3854 rho)
    (r3855 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3855 rho)
    (r3856 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3856 rho)
    (r3857 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3857 rho)
    (r3858 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3858 rho)
    (tail : next (rho 3821) (rho 3826) (rho 3831) (rho 3836) (rho 3841) (rho 3846) (rho 3851) (rho 3856)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg57 (rho 3821) (rho 3826) (rho 3831) (rho 3836) (rho 3841) (rho 3846) (rho 3851) next := by
  exact ⟨rho 3852, rho 3853, rho 3854, rho 3855, rho 3856, r3854, r3855, r3856, r3857, r3858, tail⟩

theorem template_scp_node9_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3859 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3859 rho)
    (r3860 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3860 rho)
    (r3861 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3861 rho)
    (r3862 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3862 rho)
    (r3863 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3863 rho)
    (tail : next (rho 3821) (rho 3826) (rho 3831) (rho 3836) (rho 3841) (rho 3846) (rho 3851) (rho 3856) (rho 3861)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg58 (rho 3821) (rho 3826) (rho 3831) (rho 3836) (rho 3841) (rho 3846) (rho 3851) (rho 3856) next := by
  exact ⟨rho 3857, rho 3858, rho 3859, rho 3860, rho 3861, r3859, r3860, r3861, r3862, r3863, tail⟩

theorem template_scp_node9_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3864 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3864 rho)
    (r3865 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3865 rho)
    (r3866 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3866 rho)
    (r3867 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3867 rho)
    (r3868 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3868 rho)
    (tail : next (rho 3846) (rho 3851) (rho 3856) (rho 3861) (rho 3866)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg59 (rho 3821) (rho 3826) (rho 3831) (rho 3836) (rho 3841) (rho 3846) (rho 3851) (rho 3856) (rho 3861) next := by
  exact ⟨rho 3862, rho 3863, rho 3864, rho 3865, rho 3866, r3864, r3865, r3866, r3867, r3868, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
