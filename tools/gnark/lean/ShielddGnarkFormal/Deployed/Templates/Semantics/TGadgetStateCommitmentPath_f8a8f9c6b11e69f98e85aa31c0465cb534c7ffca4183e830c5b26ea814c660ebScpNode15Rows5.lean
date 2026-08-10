import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node15_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6003 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6003 rho)
    (r6004 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6004 rho)
    (r6005 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6005 rho)
    (r6006 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6006 rho)
    (r6007 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6007 rho)
    (tail : next (rho 5813) (rho 5818) (rho 5823) (rho 5828) (rho 5833) (rho 5838) (rho 5843) (rho 5848) (rho 5853) (rho 5858) (rho 5863) (rho 5868) (rho 5873) (rho 5878) (rho 5883) (rho 5888) (rho 5893) (rho 5898) (rho 5903) (rho 5908) (rho 5913) (rho 5918) (rho 5923) (rho 5928) (rho 5933) (rho 5938) (rho 5943) (rho 5948) (rho 5953) (rho 5958) (rho 5963) (rho 5968) (rho 5973) (rho 5978) (rho 5983) (rho 5988) (rho 5993)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg50 (rho 5813) (rho 5818) (rho 5823) (rho 5828) (rho 5833) (rho 5838) (rho 5843) (rho 5848) (rho 5853) (rho 5858) (rho 5863) (rho 5868) (rho 5873) (rho 5878) (rho 5883) (rho 5888) (rho 5893) (rho 5898) (rho 5903) (rho 5908) (rho 5913) (rho 5918) (rho 5923) (rho 5928) (rho 5933) (rho 5938) (rho 5943) (rho 5948) (rho 5953) (rho 5958) (rho 5963) (rho 5968) (rho 5973) (rho 5978) (rho 5983) (rho 5988) next := by
  exact ⟨rho 5989, rho 5990, rho 5991, rho 5992, rho 5993, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6003 at r6003; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc143, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc143Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc143Part1] at r6003; linear_combination r6003), r6004, r6005, r6006, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6007 at r6007; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc143, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc143Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc143Part1] at r6007; linear_combination r6007), tail⟩

theorem template_scp_node15_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6008 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6008 rho)
    (r6009 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6009 rho)
    (r6010 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6010 rho)
    (r6011 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6011 rho)
    (r6012 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6012 rho)
    (tail : next (rho 5813) (rho 5818) (rho 5823) (rho 5828) (rho 5833) (rho 5838) (rho 5843) (rho 5848) (rho 5853) (rho 5858) (rho 5863) (rho 5868) (rho 5873) (rho 5878) (rho 5883) (rho 5888) (rho 5893) (rho 5898) (rho 5903) (rho 5908) (rho 5913) (rho 5918) (rho 5923) (rho 5928) (rho 5933) (rho 5938) (rho 5943) (rho 5948) (rho 5953) (rho 5958) (rho 5963) (rho 5968) (rho 5973) (rho 5978) (rho 5983) (rho 5988) (rho 5993) (rho 5998)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg51 (rho 5813) (rho 5818) (rho 5823) (rho 5828) (rho 5833) (rho 5838) (rho 5843) (rho 5848) (rho 5853) (rho 5858) (rho 5863) (rho 5868) (rho 5873) (rho 5878) (rho 5883) (rho 5888) (rho 5893) (rho 5898) (rho 5903) (rho 5908) (rho 5913) (rho 5918) (rho 5923) (rho 5928) (rho 5933) (rho 5938) (rho 5943) (rho 5948) (rho 5953) (rho 5958) (rho 5963) (rho 5968) (rho 5973) (rho 5978) (rho 5983) (rho 5988) (rho 5993) next := by
  exact ⟨rho 5994, rho 5995, rho 5996, rho 5997, rho 5998, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6008 at r6008; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc144, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc144Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc144Part1] at r6008; linear_combination r6008), r6009, r6010, r6011, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6012 at r6012; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc144, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc144Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc144Part1] at r6012; linear_combination r6012), tail⟩

