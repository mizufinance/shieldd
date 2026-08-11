import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node13_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5275 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5275 rho)
    (r5276 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5276 rho)
    (r5277 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5277 rho)
    (r5278 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5278 rho)
    (r5279 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5279 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152) (rho 5157) (rho 5162) (rho 5167) (rho 5172) (rho 5177) (rho 5182) (rho 5187) (rho 5192) (rho 5197) (rho 5202) (rho 5207) (rho 5212) (rho 5217) (rho 5222) (rho 5227) (rho 5232) (rho 5237) (rho 5242) (rho 5247) (rho 5252) (rho 5257) (rho 5262) (rho 5267)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg50 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152) (rho 5157) (rho 5162) (rho 5167) (rho 5172) (rho 5177) (rho 5182) (rho 5187) (rho 5192) (rho 5197) (rho 5202) (rho 5207) (rho 5212) (rho 5217) (rho 5222) (rho 5227) (rho 5232) (rho 5237) (rho 5242) (rho 5247) (rho 5252) (rho 5257) (rho 5262) next := by
  exact ⟨rho 5263, rho 5264, rho 5265, rho 5266, rho 5267, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5275 at r5275; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc125, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc125Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc125Part1] at r5275; linear_combination r5275), r5276, r5277, r5278, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5279 at r5279; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc125, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc125Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc125Part1] at r5279; linear_combination r5279), tail⟩

theorem template_scp_node13_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5280 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5280 rho)
    (r5281 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5281 rho)
    (r5282 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5282 rho)
    (r5283 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5283 rho)
    (r5284 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5284 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152) (rho 5157) (rho 5162) (rho 5167) (rho 5172) (rho 5177) (rho 5182) (rho 5187) (rho 5192) (rho 5197) (rho 5202) (rho 5207) (rho 5212) (rho 5217) (rho 5222) (rho 5227) (rho 5232) (rho 5237) (rho 5242) (rho 5247) (rho 5252) (rho 5257) (rho 5262) (rho 5267) (rho 5272)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg51 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152) (rho 5157) (rho 5162) (rho 5167) (rho 5172) (rho 5177) (rho 5182) (rho 5187) (rho 5192) (rho 5197) (rho 5202) (rho 5207) (rho 5212) (rho 5217) (rho 5222) (rho 5227) (rho 5232) (rho 5237) (rho 5242) (rho 5247) (rho 5252) (rho 5257) (rho 5262) (rho 5267) next := by
  exact ⟨rho 5268, rho 5269, rho 5270, rho 5271, rho 5272, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5280 at r5280; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc126, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc126Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc126Part1] at r5280; linear_combination r5280), r5281, r5282, r5283, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5284 at r5284; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc126, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc126Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc126Part1] at r5284; linear_combination r5284), tail⟩

theorem template_scp_node13_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5285 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5285 rho)
    (r5286 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5286 rho)
    (r5287 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5287 rho)
    (r5288 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5288 rho)
    (r5289 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5289 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152) (rho 5157) (rho 5162) (rho 5167) (rho 5172) (rho 5177) (rho 5182) (rho 5187) (rho 5192) (rho 5197) (rho 5202) (rho 5207) (rho 5212) (rho 5217) (rho 5222) (rho 5227) (rho 5232) (rho 5237) (rho 5242) (rho 5247) (rho 5252) (rho 5257) (rho 5262) (rho 5267) (rho 5272) (rho 5277)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg52 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152) (rho 5157) (rho 5162) (rho 5167) (rho 5172) (rho 5177) (rho 5182) (rho 5187) (rho 5192) (rho 5197) (rho 5202) (rho 5207) (rho 5212) (rho 5217) (rho 5222) (rho 5227) (rho 5232) (rho 5237) (rho 5242) (rho 5247) (rho 5252) (rho 5257) (rho 5262) (rho 5267) (rho 5272) next := by
  exact ⟨rho 5273, rho 5274, rho 5275, rho 5276, rho 5277, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5285 at r5285; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc127, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc127Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc127Part1] at r5285; linear_combination r5285), r5286, r5287, r5288, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5289 at r5289; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc127, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc127Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc127Part1] at r5289; linear_combination r5289), tail⟩

theorem template_scp_node13_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5290 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5290 rho)
    (r5291 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5291 rho)
    (r5292 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5292 rho)
    (r5293 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5293 rho)
    (r5294 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5294 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152) (rho 5157) (rho 5162) (rho 5167) (rho 5172) (rho 5177) (rho 5182) (rho 5187) (rho 5192) (rho 5197) (rho 5202) (rho 5207) (rho 5212) (rho 5217) (rho 5222) (rho 5227) (rho 5232) (rho 5237) (rho 5242) (rho 5247) (rho 5252) (rho 5257) (rho 5262) (rho 5267) (rho 5272) (rho 5277) (rho 5282)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg53 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152) (rho 5157) (rho 5162) (rho 5167) (rho 5172) (rho 5177) (rho 5182) (rho 5187) (rho 5192) (rho 5197) (rho 5202) (rho 5207) (rho 5212) (rho 5217) (rho 5222) (rho 5227) (rho 5232) (rho 5237) (rho 5242) (rho 5247) (rho 5252) (rho 5257) (rho 5262) (rho 5267) (rho 5272) (rho 5277) next := by
  exact ⟨rho 5278, rho 5279, rho 5280, rho 5281, rho 5282, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5290 at r5290; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc128, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc128Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc128Part1] at r5290; linear_combination r5290), r5291, r5292, r5293, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5294 at r5294; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc128, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc128Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc128Part1] at r5294; linear_combination r5294), tail⟩

