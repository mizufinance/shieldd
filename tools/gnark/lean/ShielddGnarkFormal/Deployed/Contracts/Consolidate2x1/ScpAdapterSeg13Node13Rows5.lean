import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node13_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5275 : Seg13.relationRow5275 rho)
    (r5276 : Seg13.relationRow5276 rho)
    (r5277 : Seg13.relationRow5277 rho)
    (r5278 : Seg13.relationRow5278 rho)
    (r5279 : Seg13.relationRow5279 rho)
    (tail : next (rho 12260) (rho 12265) (rho 12270) (rho 12275) (rho 12280) (rho 12285) (rho 12290) (rho 12295) (rho 12300) (rho 12305) (rho 12310) (rho 12315) (rho 12320) (rho 12325) (rho 12330) (rho 12335) (rho 12340) (rho 12345) (rho 12350) (rho 12355) (rho 12360) (rho 12365) (rho 12370) (rho 12375) (rho 12380) (rho 12385) (rho 12390) (rho 12395) (rho 12400) (rho 12405) (rho 12410) (rho 12415) (rho 12420) (rho 12425) (rho 12430) (rho 12435) (rho 12440)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg50 (rho 12260) (rho 12265) (rho 12270) (rho 12275) (rho 12280) (rho 12285) (rho 12290) (rho 12295) (rho 12300) (rho 12305) (rho 12310) (rho 12315) (rho 12320) (rho 12325) (rho 12330) (rho 12335) (rho 12340) (rho 12345) (rho 12350) (rho 12355) (rho 12360) (rho 12365) (rho 12370) (rho 12375) (rho 12380) (rho 12385) (rho 12390) (rho 12395) (rho 12400) (rho 12405) (rho 12410) (rho 12415) (rho 12420) (rho 12425) (rho 12430) (rho 12435) next := by
  exact ⟨rho 12436, rho 12437, rho 12438, rho 12439, rho 12440, r5275, r5276, r5277, r5278, r5279, tail⟩

theorem seg13_scp_node13_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5280 : Seg13.relationRow5280 rho)
    (r5281 : Seg13.relationRow5281 rho)
    (r5282 : Seg13.relationRow5282 rho)
    (r5283 : Seg13.relationRow5283 rho)
    (r5284 : Seg13.relationRow5284 rho)
    (tail : next (rho 12260) (rho 12265) (rho 12270) (rho 12275) (rho 12280) (rho 12285) (rho 12290) (rho 12295) (rho 12300) (rho 12305) (rho 12310) (rho 12315) (rho 12320) (rho 12325) (rho 12330) (rho 12335) (rho 12340) (rho 12345) (rho 12350) (rho 12355) (rho 12360) (rho 12365) (rho 12370) (rho 12375) (rho 12380) (rho 12385) (rho 12390) (rho 12395) (rho 12400) (rho 12405) (rho 12410) (rho 12415) (rho 12420) (rho 12425) (rho 12430) (rho 12435) (rho 12440) (rho 12445)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg51 (rho 12260) (rho 12265) (rho 12270) (rho 12275) (rho 12280) (rho 12285) (rho 12290) (rho 12295) (rho 12300) (rho 12305) (rho 12310) (rho 12315) (rho 12320) (rho 12325) (rho 12330) (rho 12335) (rho 12340) (rho 12345) (rho 12350) (rho 12355) (rho 12360) (rho 12365) (rho 12370) (rho 12375) (rho 12380) (rho 12385) (rho 12390) (rho 12395) (rho 12400) (rho 12405) (rho 12410) (rho 12415) (rho 12420) (rho 12425) (rho 12430) (rho 12435) (rho 12440) next := by
  exact ⟨rho 12441, rho 12442, rho 12443, rho 12444, rho 12445, r5280, r5281, r5282, r5283, r5284, tail⟩

theorem seg13_scp_node13_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5285 : Seg13.relationRow5285 rho)
    (r5286 : Seg13.relationRow5286 rho)
    (r5287 : Seg13.relationRow5287 rho)
    (r5288 : Seg13.relationRow5288 rho)
    (r5289 : Seg13.relationRow5289 rho)
    (tail : next (rho 12260) (rho 12265) (rho 12270) (rho 12275) (rho 12280) (rho 12285) (rho 12290) (rho 12295) (rho 12300) (rho 12305) (rho 12310) (rho 12315) (rho 12320) (rho 12325) (rho 12330) (rho 12335) (rho 12340) (rho 12345) (rho 12350) (rho 12355) (rho 12360) (rho 12365) (rho 12370) (rho 12375) (rho 12380) (rho 12385) (rho 12390) (rho 12395) (rho 12400) (rho 12405) (rho 12410) (rho 12415) (rho 12420) (rho 12425) (rho 12430) (rho 12435) (rho 12440) (rho 12445) (rho 12450)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg52 (rho 12260) (rho 12265) (rho 12270) (rho 12275) (rho 12280) (rho 12285) (rho 12290) (rho 12295) (rho 12300) (rho 12305) (rho 12310) (rho 12315) (rho 12320) (rho 12325) (rho 12330) (rho 12335) (rho 12340) (rho 12345) (rho 12350) (rho 12355) (rho 12360) (rho 12365) (rho 12370) (rho 12375) (rho 12380) (rho 12385) (rho 12390) (rho 12395) (rho 12400) (rho 12405) (rho 12410) (rho 12415) (rho 12420) (rho 12425) (rho 12430) (rho 12435) (rho 12440) (rho 12445) next := by
  exact ⟨rho 12446, rho 12447, rho 12448, rho 12449, rho 12450, r5285, r5286, r5287, r5288, r5289, tail⟩

theorem seg13_scp_node13_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5290 : Seg13.relationRow5290 rho)
    (r5291 : Seg13.relationRow5291 rho)
    (r5292 : Seg13.relationRow5292 rho)
    (r5293 : Seg13.relationRow5293 rho)
    (r5294 : Seg13.relationRow5294 rho)
    (tail : next (rho 12260) (rho 12265) (rho 12270) (rho 12275) (rho 12280) (rho 12285) (rho 12290) (rho 12295) (rho 12300) (rho 12305) (rho 12310) (rho 12315) (rho 12320) (rho 12325) (rho 12330) (rho 12335) (rho 12340) (rho 12345) (rho 12350) (rho 12355) (rho 12360) (rho 12365) (rho 12370) (rho 12375) (rho 12380) (rho 12385) (rho 12390) (rho 12395) (rho 12400) (rho 12405) (rho 12410) (rho 12415) (rho 12420) (rho 12425) (rho 12430) (rho 12435) (rho 12440) (rho 12445) (rho 12450) (rho 12455)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg53 (rho 12260) (rho 12265) (rho 12270) (rho 12275) (rho 12280) (rho 12285) (rho 12290) (rho 12295) (rho 12300) (rho 12305) (rho 12310) (rho 12315) (rho 12320) (rho 12325) (rho 12330) (rho 12335) (rho 12340) (rho 12345) (rho 12350) (rho 12355) (rho 12360) (rho 12365) (rho 12370) (rho 12375) (rho 12380) (rho 12385) (rho 12390) (rho 12395) (rho 12400) (rho 12405) (rho 12410) (rho 12415) (rho 12420) (rho 12425) (rho 12430) (rho 12435) (rho 12440) (rho 12445) (rho 12450) next := by
  exact ⟨rho 12451, rho 12452, rho 12453, rho 12454, rho 12455, r5290, r5291, r5292, r5293, r5294, tail⟩

theorem seg13_scp_node13_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5295 : Seg13.relationRow5295 rho)
    (r5296 : Seg13.relationRow5296 rho)
    (r5297 : Seg13.relationRow5297 rho)
    (r5298 : Seg13.relationRow5298 rho)
    (r5299 : Seg13.relationRow5299 rho)
    (tail : next (rho 12440) (rho 12445) (rho 12450) (rho 12455) (rho 12460)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg54 (rho 12260) (rho 12265) (rho 12270) (rho 12275) (rho 12280) (rho 12285) (rho 12290) (rho 12295) (rho 12300) (rho 12305) (rho 12310) (rho 12315) (rho 12320) (rho 12325) (rho 12330) (rho 12335) (rho 12340) (rho 12345) (rho 12350) (rho 12355) (rho 12360) (rho 12365) (rho 12370) (rho 12375) (rho 12380) (rho 12385) (rho 12390) (rho 12395) (rho 12400) (rho 12405) (rho 12410) (rho 12415) (rho 12420) (rho 12425) (rho 12430) (rho 12435) (rho 12440) (rho 12445) (rho 12450) (rho 12455) next := by
  exact ⟨rho 12456, rho 12457, rho 12458, rho 12459, rho 12460, r5295, r5296, r5297, r5298, r5299, tail⟩

theorem seg13_scp_node13_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5300 : Seg13.relationRow5300 rho)
    (r5301 : Seg13.relationRow5301 rho)
    (r5302 : Seg13.relationRow5302 rho)
    (r5303 : Seg13.relationRow5303 rho)
    (r5304 : Seg13.relationRow5304 rho)
    (tail : next (rho 12440) (rho 12445) (rho 12450) (rho 12455) (rho 12460) (rho 12465)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg55 (rho 12440) (rho 12445) (rho 12450) (rho 12455) (rho 12460) next := by
  exact ⟨rho 12461, rho 12462, rho 12463, rho 12464, rho 12465, r5300, r5301, r5302, r5303, r5304, tail⟩

theorem seg13_scp_node13_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5305 : Seg13.relationRow5305 rho)
    (r5306 : Seg13.relationRow5306 rho)
    (r5307 : Seg13.relationRow5307 rho)
    (r5308 : Seg13.relationRow5308 rho)
    (r5309 : Seg13.relationRow5309 rho)
    (tail : next (rho 12440) (rho 12445) (rho 12450) (rho 12455) (rho 12460) (rho 12465) (rho 12470)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg56 (rho 12440) (rho 12445) (rho 12450) (rho 12455) (rho 12460) (rho 12465) next := by
  exact ⟨rho 12466, rho 12467, rho 12468, rho 12469, rho 12470, r5305, r5306, r5307, r5308, r5309, tail⟩

theorem seg13_scp_node13_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5310 : Seg13.relationRow5310 rho)
    (r5311 : Seg13.relationRow5311 rho)
    (r5312 : Seg13.relationRow5312 rho)
    (r5313 : Seg13.relationRow5313 rho)
    (r5314 : Seg13.relationRow5314 rho)
    (tail : next (rho 12440) (rho 12445) (rho 12450) (rho 12455) (rho 12460) (rho 12465) (rho 12470) (rho 12475)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg57 (rho 12440) (rho 12445) (rho 12450) (rho 12455) (rho 12460) (rho 12465) (rho 12470) next := by
  exact ⟨rho 12471, rho 12472, rho 12473, rho 12474, rho 12475, r5310, r5311, r5312, r5313, r5314, tail⟩

theorem seg13_scp_node13_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5315 : Seg13.relationRow5315 rho)
    (r5316 : Seg13.relationRow5316 rho)
    (r5317 : Seg13.relationRow5317 rho)
    (r5318 : Seg13.relationRow5318 rho)
    (r5319 : Seg13.relationRow5319 rho)
    (tail : next (rho 12440) (rho 12445) (rho 12450) (rho 12455) (rho 12460) (rho 12465) (rho 12470) (rho 12475) (rho 12480)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg58 (rho 12440) (rho 12445) (rho 12450) (rho 12455) (rho 12460) (rho 12465) (rho 12470) (rho 12475) next := by
  exact ⟨rho 12476, rho 12477, rho 12478, rho 12479, rho 12480, r5315, r5316, r5317, r5318, r5319, tail⟩

theorem seg13_scp_node13_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5320 : Seg13.relationRow5320 rho)
    (r5321 : Seg13.relationRow5321 rho)
    (r5322 : Seg13.relationRow5322 rho)
    (r5323 : Seg13.relationRow5323 rho)
    (r5324 : Seg13.relationRow5324 rho)
    (tail : next (rho 12465) (rho 12470) (rho 12475) (rho 12480) (rho 12485)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg59 (rho 12440) (rho 12445) (rho 12450) (rho 12455) (rho 12460) (rho 12465) (rho 12470) (rho 12475) (rho 12480) next := by
  exact ⟨rho 12481, rho 12482, rho 12483, rho 12484, rho 12485, r5320, r5321, r5322, r5323, r5324, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