theorem template_scp_node15_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6013 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6013 rho)
    (r6014 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6014 rho)
    (r6015 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6015 rho)
    (r6016 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6016 rho)
    (r6017 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6017 rho)
    (tail : next (rho 5813) (rho 5818) (rho 5823) (rho 5828) (rho 5833) (rho 5838) (rho 5843) (rho 5848) (rho 5853) (rho 5858) (rho 5863) (rho 5868) (rho 5873) (rho 5878) (rho 5883) (rho 5888) (rho 5893) (rho 5898) (rho 5903) (rho 5908) (rho 5913) (rho 5918) (rho 5923) (rho 5928) (rho 5933) (rho 5938) (rho 5943) (rho 5948) (rho 5953) (rho 5958) (rho 5963) (rho 5968) (rho 5973) (rho 5978) (rho 5983) (rho 5988) (rho 5993) (rho 5998) (rho 6003)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg52 (rho 5813) (rho 5818) (rho 5823) (rho 5828) (rho 5833) (rho 5838) (rho 5843) (rho 5848) (rho 5853) (rho 5858) (rho 5863) (rho 5868) (rho 5873) (rho 5878) (rho 5883) (rho 5888) (rho 5893) (rho 5898) (rho 5903) (rho 5908) (rho 5913) (rho 5918) (rho 5923) (rho 5928) (rho 5933) (rho 5938) (rho 5943) (rho 5948) (rho 5953) (rho 5958) (rho 5963) (rho 5968) (rho 5973) (rho 5978) (rho 5983) (rho 5988) (rho 5993) (rho 5998) next := by
  exact ⟨rho 5999, rho 6000, rho 6001, rho 6002, rho 6003, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6013 at r6013; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc145, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc145Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc145Part1] at r6013; linear_combination r6013), r6014, r6015, r6016, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6017 at r6017; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc145, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc145Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc145Part1] at r6017; linear_combination r6017), tail⟩

theorem template_scp_node15_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6018 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6018 rho)
    (r6019 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6019 rho)
    (r6020 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6020 rho)
    (r6021 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6021 rho)
    (r6022 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6022 rho)
    (tail : next (rho 5813) (rho 5818) (rho 5823) (rho 5828) (rho 5833) (rho 5838) (rho 5843) (rho 5848) (rho 5853) (rho 5858) (rho 5863) (rho 5868) (rho 5873) (rho 5878) (rho 5883) (rho 5888) (rho 5893) (rho 5898) (rho 5903) (rho 5908) (rho 5913) (rho 5918) (rho 5923) (rho 5928) (rho 5933) (rho 5938) (rho 5943) (rho 5948) (rho 5953) (rho 5958) (rho 5963) (rho 5968) (rho 5973) (rho 5978) (rho 5983) (rho 5988) (rho 5993) (rho 5998) (rho 6003) (rho 6008)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg53 (rho 5813) (rho 5818) (rho 5823) (rho 5828) (rho 5833) (rho 5838) (rho 5843) (rho 5848) (rho 5853) (rho 5858) (rho 5863) (rho 5868) (rho 5873) (rho 5878) (rho 5883) (rho 5888) (rho 5893) (rho 5898) (rho 5903) (rho 5908) (rho 5913) (rho 5918) (rho 5923) (rho 5928) (rho 5933) (rho 5938) (rho 5943) (rho 5948) (rho 5953) (rho 5958) (rho 5963) (rho 5968) (rho 5973) (rho 5978) (rho 5983) (rho 5988) (rho 5993) (rho 5998) (rho 6003) next := by
  exact ⟨rho 6004, rho 6005, rho 6006, rho 6007, rho 6008, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6018 at r6018; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc146, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc146Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc146Part1] at r6018; linear_combination r6018), r6019, r6020, r6021, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6022 at r6022; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc146, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc146Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc146Part1] at r6022; linear_combination r6022), tail⟩

