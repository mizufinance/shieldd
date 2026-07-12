import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode14.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node14_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode14Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (15 : Seg28.F))
        (rho 142 + rho 24721) (rho 143 + rho 24722 + rho 24723)
        (rho 143 + rho 24724 + rho 24725) (rho 144 + rho 24726) := by
  unfold Seg28.relation at h
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
  unfold Seg28.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5389, r5390, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩
  unfold Seg28.relationPart68 at p68
  rcases p68 with ⟨r5440, r5441, r5442, r5443, r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518, r5519⟩
  unfold Seg28.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩
  unfold Seg28.relationPart70 at p70
  rcases p70 with ⟨r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Seg28.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.relation (rho 142) (rho 143) (rho 144) (rho 24721) (rho 24722) (rho 24723) (rho 24724) (rho 24725) (rho 24726)
      (fun o0 o1 o2 o3 o4 => o0 = rho 25056 ∧ o1 = rho 25061 ∧ o2 = rho 25066 ∧ o3 = rho 25071 ∧ o4 = rho 25076) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg0
    refine ⟨rho 24727, rho 24728, rho 24729, rho 24730, rho 24731,
      (by unfold Seg28.relationRow5389 at r5389; linear_combination r5389), (by unfold Seg28.relationRow5390 at r5390; linear_combination r5390), (by unfold Seg28.relationRow5391 at r5391; linear_combination r5391), (by unfold Seg28.relationRow5392 at r5392; linear_combination r5392), (by unfold Seg28.relationRow5393 at r5393; linear_combination r5393), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg1
    refine ⟨rho 24732, rho 24733, rho 24734, rho 24735, rho 24736,
      (by unfold Seg28.relationRow5394 at r5394; linear_combination r5394), (by unfold Seg28.relationRow5395 at r5395; linear_combination r5395), (by unfold Seg28.relationRow5396 at r5396; linear_combination r5396), (by unfold Seg28.relationRow5397 at r5397; linear_combination r5397), (by unfold Seg28.relationRow5398 at r5398; linear_combination r5398), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg2
    refine ⟨rho 24737, rho 24738, rho 24739, rho 24740, rho 24741,
      (by unfold Seg28.relationRow5399 at r5399; linear_combination r5399), (by unfold Seg28.relationRow5400 at r5400; linear_combination r5400), (by unfold Seg28.relationRow5401 at r5401; linear_combination r5401), (by unfold Seg28.relationRow5402 at r5402; linear_combination r5402), (by unfold Seg28.relationRow5403 at r5403; linear_combination r5403), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg3
    refine ⟨rho 24742, rho 24743, rho 24744, rho 24745, rho 24746,
      (by unfold Seg28.relationRow5404 at r5404; linear_combination r5404), (by unfold Seg28.relationRow5405 at r5405; linear_combination r5405), (by unfold Seg28.relationRow5406 at r5406; linear_combination r5406), (by unfold Seg28.relationRow5407 at r5407; linear_combination r5407), (by unfold Seg28.relationRow5408 at r5408; linear_combination r5408), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg4
    refine ⟨rho 24747, rho 24748, rho 24749, rho 24750, rho 24751,
      (by unfold Seg28.relationRow5409 at r5409; linear_combination r5409), (by unfold Seg28.relationRow5410 at r5410; linear_combination r5410), (by unfold Seg28.relationRow5411 at r5411; linear_combination r5411), (by unfold Seg28.relationRow5412 at r5412; linear_combination r5412), (by unfold Seg28.relationRow5413 at r5413; linear_combination r5413), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg5
    refine ⟨rho 24752, rho 24753, rho 24754, rho 24755, rho 24756,
      (by unfold Seg28.relationRow5414 at r5414; linear_combination r5414), (by unfold Seg28.relationRow5415 at r5415; linear_combination r5415), (by unfold Seg28.relationRow5416 at r5416; linear_combination r5416), (by unfold Seg28.relationRow5417 at r5417; linear_combination r5417), (by unfold Seg28.relationRow5418 at r5418; linear_combination r5418), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg6
    refine ⟨rho 24757, rho 24758, rho 24759, rho 24760, rho 24761,
      (by unfold Seg28.relationRow5419 at r5419; linear_combination r5419), (by unfold Seg28.relationRow5420 at r5420; linear_combination r5420), (by unfold Seg28.relationRow5421 at r5421; linear_combination r5421), (by unfold Seg28.relationRow5422 at r5422; linear_combination r5422), (by unfold Seg28.relationRow5423 at r5423; linear_combination r5423), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg7
    refine ⟨rho 24762, rho 24763, rho 24764, rho 24765, rho 24766,
      (by unfold Seg28.relationRow5424 at r5424; linear_combination r5424), (by unfold Seg28.relationRow5425 at r5425; linear_combination r5425), (by unfold Seg28.relationRow5426 at r5426; linear_combination r5426), (by unfold Seg28.relationRow5427 at r5427; linear_combination r5427), (by unfold Seg28.relationRow5428 at r5428; linear_combination r5428), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg8
    refine ⟨rho 24767, rho 24768, rho 24769, rho 24770, rho 24771,
      (by unfold Seg28.relationRow5429 at r5429; linear_combination r5429), (by unfold Seg28.relationRow5430 at r5430; linear_combination r5430), (by unfold Seg28.relationRow5431 at r5431; linear_combination r5431), (by unfold Seg28.relationRow5432 at r5432; linear_combination r5432), (by unfold Seg28.relationRow5433 at r5433; linear_combination r5433), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg9
    refine ⟨rho 24772, rho 24773, rho 24774, rho 24775, rho 24776,
      (by unfold Seg28.relationRow5434 at r5434; linear_combination r5434), (by unfold Seg28.relationRow5435 at r5435; linear_combination r5435), (by unfold Seg28.relationRow5436 at r5436; linear_combination r5436), (by unfold Seg28.relationRow5437 at r5437; linear_combination r5437), (by unfold Seg28.relationRow5438 at r5438; linear_combination r5438), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg10
    refine ⟨rho 24777, rho 24778, rho 24779, rho 24780, rho 24781,
      (by unfold Seg28.relationRow5439 at r5439; linear_combination r5439), (by unfold Seg28.relationRow5440 at r5440; linear_combination r5440), (by unfold Seg28.relationRow5441 at r5441; linear_combination r5441), (by unfold Seg28.relationRow5442 at r5442; linear_combination r5442), (by unfold Seg28.relationRow5443 at r5443; linear_combination r5443), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg11
    refine ⟨rho 24782, rho 24783, rho 24784, rho 24785, rho 24786,
      (by unfold Seg28.relationRow5444 at r5444; linear_combination r5444), (by unfold Seg28.relationRow5445 at r5445; linear_combination r5445), (by unfold Seg28.relationRow5446 at r5446; linear_combination r5446), (by unfold Seg28.relationRow5447 at r5447; linear_combination r5447), (by unfold Seg28.relationRow5448 at r5448; linear_combination r5448), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg12
    refine ⟨rho 24787, rho 24788, rho 24789, rho 24790, rho 24791,
      (by unfold Seg28.relationRow5449 at r5449; linear_combination r5449), (by unfold Seg28.relationRow5450 at r5450; linear_combination r5450), (by unfold Seg28.relationRow5451 at r5451; linear_combination r5451), (by unfold Seg28.relationRow5452 at r5452; linear_combination r5452), (by unfold Seg28.relationRow5453 at r5453; linear_combination r5453), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg13
    refine ⟨rho 24792, rho 24793, rho 24794, rho 24795, rho 24796,
      (by unfold Seg28.relationRow5454 at r5454; linear_combination r5454), (by unfold Seg28.relationRow5455 at r5455; linear_combination r5455), (by unfold Seg28.relationRow5456 at r5456; linear_combination r5456), (by unfold Seg28.relationRow5457 at r5457; linear_combination r5457), (by unfold Seg28.relationRow5458 at r5458; linear_combination r5458), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg14
    refine ⟨rho 24797, rho 24798, rho 24799, rho 24800, rho 24801,
      (by unfold Seg28.relationRow5459 at r5459; linear_combination r5459), (by unfold Seg28.relationRow5460 at r5460; linear_combination r5460), (by unfold Seg28.relationRow5461 at r5461; linear_combination r5461), (by unfold Seg28.relationRow5462 at r5462; linear_combination r5462), (by unfold Seg28.relationRow5463 at r5463; linear_combination r5463), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg15
    refine ⟨rho 24802, rho 24803, rho 24804, rho 24805, rho 24806,
      (by unfold Seg28.relationRow5464 at r5464; linear_combination r5464), (by unfold Seg28.relationRow5465 at r5465; linear_combination r5465), (by unfold Seg28.relationRow5466 at r5466; linear_combination r5466), (by unfold Seg28.relationRow5467 at r5467; linear_combination r5467), (by unfold Seg28.relationRow5468 at r5468; linear_combination r5468), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg16
    refine ⟨rho 24807, rho 24808, rho 24809, rho 24810, rho 24811,
      (by unfold Seg28.relationRow5469 at r5469; linear_combination r5469), (by unfold Seg28.relationRow5470 at r5470; linear_combination r5470), (by unfold Seg28.relationRow5471 at r5471; linear_combination r5471), (by unfold Seg28.relationRow5472 at r5472; linear_combination r5472), (by unfold Seg28.relationRow5473 at r5473; linear_combination r5473), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg17
    refine ⟨rho 24812, rho 24813, rho 24814, rho 24815, rho 24816,
      (by unfold Seg28.relationRow5474 at r5474; linear_combination r5474), (by unfold Seg28.relationRow5475 at r5475; linear_combination r5475), (by unfold Seg28.relationRow5476 at r5476; linear_combination r5476), (by unfold Seg28.relationRow5477 at r5477; linear_combination r5477), (by unfold Seg28.relationRow5478 at r5478; linear_combination r5478), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg18
    refine ⟨rho 24817, rho 24818, rho 24819, rho 24820, rho 24821,
      (by unfold Seg28.relationRow5479 at r5479; linear_combination r5479), (by unfold Seg28.relationRow5480 at r5480; linear_combination r5480), (by unfold Seg28.relationRow5481 at r5481; linear_combination r5481), (by unfold Seg28.relationRow5482 at r5482; linear_combination r5482), (by unfold Seg28.relationRow5483 at r5483; linear_combination r5483), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg19
    refine ⟨rho 24822, rho 24823, rho 24824, rho 24825, rho 24826,
      (by unfold Seg28.relationRow5484 at r5484; linear_combination r5484), (by unfold Seg28.relationRow5485 at r5485; linear_combination r5485), (by unfold Seg28.relationRow5486 at r5486; linear_combination r5486), (by unfold Seg28.relationRow5487 at r5487; linear_combination r5487), (by unfold Seg28.relationRow5488 at r5488; linear_combination r5488), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg20
    refine ⟨rho 24827, rho 24828, rho 24829, rho 24830, rho 24831,
      (by unfold Seg28.relationRow5489 at r5489; linear_combination r5489), (by unfold Seg28.relationRow5490 at r5490; linear_combination r5490), (by unfold Seg28.relationRow5491 at r5491; linear_combination r5491), (by unfold Seg28.relationRow5492 at r5492; linear_combination r5492), (by unfold Seg28.relationRow5493 at r5493; linear_combination r5493), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg21
    refine ⟨rho 24832, rho 24833, rho 24834, rho 24835, rho 24836,
      (by unfold Seg28.relationRow5494 at r5494; linear_combination r5494), (by unfold Seg28.relationRow5495 at r5495; linear_combination r5495), (by unfold Seg28.relationRow5496 at r5496; linear_combination r5496), (by unfold Seg28.relationRow5497 at r5497; linear_combination r5497), (by unfold Seg28.relationRow5498 at r5498; linear_combination r5498), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg22
    refine ⟨rho 24837, rho 24838, rho 24839, rho 24840, rho 24841,
      (by unfold Seg28.relationRow5499 at r5499; linear_combination r5499), (by unfold Seg28.relationRow5500 at r5500; linear_combination r5500), (by unfold Seg28.relationRow5501 at r5501; linear_combination r5501), (by unfold Seg28.relationRow5502 at r5502; linear_combination r5502), (by unfold Seg28.relationRow5503 at r5503; linear_combination r5503), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg23
    refine ⟨rho 24842, rho 24843, rho 24844, rho 24845, rho 24846,
      (by unfold Seg28.relationRow5504 at r5504; linear_combination r5504), (by unfold Seg28.relationRow5505 at r5505; linear_combination r5505), (by unfold Seg28.relationRow5506 at r5506; linear_combination r5506), (by unfold Seg28.relationRow5507 at r5507; linear_combination r5507), (by unfold Seg28.relationRow5508 at r5508; linear_combination r5508), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg24
    refine ⟨rho 24847, rho 24848, rho 24849, rho 24850, rho 24851,
      (by unfold Seg28.relationRow5509 at r5509; linear_combination r5509), (by unfold Seg28.relationRow5510 at r5510; linear_combination r5510), (by unfold Seg28.relationRow5511 at r5511; linear_combination r5511), (by unfold Seg28.relationRow5512 at r5512; linear_combination r5512), (by unfold Seg28.relationRow5513 at r5513; linear_combination r5513), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg25
    refine ⟨rho 24852, rho 24853, rho 24854, rho 24855, rho 24856,
      (by unfold Seg28.relationRow5514 at r5514; linear_combination r5514), (by unfold Seg28.relationRow5515 at r5515; linear_combination r5515), (by unfold Seg28.relationRow5516 at r5516; linear_combination r5516), (by unfold Seg28.relationRow5517 at r5517; linear_combination r5517), (by unfold Seg28.relationRow5518 at r5518; linear_combination r5518), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg26
    refine ⟨rho 24857, rho 24858, rho 24859, rho 24860, rho 24861,
      (by unfold Seg28.relationRow5519 at r5519; linear_combination r5519), (by unfold Seg28.relationRow5520 at r5520; linear_combination r5520), (by unfold Seg28.relationRow5521 at r5521; linear_combination r5521), (by unfold Seg28.relationRow5522 at r5522; linear_combination r5522), (by unfold Seg28.relationRow5523 at r5523; linear_combination r5523), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg27
    refine ⟨rho 24862, rho 24863, rho 24864, rho 24865, rho 24866,
      (by unfold Seg28.relationRow5524 at r5524; linear_combination r5524), (by unfold Seg28.relationRow5525 at r5525; linear_combination r5525), (by unfold Seg28.relationRow5526 at r5526; linear_combination r5526), (by unfold Seg28.relationRow5527 at r5527; linear_combination r5527), (by unfold Seg28.relationRow5528 at r5528; linear_combination r5528), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg28
    refine ⟨rho 24867, rho 24868, rho 24869, rho 24870, rho 24871,
      (by unfold Seg28.relationRow5529 at r5529; linear_combination r5529), (by unfold Seg28.relationRow5530 at r5530; linear_combination r5530), (by unfold Seg28.relationRow5531 at r5531; linear_combination r5531), (by unfold Seg28.relationRow5532 at r5532; linear_combination r5532), (by unfold Seg28.relationRow5533 at r5533; linear_combination r5533), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg29
    refine ⟨rho 24872, rho 24873, rho 24874, rho 24875, rho 24876,
      (by unfold Seg28.relationRow5534 at r5534; linear_combination r5534), (by unfold Seg28.relationRow5535 at r5535; linear_combination r5535), (by unfold Seg28.relationRow5536 at r5536; linear_combination r5536), (by unfold Seg28.relationRow5537 at r5537; linear_combination r5537), (by unfold Seg28.relationRow5538 at r5538; linear_combination r5538), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg30
    refine ⟨rho 24877, rho 24878, rho 24879, rho 24880, rho 24881,
      (by unfold Seg28.relationRow5539 at r5539; linear_combination r5539), (by unfold Seg28.relationRow5540 at r5540; linear_combination r5540), (by unfold Seg28.relationRow5541 at r5541; linear_combination r5541), (by unfold Seg28.relationRow5542 at r5542; linear_combination r5542), (by unfold Seg28.relationRow5543 at r5543; linear_combination r5543), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg31
    refine ⟨rho 24882, rho 24883, rho 24884, rho 24885, rho 24886,
      (by unfold Seg28.relationRow5544 at r5544; linear_combination r5544), (by unfold Seg28.relationRow5545 at r5545; linear_combination r5545), (by unfold Seg28.relationRow5546 at r5546; linear_combination r5546), (by unfold Seg28.relationRow5547 at r5547; linear_combination r5547), (by unfold Seg28.relationRow5548 at r5548; linear_combination r5548), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg32
    refine ⟨rho 24887, rho 24888, rho 24889, rho 24890, rho 24891,
      (by unfold Seg28.relationRow5549 at r5549; linear_combination r5549), (by unfold Seg28.relationRow5550 at r5550; linear_combination r5550), (by unfold Seg28.relationRow5551 at r5551; linear_combination r5551), (by unfold Seg28.relationRow5552 at r5552; linear_combination r5552), (by unfold Seg28.relationRow5553 at r5553; linear_combination r5553), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg33
    refine ⟨rho 24892, rho 24893, rho 24894, rho 24895, rho 24896,
      (by unfold Seg28.relationRow5554 at r5554; linear_combination r5554), (by unfold Seg28.relationRow5555 at r5555; linear_combination r5555), (by unfold Seg28.relationRow5556 at r5556; linear_combination r5556), (by unfold Seg28.relationRow5557 at r5557; linear_combination r5557), (by unfold Seg28.relationRow5558 at r5558; linear_combination r5558), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg34
    refine ⟨rho 24897, rho 24898, rho 24899, rho 24900, rho 24901,
      (by unfold Seg28.relationRow5559 at r5559; linear_combination r5559), (by unfold Seg28.relationRow5560 at r5560; linear_combination r5560), (by unfold Seg28.relationRow5561 at r5561; linear_combination r5561), (by unfold Seg28.relationRow5562 at r5562; linear_combination r5562), (by unfold Seg28.relationRow5563 at r5563; linear_combination r5563), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg35
    refine ⟨rho 24902, rho 24903, rho 24904, rho 24905, rho 24906,
      (by unfold Seg28.relationRow5564 at r5564; linear_combination r5564), (by unfold Seg28.relationRow5565 at r5565; linear_combination r5565), (by unfold Seg28.relationRow5566 at r5566; linear_combination r5566), (by unfold Seg28.relationRow5567 at r5567; linear_combination r5567), (by unfold Seg28.relationRow5568 at r5568; linear_combination r5568), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg36
    refine ⟨rho 24907, rho 24908, rho 24909, rho 24910, rho 24911,
      (by unfold Seg28.relationRow5569 at r5569; linear_combination r5569), (by unfold Seg28.relationRow5570 at r5570; linear_combination r5570), (by unfold Seg28.relationRow5571 at r5571; linear_combination r5571), (by unfold Seg28.relationRow5572 at r5572; linear_combination r5572), (by unfold Seg28.relationRow5573 at r5573; linear_combination r5573), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg37
    refine ⟨rho 24912, rho 24913, rho 24914, rho 24915, rho 24916,
      (by unfold Seg28.relationRow5574 at r5574; linear_combination r5574), (by unfold Seg28.relationRow5575 at r5575; linear_combination r5575), (by unfold Seg28.relationRow5576 at r5576; linear_combination r5576), (by unfold Seg28.relationRow5577 at r5577; linear_combination r5577), (by unfold Seg28.relationRow5578 at r5578; linear_combination r5578), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg38
    refine ⟨rho 24917, rho 24918, rho 24919, rho 24920, rho 24921,
      (by unfold Seg28.relationRow5579 at r5579; linear_combination r5579), (by unfold Seg28.relationRow5580 at r5580; linear_combination r5580), (by unfold Seg28.relationRow5581 at r5581; linear_combination r5581), (by unfold Seg28.relationRow5582 at r5582; linear_combination r5582), (by unfold Seg28.relationRow5583 at r5583; linear_combination r5583), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg39
    refine ⟨rho 24922, rho 24923, rho 24924, rho 24925, rho 24926,
      (by unfold Seg28.relationRow5584 at r5584; linear_combination r5584), (by unfold Seg28.relationRow5585 at r5585; linear_combination r5585), (by unfold Seg28.relationRow5586 at r5586; linear_combination r5586), (by unfold Seg28.relationRow5587 at r5587; linear_combination r5587), (by unfold Seg28.relationRow5588 at r5588; linear_combination r5588), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg40
    refine ⟨rho 24927, rho 24928, rho 24929, rho 24930, rho 24931,
      (by unfold Seg28.relationRow5589 at r5589; linear_combination r5589), (by unfold Seg28.relationRow5590 at r5590; linear_combination r5590), (by unfold Seg28.relationRow5591 at r5591; linear_combination r5591), (by unfold Seg28.relationRow5592 at r5592; linear_combination r5592), (by unfold Seg28.relationRow5593 at r5593; linear_combination r5593), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg41
    refine ⟨rho 24932, rho 24933, rho 24934, rho 24935, rho 24936,
      (by unfold Seg28.relationRow5594 at r5594; linear_combination r5594), (by unfold Seg28.relationRow5595 at r5595; linear_combination r5595), (by unfold Seg28.relationRow5596 at r5596; linear_combination r5596), (by unfold Seg28.relationRow5597 at r5597; linear_combination r5597), (by unfold Seg28.relationRow5598 at r5598; linear_combination r5598), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg42
    refine ⟨rho 24937, rho 24938, rho 24939, rho 24940, rho 24941,
      (by unfold Seg28.relationRow5599 at r5599; linear_combination r5599), (by unfold Seg28.relationRow5600 at r5600; linear_combination r5600), (by unfold Seg28.relationRow5601 at r5601; linear_combination r5601), (by unfold Seg28.relationRow5602 at r5602; linear_combination r5602), (by unfold Seg28.relationRow5603 at r5603; linear_combination r5603), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg43
    refine ⟨rho 24942, rho 24943, rho 24944, rho 24945, rho 24946,
      (by unfold Seg28.relationRow5604 at r5604; linear_combination r5604), (by unfold Seg28.relationRow5605 at r5605; linear_combination r5605), (by unfold Seg28.relationRow5606 at r5606; linear_combination r5606), (by unfold Seg28.relationRow5607 at r5607; linear_combination r5607), (by unfold Seg28.relationRow5608 at r5608; linear_combination r5608), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg44
    refine ⟨rho 24947, rho 24948, rho 24949, rho 24950, rho 24951,
      (by unfold Seg28.relationRow5609 at r5609; linear_combination r5609), (by unfold Seg28.relationRow5610 at r5610; linear_combination r5610), (by unfold Seg28.relationRow5611 at r5611; linear_combination r5611), (by unfold Seg28.relationRow5612 at r5612; linear_combination r5612), (by unfold Seg28.relationRow5613 at r5613; linear_combination r5613), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg45
    refine ⟨rho 24952, rho 24953, rho 24954, rho 24955, rho 24956,
      (by unfold Seg28.relationRow5614 at r5614; linear_combination r5614), (by unfold Seg28.relationRow5615 at r5615; linear_combination r5615), (by unfold Seg28.relationRow5616 at r5616; linear_combination r5616), (by unfold Seg28.relationRow5617 at r5617; linear_combination r5617), (by unfold Seg28.relationRow5618 at r5618; linear_combination r5618), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg46
    refine ⟨rho 24957, rho 24958, rho 24959, rho 24960, rho 24961,
      (by unfold Seg28.relationRow5619 at r5619; linear_combination r5619), (by unfold Seg28.relationRow5620 at r5620; linear_combination r5620), (by unfold Seg28.relationRow5621 at r5621; linear_combination r5621), (by unfold Seg28.relationRow5622 at r5622; linear_combination r5622), (by unfold Seg28.relationRow5623 at r5623; linear_combination r5623), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg47
    refine ⟨rho 24962, rho 24963, rho 24964, rho 24965, rho 24966,
      (by unfold Seg28.relationRow5624 at r5624; linear_combination r5624), (by unfold Seg28.relationRow5625 at r5625; linear_combination r5625), (by unfold Seg28.relationRow5626 at r5626; linear_combination r5626), (by unfold Seg28.relationRow5627 at r5627; linear_combination r5627), (by unfold Seg28.relationRow5628 at r5628; linear_combination r5628), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg48
    refine ⟨rho 24967, rho 24968, rho 24969, rho 24970, rho 24971,
      (by unfold Seg28.relationRow5629 at r5629; linear_combination r5629), (by unfold Seg28.relationRow5630 at r5630; linear_combination r5630), (by unfold Seg28.relationRow5631 at r5631; linear_combination r5631), (by unfold Seg28.relationRow5632 at r5632; linear_combination r5632), (by unfold Seg28.relationRow5633 at r5633; linear_combination r5633), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg49
    refine ⟨rho 24972, rho 24973, rho 24974, rho 24975, rho 24976,
      (by unfold Seg28.relationRow5634 at r5634; linear_combination r5634), (by unfold Seg28.relationRow5635 at r5635; linear_combination r5635), (by unfold Seg28.relationRow5636 at r5636; linear_combination r5636), (by unfold Seg28.relationRow5637 at r5637; linear_combination r5637), (by unfold Seg28.relationRow5638 at r5638; linear_combination r5638), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg50
    refine ⟨rho 24977, rho 24978, rho 24979, rho 24980, rho 24981,
      (by unfold Seg28.relationRow5639 at r5639; linear_combination r5639), (by unfold Seg28.relationRow5640 at r5640; linear_combination r5640), (by unfold Seg28.relationRow5641 at r5641; linear_combination r5641), (by unfold Seg28.relationRow5642 at r5642; linear_combination r5642), (by unfold Seg28.relationRow5643 at r5643; linear_combination r5643), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg51
    refine ⟨rho 24982, rho 24983, rho 24984, rho 24985, rho 24986,
      (by unfold Seg28.relationRow5644 at r5644; linear_combination r5644), (by unfold Seg28.relationRow5645 at r5645; linear_combination r5645), (by unfold Seg28.relationRow5646 at r5646; linear_combination r5646), (by unfold Seg28.relationRow5647 at r5647; linear_combination r5647), (by unfold Seg28.relationRow5648 at r5648; linear_combination r5648), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg52
    refine ⟨rho 24987, rho 24988, rho 24989, rho 24990, rho 24991,
      (by unfold Seg28.relationRow5649 at r5649; linear_combination r5649), (by unfold Seg28.relationRow5650 at r5650; linear_combination r5650), (by unfold Seg28.relationRow5651 at r5651; linear_combination r5651), (by unfold Seg28.relationRow5652 at r5652; linear_combination r5652), (by unfold Seg28.relationRow5653 at r5653; linear_combination r5653), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg53
    refine ⟨rho 24992, rho 24993, rho 24994, rho 24995, rho 24996,
      (by unfold Seg28.relationRow5654 at r5654; linear_combination r5654), (by unfold Seg28.relationRow5655 at r5655; linear_combination r5655), (by unfold Seg28.relationRow5656 at r5656; linear_combination r5656), (by unfold Seg28.relationRow5657 at r5657; linear_combination r5657), (by unfold Seg28.relationRow5658 at r5658; linear_combination r5658), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg54
    refine ⟨rho 24997, rho 24998, rho 24999, rho 25000, rho 25001,
      (by unfold Seg28.relationRow5659 at r5659; linear_combination r5659), (by unfold Seg28.relationRow5660 at r5660; linear_combination r5660), (by unfold Seg28.relationRow5661 at r5661; linear_combination r5661), (by unfold Seg28.relationRow5662 at r5662; linear_combination r5662), (by unfold Seg28.relationRow5663 at r5663; linear_combination r5663), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg55
    refine ⟨rho 25002, rho 25003, rho 25004, rho 25005, rho 25006,
      (by unfold Seg28.relationRow5664 at r5664; linear_combination r5664), (by unfold Seg28.relationRow5665 at r5665; linear_combination r5665), (by unfold Seg28.relationRow5666 at r5666; linear_combination r5666), (by unfold Seg28.relationRow5667 at r5667; linear_combination r5667), (by unfold Seg28.relationRow5668 at r5668; linear_combination r5668), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg56
    refine ⟨rho 25007, rho 25008, rho 25009, rho 25010, rho 25011,
      (by unfold Seg28.relationRow5669 at r5669; linear_combination r5669), (by unfold Seg28.relationRow5670 at r5670; linear_combination r5670), (by unfold Seg28.relationRow5671 at r5671; linear_combination r5671), (by unfold Seg28.relationRow5672 at r5672; linear_combination r5672), (by unfold Seg28.relationRow5673 at r5673; linear_combination r5673), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg57
    refine ⟨rho 25012, rho 25013, rho 25014, rho 25015, rho 25016,
      (by unfold Seg28.relationRow5674 at r5674; linear_combination r5674), (by unfold Seg28.relationRow5675 at r5675; linear_combination r5675), (by unfold Seg28.relationRow5676 at r5676; linear_combination r5676), (by unfold Seg28.relationRow5677 at r5677; linear_combination r5677), (by unfold Seg28.relationRow5678 at r5678; linear_combination r5678), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg58
    refine ⟨rho 25017, rho 25018, rho 25019, rho 25020, rho 25021,
      (by unfold Seg28.relationRow5679 at r5679; linear_combination r5679), (by unfold Seg28.relationRow5680 at r5680; linear_combination r5680), (by unfold Seg28.relationRow5681 at r5681; linear_combination r5681), (by unfold Seg28.relationRow5682 at r5682; linear_combination r5682), (by unfold Seg28.relationRow5683 at r5683; linear_combination r5683), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg59
    refine ⟨rho 25022, rho 25023, rho 25024, rho 25025, rho 25026,
      (by unfold Seg28.relationRow5684 at r5684; linear_combination r5684), (by unfold Seg28.relationRow5685 at r5685; linear_combination r5685), (by unfold Seg28.relationRow5686 at r5686; linear_combination r5686), (by unfold Seg28.relationRow5687 at r5687; linear_combination r5687), (by unfold Seg28.relationRow5688 at r5688; linear_combination r5688), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg60
    refine ⟨rho 25027, rho 25028, rho 25029, rho 25030, rho 25031,
      (by unfold Seg28.relationRow5689 at r5689; linear_combination r5689), (by unfold Seg28.relationRow5690 at r5690; linear_combination r5690), (by unfold Seg28.relationRow5691 at r5691; linear_combination r5691), (by unfold Seg28.relationRow5692 at r5692; linear_combination r5692), (by unfold Seg28.relationRow5693 at r5693; linear_combination r5693), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg61
    refine ⟨rho 25032, rho 25033, rho 25034, rho 25035, rho 25036,
      (by unfold Seg28.relationRow5694 at r5694; linear_combination r5694), (by unfold Seg28.relationRow5695 at r5695; linear_combination r5695), (by unfold Seg28.relationRow5696 at r5696; linear_combination r5696), (by unfold Seg28.relationRow5697 at r5697; linear_combination r5697), (by unfold Seg28.relationRow5698 at r5698; linear_combination r5698), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg62
    refine ⟨rho 25037, rho 25038, rho 25039, rho 25040, rho 25041,
      (by unfold Seg28.relationRow5699 at r5699; linear_combination r5699), (by unfold Seg28.relationRow5700 at r5700; linear_combination r5700), (by unfold Seg28.relationRow5701 at r5701; linear_combination r5701), (by unfold Seg28.relationRow5702 at r5702; linear_combination r5702), (by unfold Seg28.relationRow5703 at r5703; linear_combination r5703), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg63
    refine ⟨rho 25042, rho 25043, rho 25044, rho 25045, rho 25046,
      (by unfold Seg28.relationRow5704 at r5704; linear_combination r5704), (by unfold Seg28.relationRow5705 at r5705; linear_combination r5705), (by unfold Seg28.relationRow5706 at r5706; linear_combination r5706), (by unfold Seg28.relationRow5707 at r5707; linear_combination r5707), (by unfold Seg28.relationRow5708 at r5708; linear_combination r5708), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg64
    refine ⟨rho 25047, rho 25048, rho 25049, rho 25050, rho 25051,
      (by unfold Seg28.relationRow5709 at r5709; linear_combination r5709), (by unfold Seg28.relationRow5710 at r5710; linear_combination r5710), (by unfold Seg28.relationRow5711 at r5711; linear_combination r5711), (by unfold Seg28.relationRow5712 at r5712; linear_combination r5712), (by unfold Seg28.relationRow5713 at r5713; linear_combination r5713), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg65
    refine ⟨rho 25052, rho 25053, rho 25054, rho 25055, rho 25056,
      (by unfold Seg28.relationRow5714 at r5714; linear_combination r5714), (by unfold Seg28.relationRow5715 at r5715; linear_combination r5715), (by unfold Seg28.relationRow5716 at r5716; linear_combination r5716), (by unfold Seg28.relationRow5717 at r5717; linear_combination r5717), (by unfold Seg28.relationRow5718 at r5718; linear_combination r5718), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg66
    refine ⟨rho 25057, rho 25058, rho 25059, rho 25060, rho 25061,
      (by unfold Seg28.relationRow5719 at r5719; linear_combination r5719), (by unfold Seg28.relationRow5720 at r5720; linear_combination r5720), (by unfold Seg28.relationRow5721 at r5721; linear_combination r5721), (by unfold Seg28.relationRow5722 at r5722; linear_combination r5722), (by unfold Seg28.relationRow5723 at r5723; linear_combination r5723), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg67
    refine ⟨rho 25062, rho 25063, rho 25064, rho 25065, rho 25066,
      (by unfold Seg28.relationRow5724 at r5724; linear_combination r5724), (by unfold Seg28.relationRow5725 at r5725; linear_combination r5725), (by unfold Seg28.relationRow5726 at r5726; linear_combination r5726), (by unfold Seg28.relationRow5727 at r5727; linear_combination r5727), (by unfold Seg28.relationRow5728 at r5728; linear_combination r5728), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg68
    refine ⟨rho 25067, rho 25068, rho 25069, rho 25070, rho 25071,
      (by unfold Seg28.relationRow5729 at r5729; linear_combination r5729), (by unfold Seg28.relationRow5730 at r5730; linear_combination r5730), (by unfold Seg28.relationRow5731 at r5731; linear_combination r5731), (by unfold Seg28.relationRow5732 at r5732; linear_combination r5732), (by unfold Seg28.relationRow5733 at r5733; linear_combination r5733), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_238954.seg69
    refine ⟨rho 25072, rho 25073, rho 25074, rho 25075, rho 25076,
      (by unfold Seg28.relationRow5734 at r5734; linear_combination r5734), (by unfold Seg28.relationRow5735 at r5735; linear_combination r5735), (by unfold Seg28.relationRow5736 at r5736; linear_combination r5736), (by unfold Seg28.relationRow5737 at r5737; linear_combination r5737), (by unfold Seg28.relationRow5738 at r5738; linear_combination r5738), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.relation_sound_permSpec (rho 142) (rho 143) (rho 144) (rho 24721) (rho 24722) (rho 24723) (rho 24724) (rho 24725) (rho 24726) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.tctNode15DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.F) + (15 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode14Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

