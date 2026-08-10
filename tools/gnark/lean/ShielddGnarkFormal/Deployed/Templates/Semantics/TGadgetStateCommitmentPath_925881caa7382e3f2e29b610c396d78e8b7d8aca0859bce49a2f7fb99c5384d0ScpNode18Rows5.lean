import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node18_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7095 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7095 rho)
    (r7096 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7096 rho)
    (r7097 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7097 rho)
    (r7098 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7098 rho)
    (r7099 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7099 rho)
    (tail : next (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg50 (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) next := by
  exact ⟨rho 7084, rho 7085, rho 7086, rho 7087, rho 7088, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7095 at r7095; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc170, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc170Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc170Part1] at r7095; linear_combination r7095), r7096, r7097, r7098, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7099 at r7099; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc170, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc170Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc170Part1] at r7099; linear_combination r7099), tail⟩

theorem template_scp_node18_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7100 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7100 rho)
    (r7101 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7101 rho)
    (r7102 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7102 rho)
    (r7103 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7103 rho)
    (r7104 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7104 rho)
    (tail : next (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg51 (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) next := by
  exact ⟨rho 7089, rho 7090, rho 7091, rho 7092, rho 7093, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7100 at r7100; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc171, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc171Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc171Part1] at r7100; linear_combination r7100), r7101, r7102, r7103, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7104 at r7104; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc171, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc171Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc171Part1] at r7104; linear_combination r7104), tail⟩

theorem template_scp_node18_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7105 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7105 rho)
    (r7106 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7106 rho)
    (r7107 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7107 rho)
    (r7108 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7108 rho)
    (r7109 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7109 rho)
    (tail : next (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg52 (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) next := by
  exact ⟨rho 7094, rho 7095, rho 7096, rho 7097, rho 7098, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7105 at r7105; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc172, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc172Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc172Part1] at r7105; linear_combination r7105), r7106, r7107, r7108, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7109 at r7109; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc172, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc172Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc172Part1] at r7109; linear_combination r7109), tail⟩

theorem template_scp_node18_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7110 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7110 rho)
    (r7111 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7111 rho)
    (r7112 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7112 rho)
    (r7113 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7113 rho)
    (r7114 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7114 rho)
    (tail : next (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098) (rho 7103)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg53 (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098) next := by
  exact ⟨rho 7099, rho 7100, rho 7101, rho 7102, rho 7103, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7110 at r7110; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc173, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc173Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc173Part1] at r7110; linear_combination r7110), r7111, r7112, r7113, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7114 at r7114; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc173, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc173Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc173Part1] at r7114; linear_combination r7114), tail⟩

theorem template_scp_node18_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7115 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7115 rho)
    (r7116 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7116 rho)
    (r7117 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7117 rho)
    (r7118 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7118 rho)
    (r7119 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7119 rho)
    (tail : next (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg54 (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933) (rho 6938) (rho 6943) (rho 6948) (rho 6953) (rho 6958) (rho 6963) (rho 6968) (rho 6973) (rho 6978) (rho 6983) (rho 6988) (rho 6993) (rho 6998) (rho 7003) (rho 7008) (rho 7013) (rho 7018) (rho 7023) (rho 7028) (rho 7033) (rho 7038) (rho 7043) (rho 7048) (rho 7053) (rho 7058) (rho 7063) (rho 7068) (rho 7073) (rho 7078) (rho 7083) (rho 7088) (rho 7093) (rho 7098) (rho 7103) next := by
  exact ⟨rho 7104, rho 7105, rho 7106, rho 7107, rho 7108, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7115 at r7115; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc174, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc174Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc174Part1] at r7115; linear_combination r7115), r7116, r7117, r7118, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7119 at r7119; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc174, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc174Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc174Part1] at r7119; linear_combination r7119), tail⟩

theorem template_scp_node18_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7120 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7120 rho)
    (r7121 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7121 rho)
    (r7122 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7122 rho)
    (r7123 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7123 rho)
    (r7124 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7124 rho)
    (tail : next (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg55 (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) next := by
  exact ⟨rho 7109, rho 7110, rho 7111, rho 7112, rho 7113, r7120, r7121, r7122, r7123, r7124, tail⟩

theorem template_scp_node18_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7125 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7125 rho)
    (r7126 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7126 rho)
    (r7127 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7127 rho)
    (r7128 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7128 rho)
    (r7129 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7129 rho)
    (tail : next (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg56 (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) next := by
  exact ⟨rho 7114, rho 7115, rho 7116, rho 7117, rho 7118, r7125, r7126, r7127, r7128, r7129, tail⟩

theorem template_scp_node18_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7130 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7130 rho)
    (r7131 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7131 rho)
    (r7132 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7132 rho)
    (r7133 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7133 rho)
    (r7134 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7134 rho)
    (tail : next (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg57 (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) next := by
  exact ⟨rho 7119, rho 7120, rho 7121, rho 7122, rho 7123, r7130, r7131, r7132, r7133, r7134, tail⟩

theorem template_scp_node18_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r7135 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7135 rho)
    (r7136 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7136 rho)
    (r7137 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7137 rho)
    (r7138 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7138 rho)
    (r7139 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7139 rho)
    (tail : next (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg58 (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) next := by
  exact ⟨rho 7124, rho 7125, rho 7126, rho 7127, rho 7128, r7135, r7136, r7137, r7138, r7139, tail⟩

theorem template_scp_node18_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7140 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7140 rho)
    (r7141 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7141 rho)
    (r7142 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7142 rho)
    (r7143 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7143 rho)
    (r7144 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7144 rho)
    (tail : next (rho 7113) (rho 7118) (rho 7123) (rho 7128) (rho 7133)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg59 (rho 7088) (rho 7093) (rho 7098) (rho 7103) (rho 7108) (rho 7113) (rho 7118) (rho 7123) (rho 7128) next := by
  exact ⟨rho 7129, rho 7130, rho 7131, rho 7132, rho 7133, r7140, r7141, r7142, r7143, r7144, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