theorem template_scp_node15_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6023 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6023 rho)
    (r6024 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6024 rho)
    (r6025 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6025 rho)
    (r6026 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6026 rho)
    (r6027 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6027 rho)
    (tail : next (rho 5993) (rho 5998) (rho 6003) (rho 6008) (rho 6013)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg54 (rho 5813) (rho 5818) (rho 5823) (rho 5828) (rho 5833) (rho 5838) (rho 5843) (rho 5848) (rho 5853) (rho 5858) (rho 5863) (rho 5868) (rho 5873) (rho 5878) (rho 5883) (rho 5888) (rho 5893) (rho 5898) (rho 5903) (rho 5908) (rho 5913) (rho 5918) (rho 5923) (rho 5928) (rho 5933) (rho 5938) (rho 5943) (rho 5948) (rho 5953) (rho 5958) (rho 5963) (rho 5968) (rho 5973) (rho 5978) (rho 5983) (rho 5988) (rho 5993) (rho 5998) (rho 6003) (rho 6008) next := by
  exact ⟨rho 6009, rho 6010, rho 6011, rho 6012, rho 6013, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6023 at r6023; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc147, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc147Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc147Part1] at r6023; linear_combination r6023), r6024, r6025, r6026, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6027 at r6027; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc147, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc147Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc147Part1] at r6027; linear_combination r6027), tail⟩

theorem template_scp_node15_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6028 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6028 rho)
    (r6029 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6029 rho)
    (r6030 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6030 rho)
    (r6031 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6031 rho)
    (r6032 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6032 rho)
    (tail : next (rho 5993) (rho 5998) (rho 6003) (rho 6008) (rho 6013) (rho 6018)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg55 (rho 5993) (rho 5998) (rho 6003) (rho 6008) (rho 6013) next := by
  exact ⟨rho 6014, rho 6015, rho 6016, rho 6017, rho 6018, r6028, r6029, r6030, r6031, r6032, tail⟩

theorem template_scp_node15_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6033 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6033 rho)
    (r6034 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6034 rho)
    (r6035 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6035 rho)
    (r6036 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6036 rho)
    (r6037 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6037 rho)
    (tail : next (rho 5993) (rho 5998) (rho 6003) (rho 6008) (rho 6013) (rho 6018) (rho 6023)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg56 (rho 5993) (rho 5998) (rho 6003) (rho 6008) (rho 6013) (rho 6018) next := by
  exact ⟨rho 6019, rho 6020, rho 6021, rho 6022, rho 6023, r6033, r6034, r6035, r6036, r6037, tail⟩

theorem template_scp_node15_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6038 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6038 rho)
    (r6039 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6039 rho)
    (r6040 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6040 rho)
    (r6041 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6041 rho)
    (r6042 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6042 rho)
    (tail : next (rho 5993) (rho 5998) (rho 6003) (rho 6008) (rho 6013) (rho 6018) (rho 6023) (rho 6028)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg57 (rho 5993) (rho 5998) (rho 6003) (rho 6008) (rho 6013) (rho 6018) (rho 6023) next := by
  exact ⟨rho 6024, rho 6025, rho 6026, rho 6027, rho 6028, r6038, r6039, r6040, r6041, r6042, tail⟩

theorem template_scp_node15_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6043 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6043 rho)
    (r6044 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6044 rho)
    (r6045 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6045 rho)
    (r6046 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6046 rho)
    (r6047 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6047 rho)
    (tail : next (rho 5993) (rho 5998) (rho 6003) (rho 6008) (rho 6013) (rho 6018) (rho 6023) (rho 6028) (rho 6033)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg58 (rho 5993) (rho 5998) (rho 6003) (rho 6008) (rho 6013) (rho 6018) (rho 6023) (rho 6028) next := by
  exact ⟨rho 6029, rho 6030, rho 6031, rho 6032, rho 6033, r6043, r6044, r6045, r6046, r6047, tail⟩

theorem template_scp_node15_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6048 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6048 rho)
    (r6049 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6049 rho)
    (r6050 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6050 rho)
    (r6051 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6051 rho)
    (r6052 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6052 rho)
    (tail : next (rho 6018) (rho 6023) (rho 6028) (rho 6033) (rho 6038)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg59 (rho 5993) (rho 5998) (rho 6003) (rho 6008) (rho 6013) (rho 6018) (rho 6023) (rho 6028) (rho 6033) next := by
  exact ⟨rho 6034, rho 6035, rho 6036, rho 6037, rho 6038, r6048, r6049, r6050, r6051, r6052, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
