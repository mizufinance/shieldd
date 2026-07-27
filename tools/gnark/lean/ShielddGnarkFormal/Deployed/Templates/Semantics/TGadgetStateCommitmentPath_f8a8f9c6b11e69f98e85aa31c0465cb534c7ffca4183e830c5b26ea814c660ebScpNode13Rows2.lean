import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node13_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5125 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5125 rho)
    (r5126 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5126 rho)
    (r5127 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5127 rho)
    (r5128 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5128 rho)
    (r5129 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5129 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg20 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) next := by
  exact ⟨rho 5113, rho 5114, rho 5115, rho 5116, rho 5117, r5125, r5126, r5127, r5128, r5129, tail⟩

theorem template_scp_node13_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5130 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5130 rho)
    (r5131 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5131 rho)
    (r5132 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5132 rho)
    (r5133 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5133 rho)
    (r5134 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5134 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg21 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) next := by
  exact ⟨rho 5118, rho 5119, rho 5120, rho 5121, rho 5122, r5130, r5131, r5132, r5133, r5134, tail⟩

theorem template_scp_node13_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5135 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5135 rho)
    (r5136 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5136 rho)
    (r5137 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5137 rho)
    (r5138 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5138 rho)
    (r5139 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5139 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg22 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) next := by
  exact ⟨rho 5123, rho 5124, rho 5125, rho 5126, rho 5127, r5135, r5136, r5137, r5138, r5139, tail⟩

theorem template_scp_node13_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r5140 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5140 rho)
    (r5141 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5141 rho)
    (r5142 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5142 rho)
    (r5143 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5143 rho)
    (r5144 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5144 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg23 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) next := by
  exact ⟨rho 5128, rho 5129, rho 5130, rho 5131, rho 5132, r5140, r5141, r5142, r5143, r5144, tail⟩

theorem template_scp_node13_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5145 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5145 rho)
    (r5146 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5146 rho)
    (r5147 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5147 rho)
    (r5148 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5148 rho)
    (r5149 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5149 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg24 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) next := by
  exact ⟨rho 5133, rho 5134, rho 5135, rho 5136, rho 5137, r5145, r5146, r5147, r5148, r5149, tail⟩

theorem template_scp_node13_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5150 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5150 rho)
    (r5151 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5151 rho)
    (r5152 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5152 rho)
    (r5153 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5153 rho)
    (r5154 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5154 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg25 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) next := by
  exact ⟨rho 5138, rho 5139, rho 5140, rho 5141, rho 5142, r5150, r5151, r5152, r5153, r5154, tail⟩

theorem template_scp_node13_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5155 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5155 rho)
    (r5156 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5156 rho)
    (r5157 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5157 rho)
    (r5158 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5158 rho)
    (r5159 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5159 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg26 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) next := by
  exact ⟨rho 5143, rho 5144, rho 5145, rho 5146, rho 5147, r5155, r5156, r5157, r5158, r5159, tail⟩

theorem template_scp_node13_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5160 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5160 rho)
    (r5161 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5161 rho)
    (r5162 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5162 rho)
    (r5163 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5163 rho)
    (r5164 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5164 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg27 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) next := by
  exact ⟨rho 5148, rho 5149, rho 5150, rho 5151, rho 5152, r5160, r5161, r5162, r5163, r5164, tail⟩

theorem template_scp_node13_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5165 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5165 rho)
    (r5166 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5166 rho)
    (r5167 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5167 rho)
    (r5168 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5168 rho)
    (r5169 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5169 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152) (rho 5157)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg28 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152) next := by
  exact ⟨rho 5153, rho 5154, rho 5155, rho 5156, rho 5157, r5165, r5166, r5167, r5168, r5169, tail⟩

theorem template_scp_node13_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5170 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5170 rho)
    (r5171 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5171 rho)
    (r5172 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5172 rho)
    (r5173 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5173 rho)
    (r5174 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow5174 rho)
    (tail : next (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152) (rho 5157) (rho 5162)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg29 (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117) (rho 5122) (rho 5127) (rho 5132) (rho 5137) (rho 5142) (rho 5147) (rho 5152) (rho 5157) next := by
  exact ⟨rho 5158, rho 5159, rho 5160, rho 5161, rho 5162, r5170, r5171, r5172, r5173, r5174, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

