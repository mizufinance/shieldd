import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathBase
import ShielddGnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node6_seg0 (rho : Nat → F)
    (next : F → F → F → F → Prop)
    (r2231 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2231 rho)
    (r2232 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2232 rho)
    (r2233 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2233 rho)
    (r2234 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2234 rho)
    (r2235 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2235 rho)
    (tail : next (rho 2224 + rho 2225 + rho 2226) (rho 2224 + rho 2228 + rho 2229) (rho 2227 + rho 2230) (rho 2235)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg0 (rho 2222 + rho 2223) (rho 2224 + rho 2225 + rho 2226) (rho 2224 + rho 2228 + rho 2229) (rho 2227 + rho 2230) next := by
  exact ⟨rho 2231, rho 2232, rho 2233, rho 2234, rho 2235, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2231 at r2231; linear_combination r2231), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2232 at r2232; linear_combination r2232), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2233 at r2233; linear_combination r2233), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2234 at r2234; linear_combination r2234), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2235 at r2235; linear_combination r2235), tail⟩

theorem node6_seg1 (rho : Nat → F)
    (next : F → F → F → F → Prop)
    (r2236 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2236 rho)
    (r2237 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2237 rho)
    (r2238 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2238 rho)
    (r2239 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2239 rho)
    (r2240 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2240 rho)
    (tail : next (rho 2224 + rho 2228 + rho 2229) (rho 2227 + rho 2230) (rho 2235) (rho 2240)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg1 (rho 2224 + rho 2225 + rho 2226) (rho 2224 + rho 2228 + rho 2229) (rho 2227 + rho 2230) (rho 2235) next := by
  exact ⟨rho 2236, rho 2237, rho 2238, rho 2239, rho 2240, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2236 at r2236; linear_combination r2236), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2237 at r2237; linear_combination r2237), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2238 at r2238; linear_combination r2238), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2239 at r2239; linear_combination r2239), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2240 at r2240; linear_combination r2240), tail⟩

theorem node6_seg2 (rho : Nat → F)
    (next : F → F → F → F → Prop)
    (r2241 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2241 rho)
    (r2242 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2242 rho)
    (r2243 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2243 rho)
    (r2244 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2244 rho)
    (r2245 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2245 rho)
    (tail : next (rho 2227 + rho 2230) (rho 2235) (rho 2240) (rho 2245)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg2 (rho 2224 + rho 2228 + rho 2229) (rho 2227 + rho 2230) (rho 2235) (rho 2240) next := by
  exact ⟨rho 2241, rho 2242, rho 2243, rho 2244, rho 2245, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2241 at r2241; linear_combination r2241), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2242 at r2242; linear_combination r2242), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2243 at r2243; linear_combination r2243), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2244 at r2244; linear_combination r2244), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2245 at r2245; linear_combination r2245), tail⟩

theorem node6_seg3 (rho : Nat → F)
    (next : F → F → F → F → Prop)
    (r2246 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2246 rho)
    (r2247 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2247 rho)
    (r2248 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2248 rho)
    (r2249 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2249 rho)
    (r2250 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2250 rho)
    (tail : next (rho 2235) (rho 2240) (rho 2245) (rho 2250)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg3 (rho 2227 + rho 2230) (rho 2235) (rho 2240) (rho 2245) next := by
  exact ⟨rho 2246, rho 2247, rho 2248, rho 2249, rho 2250, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2246 at r2246; linear_combination r2246), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2247 at r2247; linear_combination r2247), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2248 at r2248; linear_combination r2248), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2249 at r2249; linear_combination r2249), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2250 at r2250; linear_combination r2250), tail⟩

theorem node6_seg4 (rho : Nat → F)
    (next : F → F → F → F → F → Prop)
    (r2251 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2251 rho)
    (r2252 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2252 rho)
    (r2253 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2253 rho)
    (r2254 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2254 rho)
    (r2255 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2255 rho)
    (tail : next (rho 2235) (rho 2240) (rho 2245) (rho 2250) (rho 2255)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg4 (rho 2235) (rho 2240) (rho 2245) (rho 2250) next := by
  exact ⟨rho 2251, rho 2252, rho 2253, rho 2254, rho 2255, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2251 at r2251; linear_combination r2251), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2252 at r2252; linear_combination r2252), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2253 at r2253; linear_combination r2253), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2254 at r2254; linear_combination r2254), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2255 at r2255; linear_combination r2255), tail⟩

