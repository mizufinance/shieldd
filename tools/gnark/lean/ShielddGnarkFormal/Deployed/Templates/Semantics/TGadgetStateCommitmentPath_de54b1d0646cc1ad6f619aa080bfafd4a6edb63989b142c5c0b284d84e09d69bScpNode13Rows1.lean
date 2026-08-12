import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node13_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5075 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5075 rho)
    (r5076 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5076 rho)
    (r5077 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5077 rho)
    (r5078 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5078 rho)
    (r5079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5079 rho)
    (tail : next (rho 5042) (rho 5047) (rho 5052) (rho 5057) (rho 5062) (rho 5067) (rho 5072)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg10 (rho 5042) (rho 5047) (rho 5052) (rho 5057) (rho 5062) (rho 5067) next := by
  exact ⟨rho 5068, rho 5069, rho 5070, rho 5071, rho 5072, r5075, r5076, r5077, r5078, r5079, tail⟩

theorem template_scp_node13_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5080 rho)
    (r5081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5081 rho)
    (r5082 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5082 rho)
    (r5083 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5083 rho)
    (r5084 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5084 rho)
    (tail : next (rho 5042) (rho 5047) (rho 5052) (rho 5057) (rho 5062) (rho 5067) (rho 5072) (rho 5077)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg11 (rho 5042) (rho 5047) (rho 5052) (rho 5057) (rho 5062) (rho 5067) (rho 5072) next := by
  exact ⟨rho 5073, rho 5074, rho 5075, rho 5076, rho 5077, r5080, r5081, r5082, r5083, r5084, tail⟩

theorem template_scp_node13_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5085 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5085 rho)
    (r5086 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5086 rho)
    (r5087 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5087 rho)
    (r5088 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5088 rho)
    (r5089 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5089 rho)
    (tail : next (rho 5042) (rho 5047) (rho 5052) (rho 5057) (rho 5062) (rho 5067) (rho 5072) (rho 5077) (rho 5082)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg12 (rho 5042) (rho 5047) (rho 5052) (rho 5057) (rho 5062) (rho 5067) (rho 5072) (rho 5077) next := by
  exact ⟨rho 5078, rho 5079, rho 5080, rho 5081, rho 5082, r5085, r5086, r5087, r5088, r5089, tail⟩

theorem template_scp_node13_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5090 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5090 rho)
    (r5091 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5091 rho)
    (r5092 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5092 rho)
    (r5093 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5093 rho)
    (r5094 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5094 rho)
    (tail : next (rho 5067) (rho 5072) (rho 5077) (rho 5082) (rho 5087)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg13 (rho 5042) (rho 5047) (rho 5052) (rho 5057) (rho 5062) (rho 5067) (rho 5072) (rho 5077) (rho 5082) next := by
  exact ⟨rho 5083, rho 5084, rho 5085, rho 5086, rho 5087, r5090, r5091, r5092, r5093, r5094, tail⟩

theorem template_scp_node13_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5095 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5095 rho)
    (r5096 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5096 rho)
    (r5097 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5097 rho)
    (r5098 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5098 rho)
    (r5099 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5099 rho)
    (tail : next (rho 5067) (rho 5072) (rho 5077) (rho 5082) (rho 5087) (rho 5092)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg14 (rho 5067) (rho 5072) (rho 5077) (rho 5082) (rho 5087) next := by
  exact ⟨rho 5088, rho 5089, rho 5090, rho 5091, rho 5092, r5095, r5096, r5097, r5098, r5099, tail⟩

theorem template_scp_node13_seg15 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5100 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5100 rho)
    (r5101 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5101 rho)
    (r5102 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5102 rho)
    (r5103 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5103 rho)
    (r5104 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5104 rho)
    (tail : next (rho 5067) (rho 5072) (rho 5077) (rho 5082) (rho 5087) (rho 5092) (rho 5097)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg15 (rho 5067) (rho 5072) (rho 5077) (rho 5082) (rho 5087) (rho 5092) next := by
  exact ⟨rho 5093, rho 5094, rho 5095, rho 5096, rho 5097, r5100, r5101, r5102, r5103, r5104, tail⟩

theorem template_scp_node13_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5105 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5105 rho)
    (r5106 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5106 rho)
    (r5107 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5107 rho)
    (r5108 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5108 rho)
    (r5109 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5109 rho)
    (tail : next (rho 5067) (rho 5072) (rho 5077) (rho 5082) (rho 5087) (rho 5092) (rho 5097) (rho 5102)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg16 (rho 5067) (rho 5072) (rho 5077) (rho 5082) (rho 5087) (rho 5092) (rho 5097) next := by
  exact ⟨rho 5098, rho 5099, rho 5100, rho 5101, rho 5102, r5105, r5106, r5107, r5108, r5109, tail⟩

theorem template_scp_node13_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5110 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5110 rho)
    (r5111 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5111 rho)
    (r5112 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5112 rho)
    (r5113 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5113 rho)
    (r5114 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5114 rho)
    (tail : next (rho 5067) (rho 5072) (rho 5077) (rho 5082) (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg17 (rho 5067) (rho 5072) (rho 5077) (rho 5082) (rho 5087) (rho 5092) (rho 5097) (rho 5102) next := by
  exact ⟨rho 5103, rho 5104, rho 5105, rho 5106, rho 5107, r5110, r5111, r5112, r5113, r5114, tail⟩

theorem template_scp_node13_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r5115 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5115 rho)
    (r5116 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5116 rho)
    (r5117 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5117 rho)
    (r5118 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5118 rho)
    (r5119 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5119 rho)
    (tail : next (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg18 (rho 5067) (rho 5072) (rho 5077) (rho 5082) (rho 5087) (rho 5092) (rho 5097) (rho 5102) (rho 5107) next := by
  exact ⟨rho 5108, rho 5109, rho 5110, rho 5111, rho 5112, r5115, r5116, r5117, r5118, r5119, tail⟩

theorem template_scp_node13_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r5120 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5120 rho)
    (r5121 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5121 rho)
    (r5122 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5122 rho)
    (r5123 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5123 rho)
    (r5124 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow5124 rho)
    (tail : next (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) (rho 5117)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_5df12c.seg19 (rho 5092) (rho 5097) (rho 5102) (rho 5107) (rho 5112) next := by
  exact ⟨rho 5113, rho 5114, rho 5115, rho 5116, rho 5117, r5120, r5121, r5122, r5123, r5124, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
