import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg29Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode14.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg29_scp_node14_eq (rho : Nat -> Seg29.F) (h : Seg29.relation rho) :
    seg29ScpNode14Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg29.F) + (15 : Seg29.F))
        (rho 142 + rho 25675) (rho 143 + rho 25676 + rho 25677)
        (rho 143 + rho 25678 + rho 25679) (rho 144 + rho 25680) := by
  unfold Seg29.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, p68, p69,
    p70, p71, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg29.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5389, r5390, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩
  unfold Seg29.relationPart68 at p68
  rcases p68 with ⟨r5440, r5441, r5442, r5443, r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518, r5519⟩
  unfold Seg29.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩
  unfold Seg29.relationPart70 at p70
  rcases p70 with ⟨r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Seg29.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.relation (rho 142) (rho 143) (rho 144) (rho 25675) (rho 25676) (rho 25677) (rho 25678) (rho 25679) (rho 25680)
      (fun o0 o1 o2 o3 o4 => o0 = rho 26010 ∧ o1 = rho 26015 ∧ o2 = rho 26020 ∧ o3 = rho 26025 ∧ o4 = rho 26030) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg0
    refine ⟨rho 25681, rho 25682, rho 25683, rho 25684, rho 25685,
      (by unfold Seg29.relationRow5389 at r5389; linear_combination r5389), (by unfold Seg29.relationRow5390 at r5390; linear_combination r5390), (by unfold Seg29.relationRow5391 at r5391; linear_combination r5391), (by unfold Seg29.relationRow5392 at r5392; linear_combination r5392), (by unfold Seg29.relationRow5393 at r5393; linear_combination r5393), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg1
    refine ⟨rho 25686, rho 25687, rho 25688, rho 25689, rho 25690,
      (by unfold Seg29.relationRow5394 at r5394; linear_combination r5394), (by unfold Seg29.relationRow5395 at r5395; linear_combination r5395), (by unfold Seg29.relationRow5396 at r5396; linear_combination r5396), (by unfold Seg29.relationRow5397 at r5397; linear_combination r5397), (by unfold Seg29.relationRow5398 at r5398; linear_combination r5398), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg2
    refine ⟨rho 25691, rho 25692, rho 25693, rho 25694, rho 25695,
      (by unfold Seg29.relationRow5399 at r5399; linear_combination r5399), (by unfold Seg29.relationRow5400 at r5400; linear_combination r5400), (by unfold Seg29.relationRow5401 at r5401; linear_combination r5401), (by unfold Seg29.relationRow5402 at r5402; linear_combination r5402), (by unfold Seg29.relationRow5403 at r5403; linear_combination r5403), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg3
    refine ⟨rho 25696, rho 25697, rho 25698, rho 25699, rho 25700,
      (by unfold Seg29.relationRow5404 at r5404; linear_combination r5404), (by unfold Seg29.relationRow5405 at r5405; linear_combination r5405), (by unfold Seg29.relationRow5406 at r5406; linear_combination r5406), (by unfold Seg29.relationRow5407 at r5407; linear_combination r5407), (by unfold Seg29.relationRow5408 at r5408; linear_combination r5408), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg4
    refine ⟨rho 25701, rho 25702, rho 25703, rho 25704, rho 25705,
      (by unfold Seg29.relationRow5409 at r5409; linear_combination r5409), (by unfold Seg29.relationRow5410 at r5410; linear_combination r5410), (by unfold Seg29.relationRow5411 at r5411; linear_combination r5411), (by unfold Seg29.relationRow5412 at r5412; linear_combination r5412), (by unfold Seg29.relationRow5413 at r5413; linear_combination r5413), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg5
    refine ⟨rho 25706, rho 25707, rho 25708, rho 25709, rho 25710,
      (by unfold Seg29.relationRow5414 at r5414; linear_combination r5414), (by unfold Seg29.relationRow5415 at r5415; linear_combination r5415), (by unfold Seg29.relationRow5416 at r5416; linear_combination r5416), (by unfold Seg29.relationRow5417 at r5417; linear_combination r5417), (by unfold Seg29.relationRow5418 at r5418; linear_combination r5418), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg6
    refine ⟨rho 25711, rho 25712, rho 25713, rho 25714, rho 25715,
      (by unfold Seg29.relationRow5419 at r5419; linear_combination r5419), (by unfold Seg29.relationRow5420 at r5420; linear_combination r5420), (by unfold Seg29.relationRow5421 at r5421; linear_combination r5421), (by unfold Seg29.relationRow5422 at r5422; linear_combination r5422), (by unfold Seg29.relationRow5423 at r5423; linear_combination r5423), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg7
    refine ⟨rho 25716, rho 25717, rho 25718, rho 25719, rho 25720,
      (by unfold Seg29.relationRow5424 at r5424; linear_combination r5424), (by unfold Seg29.relationRow5425 at r5425; linear_combination r5425), (by unfold Seg29.relationRow5426 at r5426; linear_combination r5426), (by unfold Seg29.relationRow5427 at r5427; linear_combination r5427), (by unfold Seg29.relationRow5428 at r5428; linear_combination r5428), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg8
    refine ⟨rho 25721, rho 25722, rho 25723, rho 25724, rho 25725,
      (by unfold Seg29.relationRow5429 at r5429; linear_combination r5429), (by unfold Seg29.relationRow5430 at r5430; linear_combination r5430), (by unfold Seg29.relationRow5431 at r5431; linear_combination r5431), (by unfold Seg29.relationRow5432 at r5432; linear_combination r5432), (by unfold Seg29.relationRow5433 at r5433; linear_combination r5433), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg9
    refine ⟨rho 25726, rho 25727, rho 25728, rho 25729, rho 25730,
      (by unfold Seg29.relationRow5434 at r5434; linear_combination r5434), (by unfold Seg29.relationRow5435 at r5435; linear_combination r5435), (by unfold Seg29.relationRow5436 at r5436; linear_combination r5436), (by unfold Seg29.relationRow5437 at r5437; linear_combination r5437), (by unfold Seg29.relationRow5438 at r5438; linear_combination r5438), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg10
    refine ⟨rho 25731, rho 25732, rho 25733, rho 25734, rho 25735,
      (by unfold Seg29.relationRow5439 at r5439; linear_combination r5439), (by unfold Seg29.relationRow5440 at r5440; linear_combination r5440), (by unfold Seg29.relationRow5441 at r5441; linear_combination r5441), (by unfold Seg29.relationRow5442 at r5442; linear_combination r5442), (by unfold Seg29.relationRow5443 at r5443; linear_combination r5443), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg11
    refine ⟨rho 25736, rho 25737, rho 25738, rho 25739, rho 25740,
      (by unfold Seg29.relationRow5444 at r5444; linear_combination r5444), (by unfold Seg29.relationRow5445 at r5445; linear_combination r5445), (by unfold Seg29.relationRow5446 at r5446; linear_combination r5446), (by unfold Seg29.relationRow5447 at r5447; linear_combination r5447), (by unfold Seg29.relationRow5448 at r5448; linear_combination r5448), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg12
    refine ⟨rho 25741, rho 25742, rho 25743, rho 25744, rho 25745,
      (by unfold Seg29.relationRow5449 at r5449; linear_combination r5449), (by unfold Seg29.relationRow5450 at r5450; linear_combination r5450), (by unfold Seg29.relationRow5451 at r5451; linear_combination r5451), (by unfold Seg29.relationRow5452 at r5452; linear_combination r5452), (by unfold Seg29.relationRow5453 at r5453; linear_combination r5453), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg13
    refine ⟨rho 25746, rho 25747, rho 25748, rho 25749, rho 25750,
      (by unfold Seg29.relationRow5454 at r5454; linear_combination r5454), (by unfold Seg29.relationRow5455 at r5455; linear_combination r5455), (by unfold Seg29.relationRow5456 at r5456; linear_combination r5456), (by unfold Seg29.relationRow5457 at r5457; linear_combination r5457), (by unfold Seg29.relationRow5458 at r5458; linear_combination r5458), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg14
    refine ⟨rho 25751, rho 25752, rho 25753, rho 25754, rho 25755,
      (by unfold Seg29.relationRow5459 at r5459; linear_combination r5459), (by unfold Seg29.relationRow5460 at r5460; linear_combination r5460), (by unfold Seg29.relationRow5461 at r5461; linear_combination r5461), (by unfold Seg29.relationRow5462 at r5462; linear_combination r5462), (by unfold Seg29.relationRow5463 at r5463; linear_combination r5463), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg15
    refine ⟨rho 25756, rho 25757, rho 25758, rho 25759, rho 25760,
      (by unfold Seg29.relationRow5464 at r5464; linear_combination r5464), (by unfold Seg29.relationRow5465 at r5465; linear_combination r5465), (by unfold Seg29.relationRow5466 at r5466; linear_combination r5466), (by unfold Seg29.relationRow5467 at r5467; linear_combination r5467), (by unfold Seg29.relationRow5468 at r5468; linear_combination r5468), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg16
    refine ⟨rho 25761, rho 25762, rho 25763, rho 25764, rho 25765,
      (by unfold Seg29.relationRow5469 at r5469; linear_combination r5469), (by unfold Seg29.relationRow5470 at r5470; linear_combination r5470), (by unfold Seg29.relationRow5471 at r5471; linear_combination r5471), (by unfold Seg29.relationRow5472 at r5472; linear_combination r5472), (by unfold Seg29.relationRow5473 at r5473; linear_combination r5473), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg17
    refine ⟨rho 25766, rho 25767, rho 25768, rho 25769, rho 25770,
      (by unfold Seg29.relationRow5474 at r5474; linear_combination r5474), (by unfold Seg29.relationRow5475 at r5475; linear_combination r5475), (by unfold Seg29.relationRow5476 at r5476; linear_combination r5476), (by unfold Seg29.relationRow5477 at r5477; linear_combination r5477), (by unfold Seg29.relationRow5478 at r5478; linear_combination r5478), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg18
    refine ⟨rho 25771, rho 25772, rho 25773, rho 25774, rho 25775,
      (by unfold Seg29.relationRow5479 at r5479; linear_combination r5479), (by unfold Seg29.relationRow5480 at r5480; linear_combination r5480), (by unfold Seg29.relationRow5481 at r5481; linear_combination r5481), (by unfold Seg29.relationRow5482 at r5482; linear_combination r5482), (by unfold Seg29.relationRow5483 at r5483; linear_combination r5483), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg19
    refine ⟨rho 25776, rho 25777, rho 25778, rho 25779, rho 25780,
      (by unfold Seg29.relationRow5484 at r5484; linear_combination r5484), (by unfold Seg29.relationRow5485 at r5485; linear_combination r5485), (by unfold Seg29.relationRow5486 at r5486; linear_combination r5486), (by unfold Seg29.relationRow5487 at r5487; linear_combination r5487), (by unfold Seg29.relationRow5488 at r5488; linear_combination r5488), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg20
    refine ⟨rho 25781, rho 25782, rho 25783, rho 25784, rho 25785,
      (by unfold Seg29.relationRow5489 at r5489; linear_combination r5489), (by unfold Seg29.relationRow5490 at r5490; linear_combination r5490), (by unfold Seg29.relationRow5491 at r5491; linear_combination r5491), (by unfold Seg29.relationRow5492 at r5492; linear_combination r5492), (by unfold Seg29.relationRow5493 at r5493; linear_combination r5493), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg21
    refine ⟨rho 25786, rho 25787, rho 25788, rho 25789, rho 25790,
      (by unfold Seg29.relationRow5494 at r5494; linear_combination r5494), (by unfold Seg29.relationRow5495 at r5495; linear_combination r5495), (by unfold Seg29.relationRow5496 at r5496; linear_combination r5496), (by unfold Seg29.relationRow5497 at r5497; linear_combination r5497), (by unfold Seg29.relationRow5498 at r5498; linear_combination r5498), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg22
    refine ⟨rho 25791, rho 25792, rho 25793, rho 25794, rho 25795,
      (by unfold Seg29.relationRow5499 at r5499; linear_combination r5499), (by unfold Seg29.relationRow5500 at r5500; linear_combination r5500), (by unfold Seg29.relationRow5501 at r5501; linear_combination r5501), (by unfold Seg29.relationRow5502 at r5502; linear_combination r5502), (by unfold Seg29.relationRow5503 at r5503; linear_combination r5503), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg23
    refine ⟨rho 25796, rho 25797, rho 25798, rho 25799, rho 25800,
      (by unfold Seg29.relationRow5504 at r5504; linear_combination r5504), (by unfold Seg29.relationRow5505 at r5505; linear_combination r5505), (by unfold Seg29.relationRow5506 at r5506; linear_combination r5506), (by unfold Seg29.relationRow5507 at r5507; linear_combination r5507), (by unfold Seg29.relationRow5508 at r5508; linear_combination r5508), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg24
    refine ⟨rho 25801, rho 25802, rho 25803, rho 25804, rho 25805,
      (by unfold Seg29.relationRow5509 at r5509; linear_combination r5509), (by unfold Seg29.relationRow5510 at r5510; linear_combination r5510), (by unfold Seg29.relationRow5511 at r5511; linear_combination r5511), (by unfold Seg29.relationRow5512 at r5512; linear_combination r5512), (by unfold Seg29.relationRow5513 at r5513; linear_combination r5513), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg25
    refine ⟨rho 25806, rho 25807, rho 25808, rho 25809, rho 25810,
      (by unfold Seg29.relationRow5514 at r5514; linear_combination r5514), (by unfold Seg29.relationRow5515 at r5515; linear_combination r5515), (by unfold Seg29.relationRow5516 at r5516; linear_combination r5516), (by unfold Seg29.relationRow5517 at r5517; linear_combination r5517), (by unfold Seg29.relationRow5518 at r5518; linear_combination r5518), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg26
    refine ⟨rho 25811, rho 25812, rho 25813, rho 25814, rho 25815,
      (by unfold Seg29.relationRow5519 at r5519; linear_combination r5519), (by unfold Seg29.relationRow5520 at r5520; linear_combination r5520), (by unfold Seg29.relationRow5521 at r5521; linear_combination r5521), (by unfold Seg29.relationRow5522 at r5522; linear_combination r5522), (by unfold Seg29.relationRow5523 at r5523; linear_combination r5523), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg27
    refine ⟨rho 25816, rho 25817, rho 25818, rho 25819, rho 25820,
      (by unfold Seg29.relationRow5524 at r5524; linear_combination r5524), (by unfold Seg29.relationRow5525 at r5525; linear_combination r5525), (by unfold Seg29.relationRow5526 at r5526; linear_combination r5526), (by unfold Seg29.relationRow5527 at r5527; linear_combination r5527), (by unfold Seg29.relationRow5528 at r5528; linear_combination r5528), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg28
    refine ⟨rho 25821, rho 25822, rho 25823, rho 25824, rho 25825,
      (by unfold Seg29.relationRow5529 at r5529; linear_combination r5529), (by unfold Seg29.relationRow5530 at r5530; linear_combination r5530), (by unfold Seg29.relationRow5531 at r5531; linear_combination r5531), (by unfold Seg29.relationRow5532 at r5532; linear_combination r5532), (by unfold Seg29.relationRow5533 at r5533; linear_combination r5533), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg29
    refine ⟨rho 25826, rho 25827, rho 25828, rho 25829, rho 25830,
      (by unfold Seg29.relationRow5534 at r5534; linear_combination r5534), (by unfold Seg29.relationRow5535 at r5535; linear_combination r5535), (by unfold Seg29.relationRow5536 at r5536; linear_combination r5536), (by unfold Seg29.relationRow5537 at r5537; linear_combination r5537), (by unfold Seg29.relationRow5538 at r5538; linear_combination r5538), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg30
    refine ⟨rho 25831, rho 25832, rho 25833, rho 25834, rho 25835,
      (by unfold Seg29.relationRow5539 at r5539; linear_combination r5539), (by unfold Seg29.relationRow5540 at r5540; linear_combination r5540), (by unfold Seg29.relationRow5541 at r5541; linear_combination r5541), (by unfold Seg29.relationRow5542 at r5542; linear_combination r5542), (by unfold Seg29.relationRow5543 at r5543; linear_combination r5543), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg31
    refine ⟨rho 25836, rho 25837, rho 25838, rho 25839, rho 25840,
      (by unfold Seg29.relationRow5544 at r5544; linear_combination r5544), (by unfold Seg29.relationRow5545 at r5545; linear_combination r5545), (by unfold Seg29.relationRow5546 at r5546; linear_combination r5546), (by unfold Seg29.relationRow5547 at r5547; linear_combination r5547), (by unfold Seg29.relationRow5548 at r5548; linear_combination r5548), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg32
    refine ⟨rho 25841, rho 25842, rho 25843, rho 25844, rho 25845,
      (by unfold Seg29.relationRow5549 at r5549; linear_combination r5549), (by unfold Seg29.relationRow5550 at r5550; linear_combination r5550), (by unfold Seg29.relationRow5551 at r5551; linear_combination r5551), (by unfold Seg29.relationRow5552 at r5552; linear_combination r5552), (by unfold Seg29.relationRow5553 at r5553; linear_combination r5553), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg33
    refine ⟨rho 25846, rho 25847, rho 25848, rho 25849, rho 25850,
      (by unfold Seg29.relationRow5554 at r5554; linear_combination r5554), (by unfold Seg29.relationRow5555 at r5555; linear_combination r5555), (by unfold Seg29.relationRow5556 at r5556; linear_combination r5556), (by unfold Seg29.relationRow5557 at r5557; linear_combination r5557), (by unfold Seg29.relationRow5558 at r5558; linear_combination r5558), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg34
    refine ⟨rho 25851, rho 25852, rho 25853, rho 25854, rho 25855,
      (by unfold Seg29.relationRow5559 at r5559; linear_combination r5559), (by unfold Seg29.relationRow5560 at r5560; linear_combination r5560), (by unfold Seg29.relationRow5561 at r5561; linear_combination r5561), (by unfold Seg29.relationRow5562 at r5562; linear_combination r5562), (by unfold Seg29.relationRow5563 at r5563; linear_combination r5563), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg35
    refine ⟨rho 25856, rho 25857, rho 25858, rho 25859, rho 25860,
      (by unfold Seg29.relationRow5564 at r5564; linear_combination r5564), (by unfold Seg29.relationRow5565 at r5565; linear_combination r5565), (by unfold Seg29.relationRow5566 at r5566; linear_combination r5566), (by unfold Seg29.relationRow5567 at r5567; linear_combination r5567), (by unfold Seg29.relationRow5568 at r5568; linear_combination r5568), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg36
    refine ⟨rho 25861, rho 25862, rho 25863, rho 25864, rho 25865,
      (by unfold Seg29.relationRow5569 at r5569; linear_combination r5569), (by unfold Seg29.relationRow5570 at r5570; linear_combination r5570), (by unfold Seg29.relationRow5571 at r5571; linear_combination r5571), (by unfold Seg29.relationRow5572 at r5572; linear_combination r5572), (by unfold Seg29.relationRow5573 at r5573; linear_combination r5573), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg37
    refine ⟨rho 25866, rho 25867, rho 25868, rho 25869, rho 25870,
      (by unfold Seg29.relationRow5574 at r5574; linear_combination r5574), (by unfold Seg29.relationRow5575 at r5575; linear_combination r5575), (by unfold Seg29.relationRow5576 at r5576; linear_combination r5576), (by unfold Seg29.relationRow5577 at r5577; linear_combination r5577), (by unfold Seg29.relationRow5578 at r5578; linear_combination r5578), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg38
    refine ⟨rho 25871, rho 25872, rho 25873, rho 25874, rho 25875,
      (by unfold Seg29.relationRow5579 at r5579; linear_combination r5579), (by unfold Seg29.relationRow5580 at r5580; linear_combination r5580), (by unfold Seg29.relationRow5581 at r5581; linear_combination r5581), (by unfold Seg29.relationRow5582 at r5582; linear_combination r5582), (by unfold Seg29.relationRow5583 at r5583; linear_combination r5583), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg39
    refine ⟨rho 25876, rho 25877, rho 25878, rho 25879, rho 25880,
      (by unfold Seg29.relationRow5584 at r5584; linear_combination r5584), (by unfold Seg29.relationRow5585 at r5585; linear_combination r5585), (by unfold Seg29.relationRow5586 at r5586; linear_combination r5586), (by unfold Seg29.relationRow5587 at r5587; linear_combination r5587), (by unfold Seg29.relationRow5588 at r5588; linear_combination r5588), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg40
    refine ⟨rho 25881, rho 25882, rho 25883, rho 25884, rho 25885,
      (by unfold Seg29.relationRow5589 at r5589; linear_combination r5589), (by unfold Seg29.relationRow5590 at r5590; linear_combination r5590), (by unfold Seg29.relationRow5591 at r5591; linear_combination r5591), (by unfold Seg29.relationRow5592 at r5592; linear_combination r5592), (by unfold Seg29.relationRow5593 at r5593; linear_combination r5593), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg41
    refine ⟨rho 25886, rho 25887, rho 25888, rho 25889, rho 25890,
      (by unfold Seg29.relationRow5594 at r5594; linear_combination r5594), (by unfold Seg29.relationRow5595 at r5595; linear_combination r5595), (by unfold Seg29.relationRow5596 at r5596; linear_combination r5596), (by unfold Seg29.relationRow5597 at r5597; linear_combination r5597), (by unfold Seg29.relationRow5598 at r5598; linear_combination r5598), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg42
    refine ⟨rho 25891, rho 25892, rho 25893, rho 25894, rho 25895,
      (by unfold Seg29.relationRow5599 at r5599; linear_combination r5599), (by unfold Seg29.relationRow5600 at r5600; linear_combination r5600), (by unfold Seg29.relationRow5601 at r5601; linear_combination r5601), (by unfold Seg29.relationRow5602 at r5602; linear_combination r5602), (by unfold Seg29.relationRow5603 at r5603; linear_combination r5603), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg43
    refine ⟨rho 25896, rho 25897, rho 25898, rho 25899, rho 25900,
      (by unfold Seg29.relationRow5604 at r5604; linear_combination r5604), (by unfold Seg29.relationRow5605 at r5605; linear_combination r5605), (by unfold Seg29.relationRow5606 at r5606; linear_combination r5606), (by unfold Seg29.relationRow5607 at r5607; linear_combination r5607), (by unfold Seg29.relationRow5608 at r5608; linear_combination r5608), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg44
    refine ⟨rho 25901, rho 25902, rho 25903, rho 25904, rho 25905,
      (by unfold Seg29.relationRow5609 at r5609; linear_combination r5609), (by unfold Seg29.relationRow5610 at r5610; linear_combination r5610), (by unfold Seg29.relationRow5611 at r5611; linear_combination r5611), (by unfold Seg29.relationRow5612 at r5612; linear_combination r5612), (by unfold Seg29.relationRow5613 at r5613; linear_combination r5613), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg45
    refine ⟨rho 25906, rho 25907, rho 25908, rho 25909, rho 25910,
      (by unfold Seg29.relationRow5614 at r5614; linear_combination r5614), (by unfold Seg29.relationRow5615 at r5615; linear_combination r5615), (by unfold Seg29.relationRow5616 at r5616; linear_combination r5616), (by unfold Seg29.relationRow5617 at r5617; linear_combination r5617), (by unfold Seg29.relationRow5618 at r5618; linear_combination r5618), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg46
    refine ⟨rho 25911, rho 25912, rho 25913, rho 25914, rho 25915,
      (by unfold Seg29.relationRow5619 at r5619; linear_combination r5619), (by unfold Seg29.relationRow5620 at r5620; linear_combination r5620), (by unfold Seg29.relationRow5621 at r5621; linear_combination r5621), (by unfold Seg29.relationRow5622 at r5622; linear_combination r5622), (by unfold Seg29.relationRow5623 at r5623; linear_combination r5623), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg47
    refine ⟨rho 25916, rho 25917, rho 25918, rho 25919, rho 25920,
      (by unfold Seg29.relationRow5624 at r5624; linear_combination r5624), (by unfold Seg29.relationRow5625 at r5625; linear_combination r5625), (by unfold Seg29.relationRow5626 at r5626; linear_combination r5626), (by unfold Seg29.relationRow5627 at r5627; linear_combination r5627), (by unfold Seg29.relationRow5628 at r5628; linear_combination r5628), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg48
    refine ⟨rho 25921, rho 25922, rho 25923, rho 25924, rho 25925,
      (by unfold Seg29.relationRow5629 at r5629; linear_combination r5629), (by unfold Seg29.relationRow5630 at r5630; linear_combination r5630), (by unfold Seg29.relationRow5631 at r5631; linear_combination r5631), (by unfold Seg29.relationRow5632 at r5632; linear_combination r5632), (by unfold Seg29.relationRow5633 at r5633; linear_combination r5633), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg49
    refine ⟨rho 25926, rho 25927, rho 25928, rho 25929, rho 25930,
      (by unfold Seg29.relationRow5634 at r5634; linear_combination r5634), (by unfold Seg29.relationRow5635 at r5635; linear_combination r5635), (by unfold Seg29.relationRow5636 at r5636; linear_combination r5636), (by unfold Seg29.relationRow5637 at r5637; linear_combination r5637), (by unfold Seg29.relationRow5638 at r5638; linear_combination r5638), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg50
    refine ⟨rho 25931, rho 25932, rho 25933, rho 25934, rho 25935,
      (by unfold Seg29.relationRow5639 at r5639; linear_combination r5639), (by unfold Seg29.relationRow5640 at r5640; linear_combination r5640), (by unfold Seg29.relationRow5641 at r5641; linear_combination r5641), (by unfold Seg29.relationRow5642 at r5642; linear_combination r5642), (by unfold Seg29.relationRow5643 at r5643; linear_combination r5643), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg51
    refine ⟨rho 25936, rho 25937, rho 25938, rho 25939, rho 25940,
      (by unfold Seg29.relationRow5644 at r5644; linear_combination r5644), (by unfold Seg29.relationRow5645 at r5645; linear_combination r5645), (by unfold Seg29.relationRow5646 at r5646; linear_combination r5646), (by unfold Seg29.relationRow5647 at r5647; linear_combination r5647), (by unfold Seg29.relationRow5648 at r5648; linear_combination r5648), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg52
    refine ⟨rho 25941, rho 25942, rho 25943, rho 25944, rho 25945,
      (by unfold Seg29.relationRow5649 at r5649; linear_combination r5649), (by unfold Seg29.relationRow5650 at r5650; linear_combination r5650), (by unfold Seg29.relationRow5651 at r5651; linear_combination r5651), (by unfold Seg29.relationRow5652 at r5652; linear_combination r5652), (by unfold Seg29.relationRow5653 at r5653; linear_combination r5653), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg53
    refine ⟨rho 25946, rho 25947, rho 25948, rho 25949, rho 25950,
      (by unfold Seg29.relationRow5654 at r5654; linear_combination r5654), (by unfold Seg29.relationRow5655 at r5655; linear_combination r5655), (by unfold Seg29.relationRow5656 at r5656; linear_combination r5656), (by unfold Seg29.relationRow5657 at r5657; linear_combination r5657), (by unfold Seg29.relationRow5658 at r5658; linear_combination r5658), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg54
    refine ⟨rho 25951, rho 25952, rho 25953, rho 25954, rho 25955,
      (by unfold Seg29.relationRow5659 at r5659; linear_combination r5659), (by unfold Seg29.relationRow5660 at r5660; linear_combination r5660), (by unfold Seg29.relationRow5661 at r5661; linear_combination r5661), (by unfold Seg29.relationRow5662 at r5662; linear_combination r5662), (by unfold Seg29.relationRow5663 at r5663; linear_combination r5663), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg55
    refine ⟨rho 25956, rho 25957, rho 25958, rho 25959, rho 25960,
      (by unfold Seg29.relationRow5664 at r5664; linear_combination r5664), (by unfold Seg29.relationRow5665 at r5665; linear_combination r5665), (by unfold Seg29.relationRow5666 at r5666; linear_combination r5666), (by unfold Seg29.relationRow5667 at r5667; linear_combination r5667), (by unfold Seg29.relationRow5668 at r5668; linear_combination r5668), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg56
    refine ⟨rho 25961, rho 25962, rho 25963, rho 25964, rho 25965,
      (by unfold Seg29.relationRow5669 at r5669; linear_combination r5669), (by unfold Seg29.relationRow5670 at r5670; linear_combination r5670), (by unfold Seg29.relationRow5671 at r5671; linear_combination r5671), (by unfold Seg29.relationRow5672 at r5672; linear_combination r5672), (by unfold Seg29.relationRow5673 at r5673; linear_combination r5673), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg57
    refine ⟨rho 25966, rho 25967, rho 25968, rho 25969, rho 25970,
      (by unfold Seg29.relationRow5674 at r5674; linear_combination r5674), (by unfold Seg29.relationRow5675 at r5675; linear_combination r5675), (by unfold Seg29.relationRow5676 at r5676; linear_combination r5676), (by unfold Seg29.relationRow5677 at r5677; linear_combination r5677), (by unfold Seg29.relationRow5678 at r5678; linear_combination r5678), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg58
    refine ⟨rho 25971, rho 25972, rho 25973, rho 25974, rho 25975,
      (by unfold Seg29.relationRow5679 at r5679; linear_combination r5679), (by unfold Seg29.relationRow5680 at r5680; linear_combination r5680), (by unfold Seg29.relationRow5681 at r5681; linear_combination r5681), (by unfold Seg29.relationRow5682 at r5682; linear_combination r5682), (by unfold Seg29.relationRow5683 at r5683; linear_combination r5683), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg59
    refine ⟨rho 25976, rho 25977, rho 25978, rho 25979, rho 25980,
      (by unfold Seg29.relationRow5684 at r5684; linear_combination r5684), (by unfold Seg29.relationRow5685 at r5685; linear_combination r5685), (by unfold Seg29.relationRow5686 at r5686; linear_combination r5686), (by unfold Seg29.relationRow5687 at r5687; linear_combination r5687), (by unfold Seg29.relationRow5688 at r5688; linear_combination r5688), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg60
    refine ⟨rho 25981, rho 25982, rho 25983, rho 25984, rho 25985,
      (by unfold Seg29.relationRow5689 at r5689; linear_combination r5689), (by unfold Seg29.relationRow5690 at r5690; linear_combination r5690), (by unfold Seg29.relationRow5691 at r5691; linear_combination r5691), (by unfold Seg29.relationRow5692 at r5692; linear_combination r5692), (by unfold Seg29.relationRow5693 at r5693; linear_combination r5693), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg61
    refine ⟨rho 25986, rho 25987, rho 25988, rho 25989, rho 25990,
      (by unfold Seg29.relationRow5694 at r5694; linear_combination r5694), (by unfold Seg29.relationRow5695 at r5695; linear_combination r5695), (by unfold Seg29.relationRow5696 at r5696; linear_combination r5696), (by unfold Seg29.relationRow5697 at r5697; linear_combination r5697), (by unfold Seg29.relationRow5698 at r5698; linear_combination r5698), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg62
    refine ⟨rho 25991, rho 25992, rho 25993, rho 25994, rho 25995,
      (by unfold Seg29.relationRow5699 at r5699; linear_combination r5699), (by unfold Seg29.relationRow5700 at r5700; linear_combination r5700), (by unfold Seg29.relationRow5701 at r5701; linear_combination r5701), (by unfold Seg29.relationRow5702 at r5702; linear_combination r5702), (by unfold Seg29.relationRow5703 at r5703; linear_combination r5703), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg63
    refine ⟨rho 25996, rho 25997, rho 25998, rho 25999, rho 26000,
      (by unfold Seg29.relationRow5704 at r5704; linear_combination r5704), (by unfold Seg29.relationRow5705 at r5705; linear_combination r5705), (by unfold Seg29.relationRow5706 at r5706; linear_combination r5706), (by unfold Seg29.relationRow5707 at r5707; linear_combination r5707), (by unfold Seg29.relationRow5708 at r5708; linear_combination r5708), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg64
    refine ⟨rho 26001, rho 26002, rho 26003, rho 26004, rho 26005,
      (by unfold Seg29.relationRow5709 at r5709; linear_combination r5709), (by unfold Seg29.relationRow5710 at r5710; linear_combination r5710), (by unfold Seg29.relationRow5711 at r5711; linear_combination r5711), (by unfold Seg29.relationRow5712 at r5712; linear_combination r5712), (by unfold Seg29.relationRow5713 at r5713; linear_combination r5713), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg65
    refine ⟨rho 26006, rho 26007, rho 26008, rho 26009, rho 26010,
      (by unfold Seg29.relationRow5714 at r5714; linear_combination r5714), (by unfold Seg29.relationRow5715 at r5715; linear_combination r5715), (by unfold Seg29.relationRow5716 at r5716; linear_combination r5716), (by unfold Seg29.relationRow5717 at r5717; linear_combination r5717), (by unfold Seg29.relationRow5718 at r5718; linear_combination r5718), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg66
    refine ⟨rho 26011, rho 26012, rho 26013, rho 26014, rho 26015,
      (by unfold Seg29.relationRow5719 at r5719; linear_combination r5719), (by unfold Seg29.relationRow5720 at r5720; linear_combination r5720), (by unfold Seg29.relationRow5721 at r5721; linear_combination r5721), (by unfold Seg29.relationRow5722 at r5722; linear_combination r5722), (by unfold Seg29.relationRow5723 at r5723; linear_combination r5723), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg67
    refine ⟨rho 26016, rho 26017, rho 26018, rho 26019, rho 26020,
      (by unfold Seg29.relationRow5724 at r5724; linear_combination r5724), (by unfold Seg29.relationRow5725 at r5725; linear_combination r5725), (by unfold Seg29.relationRow5726 at r5726; linear_combination r5726), (by unfold Seg29.relationRow5727 at r5727; linear_combination r5727), (by unfold Seg29.relationRow5728 at r5728; linear_combination r5728), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg68
    refine ⟨rho 26021, rho 26022, rho 26023, rho 26024, rho 26025,
      (by unfold Seg29.relationRow5729 at r5729; linear_combination r5729), (by unfold Seg29.relationRow5730 at r5730; linear_combination r5730), (by unfold Seg29.relationRow5731 at r5731; linear_combination r5731), (by unfold Seg29.relationRow5732 at r5732; linear_combination r5732), (by unfold Seg29.relationRow5733 at r5733; linear_combination r5733), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg69
    refine ⟨rho 26026, rho 26027, rho 26028, rho 26029, rho 26030,
      (by unfold Seg29.relationRow5734 at r5734; linear_combination r5734), (by unfold Seg29.relationRow5735 at r5735; linear_combination r5735), (by unfold Seg29.relationRow5736 at r5736; linear_combination r5736), (by unfold Seg29.relationRow5737 at r5737; linear_combination r5737), (by unfold Seg29.relationRow5738 at r5738; linear_combination r5738), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.relation_sound_permSpec (rho 142) (rho 143) (rho 144) (rho 25675) (rho 25676) (rho 25677) (rho 25678) (rho 25679) (rho 25680) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.tctNode15DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.F) + (15 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg29ScpNode14Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