theorem node6_seg5 (rho : Nat → F)
    (next : F → F → F → F → F → F → Prop)
    (r2256 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2256 rho)
    (r2257 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2257 rho)
    (r2258 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2258 rho)
    (r2259 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2259 rho)
    (r2260 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2260 rho)
    (tail : next (rho 2235) (rho 2240) (rho 2245) (rho 2250) (rho 2255) (rho 2260)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg5 (rho 2235) (rho 2240) (rho 2245) (rho 2250) (rho 2255) next := by
  exact ⟨rho 2256, rho 2257, rho 2258, rho 2259, rho 2260, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2256 at r2256; linear_combination r2256), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2257 at r2257; linear_combination r2257), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2258 at r2258; linear_combination r2258), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2259 at r2259; linear_combination r2259), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2260 at r2260; linear_combination r2260), tail⟩

theorem node6_seg6 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2261 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2261 rho)
    (r2262 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2262 rho)
    (r2263 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2263 rho)
    (r2264 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2264 rho)
    (r2265 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2265 rho)
    (tail : next (rho 2235) (rho 2240) (rho 2245) (rho 2250) (rho 2255) (rho 2260) (rho 2265)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg6 (rho 2235) (rho 2240) (rho 2245) (rho 2250) (rho 2255) (rho 2260) next := by
  exact ⟨rho 2261, rho 2262, rho 2263, rho 2264, rho 2265, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2261 at r2261; linear_combination r2261), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2262 at r2262; linear_combination r2262), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2263 at r2263; linear_combination r2263), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2264 at r2264; linear_combination r2264), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2265 at r2265; linear_combination r2265), tail⟩

theorem node6_seg7 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2266 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2266 rho)
    (r2267 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2267 rho)
    (r2268 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2268 rho)
    (r2269 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2269 rho)
    (r2270 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2270 rho)
    (tail : next (rho 2235) (rho 2240) (rho 2245) (rho 2250) (rho 2255) (rho 2260) (rho 2265) (rho 2270)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg7 (rho 2235) (rho 2240) (rho 2245) (rho 2250) (rho 2255) (rho 2260) (rho 2265) next := by
  exact ⟨rho 2266, rho 2267, rho 2268, rho 2269, rho 2270, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2266 at r2266; linear_combination r2266), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2267 at r2267; linear_combination r2267), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2268 at r2268; linear_combination r2268), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2269 at r2269; linear_combination r2269), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2270 at r2270; linear_combination r2270), tail⟩

theorem node6_seg8 (rho : Nat → F)
    (next : F → F → F → F → F → Prop)
    (r2271 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2271 rho)
    (r2272 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2272 rho)
    (r2273 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2273 rho)
    (r2274 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2274 rho)
    (r2275 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2275 rho)
    (tail : next (rho 2255) (rho 2260) (rho 2265) (rho 2270) (rho 2275)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg8 (rho 2235) (rho 2240) (rho 2245) (rho 2250) (rho 2255) (rho 2260) (rho 2265) (rho 2270) next := by
  exact ⟨rho 2271, rho 2272, rho 2273, rho 2274, rho 2275, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2271 at r2271; linear_combination r2271), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2272 at r2272; linear_combination r2272), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2273 at r2273; linear_combination r2273), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2274 at r2274; linear_combination r2274), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2275 at r2275; linear_combination r2275), tail⟩

theorem node6_seg9 (rho : Nat → F)
    (next : F → F → F → F → F → F → Prop)
    (r2276 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2276 rho)
    (r2277 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2277 rho)
    (r2278 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2278 rho)
    (r2279 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2279 rho)
    (r2280 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2280 rho)
    (tail : next (rho 2255) (rho 2260) (rho 2265) (rho 2270) (rho 2275) (rho 2280)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg9 (rho 2255) (rho 2260) (rho 2265) (rho 2270) (rho 2275) next := by
  exact ⟨rho 2276, rho 2277, rho 2278, rho 2279, rho 2280, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2276 at r2276; linear_combination r2276), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2277 at r2277; linear_combination r2277), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2278 at r2278; linear_combination r2278), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2279 at r2279; linear_combination r2279), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2280 at r2280; linear_combination r2280), tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
