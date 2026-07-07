import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode13.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg11_scp_node13_eq (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode13Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (14 : Seg11.F))
        (rho 55 + rho 6615) (rho 56 + rho 6616 + rho 6617)
        (rho 56 + rho 6618 + rho 6619) (rho 57 + rho 6620) := by
  unfold Seg11.relation at h
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
  unfold Seg11.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5025, r5026, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩
  unfold Seg11.relationPart63 at p63
  rcases p63 with ⟨r5040, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082, r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩
  unfold Seg11.relationPart64 at p64
  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, r5195, r5196, r5197, r5198, r5199⟩
  unfold Seg11.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, r5279⟩
  unfold Seg11.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩
  unfold Seg11.relationPart67 at p67
  rcases p67 with ⟨r5360, r5361, r5362, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.relation (rho 55) (rho 56) (rho 57) (rho 6615) (rho 6616) (rho 6617) (rho 6618) (rho 6619) (rho 6620)
      (fun o0 o1 o2 o3 o4 => o0 = rho 6950 ∧ o1 = rho 6955 ∧ o2 = rho 6960 ∧ o3 = rho 6965 ∧ o4 = rho 6970) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg0
    refine ⟨rho 6621, rho 6622, rho 6623, rho 6624, rho 6625,
      (by unfold Seg11.relationRow5025 at r5025; linear_combination r5025), (by unfold Seg11.relationRow5026 at r5026; linear_combination r5026), (by unfold Seg11.relationRow5027 at r5027; linear_combination r5027), (by unfold Seg11.relationRow5028 at r5028; linear_combination r5028), (by unfold Seg11.relationRow5029 at r5029; linear_combination r5029), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg1
    refine ⟨rho 6626, rho 6627, rho 6628, rho 6629, rho 6630,
      (by unfold Seg11.relationRow5030 at r5030; linear_combination r5030), (by unfold Seg11.relationRow5031 at r5031; linear_combination r5031), (by unfold Seg11.relationRow5032 at r5032; linear_combination r5032), (by unfold Seg11.relationRow5033 at r5033; linear_combination r5033), (by unfold Seg11.relationRow5034 at r5034; linear_combination r5034), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg2
    refine ⟨rho 6631, rho 6632, rho 6633, rho 6634, rho 6635,
      (by unfold Seg11.relationRow5035 at r5035; linear_combination r5035), (by unfold Seg11.relationRow5036 at r5036; linear_combination r5036), (by unfold Seg11.relationRow5037 at r5037; linear_combination r5037), (by unfold Seg11.relationRow5038 at r5038; linear_combination r5038), (by unfold Seg11.relationRow5039 at r5039; linear_combination r5039), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg3
    refine ⟨rho 6636, rho 6637, rho 6638, rho 6639, rho 6640,
      (by unfold Seg11.relationRow5040 at r5040; linear_combination r5040), (by unfold Seg11.relationRow5041 at r5041; linear_combination r5041), (by unfold Seg11.relationRow5042 at r5042; linear_combination r5042), (by unfold Seg11.relationRow5043 at r5043; linear_combination r5043), (by unfold Seg11.relationRow5044 at r5044; linear_combination r5044), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg4
    refine ⟨rho 6641, rho 6642, rho 6643, rho 6644, rho 6645,
      (by unfold Seg11.relationRow5045 at r5045; linear_combination r5045), (by unfold Seg11.relationRow5046 at r5046; linear_combination r5046), (by unfold Seg11.relationRow5047 at r5047; linear_combination r5047), (by unfold Seg11.relationRow5048 at r5048; linear_combination r5048), (by unfold Seg11.relationRow5049 at r5049; linear_combination r5049), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg5
    refine ⟨rho 6646, rho 6647, rho 6648, rho 6649, rho 6650,
      (by unfold Seg11.relationRow5050 at r5050; linear_combination r5050), (by unfold Seg11.relationRow5051 at r5051; linear_combination r5051), (by unfold Seg11.relationRow5052 at r5052; linear_combination r5052), (by unfold Seg11.relationRow5053 at r5053; linear_combination r5053), (by unfold Seg11.relationRow5054 at r5054; linear_combination r5054), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg6
    refine ⟨rho 6651, rho 6652, rho 6653, rho 6654, rho 6655,
      (by unfold Seg11.relationRow5055 at r5055; linear_combination r5055), (by unfold Seg11.relationRow5056 at r5056; linear_combination r5056), (by unfold Seg11.relationRow5057 at r5057; linear_combination r5057), (by unfold Seg11.relationRow5058 at r5058; linear_combination r5058), (by unfold Seg11.relationRow5059 at r5059; linear_combination r5059), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg7
    refine ⟨rho 6656, rho 6657, rho 6658, rho 6659, rho 6660,
      (by unfold Seg11.relationRow5060 at r5060; linear_combination r5060), (by unfold Seg11.relationRow5061 at r5061; linear_combination r5061), (by unfold Seg11.relationRow5062 at r5062; linear_combination r5062), (by unfold Seg11.relationRow5063 at r5063; linear_combination r5063), (by unfold Seg11.relationRow5064 at r5064; linear_combination r5064), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg8
    refine ⟨rho 6661, rho 6662, rho 6663, rho 6664, rho 6665,
      (by unfold Seg11.relationRow5065 at r5065; linear_combination r5065), (by unfold Seg11.relationRow5066 at r5066; linear_combination r5066), (by unfold Seg11.relationRow5067 at r5067; linear_combination r5067), (by unfold Seg11.relationRow5068 at r5068; linear_combination r5068), (by unfold Seg11.relationRow5069 at r5069; linear_combination r5069), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg9
    refine ⟨rho 6666, rho 6667, rho 6668, rho 6669, rho 6670,
      (by unfold Seg11.relationRow5070 at r5070; linear_combination r5070), (by unfold Seg11.relationRow5071 at r5071; linear_combination r5071), (by unfold Seg11.relationRow5072 at r5072; linear_combination r5072), (by unfold Seg11.relationRow5073 at r5073; linear_combination r5073), (by unfold Seg11.relationRow5074 at r5074; linear_combination r5074), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg10
    refine ⟨rho 6671, rho 6672, rho 6673, rho 6674, rho 6675,
      (by unfold Seg11.relationRow5075 at r5075; linear_combination r5075), (by unfold Seg11.relationRow5076 at r5076; linear_combination r5076), (by unfold Seg11.relationRow5077 at r5077; linear_combination r5077), (by unfold Seg11.relationRow5078 at r5078; linear_combination r5078), (by unfold Seg11.relationRow5079 at r5079; linear_combination r5079), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg11
    refine ⟨rho 6676, rho 6677, rho 6678, rho 6679, rho 6680,
      (by unfold Seg11.relationRow5080 at r5080; linear_combination r5080), (by unfold Seg11.relationRow5081 at r5081; linear_combination r5081), (by unfold Seg11.relationRow5082 at r5082; linear_combination r5082), (by unfold Seg11.relationRow5083 at r5083; linear_combination r5083), (by unfold Seg11.relationRow5084 at r5084; linear_combination r5084), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg12
    refine ⟨rho 6681, rho 6682, rho 6683, rho 6684, rho 6685,
      (by unfold Seg11.relationRow5085 at r5085; linear_combination r5085), (by unfold Seg11.relationRow5086 at r5086; linear_combination r5086), (by unfold Seg11.relationRow5087 at r5087; linear_combination r5087), (by unfold Seg11.relationRow5088 at r5088; linear_combination r5088), (by unfold Seg11.relationRow5089 at r5089; linear_combination r5089), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg13
    refine ⟨rho 6686, rho 6687, rho 6688, rho 6689, rho 6690,
      (by unfold Seg11.relationRow5090 at r5090; linear_combination r5090), (by unfold Seg11.relationRow5091 at r5091; linear_combination r5091), (by unfold Seg11.relationRow5092 at r5092; linear_combination r5092), (by unfold Seg11.relationRow5093 at r5093; linear_combination r5093), (by unfold Seg11.relationRow5094 at r5094; linear_combination r5094), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg14
    refine ⟨rho 6691, rho 6692, rho 6693, rho 6694, rho 6695,
      (by unfold Seg11.relationRow5095 at r5095; linear_combination r5095), (by unfold Seg11.relationRow5096 at r5096; linear_combination r5096), (by unfold Seg11.relationRow5097 at r5097; linear_combination r5097), (by unfold Seg11.relationRow5098 at r5098; linear_combination r5098), (by unfold Seg11.relationRow5099 at r5099; linear_combination r5099), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg15
    refine ⟨rho 6696, rho 6697, rho 6698, rho 6699, rho 6700,
      (by unfold Seg11.relationRow5100 at r5100; linear_combination r5100), (by unfold Seg11.relationRow5101 at r5101; linear_combination r5101), (by unfold Seg11.relationRow5102 at r5102; linear_combination r5102), (by unfold Seg11.relationRow5103 at r5103; linear_combination r5103), (by unfold Seg11.relationRow5104 at r5104; linear_combination r5104), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg16
    refine ⟨rho 6701, rho 6702, rho 6703, rho 6704, rho 6705,
      (by unfold Seg11.relationRow5105 at r5105; linear_combination r5105), (by unfold Seg11.relationRow5106 at r5106; linear_combination r5106), (by unfold Seg11.relationRow5107 at r5107; linear_combination r5107), (by unfold Seg11.relationRow5108 at r5108; linear_combination r5108), (by unfold Seg11.relationRow5109 at r5109; linear_combination r5109), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg17
    refine ⟨rho 6706, rho 6707, rho 6708, rho 6709, rho 6710,
      (by unfold Seg11.relationRow5110 at r5110; linear_combination r5110), (by unfold Seg11.relationRow5111 at r5111; linear_combination r5111), (by unfold Seg11.relationRow5112 at r5112; linear_combination r5112), (by unfold Seg11.relationRow5113 at r5113; linear_combination r5113), (by unfold Seg11.relationRow5114 at r5114; linear_combination r5114), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg18
    refine ⟨rho 6711, rho 6712, rho 6713, rho 6714, rho 6715,
      (by unfold Seg11.relationRow5115 at r5115; linear_combination r5115), (by unfold Seg11.relationRow5116 at r5116; linear_combination r5116), (by unfold Seg11.relationRow5117 at r5117; linear_combination r5117), (by unfold Seg11.relationRow5118 at r5118; linear_combination r5118), (by unfold Seg11.relationRow5119 at r5119; linear_combination r5119), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg19
    refine ⟨rho 6716, rho 6717, rho 6718, rho 6719, rho 6720,
      (by unfold Seg11.relationRow5120 at r5120; linear_combination r5120), (by unfold Seg11.relationRow5121 at r5121; linear_combination r5121), (by unfold Seg11.relationRow5122 at r5122; linear_combination r5122), (by unfold Seg11.relationRow5123 at r5123; linear_combination r5123), (by unfold Seg11.relationRow5124 at r5124; linear_combination r5124), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg20
    refine ⟨rho 6721, rho 6722, rho 6723, rho 6724, rho 6725,
      (by unfold Seg11.relationRow5125 at r5125; linear_combination r5125), (by unfold Seg11.relationRow5126 at r5126; linear_combination r5126), (by unfold Seg11.relationRow5127 at r5127; linear_combination r5127), (by unfold Seg11.relationRow5128 at r5128; linear_combination r5128), (by unfold Seg11.relationRow5129 at r5129; linear_combination r5129), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg21
    refine ⟨rho 6726, rho 6727, rho 6728, rho 6729, rho 6730,
      (by unfold Seg11.relationRow5130 at r5130; linear_combination r5130), (by unfold Seg11.relationRow5131 at r5131; linear_combination r5131), (by unfold Seg11.relationRow5132 at r5132; linear_combination r5132), (by unfold Seg11.relationRow5133 at r5133; linear_combination r5133), (by unfold Seg11.relationRow5134 at r5134; linear_combination r5134), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg22
    refine ⟨rho 6731, rho 6732, rho 6733, rho 6734, rho 6735,
      (by unfold Seg11.relationRow5135 at r5135; linear_combination r5135), (by unfold Seg11.relationRow5136 at r5136; linear_combination r5136), (by unfold Seg11.relationRow5137 at r5137; linear_combination r5137), (by unfold Seg11.relationRow5138 at r5138; linear_combination r5138), (by unfold Seg11.relationRow5139 at r5139; linear_combination r5139), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg23
    refine ⟨rho 6736, rho 6737, rho 6738, rho 6739, rho 6740,
      (by unfold Seg11.relationRow5140 at r5140; linear_combination r5140), (by unfold Seg11.relationRow5141 at r5141; linear_combination r5141), (by unfold Seg11.relationRow5142 at r5142; linear_combination r5142), (by unfold Seg11.relationRow5143 at r5143; linear_combination r5143), (by unfold Seg11.relationRow5144 at r5144; linear_combination r5144), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg24
    refine ⟨rho 6741, rho 6742, rho 6743, rho 6744, rho 6745,
      (by unfold Seg11.relationRow5145 at r5145; linear_combination r5145), (by unfold Seg11.relationRow5146 at r5146; linear_combination r5146), (by unfold Seg11.relationRow5147 at r5147; linear_combination r5147), (by unfold Seg11.relationRow5148 at r5148; linear_combination r5148), (by unfold Seg11.relationRow5149 at r5149; linear_combination r5149), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg25
    refine ⟨rho 6746, rho 6747, rho 6748, rho 6749, rho 6750,
      (by unfold Seg11.relationRow5150 at r5150; linear_combination r5150), (by unfold Seg11.relationRow5151 at r5151; linear_combination r5151), (by unfold Seg11.relationRow5152 at r5152; linear_combination r5152), (by unfold Seg11.relationRow5153 at r5153; linear_combination r5153), (by unfold Seg11.relationRow5154 at r5154; linear_combination r5154), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg26
    refine ⟨rho 6751, rho 6752, rho 6753, rho 6754, rho 6755,
      (by unfold Seg11.relationRow5155 at r5155; linear_combination r5155), (by unfold Seg11.relationRow5156 at r5156; linear_combination r5156), (by unfold Seg11.relationRow5157 at r5157; linear_combination r5157), (by unfold Seg11.relationRow5158 at r5158; linear_combination r5158), (by unfold Seg11.relationRow5159 at r5159; linear_combination r5159), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg27
    refine ⟨rho 6756, rho 6757, rho 6758, rho 6759, rho 6760,
      (by unfold Seg11.relationRow5160 at r5160; linear_combination r5160), (by unfold Seg11.relationRow5161 at r5161; linear_combination r5161), (by unfold Seg11.relationRow5162 at r5162; linear_combination r5162), (by unfold Seg11.relationRow5163 at r5163; linear_combination r5163), (by unfold Seg11.relationRow5164 at r5164; linear_combination r5164), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg28
    refine ⟨rho 6761, rho 6762, rho 6763, rho 6764, rho 6765,
      (by unfold Seg11.relationRow5165 at r5165; linear_combination r5165), (by unfold Seg11.relationRow5166 at r5166; linear_combination r5166), (by unfold Seg11.relationRow5167 at r5167; linear_combination r5167), (by unfold Seg11.relationRow5168 at r5168; linear_combination r5168), (by unfold Seg11.relationRow5169 at r5169; linear_combination r5169), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg29
    refine ⟨rho 6766, rho 6767, rho 6768, rho 6769, rho 6770,
      (by unfold Seg11.relationRow5170 at r5170; linear_combination r5170), (by unfold Seg11.relationRow5171 at r5171; linear_combination r5171), (by unfold Seg11.relationRow5172 at r5172; linear_combination r5172), (by unfold Seg11.relationRow5173 at r5173; linear_combination r5173), (by unfold Seg11.relationRow5174 at r5174; linear_combination r5174), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg30
    refine ⟨rho 6771, rho 6772, rho 6773, rho 6774, rho 6775,
      (by unfold Seg11.relationRow5175 at r5175; linear_combination r5175), (by unfold Seg11.relationRow5176 at r5176; linear_combination r5176), (by unfold Seg11.relationRow5177 at r5177; linear_combination r5177), (by unfold Seg11.relationRow5178 at r5178; linear_combination r5178), (by unfold Seg11.relationRow5179 at r5179; linear_combination r5179), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg31
    refine ⟨rho 6776, rho 6777, rho 6778, rho 6779, rho 6780,
      (by unfold Seg11.relationRow5180 at r5180; linear_combination r5180), (by unfold Seg11.relationRow5181 at r5181; linear_combination r5181), (by unfold Seg11.relationRow5182 at r5182; linear_combination r5182), (by unfold Seg11.relationRow5183 at r5183; linear_combination r5183), (by unfold Seg11.relationRow5184 at r5184; linear_combination r5184), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg32
    refine ⟨rho 6781, rho 6782, rho 6783, rho 6784, rho 6785,
      (by unfold Seg11.relationRow5185 at r5185; linear_combination r5185), (by unfold Seg11.relationRow5186 at r5186; linear_combination r5186), (by unfold Seg11.relationRow5187 at r5187; linear_combination r5187), (by unfold Seg11.relationRow5188 at r5188; linear_combination r5188), (by unfold Seg11.relationRow5189 at r5189; linear_combination r5189), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg33
    refine ⟨rho 6786, rho 6787, rho 6788, rho 6789, rho 6790,
      (by unfold Seg11.relationRow5190 at r5190; linear_combination r5190), (by unfold Seg11.relationRow5191 at r5191; linear_combination r5191), (by unfold Seg11.relationRow5192 at r5192; linear_combination r5192), (by unfold Seg11.relationRow5193 at r5193; linear_combination r5193), (by unfold Seg11.relationRow5194 at r5194; linear_combination r5194), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg34
    refine ⟨rho 6791, rho 6792, rho 6793, rho 6794, rho 6795,
      (by unfold Seg11.relationRow5195 at r5195; linear_combination r5195), (by unfold Seg11.relationRow5196 at r5196; linear_combination r5196), (by unfold Seg11.relationRow5197 at r5197; linear_combination r5197), (by unfold Seg11.relationRow5198 at r5198; linear_combination r5198), (by unfold Seg11.relationRow5199 at r5199; linear_combination r5199), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg35
    refine ⟨rho 6796, rho 6797, rho 6798, rho 6799, rho 6800,
      (by unfold Seg11.relationRow5200 at r5200; linear_combination r5200), (by unfold Seg11.relationRow5201 at r5201; linear_combination r5201), (by unfold Seg11.relationRow5202 at r5202; linear_combination r5202), (by unfold Seg11.relationRow5203 at r5203; linear_combination r5203), (by unfold Seg11.relationRow5204 at r5204; linear_combination r5204), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg36
    refine ⟨rho 6801, rho 6802, rho 6803, rho 6804, rho 6805,
      (by unfold Seg11.relationRow5205 at r5205; linear_combination r5205), (by unfold Seg11.relationRow5206 at r5206; linear_combination r5206), (by unfold Seg11.relationRow5207 at r5207; linear_combination r5207), (by unfold Seg11.relationRow5208 at r5208; linear_combination r5208), (by unfold Seg11.relationRow5209 at r5209; linear_combination r5209), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg37
    refine ⟨rho 6806, rho 6807, rho 6808, rho 6809, rho 6810,
      (by unfold Seg11.relationRow5210 at r5210; linear_combination r5210), (by unfold Seg11.relationRow5211 at r5211; linear_combination r5211), (by unfold Seg11.relationRow5212 at r5212; linear_combination r5212), (by unfold Seg11.relationRow5213 at r5213; linear_combination r5213), (by unfold Seg11.relationRow5214 at r5214; linear_combination r5214), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg38
    refine ⟨rho 6811, rho 6812, rho 6813, rho 6814, rho 6815,
      (by unfold Seg11.relationRow5215 at r5215; linear_combination r5215), (by unfold Seg11.relationRow5216 at r5216; linear_combination r5216), (by unfold Seg11.relationRow5217 at r5217; linear_combination r5217), (by unfold Seg11.relationRow5218 at r5218; linear_combination r5218), (by unfold Seg11.relationRow5219 at r5219; linear_combination r5219), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg39
    refine ⟨rho 6816, rho 6817, rho 6818, rho 6819, rho 6820,
      (by unfold Seg11.relationRow5220 at r5220; linear_combination r5220), (by unfold Seg11.relationRow5221 at r5221; linear_combination r5221), (by unfold Seg11.relationRow5222 at r5222; linear_combination r5222), (by unfold Seg11.relationRow5223 at r5223; linear_combination r5223), (by unfold Seg11.relationRow5224 at r5224; linear_combination r5224), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg40
    refine ⟨rho 6821, rho 6822, rho 6823, rho 6824, rho 6825,
      (by unfold Seg11.relationRow5225 at r5225; linear_combination r5225), (by unfold Seg11.relationRow5226 at r5226; linear_combination r5226), (by unfold Seg11.relationRow5227 at r5227; linear_combination r5227), (by unfold Seg11.relationRow5228 at r5228; linear_combination r5228), (by unfold Seg11.relationRow5229 at r5229; linear_combination r5229), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg41
    refine ⟨rho 6826, rho 6827, rho 6828, rho 6829, rho 6830,
      (by unfold Seg11.relationRow5230 at r5230; linear_combination r5230), (by unfold Seg11.relationRow5231 at r5231; linear_combination r5231), (by unfold Seg11.relationRow5232 at r5232; linear_combination r5232), (by unfold Seg11.relationRow5233 at r5233; linear_combination r5233), (by unfold Seg11.relationRow5234 at r5234; linear_combination r5234), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg42
    refine ⟨rho 6831, rho 6832, rho 6833, rho 6834, rho 6835,
      (by unfold Seg11.relationRow5235 at r5235; linear_combination r5235), (by unfold Seg11.relationRow5236 at r5236; linear_combination r5236), (by unfold Seg11.relationRow5237 at r5237; linear_combination r5237), (by unfold Seg11.relationRow5238 at r5238; linear_combination r5238), (by unfold Seg11.relationRow5239 at r5239; linear_combination r5239), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg43
    refine ⟨rho 6836, rho 6837, rho 6838, rho 6839, rho 6840,
      (by unfold Seg11.relationRow5240 at r5240; linear_combination r5240), (by unfold Seg11.relationRow5241 at r5241; linear_combination r5241), (by unfold Seg11.relationRow5242 at r5242; linear_combination r5242), (by unfold Seg11.relationRow5243 at r5243; linear_combination r5243), (by unfold Seg11.relationRow5244 at r5244; linear_combination r5244), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg44
    refine ⟨rho 6841, rho 6842, rho 6843, rho 6844, rho 6845,
      (by unfold Seg11.relationRow5245 at r5245; linear_combination r5245), (by unfold Seg11.relationRow5246 at r5246; linear_combination r5246), (by unfold Seg11.relationRow5247 at r5247; linear_combination r5247), (by unfold Seg11.relationRow5248 at r5248; linear_combination r5248), (by unfold Seg11.relationRow5249 at r5249; linear_combination r5249), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg45
    refine ⟨rho 6846, rho 6847, rho 6848, rho 6849, rho 6850,
      (by unfold Seg11.relationRow5250 at r5250; linear_combination r5250), (by unfold Seg11.relationRow5251 at r5251; linear_combination r5251), (by unfold Seg11.relationRow5252 at r5252; linear_combination r5252), (by unfold Seg11.relationRow5253 at r5253; linear_combination r5253), (by unfold Seg11.relationRow5254 at r5254; linear_combination r5254), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg46
    refine ⟨rho 6851, rho 6852, rho 6853, rho 6854, rho 6855,
      (by unfold Seg11.relationRow5255 at r5255; linear_combination r5255), (by unfold Seg11.relationRow5256 at r5256; linear_combination r5256), (by unfold Seg11.relationRow5257 at r5257; linear_combination r5257), (by unfold Seg11.relationRow5258 at r5258; linear_combination r5258), (by unfold Seg11.relationRow5259 at r5259; linear_combination r5259), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg47
    refine ⟨rho 6856, rho 6857, rho 6858, rho 6859, rho 6860,
      (by unfold Seg11.relationRow5260 at r5260; linear_combination r5260), (by unfold Seg11.relationRow5261 at r5261; linear_combination r5261), (by unfold Seg11.relationRow5262 at r5262; linear_combination r5262), (by unfold Seg11.relationRow5263 at r5263; linear_combination r5263), (by unfold Seg11.relationRow5264 at r5264; linear_combination r5264), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg48
    refine ⟨rho 6861, rho 6862, rho 6863, rho 6864, rho 6865,
      (by unfold Seg11.relationRow5265 at r5265; linear_combination r5265), (by unfold Seg11.relationRow5266 at r5266; linear_combination r5266), (by unfold Seg11.relationRow5267 at r5267; linear_combination r5267), (by unfold Seg11.relationRow5268 at r5268; linear_combination r5268), (by unfold Seg11.relationRow5269 at r5269; linear_combination r5269), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg49
    refine ⟨rho 6866, rho 6867, rho 6868, rho 6869, rho 6870,
      (by unfold Seg11.relationRow5270 at r5270; linear_combination r5270), (by unfold Seg11.relationRow5271 at r5271; linear_combination r5271), (by unfold Seg11.relationRow5272 at r5272; linear_combination r5272), (by unfold Seg11.relationRow5273 at r5273; linear_combination r5273), (by unfold Seg11.relationRow5274 at r5274; linear_combination r5274), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg50
    refine ⟨rho 6871, rho 6872, rho 6873, rho 6874, rho 6875,
      (by unfold Seg11.relationRow5275 at r5275; linear_combination r5275), (by unfold Seg11.relationRow5276 at r5276; linear_combination r5276), (by unfold Seg11.relationRow5277 at r5277; linear_combination r5277), (by unfold Seg11.relationRow5278 at r5278; linear_combination r5278), (by unfold Seg11.relationRow5279 at r5279; linear_combination r5279), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg51
    refine ⟨rho 6876, rho 6877, rho 6878, rho 6879, rho 6880,
      (by unfold Seg11.relationRow5280 at r5280; linear_combination r5280), (by unfold Seg11.relationRow5281 at r5281; linear_combination r5281), (by unfold Seg11.relationRow5282 at r5282; linear_combination r5282), (by unfold Seg11.relationRow5283 at r5283; linear_combination r5283), (by unfold Seg11.relationRow5284 at r5284; linear_combination r5284), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg52
    refine ⟨rho 6881, rho 6882, rho 6883, rho 6884, rho 6885,
      (by unfold Seg11.relationRow5285 at r5285; linear_combination r5285), (by unfold Seg11.relationRow5286 at r5286; linear_combination r5286), (by unfold Seg11.relationRow5287 at r5287; linear_combination r5287), (by unfold Seg11.relationRow5288 at r5288; linear_combination r5288), (by unfold Seg11.relationRow5289 at r5289; linear_combination r5289), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg53
    refine ⟨rho 6886, rho 6887, rho 6888, rho 6889, rho 6890,
      (by unfold Seg11.relationRow5290 at r5290; linear_combination r5290), (by unfold Seg11.relationRow5291 at r5291; linear_combination r5291), (by unfold Seg11.relationRow5292 at r5292; linear_combination r5292), (by unfold Seg11.relationRow5293 at r5293; linear_combination r5293), (by unfold Seg11.relationRow5294 at r5294; linear_combination r5294), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg54
    refine ⟨rho 6891, rho 6892, rho 6893, rho 6894, rho 6895,
      (by unfold Seg11.relationRow5295 at r5295; linear_combination r5295), (by unfold Seg11.relationRow5296 at r5296; linear_combination r5296), (by unfold Seg11.relationRow5297 at r5297; linear_combination r5297), (by unfold Seg11.relationRow5298 at r5298; linear_combination r5298), (by unfold Seg11.relationRow5299 at r5299; linear_combination r5299), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg55
    refine ⟨rho 6896, rho 6897, rho 6898, rho 6899, rho 6900,
      (by unfold Seg11.relationRow5300 at r5300; linear_combination r5300), (by unfold Seg11.relationRow5301 at r5301; linear_combination r5301), (by unfold Seg11.relationRow5302 at r5302; linear_combination r5302), (by unfold Seg11.relationRow5303 at r5303; linear_combination r5303), (by unfold Seg11.relationRow5304 at r5304; linear_combination r5304), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg56
    refine ⟨rho 6901, rho 6902, rho 6903, rho 6904, rho 6905,
      (by unfold Seg11.relationRow5305 at r5305; linear_combination r5305), (by unfold Seg11.relationRow5306 at r5306; linear_combination r5306), (by unfold Seg11.relationRow5307 at r5307; linear_combination r5307), (by unfold Seg11.relationRow5308 at r5308; linear_combination r5308), (by unfold Seg11.relationRow5309 at r5309; linear_combination r5309), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg57
    refine ⟨rho 6906, rho 6907, rho 6908, rho 6909, rho 6910,
      (by unfold Seg11.relationRow5310 at r5310; linear_combination r5310), (by unfold Seg11.relationRow5311 at r5311; linear_combination r5311), (by unfold Seg11.relationRow5312 at r5312; linear_combination r5312), (by unfold Seg11.relationRow5313 at r5313; linear_combination r5313), (by unfold Seg11.relationRow5314 at r5314; linear_combination r5314), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg58
    refine ⟨rho 6911, rho 6912, rho 6913, rho 6914, rho 6915,
      (by unfold Seg11.relationRow5315 at r5315; linear_combination r5315), (by unfold Seg11.relationRow5316 at r5316; linear_combination r5316), (by unfold Seg11.relationRow5317 at r5317; linear_combination r5317), (by unfold Seg11.relationRow5318 at r5318; linear_combination r5318), (by unfold Seg11.relationRow5319 at r5319; linear_combination r5319), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg59
    refine ⟨rho 6916, rho 6917, rho 6918, rho 6919, rho 6920,
      (by unfold Seg11.relationRow5320 at r5320; linear_combination r5320), (by unfold Seg11.relationRow5321 at r5321; linear_combination r5321), (by unfold Seg11.relationRow5322 at r5322; linear_combination r5322), (by unfold Seg11.relationRow5323 at r5323; linear_combination r5323), (by unfold Seg11.relationRow5324 at r5324; linear_combination r5324), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg60
    refine ⟨rho 6921, rho 6922, rho 6923, rho 6924, rho 6925,
      (by unfold Seg11.relationRow5325 at r5325; linear_combination r5325), (by unfold Seg11.relationRow5326 at r5326; linear_combination r5326), (by unfold Seg11.relationRow5327 at r5327; linear_combination r5327), (by unfold Seg11.relationRow5328 at r5328; linear_combination r5328), (by unfold Seg11.relationRow5329 at r5329; linear_combination r5329), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg61
    refine ⟨rho 6926, rho 6927, rho 6928, rho 6929, rho 6930,
      (by unfold Seg11.relationRow5330 at r5330; linear_combination r5330), (by unfold Seg11.relationRow5331 at r5331; linear_combination r5331), (by unfold Seg11.relationRow5332 at r5332; linear_combination r5332), (by unfold Seg11.relationRow5333 at r5333; linear_combination r5333), (by unfold Seg11.relationRow5334 at r5334; linear_combination r5334), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg62
    refine ⟨rho 6931, rho 6932, rho 6933, rho 6934, rho 6935,
      (by unfold Seg11.relationRow5335 at r5335; linear_combination r5335), (by unfold Seg11.relationRow5336 at r5336; linear_combination r5336), (by unfold Seg11.relationRow5337 at r5337; linear_combination r5337), (by unfold Seg11.relationRow5338 at r5338; linear_combination r5338), (by unfold Seg11.relationRow5339 at r5339; linear_combination r5339), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg63
    refine ⟨rho 6936, rho 6937, rho 6938, rho 6939, rho 6940,
      (by unfold Seg11.relationRow5340 at r5340; linear_combination r5340), (by unfold Seg11.relationRow5341 at r5341; linear_combination r5341), (by unfold Seg11.relationRow5342 at r5342; linear_combination r5342), (by unfold Seg11.relationRow5343 at r5343; linear_combination r5343), (by unfold Seg11.relationRow5344 at r5344; linear_combination r5344), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg64
    refine ⟨rho 6941, rho 6942, rho 6943, rho 6944, rho 6945,
      (by unfold Seg11.relationRow5345 at r5345; linear_combination r5345), (by unfold Seg11.relationRow5346 at r5346; linear_combination r5346), (by unfold Seg11.relationRow5347 at r5347; linear_combination r5347), (by unfold Seg11.relationRow5348 at r5348; linear_combination r5348), (by unfold Seg11.relationRow5349 at r5349; linear_combination r5349), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg65
    refine ⟨rho 6946, rho 6947, rho 6948, rho 6949, rho 6950,
      (by unfold Seg11.relationRow5350 at r5350; linear_combination r5350), (by unfold Seg11.relationRow5351 at r5351; linear_combination r5351), (by unfold Seg11.relationRow5352 at r5352; linear_combination r5352), (by unfold Seg11.relationRow5353 at r5353; linear_combination r5353), (by unfold Seg11.relationRow5354 at r5354; linear_combination r5354), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg66
    refine ⟨rho 6951, rho 6952, rho 6953, rho 6954, rho 6955,
      (by unfold Seg11.relationRow5355 at r5355; linear_combination r5355), (by unfold Seg11.relationRow5356 at r5356; linear_combination r5356), (by unfold Seg11.relationRow5357 at r5357; linear_combination r5357), (by unfold Seg11.relationRow5358 at r5358; linear_combination r5358), (by unfold Seg11.relationRow5359 at r5359; linear_combination r5359), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg67
    refine ⟨rho 6956, rho 6957, rho 6958, rho 6959, rho 6960,
      (by unfold Seg11.relationRow5360 at r5360; linear_combination r5360), (by unfold Seg11.relationRow5361 at r5361; linear_combination r5361), (by unfold Seg11.relationRow5362 at r5362; linear_combination r5362), (by unfold Seg11.relationRow5363 at r5363; linear_combination r5363), (by unfold Seg11.relationRow5364 at r5364; linear_combination r5364), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg68
    refine ⟨rho 6961, rho 6962, rho 6963, rho 6964, rho 6965,
      (by unfold Seg11.relationRow5365 at r5365; linear_combination r5365), (by unfold Seg11.relationRow5366 at r5366; linear_combination r5366), (by unfold Seg11.relationRow5367 at r5367; linear_combination r5367), (by unfold Seg11.relationRow5368 at r5368; linear_combination r5368), (by unfold Seg11.relationRow5369 at r5369; linear_combination r5369), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode13350_c9d34a.seg69
    refine ⟨rho 6966, rho 6967, rho 6968, rho 6969, rho 6970,
      (by unfold Seg11.relationRow5370 at r5370; linear_combination r5370), (by unfold Seg11.relationRow5371 at r5371; linear_combination r5371), (by unfold Seg11.relationRow5372 at r5372; linear_combination r5372), (by unfold Seg11.relationRow5373 at r5373; linear_combination r5373), (by unfold Seg11.relationRow5374 at r5374; linear_combination r5374), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode13.relation_sound_permSpec (rho 55) (rho 56) (rho 57) (rho 6615) (rho 6616) (rho 6617) (rho 6618) (rho 6619) (rho 6620) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode13.tctNode14DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode13.F) + (14 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode13.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg11ScpNode13Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode13.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

