import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node23_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8915 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8915 rho)
    (r8916 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8916 rho)
    (r8917 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8917 rho)
    (r8918 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8918 rho)
    (r8919 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8919 rho)
    (tail : next (rho 8717) (rho 8722) (rho 8727) (rho 8732) (rho 8737) (rho 8742) (rho 8747) (rho 8752) (rho 8757) (rho 8762) (rho 8767) (rho 8772) (rho 8777) (rho 8782) (rho 8787) (rho 8792) (rho 8797) (rho 8802) (rho 8807) (rho 8812) (rho 8817) (rho 8822) (rho 8827) (rho 8832) (rho 8837) (rho 8842) (rho 8847) (rho 8852) (rho 8857) (rho 8862) (rho 8867) (rho 8872) (rho 8877) (rho 8882) (rho 8887) (rho 8892) (rho 8897)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg50 (rho 8717) (rho 8722) (rho 8727) (rho 8732) (rho 8737) (rho 8742) (rho 8747) (rho 8752) (rho 8757) (rho 8762) (rho 8767) (rho 8772) (rho 8777) (rho 8782) (rho 8787) (rho 8792) (rho 8797) (rho 8802) (rho 8807) (rho 8812) (rho 8817) (rho 8822) (rho 8827) (rho 8832) (rho 8837) (rho 8842) (rho 8847) (rho 8852) (rho 8857) (rho 8862) (rho 8867) (rho 8872) (rho 8877) (rho 8882) (rho 8887) (rho 8892) next := by
  exact ⟨rho 8893, rho 8894, rho 8895, rho 8896, rho 8897, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8915 at r8915; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc215, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc215Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc215Part1] at r8915; linear_combination r8915), r8916, r8917, r8918, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8919 at r8919; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc215, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc215Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc215Part1] at r8919; linear_combination r8919), tail⟩

theorem template_scp_node23_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8920 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8920 rho)
    (r8921 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8921 rho)
    (r8922 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8922 rho)
    (r8923 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8923 rho)
    (r8924 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8924 rho)
    (tail : next (rho 8717) (rho 8722) (rho 8727) (rho 8732) (rho 8737) (rho 8742) (rho 8747) (rho 8752) (rho 8757) (rho 8762) (rho 8767) (rho 8772) (rho 8777) (rho 8782) (rho 8787) (rho 8792) (rho 8797) (rho 8802) (rho 8807) (rho 8812) (rho 8817) (rho 8822) (rho 8827) (rho 8832) (rho 8837) (rho 8842) (rho 8847) (rho 8852) (rho 8857) (rho 8862) (rho 8867) (rho 8872) (rho 8877) (rho 8882) (rho 8887) (rho 8892) (rho 8897) (rho 8902)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg51 (rho 8717) (rho 8722) (rho 8727) (rho 8732) (rho 8737) (rho 8742) (rho 8747) (rho 8752) (rho 8757) (rho 8762) (rho 8767) (rho 8772) (rho 8777) (rho 8782) (rho 8787) (rho 8792) (rho 8797) (rho 8802) (rho 8807) (rho 8812) (rho 8817) (rho 8822) (rho 8827) (rho 8832) (rho 8837) (rho 8842) (rho 8847) (rho 8852) (rho 8857) (rho 8862) (rho 8867) (rho 8872) (rho 8877) (rho 8882) (rho 8887) (rho 8892) (rho 8897) next := by
  exact ⟨rho 8898, rho 8899, rho 8900, rho 8901, rho 8902, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8920 at r8920; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc216, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc216Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc216Part1] at r8920; linear_combination r8920), r8921, r8922, r8923, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8924 at r8924; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc216, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc216Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc216Part1] at r8924; linear_combination r8924), tail⟩

