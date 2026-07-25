import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node21_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8187 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8187 rho)
    (r8188 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8188 rho)
    (r8189 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8189 rho)
    (r8190 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8190 rho)
    (r8191 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8191 rho)
    (tail : next (rho 7991) (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061) (rho 8066) (rho 8071) (rho 8076) (rho 8081) (rho 8086) (rho 8091) (rho 8096) (rho 8101) (rho 8106) (rho 8111) (rho 8116) (rho 8121) (rho 8126) (rho 8131) (rho 8136) (rho 8141) (rho 8146) (rho 8151) (rho 8156) (rho 8161) (rho 8166) (rho 8171)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg50 (rho 7991) (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061) (rho 8066) (rho 8071) (rho 8076) (rho 8081) (rho 8086) (rho 8091) (rho 8096) (rho 8101) (rho 8106) (rho 8111) (rho 8116) (rho 8121) (rho 8126) (rho 8131) (rho 8136) (rho 8141) (rho 8146) (rho 8151) (rho 8156) (rho 8161) (rho 8166) next := by
  exact ⟨rho 8167, rho 8168, rho 8169, rho 8170, rho 8171, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8187 at r8187; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc197, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc197Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc197Part1] at r8187; linear_combination r8187), r8188, r8189, r8190, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8191 at r8191; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc197, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc197Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc197Part1] at r8191; linear_combination r8191), tail⟩

theorem template_scp_node21_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8192 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8192 rho)
    (r8193 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8193 rho)
    (r8194 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8194 rho)
    (r8195 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8195 rho)
    (r8196 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8196 rho)
    (tail : next (rho 7991) (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061) (rho 8066) (rho 8071) (rho 8076) (rho 8081) (rho 8086) (rho 8091) (rho 8096) (rho 8101) (rho 8106) (rho 8111) (rho 8116) (rho 8121) (rho 8126) (rho 8131) (rho 8136) (rho 8141) (rho 8146) (rho 8151) (rho 8156) (rho 8161) (rho 8166) (rho 8171) (rho 8176)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg51 (rho 7991) (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061) (rho 8066) (rho 8071) (rho 8076) (rho 8081) (rho 8086) (rho 8091) (rho 8096) (rho 8101) (rho 8106) (rho 8111) (rho 8116) (rho 8121) (rho 8126) (rho 8131) (rho 8136) (rho 8141) (rho 8146) (rho 8151) (rho 8156) (rho 8161) (rho 8166) (rho 8171) next := by
  exact ⟨rho 8172, rho 8173, rho 8174, rho 8175, rho 8176, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8192 at r8192; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc198, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc198Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc198Part1] at r8192; linear_combination r8192), r8193, r8194, r8195, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8196 at r8196; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc198, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc198Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc198Part1] at r8196; linear_combination r8196), tail⟩

theorem template_scp_node21_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8197 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8197 rho)
    (r8198 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8198 rho)
    (r8199 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8199 rho)
    (r8200 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8200 rho)
    (r8201 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8201 rho)
    (tail : next (rho 7991) (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061) (rho 8066) (rho 8071) (rho 8076) (rho 8081) (rho 8086) (rho 8091) (rho 8096) (rho 8101) (rho 8106) (rho 8111) (rho 8116) (rho 8121) (rho 8126) (rho 8131) (rho 8136) (rho 8141) (rho 8146) (rho 8151) (rho 8156) (rho 8161) (rho 8166) (rho 8171) (rho 8176) (rho 8181)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg52 (rho 7991) (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061) (rho 8066) (rho 8071) (rho 8076) (rho 8081) (rho 8086) (rho 8091) (rho 8096) (rho 8101) (rho 8106) (rho 8111) (rho 8116) (rho 8121) (rho 8126) (rho 8131) (rho 8136) (rho 8141) (rho 8146) (rho 8151) (rho 8156) (rho 8161) (rho 8166) (rho 8171) (rho 8176) next := by
  exact ⟨rho 8177, rho 8178, rho 8179, rho 8180, rho 8181, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8197 at r8197; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc199, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc199Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc199Part1] at r8197; linear_combination r8197), r8198, r8199, r8200, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8201 at r8201; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc199, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc199Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc199Part1] at r8201; linear_combination r8201), tail⟩

theorem template_scp_node21_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8202 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8202 rho)
    (r8203 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8203 rho)
    (r8204 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8204 rho)
    (r8205 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8205 rho)
    (r8206 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8206 rho)
    (tail : next (rho 7991) (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061) (rho 8066) (rho 8071) (rho 8076) (rho 8081) (rho 8086) (rho 8091) (rho 8096) (rho 8101) (rho 8106) (rho 8111) (rho 8116) (rho 8121) (rho 8126) (rho 8131) (rho 8136) (rho 8141) (rho 8146) (rho 8151) (rho 8156) (rho 8161) (rho 8166) (rho 8171) (rho 8176) (rho 8181) (rho 8186)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg53 (rho 7991) (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061) (rho 8066) (rho 8071) (rho 8076) (rho 8081) (rho 8086) (rho 8091) (rho 8096) (rho 8101) (rho 8106) (rho 8111) (rho 8116) (rho 8121) (rho 8126) (rho 8131) (rho 8136) (rho 8141) (rho 8146) (rho 8151) (rho 8156) (rho 8161) (rho 8166) (rho 8171) (rho 8176) (rho 8181) next := by
  exact ⟨rho 8182, rho 8183, rho 8184, rho 8185, rho 8186, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8202 at r8202; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc200, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc200Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc200Part1] at r8202; linear_combination r8202), r8203, r8204, r8205, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8206 at r8206; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc200, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc200Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc200Part1] at r8206; linear_combination r8206), tail⟩

