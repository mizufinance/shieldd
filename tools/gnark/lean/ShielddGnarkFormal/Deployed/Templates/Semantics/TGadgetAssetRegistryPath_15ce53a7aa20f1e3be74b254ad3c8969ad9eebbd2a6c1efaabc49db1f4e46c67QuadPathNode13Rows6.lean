import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathBase
import ShielddGnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node13_seg60 (rho : Nat → F)
    (next : F → F → F → F → F → F → Prop)
    (r5079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5079 rho)
    (r5080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5080 rho)
    (r5081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5081 rho)
    (r5082 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5082 rho)
    (r5083 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5083 rho)
    (tail : next (rho 5051) (rho 5056) (rho 5061) (rho 5066) (rho 5071) (rho 5076)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg60 (rho 5051) (rho 5056) (rho 5061) (rho 5066) (rho 5071) next := by
  exact ⟨rho 5072, rho 5073, rho 5074, rho 5075, rho 5076, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5079 at r5079; linear_combination r5079), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5080 at r5080; linear_combination r5080), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5081 at r5081; linear_combination r5081), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5082 at r5082; linear_combination r5082), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5083 at r5083; linear_combination r5083), tail⟩

theorem node13_seg61 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5084 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5084 rho)
    (r5085 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5085 rho)
    (r5086 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5086 rho)
    (r5087 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5087 rho)
    (r5088 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5088 rho)
    (tail : next (rho 5051) (rho 5056) (rho 5061) (rho 5066) (rho 5071) (rho 5076) (rho 5081)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg61 (rho 5051) (rho 5056) (rho 5061) (rho 5066) (rho 5071) (rho 5076) next := by
  exact ⟨rho 5077, rho 5078, rho 5079, rho 5080, rho 5081, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5084 at r5084; linear_combination r5084), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5085 at r5085; linear_combination r5085), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5086 at r5086; linear_combination r5086), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5087 at r5087; linear_combination r5087), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5088 at r5088; linear_combination r5088), tail⟩

theorem node13_seg62 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5089 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5089 rho)
    (r5090 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5090 rho)
    (r5091 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5091 rho)
    (r5092 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5092 rho)
    (r5093 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5093 rho)
    (tail : next (rho 5051) (rho 5056) (rho 5061) (rho 5066) (rho 5071) (rho 5076) (rho 5081) (rho 5086)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg62 (rho 5051) (rho 5056) (rho 5061) (rho 5066) (rho 5071) (rho 5076) (rho 5081) next := by
  exact ⟨rho 5082, rho 5083, rho 5084, rho 5085, rho 5086, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5089 at r5089; linear_combination r5089), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5090 at r5090; linear_combination r5090), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5091 at r5091; linear_combination r5091), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5092 at r5092; linear_combination r5092), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5093 at r5093; linear_combination r5093), tail⟩

theorem node13_seg63 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5094 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5094 rho)
    (r5095 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5095 rho)
    (r5096 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5096 rho)
    (r5097 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5097 rho)
    (r5098 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5098 rho)
    (tail : next (rho 5051) (rho 5056) (rho 5061) (rho 5066) (rho 5071) (rho 5076) (rho 5081) (rho 5086) (rho 5091)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg63 (rho 5051) (rho 5056) (rho 5061) (rho 5066) (rho 5071) (rho 5076) (rho 5081) (rho 5086) next := by
  exact ⟨rho 5087, rho 5088, rho 5089, rho 5090, rho 5091, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5094 at r5094; linear_combination r5094), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5095 at r5095; linear_combination r5095), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5096 at r5096; linear_combination r5096), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5097 at r5097; linear_combination r5097), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5098 at r5098; linear_combination r5098), tail⟩

theorem node13_seg64 (rho : Nat → F)
    (next : F → F → F → F → F → Prop)
    (r5099 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5099 rho)
    (r5100 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5100 rho)
    (r5101 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5101 rho)
    (r5102 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5102 rho)
    (r5103 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5103 rho)
    (tail : next (rho 5076) (rho 5081) (rho 5086) (rho 5091) (rho 5096)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg64 (rho 5051) (rho 5056) (rho 5061) (rho 5066) (rho 5071) (rho 5076) (rho 5081) (rho 5086) (rho 5091) next := by
  exact ⟨rho 5092, rho 5093, rho 5094, rho 5095, rho 5096, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5099 at r5099; linear_combination r5099), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5100 at r5100; linear_combination r5100), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5101 at r5101; linear_combination r5101), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5102 at r5102; linear_combination r5102), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5103 at r5103; linear_combination r5103), tail⟩