theorem template_scp_node23_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8925 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8925 rho)
    (r8926 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8926 rho)
    (r8927 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8927 rho)
    (r8928 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8928 rho)
    (r8929 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8929 rho)
    (tail : next (rho 8717) (rho 8722) (rho 8727) (rho 8732) (rho 8737) (rho 8742) (rho 8747) (rho 8752) (rho 8757) (rho 8762) (rho 8767) (rho 8772) (rho 8777) (rho 8782) (rho 8787) (rho 8792) (rho 8797) (rho 8802) (rho 8807) (rho 8812) (rho 8817) (rho 8822) (rho 8827) (rho 8832) (rho 8837) (rho 8842) (rho 8847) (rho 8852) (rho 8857) (rho 8862) (rho 8867) (rho 8872) (rho 8877) (rho 8882) (rho 8887) (rho 8892) (rho 8897) (rho 8902) (rho 8907)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg52 (rho 8717) (rho 8722) (rho 8727) (rho 8732) (rho 8737) (rho 8742) (rho 8747) (rho 8752) (rho 8757) (rho 8762) (rho 8767) (rho 8772) (rho 8777) (rho 8782) (rho 8787) (rho 8792) (rho 8797) (rho 8802) (rho 8807) (rho 8812) (rho 8817) (rho 8822) (rho 8827) (rho 8832) (rho 8837) (rho 8842) (rho 8847) (rho 8852) (rho 8857) (rho 8862) (rho 8867) (rho 8872) (rho 8877) (rho 8882) (rho 8887) (rho 8892) (rho 8897) (rho 8902) next := by
  exact ⟨rho 8903, rho 8904, rho 8905, rho 8906, rho 8907, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8925 at r8925; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc217, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc217Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc217Part1] at r8925; linear_combination r8925), r8926, r8927, r8928, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8929 at r8929; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc217, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc217Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc217Part1] at r8929; linear_combination r8929), tail⟩

theorem template_scp_node23_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8930 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8930 rho)
    (r8931 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8931 rho)
    (r8932 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8932 rho)
    (r8933 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8933 rho)
    (r8934 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8934 rho)
    (tail : next (rho 8717) (rho 8722) (rho 8727) (rho 8732) (rho 8737) (rho 8742) (rho 8747) (rho 8752) (rho 8757) (rho 8762) (rho 8767) (rho 8772) (rho 8777) (rho 8782) (rho 8787) (rho 8792) (rho 8797) (rho 8802) (rho 8807) (rho 8812) (rho 8817) (rho 8822) (rho 8827) (rho 8832) (rho 8837) (rho 8842) (rho 8847) (rho 8852) (rho 8857) (rho 8862) (rho 8867) (rho 8872) (rho 8877) (rho 8882) (rho 8887) (rho 8892) (rho 8897) (rho 8902) (rho 8907) (rho 8912)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg53 (rho 8717) (rho 8722) (rho 8727) (rho 8732) (rho 8737) (rho 8742) (rho 8747) (rho 8752) (rho 8757) (rho 8762) (rho 8767) (rho 8772) (rho 8777) (rho 8782) (rho 8787) (rho 8792) (rho 8797) (rho 8802) (rho 8807) (rho 8812) (rho 8817) (rho 8822) (rho 8827) (rho 8832) (rho 8837) (rho 8842) (rho 8847) (rho 8852) (rho 8857) (rho 8862) (rho 8867) (rho 8872) (rho 8877) (rho 8882) (rho 8887) (rho 8892) (rho 8897) (rho 8902) (rho 8907) next := by
  exact ⟨rho 8908, rho 8909, rho 8910, rho 8911, rho 8912, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8930 at r8930; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc218, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc218Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc218Part1] at r8930; linear_combination r8930), r8931, r8932, r8933, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8934 at r8934; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc218, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc218Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc218Part1] at r8934; linear_combination r8934), tail⟩