theorem template_scp_node13_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5295 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5295 rho)
    (r5296 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5296 rho)
    (r5297 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5297 rho)
    (r5298 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5298 rho)
    (r5299 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5299 rho)
    (tail : next (rho 5267) (rho 5272) (rho 5277) (rho 5282) (rho 5287)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg54 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152) (rho 5157) (rho 5162) (rho 5167) (rho 5172) (rho 5177) (rho 5182) (rho 5187) (rho 5192) (rho 5197) (rho 5202) (rho 5207) (rho 5212) (rho 5217) (rho 5222) (rho 5227) (rho 5232) (rho 5237) (rho 5242) (rho 5247) (rho 5252) (rho 5257) (rho 5262) (rho 5267) (rho 5272) (rho 5277) (rho 5282) next := by
  exact ⟨rho 5283, rho 5284, rho 5285, rho 5286, rho 5287, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5295 at r5295; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc129, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc129Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc129Part1] at r5295; linear_combination r5295), r5296, r5297, r5298, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5299 at r5299; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc129, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc129Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc129Part1] at r5299; linear_combination r5299), tail⟩

theorem template_scp_node13_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5300 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5300 rho)
    (r5301 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5301 rho)
    (r5302 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5302 rho)
    (r5303 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5303 rho)
    (r5304 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5304 rho)
    (tail : next (rho 5267) (rho 5272) (rho 5277) (rho 5282) (rho 5287) (rho 5292)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg55 (rho 5267) (rho 5272) (rho 5277) (rho 5282) (rho 5287) next := by
  exact ⟨rho 5288, rho 5289, rho 5290, rho 5291, rho 5292, r5300, r5301, r5302, r5303, r5304, tail⟩

theorem template_scp_node13_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5305 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5305 rho)
    (r5306 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5306 rho)
    (r5307 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5307 rho)
    (r5308 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5308 rho)
    (r5309 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5309 rho)
    (tail : next (rho 5267) (rho 5272) (rho 5277) (rho 5282) (rho 5287) (rho 5292) (rho 5297)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg56 (rho 5267) (rho 5272) (rho 5277) (rho 5282) (rho 5287) (rho 5292) next := by
  exact ⟨rho 5293, rho 5294, rho 5295, rho 5296, rho 5297, r5305, r5306, r5307, r5308, r5309, tail⟩

theorem template_scp_node13_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5310 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5310 rho)
    (r5311 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5311 rho)
    (r5312 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5312 rho)
    (r5313 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5313 rho)
    (r5314 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5314 rho)
    (tail : next (rho 5267) (rho 5272) (rho 5277) (rho 5282) (rho 5287) (rho 5292) (rho 5297) (rho 5302)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg57 (rho 5267) (rho 5272) (rho 5277) (rho 5282) (rho 5287) (rho 5292) (rho 5297) next := by
  exact ⟨rho 5298, rho 5299, rho 5300, rho 5301, rho 5302, r5310, r5311, r5312, r5313, r5314, tail⟩

theorem template_scp_node13_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5315 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5315 rho)
    (r5316 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5316 rho)
    (r5317 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5317 rho)
    (r5318 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5318 rho)
    (r5319 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5319 rho)
    (tail : next (rho 5267) (rho 5272) (rho 5277) (rho 5282) (rho 5287) (rho 5292) (rho 5297) (rho 5302) (rho 5307)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg58 (rho 5267) (rho 5272) (rho 5277) (rho 5282) (rho 5287) (rho 5292) (rho 5297) (rho 5302) next := by
  exact ⟨rho 5303, rho 5304, rho 5305, rho 5306, rho 5307, r5315, r5316, r5317, r5318, r5319, tail⟩

theorem template_scp_node13_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5320 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5320 rho)
    (r5321 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5321 rho)
    (r5322 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5322 rho)
    (r5323 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5323 rho)
    (r5324 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5324 rho)
    (tail : next (rho 5292) (rho 5297) (rho 5302) (rho 5307) (rho 5312)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg59 (rho 5267) (rho 5272) (rho 5277) (rho 5282) (rho 5287) (rho 5292) (rho 5297) (rho 5302) (rho 5307) next := by
  exact ⟨rho 5308, rho 5309, rho 5310, rho 5311, rho 5312, r5320, r5321, r5322, r5323, r5324, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
