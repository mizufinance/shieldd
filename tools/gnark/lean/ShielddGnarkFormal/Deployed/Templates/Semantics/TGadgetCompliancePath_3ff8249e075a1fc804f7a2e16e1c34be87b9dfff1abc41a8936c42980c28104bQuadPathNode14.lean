import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode14Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode14Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode14Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode14Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode14Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode14Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode14Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node14_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation rho) :
    nodeOut14 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 5128 + rho 5129) (rho 5130 + rho 5131 + rho 5132) (rho 5130 + rho 5134 + rho 5135) (rho 5133 + rho 5136) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    p64, p65, p66, p67, p68, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, r5195, r5196, r5197, r5198, r5199⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, r5279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart67 at p67
  rcases p67 with ⟨r5360, r5361, r5362, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart68 at p68
  rcases p68 with ⟨r5440, r5441, r5442, r5443, r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, r5489, r5490, r5491, r5492, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 5128 + rho 5129) (rho 5130 + rho 5131 + rho 5132) (rho 5130 + rho 5134 + rho 5135) (rho 5133 + rho 5136)
      (fun w334 w339 w344 w349 w354 => w334 = rho 5466 ∧ w339 = rho 5471 ∧ w344 = rho 5476 ∧ w349 = rho 5481 ∧ w354 = rho 5486) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node14_seg0 rho _ r5143 r5144 r5145 r5146 r5147 (node14_seg1 rho _ r5148 r5149 r5150 r5151 r5152 (node14_seg2 rho _ r5153 r5154 r5155 r5156 r5157 (node14_seg3 rho _ r5158 r5159 r5160 r5161 r5162 (node14_seg4 rho _ r5163 r5164 r5165 r5166 r5167 (node14_seg5 rho _ r5168 r5169 r5170 r5171 r5172 (node14_seg6 rho _ r5173 r5174 r5175 r5176 r5177 (node14_seg7 rho _ r5178 r5179 r5180 r5181 r5182 (node14_seg8 rho _ r5183 r5184 r5185 r5186 r5187 (node14_seg9 rho _ r5188 r5189 r5190 r5191 r5192 (node14_seg10 rho _ r5193 r5194 r5195 r5196 r5197 (node14_seg11 rho _ r5198 r5199 r5200 r5201 r5202 (node14_seg12 rho _ r5203 r5204 r5205 r5206 r5207 (node14_seg13 rho _ r5208 r5209 r5210 r5211 r5212 (node14_seg14 rho _ r5213 r5214 r5215 r5216 r5217 (node14_seg15 rho _ r5218 r5219 r5220 r5221 r5222 (node14_seg16 rho _ r5223 r5224 r5225 r5226 r5227 (node14_seg17 rho _ r5228 r5229 r5230 r5231 r5232 (node14_seg18 rho _ r5233 r5234 r5235 r5236 r5237 (node14_seg19 rho _ r5238 r5239 r5240 r5241 r5242 (node14_seg20 rho _ r5243 r5244 r5245 r5246 r5247 (node14_seg21 rho _ r5248 r5249 r5250 r5251 r5252 (node14_seg22 rho _ r5253 r5254 r5255 r5256 r5257 (node14_seg23 rho _ r5258 r5259 r5260 r5261 r5262 (node14_seg24 rho _ r5263 r5264 r5265 r5266 r5267 (node14_seg25 rho _ r5268 r5269 r5270 r5271 r5272 (node14_seg26 rho _ r5273 r5274 r5275 r5276 r5277 (node14_seg27 rho _ r5278 r5279 r5280 r5281 r5282 (node14_seg28 rho _ r5283 r5284 r5285 r5286 r5287 (node14_seg29 rho _ r5288 r5289 r5290 r5291 r5292 (node14_seg30 rho _ r5293 r5294 r5295 r5296 r5297 (node14_seg31 rho _ r5298 r5299 r5300 r5301 r5302 (node14_seg32 rho _ r5303 r5304 r5305 r5306 r5307 (node14_seg33 rho _ r5308 r5309 r5310 r5311 r5312 (node14_seg34 rho _ r5313 r5314 r5315 r5316 r5317 (node14_seg35 rho _ r5318 r5319 r5320 r5321 r5322 (node14_seg36 rho _ r5323 r5324 r5325 r5326 r5327 (node14_seg37 rho _ r5328 r5329 r5330 r5331 r5332 (node14_seg38 rho _ r5333 r5334 r5335 r5336 r5337 (node14_seg39 rho _ r5338 r5339 r5340 r5341 r5342 (node14_seg40 rho _ r5343 r5344 r5345 r5346 r5347 (node14_seg41 rho _ r5348 r5349 r5350 r5351 r5352 (node14_seg42 rho _ r5353 r5354 r5355 r5356 r5357 (node14_seg43 rho _ r5358 r5359 r5360 r5361 r5362 (node14_seg44 rho _ r5363 r5364 r5365 r5366 r5367 (node14_seg45 rho _ r5368 r5369 r5370 r5371 r5372 (node14_seg46 rho _ r5373 r5374 r5375 r5376 r5377 (node14_seg47 rho _ r5378 r5379 r5380 r5381 r5382 (node14_seg48 rho _ r5383 r5384 r5385 r5386 r5387 (node14_seg49 rho _ r5388 r5389 r5390 r5391 r5392 (node14_seg50 rho _ r5393 r5394 r5395 r5396 r5397 (node14_seg51 rho _ r5398 r5399 r5400 r5401 r5402 (node14_seg52 rho _ r5403 r5404 r5405 r5406 r5407 (node14_seg53 rho _ r5408 r5409 r5410 r5411 r5412 (node14_seg54 rho _ r5413 r5414 r5415 r5416 r5417 (node14_seg55 rho _ r5418 r5419 r5420 r5421 r5422 (node14_seg56 rho _ r5423 r5424 r5425 r5426 r5427 (node14_seg57 rho _ r5428 r5429 r5430 r5431 r5432 (node14_seg58 rho _ r5433 r5434 r5435 r5436 r5437 (node14_seg59 rho _ r5438 r5439 r5440 r5441 r5442 (node14_seg60 rho _ r5443 r5444 r5445 r5446 r5447 (node14_seg61 rho _ r5448 r5449 r5450 r5451 r5452 (node14_seg62 rho _ r5453 r5454 r5455 r5456 r5457 (node14_seg63 rho _ r5458 r5459 r5460 r5461 r5462 (node14_seg64 rho _ r5463 r5464 r5465 r5466 r5467 (node14_seg65 rho _ r5468 r5469 r5470 r5471 r5472 (node14_seg66 rho _ r5473 r5474 r5475 r5476 r5477 (node14_seg67 rho _ r5478 r5479 r5480 r5481 r5482 (node14_seg68 rho _ r5483 r5484 r5485 r5486 r5487 (node14_seg69 rho _ r5488 r5489 r5490 r5491 r5492 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 5128 + rho 5129) (rho 5130 + rho 5131 + rho 5132) (rho 5130 + rho 5134 + rho 5135) (rho 5133 + rho 5136) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut14, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b