theorem node13_seg65 (rho : Nat → F)
    (next : F → F → F → F → F → F → Prop)
    (r5104 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5104 rho)
    (r5105 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5105 rho)
    (r5106 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5106 rho)
    (r5107 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5107 rho)
    (r5108 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5108 rho)
    (tail : next (rho 5076) (rho 5081) (rho 5086) (rho 5091) (rho 5096) (rho 5101)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg65 (rho 5076) (rho 5081) (rho 5086) (rho 5091) (rho 5096) next := by
  exact ⟨rho 5097, rho 5098, rho 5099, rho 5100, rho 5101, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5104 at r5104; linear_combination r5104), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5105 at r5105; linear_combination r5105), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5106 at r5106; linear_combination r5106), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5107 at r5107; linear_combination r5107), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5108 at r5108; linear_combination r5108), tail⟩

theorem node13_seg66 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5109 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5109 rho)
    (r5110 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5110 rho)
    (r5111 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5111 rho)
    (r5112 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5112 rho)
    (r5113 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5113 rho)
    (tail : next (rho 5076) (rho 5081) (rho 5086) (rho 5091) (rho 5096) (rho 5101) (rho 5106)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg66 (rho 5076) (rho 5081) (rho 5086) (rho 5091) (rho 5096) (rho 5101) next := by
  exact ⟨rho 5102, rho 5103, rho 5104, rho 5105, rho 5106, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5109 at r5109; linear_combination r5109), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5110 at r5110; linear_combination r5110), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5111 at r5111; linear_combination r5111), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5112 at r5112; linear_combination r5112), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5113 at r5113; linear_combination r5113), tail⟩

theorem node13_seg67 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5114 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5114 rho)
    (r5115 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5115 rho)
    (r5116 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5116 rho)
    (r5117 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5117 rho)
    (r5118 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5118 rho)
    (tail : next (rho 5076) (rho 5081) (rho 5086) (rho 5091) (rho 5096) (rho 5101) (rho 5106) (rho 5111)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg67 (rho 5076) (rho 5081) (rho 5086) (rho 5091) (rho 5096) (rho 5101) (rho 5106) next := by
  exact ⟨rho 5107, rho 5108, rho 5109, rho 5110, rho 5111, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5114 at r5114; linear_combination r5114), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5115 at r5115; linear_combination r5115), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5116 at r5116; linear_combination r5116), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5117 at r5117; linear_combination r5117), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5118 at r5118; linear_combination r5118), tail⟩

theorem node13_seg68 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5119 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5119 rho)
    (r5120 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5120 rho)
    (r5121 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5121 rho)
    (r5122 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5122 rho)
    (r5123 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5123 rho)
    (tail : next (rho 5076) (rho 5081) (rho 5086) (rho 5091) (rho 5096) (rho 5101) (rho 5106) (rho 5111) (rho 5116)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg68 (rho 5076) (rho 5081) (rho 5086) (rho 5091) (rho 5096) (rho 5101) (rho 5106) (rho 5111) next := by
  exact ⟨rho 5112, rho 5113, rho 5114, rho 5115, rho 5116, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5119 at r5119; linear_combination r5119), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5120 at r5120; linear_combination r5120), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5121 at r5121; linear_combination r5121), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5122 at r5122; linear_combination r5122), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5123 at r5123; linear_combination r5123), tail⟩

theorem node13_seg69 (rho : Nat → F)
    (next : F → F → F → F → F → Prop)
    (r5124 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5124 rho)
    (r5125 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5125 rho)
    (r5126 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5126 rho)
    (r5127 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5127 rho)
    (r5128 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5128 rho)
    (tail : next (rho 5101) (rho 5106) (rho 5111) (rho 5116) (rho 5121)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg69 (rho 5076) (rho 5081) (rho 5086) (rho 5091) (rho 5096) (rho 5101) (rho 5106) (rho 5111) (rho 5116) next := by
  exact ⟨rho 5117, rho 5118, rho 5119, rho 5120, rho 5121, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5124 at r5124; linear_combination r5124), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5125 at r5125; linear_combination r5125), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5126 at r5126; linear_combination r5126), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5127 at r5127; linear_combination r5127), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow5128 at r5128; linear_combination r5128), tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
