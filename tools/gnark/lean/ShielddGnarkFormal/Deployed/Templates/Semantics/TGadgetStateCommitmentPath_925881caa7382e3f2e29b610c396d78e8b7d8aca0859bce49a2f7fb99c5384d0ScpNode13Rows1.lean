import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node13_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5075 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5075 rho)
    (r5076 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5076 rho)
    (r5077 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5077 rho)
    (r5078 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5078 rho)
    (r5079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5079 rho)
    (tail : next (rho 5043) (rho 5048) (rho 5053) (rho 5058) (rho 5063) (rho 5068) (rho 5073)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg10 (rho 5043) (rho 5048) (rho 5053) (rho 5058) (rho 5063) (rho 5068) next := by
  exact ⟨rho 5069, rho 5070, rho 5071, rho 5072, rho 5073, r5075, r5076, r5077, r5078, r5079, tail⟩

theorem template_scp_node13_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5080 rho)
    (r5081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5081 rho)
    (r5082 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5082 rho)
    (r5083 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5083 rho)
    (r5084 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5084 rho)
    (tail : next (rho 5043) (rho 5048) (rho 5053) (rho 5058) (rho 5063) (rho 5068) (rho 5073) (rho 5078)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg11 (rho 5043) (rho 5048) (rho 5053) (rho 5058) (rho 5063) (rho 5068) (rho 5073) next := by
  exact ⟨rho 5074, rho 5075, rho 5076, rho 5077, rho 5078, r5080, r5081, r5082, r5083, r5084, tail⟩

theorem template_scp_node13_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5085 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5085 rho)
    (r5086 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5086 rho)
    (r5087 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5087 rho)
    (r5088 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5088 rho)
    (r5089 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5089 rho)
    (tail : next (rho 5043) (rho 5048) (rho 5053) (rho 5058) (rho 5063) (rho 5068) (rho 5073) (rho 5078) (rho 5083)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg12 (rho 5043) (rho 5048) (rho 5053) (rho 5058) (rho 5063) (rho 5068) (rho 5073) (rho 5078) next := by
  exact ⟨rho 5079, rho 5080, rho 5081, rho 5082, rho 5083, r5085, r5086, r5087, r5088, r5089, tail⟩

theorem template_scp_node13_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5090 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5090 rho)
    (r5091 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5091 rho)
    (r5092 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5092 rho)
    (r5093 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5093 rho)
    (r5094 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5094 rho)
    (tail : next (rho 5068) (rho 5073) (rho 5078) (rho 5083) (rho 5088)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg13 (rho 5043) (rho 5048) (rho 5053) (rho 5058) (rho 5063) (rho 5068) (rho 5073) (rho 5078) (rho 5083) next := by
  exact ⟨rho 5084, rho 5085, rho 5086, rho 5087, rho 5088, r5090, r5091, r5092, r5093, r5094, tail⟩

theorem template_scp_node13_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5095 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5095 rho)
    (r5096 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5096 rho)
    (r5097 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5097 rho)
    (r5098 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5098 rho)
    (r5099 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5099 rho)
    (tail : next (rho 5068) (rho 5073) (rho 5078) (rho 5083) (rho 5088) (rho 5093)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg14 (rho 5068) (rho 5073) (rho 5078) (rho 5083) (rho 5088) next := by
  exact ⟨rho 5089, rho 5090, rho 5091, rho 5092, rho 5093, r5095, r5096, r5097, r5098, r5099, tail⟩

theorem template_scp_node13_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5100 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5100 rho)
    (r5101 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5101 rho)
    (r5102 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5102 rho)
    (r5103 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5103 rho)
    (r5104 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5104 rho)
    (tail : next (rho 5068) (rho 5073) (rho 5078) (rho 5083) (rho 5088) (rho 5093) (rho 5098)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg15 (rho 5068) (rho 5073) (rho 5078) (rho 5083) (rho 5088) (rho 5093) next := by
  exact ⟨rho 5094, rho 5095, rho 5096, rho 5097, rho 5098, r5100, r5101, r5102, r5103, r5104, tail⟩

theorem template_scp_node13_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5105 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5105 rho)
    (r5106 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5106 rho)
    (r5107 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5107 rho)
    (r5108 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5108 rho)
    (r5109 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5109 rho)
    (tail : next (rho 5068) (rho 5073) (rho 5078) (rho 5083) (rho 5088) (rho 5093) (rho 5098) (rho 5103)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg16 (rho 5068) (rho 5073) (rho 5078) (rho 5083) (rho 5088) (rho 5093) (rho 5098) next := by
  exact ⟨rho 5099, rho 5100, rho 5101, rho 5102, rho 5103, r5105, r5106, r5107, r5108, r5109, tail⟩

theorem template_scp_node13_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5110 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5110 rho)
    (r5111 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5111 rho)
    (r5112 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5112 rho)
    (r5113 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5113 rho)
    (r5114 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5114 rho)
    (tail : next (rho 5068) (rho 5073) (rho 5078) (rho 5083) (rho 5088) (rho 5093) (rho 5098) (rho 5103) (rho 5108)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg17 (rho 5068) (rho 5073) (rho 5078) (rho 5083) (rho 5088) (rho 5093) (rho 5098) (rho 5103) next := by
  exact ⟨rho 5104, rho 5105, rho 5106, rho 5107, rho 5108, r5110, r5111, r5112, r5113, r5114, tail⟩

theorem template_scp_node13_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5115 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5115 rho)
    (r5116 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5116 rho)
    (r5117 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5117 rho)
    (r5118 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5118 rho)
    (r5119 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5119 rho)
    (tail : next (rho 5093) (rho 5098) (rho 5103) (rho 5108) (rho 5113)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg18 (rho 5068) (rho 5073) (rho 5078) (rho 5083) (rho 5088) (rho 5093) (rho 5098) (rho 5103) (rho 5108) next := by
  exact ⟨rho 5109, rho 5110, rho 5111, rho 5112, rho 5113, r5115, r5116, r5117, r5118, r5119, tail⟩

theorem template_scp_node13_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5120 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5120 rho)
    (r5121 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5121 rho)
    (r5122 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5122 rho)
    (r5123 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5123 rho)
    (r5124 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5124 rho)
    (tail : next (rho 5093) (rho 5098) (rho 5103) (rho 5108) (rho 5113) (rho 5118)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg19 (rho 5093) (rho 5098) (rho 5103) (rho 5108) (rho 5113) next := by
  exact ⟨rho 5114, rho 5115, rho 5116, rho 5117, rho 5118, r5120, r5121, r5122, r5123, r5124, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