theorem template_scp_node21_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8207 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8207 rho)
    (r8208 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8208 rho)
    (r8209 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8209 rho)
    (r8210 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8210 rho)
    (r8211 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8211 rho)
    (tail : next (rho 8171) (rho 8176) (rho 8181) (rho 8186) (rho 8191)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg54 (rho 7991) (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061) (rho 8066) (rho 8071) (rho 8076) (rho 8081) (rho 8086) (rho 8091) (rho 8096) (rho 8101) (rho 8106) (rho 8111) (rho 8116) (rho 8121) (rho 8126) (rho 8131) (rho 8136) (rho 8141) (rho 8146) (rho 8151) (rho 8156) (rho 8161) (rho 8166) (rho 8171) (rho 8176) (rho 8181) (rho 8186) next := by
  exact ⟨rho 8187, rho 8188, rho 8189, rho 8190, rho 8191, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8207 at r8207; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc201, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc201Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc201Part1] at r8207; linear_combination r8207), r8208, r8209, r8210, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8211 at r8211; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc201, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc201Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc201Part1] at r8211; linear_combination r8211), tail⟩

theorem template_scp_node21_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8212 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8212 rho)
    (r8213 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8213 rho)
    (r8214 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8214 rho)
    (r8215 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8215 rho)
    (r8216 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8216 rho)
    (tail : next (rho 8171) (rho 8176) (rho 8181) (rho 8186) (rho 8191) (rho 8196)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg55 (rho 8171) (rho 8176) (rho 8181) (rho 8186) (rho 8191) next := by
  exact ⟨rho 8192, rho 8193, rho 8194, rho 8195, rho 8196, r8212, r8213, r8214, r8215, r8216, tail⟩

theorem template_scp_node21_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8217 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8217 rho)
    (r8218 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8218 rho)
    (r8219 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8219 rho)
    (r8220 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8220 rho)
    (r8221 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8221 rho)
    (tail : next (rho 8171) (rho 8176) (rho 8181) (rho 8186) (rho 8191) (rho 8196) (rho 8201)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg56 (rho 8171) (rho 8176) (rho 8181) (rho 8186) (rho 8191) (rho 8196) next := by
  exact ⟨rho 8197, rho 8198, rho 8199, rho 8200, rho 8201, r8217, r8218, r8219, r8220, r8221, tail⟩

theorem template_scp_node21_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8222 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8222 rho)
    (r8223 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8223 rho)
    (r8224 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8224 rho)
    (r8225 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8225 rho)
    (r8226 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8226 rho)
    (tail : next (rho 8171) (rho 8176) (rho 8181) (rho 8186) (rho 8191) (rho 8196) (rho 8201) (rho 8206)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg57 (rho 8171) (rho 8176) (rho 8181) (rho 8186) (rho 8191) (rho 8196) (rho 8201) next := by
  exact ⟨rho 8202, rho 8203, rho 8204, rho 8205, rho 8206, r8222, r8223, r8224, r8225, r8226, tail⟩

theorem template_scp_node21_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8227 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8227 rho)
    (r8228 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8228 rho)
    (r8229 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8229 rho)
    (r8230 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8230 rho)
    (r8231 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8231 rho)
    (tail : next (rho 8171) (rho 8176) (rho 8181) (rho 8186) (rho 8191) (rho 8196) (rho 8201) (rho 8206) (rho 8211)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg58 (rho 8171) (rho 8176) (rho 8181) (rho 8186) (rho 8191) (rho 8196) (rho 8201) (rho 8206) next := by
  exact ⟨rho 8207, rho 8208, rho 8209, rho 8210, rho 8211, r8227, r8228, r8229, r8230, r8231, tail⟩

theorem template_scp_node21_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8232 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8232 rho)
    (r8233 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8233 rho)
    (r8234 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8234 rho)
    (r8235 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8235 rho)
    (r8236 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8236 rho)
    (tail : next (rho 8196) (rho 8201) (rho 8206) (rho 8211) (rho 8216)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg59 (rho 8171) (rho 8176) (rho 8181) (rho 8186) (rho 8191) (rho 8196) (rho 8201) (rho 8206) (rho 8211) next := by
  exact ⟨rho 8212, rho 8213, rho 8214, rho 8215, rho 8216, r8232, r8233, r8234, r8235, r8236, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

