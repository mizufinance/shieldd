import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node1_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r907 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow907 rho)
    (r908 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow908 rho)
    (r909 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow909 rho)
    (r910 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow910 rho)
    (r911 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow911 rho)
    (tail : next (rho 737) (rho 742) (rho 747) (rho 752) (rho 757) (rho 762) (rho 767) (rho 772) (rho 777) (rho 782) (rho 787) (rho 792) (rho 797) (rho 802) (rho 807) (rho 812) (rho 817) (rho 822) (rho 827) (rho 832) (rho 837) (rho 842) (rho 847) (rho 852) (rho 857) (rho 862) (rho 867) (rho 872) (rho 877) (rho 882) (rho 887) (rho 892) (rho 897) (rho 902) (rho 907) (rho 912) (rho 917)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg50 (rho 737) (rho 742) (rho 747) (rho 752) (rho 757) (rho 762) (rho 767) (rho 772) (rho 777) (rho 782) (rho 787) (rho 792) (rho 797) (rho 802) (rho 807) (rho 812) (rho 817) (rho 822) (rho 827) (rho 832) (rho 837) (rho 842) (rho 847) (rho 852) (rho 857) (rho 862) (rho 867) (rho 872) (rho 877) (rho 882) (rho 887) (rho 892) (rho 897) (rho 902) (rho 907) (rho 912) next := by
  exact ⟨rho 913, rho 914, rho 915, rho 916, rho 917, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow907 at r907; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc17, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc17Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc17Part1] at r907; linear_combination r907), r908, r909, r910, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow911 at r911; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc17, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc17Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc17Part1] at r911; linear_combination r911), tail⟩

theorem template_scp_node1_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r912 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow912 rho)
    (r913 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow913 rho)
    (r914 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow914 rho)
    (r915 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow915 rho)
    (r916 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow916 rho)
    (tail : next (rho 737) (rho 742) (rho 747) (rho 752) (rho 757) (rho 762) (rho 767) (rho 772) (rho 777) (rho 782) (rho 787) (rho 792) (rho 797) (rho 802) (rho 807) (rho 812) (rho 817) (rho 822) (rho 827) (rho 832) (rho 837) (rho 842) (rho 847) (rho 852) (rho 857) (rho 862) (rho 867) (rho 872) (rho 877) (rho 882) (rho 887) (rho 892) (rho 897) (rho 902) (rho 907) (rho 912) (rho 917) (rho 922)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg51 (rho 737) (rho 742) (rho 747) (rho 752) (rho 757) (rho 762) (rho 767) (rho 772) (rho 777) (rho 782) (rho 787) (rho 792) (rho 797) (rho 802) (rho 807) (rho 812) (rho 817) (rho 822) (rho 827) (rho 832) (rho 837) (rho 842) (rho 847) (rho 852) (rho 857) (rho 862) (rho 867) (rho 872) (rho 877) (rho 882) (rho 887) (rho 892) (rho 897) (rho 902) (rho 907) (rho 912) (rho 917) next := by
  exact ⟨rho 918, rho 919, rho 920, rho 921, rho 922, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow912 at r912; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc18, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc18Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc18Part1] at r912; linear_combination r912), r913, r914, r915, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow916 at r916; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc18, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc18Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc18Part1] at r916; linear_combination r916), tail⟩

theorem template_scp_node1_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r917 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow917 rho)
    (r918 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow918 rho)
    (r919 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow919 rho)
    (r920 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow920 rho)
    (r921 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow921 rho)
    (tail : next (rho 737) (rho 742) (rho 747) (rho 752) (rho 757) (rho 762) (rho 767) (rho 772) (rho 777) (rho 782) (rho 787) (rho 792) (rho 797) (rho 802) (rho 807) (rho 812) (rho 817) (rho 822) (rho 827) (rho 832) (rho 837) (rho 842) (rho 847) (rho 852) (rho 857) (rho 862) (rho 867) (rho 872) (rho 877) (rho 882) (rho 887) (rho 892) (rho 897) (rho 902) (rho 907) (rho 912) (rho 917) (rho 922) (rho 927)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg52 (rho 737) (rho 742) (rho 747) (rho 752) (rho 757) (rho 762) (rho 767) (rho 772) (rho 777) (rho 782) (rho 787) (rho 792) (rho 797) (rho 802) (rho 807) (rho 812) (rho 817) (rho 822) (rho 827) (rho 832) (rho 837) (rho 842) (rho 847) (rho 852) (rho 857) (rho 862) (rho 867) (rho 872) (rho 877) (rho 882) (rho 887) (rho 892) (rho 897) (rho 902) (rho 907) (rho 912) (rho 917) (rho 922) next := by
  exact ⟨rho 923, rho 924, rho 925, rho 926, rho 927, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow917 at r917; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc19, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc19Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc19Part1] at r917; linear_combination r917), r918, r919, r920, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow921 at r921; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc19, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc19Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc19Part1] at r921; linear_combination r921), tail⟩