theorem template_scp_node23_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8935 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8935 rho)
    (r8936 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8936 rho)
    (r8937 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8937 rho)
    (r8938 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8938 rho)
    (r8939 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8939 rho)
    (tail : next (rho 8897) (rho 8902) (rho 8907) (rho 8912) (rho 8917)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg54 (rho 8717) (rho 8722) (rho 8727) (rho 8732) (rho 8737) (rho 8742) (rho 8747) (rho 8752) (rho 8757) (rho 8762) (rho 8767) (rho 8772) (rho 8777) (rho 8782) (rho 8787) (rho 8792) (rho 8797) (rho 8802) (rho 8807) (rho 8812) (rho 8817) (rho 8822) (rho 8827) (rho 8832) (rho 8837) (rho 8842) (rho 8847) (rho 8852) (rho 8857) (rho 8862) (rho 8867) (rho 8872) (rho 8877) (rho 8882) (rho 8887) (rho 8892) (rho 8897) (rho 8902) (rho 8907) (rho 8912) next := by
  exact ⟨rho 8913, rho 8914, rho 8915, rho 8916, rho 8917, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8935 at r8935; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc219, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc219Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc219Part1] at r8935; linear_combination r8935), r8936, r8937, r8938, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8939 at r8939; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc219, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc219Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc219Part1] at r8939; linear_combination r8939), tail⟩

theorem template_scp_node23_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8940 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8940 rho)
    (r8941 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8941 rho)
    (r8942 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8942 rho)
    (r8943 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8943 rho)
    (r8944 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8944 rho)
    (tail : next (rho 8897) (rho 8902) (rho 8907) (rho 8912) (rho 8917) (rho 8922)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg55 (rho 8897) (rho 8902) (rho 8907) (rho 8912) (rho 8917) next := by
  exact ⟨rho 8918, rho 8919, rho 8920, rho 8921, rho 8922, r8940, r8941, r8942, r8943, r8944, tail⟩

theorem template_scp_node23_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8945 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8945 rho)
    (r8946 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8946 rho)
    (r8947 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8947 rho)
    (r8948 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8948 rho)
    (r8949 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8949 rho)
    (tail : next (rho 8897) (rho 8902) (rho 8907) (rho 8912) (rho 8917) (rho 8922) (rho 8927)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg56 (rho 8897) (rho 8902) (rho 8907) (rho 8912) (rho 8917) (rho 8922) next := by
  exact ⟨rho 8923, rho 8924, rho 8925, rho 8926, rho 8927, r8945, r8946, r8947, r8948, r8949, tail⟩

theorem template_scp_node23_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8950 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8950 rho)
    (r8951 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8951 rho)
    (r8952 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8952 rho)
    (r8953 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8953 rho)
    (r8954 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8954 rho)
    (tail : next (rho 8897) (rho 8902) (rho 8907) (rho 8912) (rho 8917) (rho 8922) (rho 8927) (rho 8932)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg57 (rho 8897) (rho 8902) (rho 8907) (rho 8912) (rho 8917) (rho 8922) (rho 8927) next := by
  exact ⟨rho 8928, rho 8929, rho 8930, rho 8931, rho 8932, r8950, r8951, r8952, r8953, r8954, tail⟩

theorem template_scp_node23_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8955 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8955 rho)
    (r8956 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8956 rho)
    (r8957 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8957 rho)
    (r8958 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8958 rho)
    (r8959 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8959 rho)
    (tail : next (rho 8897) (rho 8902) (rho 8907) (rho 8912) (rho 8917) (rho 8922) (rho 8927) (rho 8932) (rho 8937)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg58 (rho 8897) (rho 8902) (rho 8907) (rho 8912) (rho 8917) (rho 8922) (rho 8927) (rho 8932) next := by
  exact ⟨rho 8933, rho 8934, rho 8935, rho 8936, rho 8937, r8955, r8956, r8957, r8958, r8959, tail⟩

theorem template_scp_node23_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8960 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8960 rho)
    (r8961 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8961 rho)
    (r8962 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8962 rho)
    (r8963 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8963 rho)
    (r8964 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8964 rho)
    (tail : next (rho 8922) (rho 8927) (rho 8932) (rho 8937) (rho 8942)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg59 (rho 8897) (rho 8902) (rho 8907) (rho 8912) (rho 8917) (rho 8922) (rho 8927) (rho 8932) (rho 8937) next := by
  exact ⟨rho 8938, rho 8939, rho 8940, rho 8941, rho 8942, r8960, r8961, r8962, r8963, r8964, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

