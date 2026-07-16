import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node13Rows0
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node13Rows1
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node13Rows2
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node13Rows3
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node13Rows4
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node13Rows5
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node13Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode13.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node13_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode13Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (14 : Seg13.F))
        (rho 55 + rho 12180) (rho 56 + rho 12181 + rho 12182)
        (rho 56 + rho 12183 + rho 12184) (rho 57 + rho 12185) := by
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, p63, p64, p65, p66, p67, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5025, r5026, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩
  unfold Seg13.relationPart63 at p63
  rcases p63 with ⟨r5040, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082, r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩
  unfold Seg13.relationPart64 at p64
  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, r5195, r5196, r5197, r5198, r5199⟩
  unfold Seg13.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, r5279⟩
  unfold Seg13.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩
  unfold Seg13.relationPart67 at p67
  rcases p67 with ⟨r5360, r5361, r5362, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.relation (rho 55) (rho 56) (rho 57) (rho 12180) (rho 12181) (rho 12182) (rho 12183) (rho 12184) (rho 12185)
      (fun o0 o1 o2 o3 o4 => o0 = rho 12515 ∧ o1 = rho 12520 ∧ o2 = rho 12525 ∧ o3 = rho 12530 ∧ o4 = rho 12535) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.relation
    exact seg13_scp_node13_seg0 rho _ r5025 r5026 r5027 r5028 r5029 (seg13_scp_node13_seg1 rho _ r5030 r5031 r5032 r5033 r5034 (seg13_scp_node13_seg2 rho _ r5035 r5036 r5037 r5038 r5039 (seg13_scp_node13_seg3 rho _ r5040 r5041 r5042 r5043 r5044 (seg13_scp_node13_seg4 rho _ r5045 r5046 r5047 r5048 r5049 (seg13_scp_node13_seg5 rho _ r5050 r5051 r5052 r5053 r5054 (seg13_scp_node13_seg6 rho _ r5055 r5056 r5057 r5058 r5059 (seg13_scp_node13_seg7 rho _ r5060 r5061 r5062 r5063 r5064 (seg13_scp_node13_seg8 rho _ r5065 r5066 r5067 r5068 r5069 (seg13_scp_node13_seg9 rho _ r5070 r5071 r5072 r5073 r5074 (seg13_scp_node13_seg10 rho _ r5075 r5076 r5077 r5078 r5079 (seg13_scp_node13_seg11 rho _ r5080 r5081 r5082 r5083 r5084 (seg13_scp_node13_seg12 rho _ r5085 r5086 r5087 r5088 r5089 (seg13_scp_node13_seg13 rho _ r5090 r5091 r5092 r5093 r5094 (seg13_scp_node13_seg14 rho _ r5095 r5096 r5097 r5098 r5099 (seg13_scp_node13_seg15 rho _ r5100 r5101 r5102 r5103 r5104 (seg13_scp_node13_seg16 rho _ r5105 r5106 r5107 r5108 r5109 (seg13_scp_node13_seg17 rho _ r5110 r5111 r5112 r5113 r5114 (seg13_scp_node13_seg18 rho _ r5115 r5116 r5117 r5118 r5119 (seg13_scp_node13_seg19 rho _ r5120 r5121 r5122 r5123 r5124 (seg13_scp_node13_seg20 rho _ r5125 r5126 r5127 r5128 r5129 (seg13_scp_node13_seg21 rho _ r5130 r5131 r5132 r5133 r5134 (seg13_scp_node13_seg22 rho _ r5135 r5136 r5137 r5138 r5139 (seg13_scp_node13_seg23 rho _ r5140 r5141 r5142 r5143 r5144 (seg13_scp_node13_seg24 rho _ r5145 r5146 r5147 r5148 r5149 (seg13_scp_node13_seg25 rho _ r5150 r5151 r5152 r5153 r5154 (seg13_scp_node13_seg26 rho _ r5155 r5156 r5157 r5158 r5159 (seg13_scp_node13_seg27 rho _ r5160 r5161 r5162 r5163 r5164 (seg13_scp_node13_seg28 rho _ r5165 r5166 r5167 r5168 r5169 (seg13_scp_node13_seg29 rho _ r5170 r5171 r5172 r5173 r5174 (seg13_scp_node13_seg30 rho _ r5175 r5176 r5177 r5178 r5179 (seg13_scp_node13_seg31 rho _ r5180 r5181 r5182 r5183 r5184 (seg13_scp_node13_seg32 rho _ r5185 r5186 r5187 r5188 r5189 (seg13_scp_node13_seg33 rho _ r5190 r5191 r5192 r5193 r5194 (seg13_scp_node13_seg34 rho _ r5195 r5196 r5197 r5198 r5199 (seg13_scp_node13_seg35 rho _ r5200 r5201 r5202 r5203 r5204 (seg13_scp_node13_seg36 rho _ r5205 r5206 r5207 r5208 r5209 (seg13_scp_node13_seg37 rho _ r5210 r5211 r5212 r5213 r5214 (seg13_scp_node13_seg38 rho _ r5215 r5216 r5217 r5218 r5219 (seg13_scp_node13_seg39 rho _ r5220 r5221 r5222 r5223 r5224 (seg13_scp_node13_seg40 rho _ r5225 r5226 r5227 r5228 r5229 (seg13_scp_node13_seg41 rho _ r5230 r5231 r5232 r5233 r5234 (seg13_scp_node13_seg42 rho _ r5235 r5236 r5237 r5238 r5239 (seg13_scp_node13_seg43 rho _ r5240 r5241 r5242 r5243 r5244 (seg13_scp_node13_seg44 rho _ r5245 r5246 r5247 r5248 r5249 (seg13_scp_node13_seg45 rho _ r5250 r5251 r5252 r5253 r5254 (seg13_scp_node13_seg46 rho _ r5255 r5256 r5257 r5258 r5259 (seg13_scp_node13_seg47 rho _ r5260 r5261 r5262 r5263 r5264 (seg13_scp_node13_seg48 rho _ r5265 r5266 r5267 r5268 r5269 (seg13_scp_node13_seg49 rho _ r5270 r5271 r5272 r5273 r5274 (seg13_scp_node13_seg50 rho _ r5275 r5276 r5277 r5278 r5279 (seg13_scp_node13_seg51 rho _ r5280 r5281 r5282 r5283 r5284 (seg13_scp_node13_seg52 rho _ r5285 r5286 r5287 r5288 r5289 (seg13_scp_node13_seg53 rho _ r5290 r5291 r5292 r5293 r5294 (seg13_scp_node13_seg54 rho _ r5295 r5296 r5297 r5298 r5299 (seg13_scp_node13_seg55 rho _ r5300 r5301 r5302 r5303 r5304 (seg13_scp_node13_seg56 rho _ r5305 r5306 r5307 r5308 r5309 (seg13_scp_node13_seg57 rho _ r5310 r5311 r5312 r5313 r5314 (seg13_scp_node13_seg58 rho _ r5315 r5316 r5317 r5318 r5319 (seg13_scp_node13_seg59 rho _ r5320 r5321 r5322 r5323 r5324 (seg13_scp_node13_seg60 rho _ r5325 r5326 r5327 r5328 r5329 (seg13_scp_node13_seg61 rho _ r5330 r5331 r5332 r5333 r5334 (seg13_scp_node13_seg62 rho _ r5335 r5336 r5337 r5338 r5339 (seg13_scp_node13_seg63 rho _ r5340 r5341 r5342 r5343 r5344 (seg13_scp_node13_seg64 rho _ r5345 r5346 r5347 r5348 r5349 (seg13_scp_node13_seg65 rho _ r5350 r5351 r5352 r5353 r5354 (seg13_scp_node13_seg66 rho _ r5355 r5356 r5357 r5358 r5359 (seg13_scp_node13_seg67 rho _ r5360 r5361 r5362 r5363 r5364 (seg13_scp_node13_seg68 rho _ r5365 r5366 r5367 r5368 r5369 (seg13_scp_node13_seg69 rho _ r5370 r5371 r5372 r5373 r5374 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode13.relation_sound_permSpec (rho 55) (rho 56) (rho 57) (rho 12180) (rho 12181) (rho 12182) (rho 12183) (rho 12184) (rho 12185) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode13.tctNode14DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode13.F) + (14 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode13.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode13Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode13.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