theorem template_scp_node1_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r922 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow922 rho)
    (r923 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow923 rho)
    (r924 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow924 rho)
    (r925 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow925 rho)
    (r926 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow926 rho)
    (tail : next (rho 737) (rho 742) (rho 747) (rho 752) (rho 757) (rho 762) (rho 767) (rho 772) (rho 777) (rho 782) (rho 787) (rho 792) (rho 797) (rho 802) (rho 807) (rho 812) (rho 817) (rho 822) (rho 827) (rho 832) (rho 837) (rho 842) (rho 847) (rho 852) (rho 857) (rho 862) (rho 867) (rho 872) (rho 877) (rho 882) (rho 887) (rho 892) (rho 897) (rho 902) (rho 907) (rho 912) (rho 917) (rho 922) (rho 927) (rho 932)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg53 (rho 737) (rho 742) (rho 747) (rho 752) (rho 757) (rho 762) (rho 767) (rho 772) (rho 777) (rho 782) (rho 787) (rho 792) (rho 797) (rho 802) (rho 807) (rho 812) (rho 817) (rho 822) (rho 827) (rho 832) (rho 837) (rho 842) (rho 847) (rho 852) (rho 857) (rho 862) (rho 867) (rho 872) (rho 877) (rho 882) (rho 887) (rho 892) (rho 897) (rho 902) (rho 907) (rho 912) (rho 917) (rho 922) (rho 927) next := by
  exact ⟨rho 928, rho 929, rho 930, rho 931, rho 932, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow922 at r922; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc20, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc20Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc20Part1] at r922; linear_combination r922), r923, r924, r925, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow926 at r926; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc20, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc20Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc20Part1] at r926; linear_combination r926), tail⟩

theorem template_scp_node1_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r927 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow927 rho)
    (r928 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow928 rho)
    (r929 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow929 rho)
    (r930 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow930 rho)
    (r931 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow931 rho)
    (tail : next (rho 917) (rho 922) (rho 927) (rho 932) (rho 937)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg54 (rho 737) (rho 742) (rho 747) (rho 752) (rho 757) (rho 762) (rho 767) (rho 772) (rho 777) (rho 782) (rho 787) (rho 792) (rho 797) (rho 802) (rho 807) (rho 812) (rho 817) (rho 822) (rho 827) (rho 832) (rho 837) (rho 842) (rho 847) (rho 852) (rho 857) (rho 862) (rho 867) (rho 872) (rho 877) (rho 882) (rho 887) (rho 892) (rho 897) (rho 902) (rho 907) (rho 912) (rho 917) (rho 922) (rho 927) (rho 932) next := by
  exact ⟨rho 933, rho 934, rho 935, rho 936, rho 937, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow927 at r927; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc21, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc21Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc21Part1] at r927; linear_combination r927), r928, r929, r930, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow931 at r931; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc21, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc21Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc21Part1] at r931; linear_combination r931), tail⟩

theorem template_scp_node1_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r932 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow932 rho)
    (r933 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow933 rho)
    (r934 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow934 rho)
    (r935 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow935 rho)
    (r936 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow936 rho)
    (tail : next (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg55 (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) next := by
  exact ⟨rho 938, rho 939, rho 940, rho 941, rho 942, r932, r933, r934, r935, r936, tail⟩

theorem template_scp_node1_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r937 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow937 rho)
    (r938 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow938 rho)
    (r939 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow939 rho)
    (r940 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow940 rho)
    (r941 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow941 rho)
    (tail : next (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg56 (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) next := by
  exact ⟨rho 943, rho 944, rho 945, rho 946, rho 947, r937, r938, r939, r940, r941, tail⟩

theorem template_scp_node1_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r942 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow942 rho)
    (r943 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow943 rho)
    (r944 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow944 rho)
    (r945 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow945 rho)
    (r946 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow946 rho)
    (tail : next (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg57 (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) next := by
  exact ⟨rho 948, rho 949, rho 950, rho 951, rho 952, r942, r943, r944, r945, r946, tail⟩

theorem template_scp_node1_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r947 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow947 rho)
    (r948 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow948 rho)
    (r949 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow949 rho)
    (r950 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow950 rho)
    (r951 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow951 rho)
    (tail : next (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952) (rho 957)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg58 (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952) next := by
  exact ⟨rho 953, rho 954, rho 955, rho 956, rho 957, r947, r948, r949, r950, r951, tail⟩

theorem template_scp_node1_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r952 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow952 rho)
    (r953 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow953 rho)
    (r954 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow954 rho)
    (r955 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow955 rho)
    (r956 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow956 rho)
    (tail : next (rho 942) (rho 947) (rho 952) (rho 957) (rho 962)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_354ca4.seg59 (rho 917) (rho 922) (rho 927) (rho 932) (rho 937) (rho 942) (rho 947) (rho 952) (rho 957) next := by
  exact ⟨rho 958, rho 959, rho 960, rho 961, rho 962, r952, r953, r954, r955, r956, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
