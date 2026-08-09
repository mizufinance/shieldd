import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathBase
import ShielddGnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node8_seg20 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3059 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3059 rho)
    (r3060 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3060 rho)
    (r3061 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3061 rho)
    (r3062 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3062 rho)
    (r3063 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3063 rho)
    (tail : next (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg20 (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) next := by
  exact ⟨rho 3057, rho 3058, rho 3059, rho 3060, rho 3061, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3059 at r3059; linear_combination r3059), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3060 at r3060; linear_combination r3060), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3061 at r3061; linear_combination r3061), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3062 at r3062; linear_combination r3062), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3063 at r3063; linear_combination r3063), tail⟩

theorem node8_seg21 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3064 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3064 rho)
    (r3065 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3065 rho)
    (r3066 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3066 rho)
    (r3067 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3067 rho)
    (r3068 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3068 rho)
    (tail : next (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg21 (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) next := by
  exact ⟨rho 3062, rho 3063, rho 3064, rho 3065, rho 3066, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3064 at r3064; linear_combination r3064), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3065 at r3065; linear_combination r3065), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3066 at r3066; linear_combination r3066), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3067 at r3067; linear_combination r3067), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3068 at r3068; linear_combination r3068), tail⟩

theorem node8_seg22 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3069 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3069 rho)
    (r3070 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3070 rho)
    (r3071 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3071 rho)
    (r3072 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3072 rho)
    (r3073 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3073 rho)
    (tail : next (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg22 (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) next := by
  exact ⟨rho 3067, rho 3068, rho 3069, rho 3070, rho 3071, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3069 at r3069; linear_combination r3069), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3070 at r3070; linear_combination r3070), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3071 at r3071; linear_combination r3071), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3072 at r3072; linear_combination r3072), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3073 at r3073; linear_combination r3073), tail⟩

theorem node8_seg23 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r3074 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3074 rho)
    (r3075 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3075 rho)
    (r3076 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3076 rho)
    (r3077 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3077 rho)
    (r3078 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3078 rho)
    (tail : next (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) (rho 3076)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg23 (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) next := by
  exact ⟨rho 3072, rho 3073, rho 3074, rho 3075, rho 3076, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3074 at r3074; linear_combination r3074), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3075 at r3075; linear_combination r3075), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3076 at r3076; linear_combination r3076), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3077 at r3077; linear_combination r3077), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3078 at r3078; linear_combination r3078), tail⟩

theorem node8_seg24 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3079 rho)
    (r3080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3080 rho)
    (r3081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3081 rho)
    (r3082 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3082 rho)
    (r3083 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3083 rho)
    (tail : next (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) (rho 3076) (rho 3081)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg24 (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) (rho 3076) next := by
  exact ⟨rho 3077, rho 3078, rho 3079, rho 3080, rho 3081, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3079 at r3079; linear_combination r3079), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3080 at r3080; linear_combination r3080), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3081 at r3081; linear_combination r3081), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3082 at r3082; linear_combination r3082), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3083 at r3083; linear_combination r3083), tail⟩

theorem node8_seg25 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3084 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3084 rho)
    (r3085 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3085 rho)
    (r3086 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3086 rho)
    (r3087 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3087 rho)
    (r3088 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3088 rho)
    (tail : next (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) (rho 3076) (rho 3081) (rho 3086)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg25 (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) (rho 3076) (rho 3081) next := by
  exact ⟨rho 3082, rho 3083, rho 3084, rho 3085, rho 3086, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3084 at r3084; linear_combination r3084), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3085 at r3085; linear_combination r3085), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3086 at r3086; linear_combination r3086), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3087 at r3087; linear_combination r3087), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3088 at r3088; linear_combination r3088), tail⟩

theorem node8_seg26 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3089 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3089 rho)
    (r3090 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3090 rho)
    (r3091 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3091 rho)
    (r3092 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3092 rho)
    (r3093 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3093 rho)
    (tail : next (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) (rho 3076) (rho 3081) (rho 3086) (rho 3091)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg26 (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) (rho 3076) (rho 3081) (rho 3086) next := by
  exact ⟨rho 3087, rho 3088, rho 3089, rho 3090, rho 3091, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3089 at r3089; linear_combination r3089), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3090 at r3090; linear_combination r3090), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3091 at r3091; linear_combination r3091), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3092 at r3092; linear_combination r3092), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3093 at r3093; linear_combination r3093), tail⟩

theorem node8_seg27 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3094 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3094 rho)
    (r3095 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3095 rho)
    (r3096 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3096 rho)
    (r3097 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3097 rho)
    (r3098 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3098 rho)
    (tail : next (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) (rho 3076) (rho 3081) (rho 3086) (rho 3091) (rho 3096)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg27 (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) (rho 3076) (rho 3081) (rho 3086) (rho 3091) next := by
  exact ⟨rho 3092, rho 3093, rho 3094, rho 3095, rho 3096, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3094 at r3094; linear_combination r3094), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3095 at r3095; linear_combination r3095), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3096 at r3096; linear_combination r3096), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3097 at r3097; linear_combination r3097), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3098 at r3098; linear_combination r3098), tail⟩

theorem node8_seg28 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3099 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3099 rho)
    (r3100 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3100 rho)
    (r3101 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3101 rho)
    (r3102 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3102 rho)
    (r3103 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3103 rho)
    (tail : next (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) (rho 3076) (rho 3081) (rho 3086) (rho 3091) (rho 3096) (rho 3101)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg28 (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) (rho 3076) (rho 3081) (rho 3086) (rho 3091) (rho 3096) next := by
  exact ⟨rho 3097, rho 3098, rho 3099, rho 3100, rho 3101, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3099 at r3099; linear_combination r3099), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3100 at r3100; linear_combination r3100), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3101 at r3101; linear_combination r3101), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3102 at r3102; linear_combination r3102), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3103 at r3103; linear_combination r3103), tail⟩

theorem node8_seg29 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3104 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3104 rho)
    (r3105 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3105 rho)
    (r3106 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3106 rho)
    (r3107 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3107 rho)
    (r3108 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3108 rho)
    (tail : next (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) (rho 3076) (rho 3081) (rho 3086) (rho 3091) (rho 3096) (rho 3101) (rho 3106)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg29 (rho 3031) (rho 3036) (rho 3041) (rho 3046) (rho 3051) (rho 3056) (rho 3061) (rho 3066) (rho 3071) (rho 3076) (rho 3081) (rho 3086) (rho 3091) (rho 3096) (rho 3101) next := by
  exact ⟨rho 3102, rho 3103, rho 3104, rho 3105, rho 3106, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3104 at r3104; linear_combination r3104), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3105 at r3105; linear_combination r3105), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3106 at r3106; linear_combination r3106), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3107 at r3107; linear_combination r3107), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow3108 at r3108; linear_combination r3108), tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
