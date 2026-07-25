import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode0.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node0_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode0Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (1 : Seg28.F))
        (rho 184 + rho 19681) (rho 185 + rho 19682 + rho 19683)
        (rho 185 + rho 19684 + rho 19685) (rho 186 + rho 19686) := by
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, p3, p4, p5, p6, p7, p8, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r293, r294, r295, r296, r297, r298, r299, r300, r301, r302, r303, r304, r305, r306, r307, r308, r309, r310, r311, r312, r313, r314, r315, r316, r317, r318, r319⟩
  unfold Seg28.relationPart4 at p4
  rcases p4 with ⟨r320, r321, r322, r323, r324, r325, r326, r327, r328, r329, r330, r331, r332, r333, r334, r335, r336, r337, r338, r339, r340, r341, r342, r343, r344, r345, r346, r347, r348, r349, r350, r351, r352, r353, r354, r355, r356, r357, r358, r359, r360, r361, r362, r363, r364, r365, r366, r367, r368, r369, r370, r371, r372, r373, r374, r375, r376, r377, r378, r379, r380, r381, r382, r383, r384, r385, r386, r387, r388, r389, r390, r391, r392, r393, r394, r395, r396, r397, r398, r399⟩
  unfold Seg28.relationPart5 at p5
  rcases p5 with ⟨r400, r401, r402, r403, r404, r405, r406, r407, r408, r409, r410, r411, r412, r413, r414, r415, r416, r417, r418, r419, r420, r421, r422, r423, r424, r425, r426, r427, r428, r429, r430, r431, r432, r433, r434, r435, r436, r437, r438, r439, r440, r441, r442, r443, r444, r445, r446, r447, r448, r449, r450, r451, r452, r453, r454, r455, r456, r457, r458, r459, r460, r461, r462, r463, r464, r465, r466, r467, r468, r469, r470, r471, r472, r473, r474, r475, r476, r477, r478, r479⟩
  unfold Seg28.relationPart6 at p6
  rcases p6 with ⟨r480, r481, r482, r483, r484, r485, r486, r487, r488, r489, r490, r491, r492, r493, r494, r495, r496, r497, r498, r499, r500, r501, r502, r503, r504, r505, r506, r507, r508, r509, r510, r511, r512, r513, r514, r515, r516, r517, r518, r519, r520, r521, r522, r523, r524, r525, r526, r527, r528, r529, r530, r531, r532, r533, r534, r535, r536, r537, r538, r539, r540, r541, r542, r543, r544, r545, r546, r547, r548, r549, r550, r551, r552, r553, r554, r555, r556, r557, r558, r559⟩
  unfold Seg28.relationPart7 at p7
  rcases p7 with ⟨r560, r561, r562, r563, r564, r565, r566, r567, r568, r569, r570, r571, r572, r573, r574, r575, r576, r577, r578, r579, r580, r581, r582, r583, r584, r585, r586, r587, r588, r589, r590, r591, r592, r593, r594, r595, r596, r597, r598, r599, r600, r601, r602, r603, r604, r605, r606, r607, r608, r609, r610, r611, r612, r613, r614, r615, r616, r617, r618, r619, r620, r621, r622, r623, r624, r625, r626, r627, r628, r629, r630, r631, r632, r633, r634, r635, r636, r637, r638, r639⟩
  unfold Seg28.relationPart8 at p8
  rcases p8 with ⟨r640, r641, r642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.relation (rho 184) (rho 185) (rho 186) (rho 19681) (rho 19682) (rho 19683) (rho 19684) (rho 19685) (rho 19686)
      (fun o0 o1 o2 o3 o4 => o0 = rho 20016 ∧ o1 = rho 20021 ∧ o2 = rho 20026 ∧ o3 = rho 20031 ∧ o4 = rho 20036) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg0
    refine ⟨rho 19687, rho 19688, rho 19689, rho 19690, rho 19691,
      (by unfold Seg28.relationRow293 at r293; linear_combination r293), (by unfold Seg28.relationRow294 at r294; linear_combination r294), (by unfold Seg28.relationRow295 at r295; linear_combination r295), (by unfold Seg28.relationRow296 at r296; linear_combination r296), (by unfold Seg28.relationRow297 at r297; linear_combination r297), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg1
    refine ⟨rho 19692, rho 19693, rho 19694, rho 19695, rho 19696,
      (by unfold Seg28.relationRow298 at r298; linear_combination r298), (by unfold Seg28.relationRow299 at r299; linear_combination r299), (by unfold Seg28.relationRow300 at r300; linear_combination r300), (by unfold Seg28.relationRow301 at r301; linear_combination r301), (by unfold Seg28.relationRow302 at r302; linear_combination r302), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg2
    refine ⟨rho 19697, rho 19698, rho 19699, rho 19700, rho 19701,
      (by unfold Seg28.relationRow303 at r303; linear_combination r303), (by unfold Seg28.relationRow304 at r304; linear_combination r304), (by unfold Seg28.relationRow305 at r305; linear_combination r305), (by unfold Seg28.relationRow306 at r306; linear_combination r306), (by unfold Seg28.relationRow307 at r307; linear_combination r307), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg3
    refine ⟨rho 19702, rho 19703, rho 19704, rho 19705, rho 19706,
      (by unfold Seg28.relationRow308 at r308; linear_combination r308), (by unfold Seg28.relationRow309 at r309; linear_combination r309), (by unfold Seg28.relationRow310 at r310; linear_combination r310), (by unfold Seg28.relationRow311 at r311; linear_combination r311), (by unfold Seg28.relationRow312 at r312; linear_combination r312), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg4
    refine ⟨rho 19707, rho 19708, rho 19709, rho 19710, rho 19711,
      (by unfold Seg28.relationRow313 at r313; linear_combination r313), (by unfold Seg28.relationRow314 at r314; linear_combination r314), (by unfold Seg28.relationRow315 at r315; linear_combination r315), (by unfold Seg28.relationRow316 at r316; linear_combination r316), (by unfold Seg28.relationRow317 at r317; linear_combination r317), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg5
    refine ⟨rho 19712, rho 19713, rho 19714, rho 19715, rho 19716,
      (by unfold Seg28.relationRow318 at r318; linear_combination r318), (by unfold Seg28.relationRow319 at r319; linear_combination r319), (by unfold Seg28.relationRow320 at r320; linear_combination r320), (by unfold Seg28.relationRow321 at r321; linear_combination r321), (by unfold Seg28.relationRow322 at r322; linear_combination r322), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg6
    refine ⟨rho 19717, rho 19718, rho 19719, rho 19720, rho 19721,
      (by unfold Seg28.relationRow323 at r323; linear_combination r323), (by unfold Seg28.relationRow324 at r324; linear_combination r324), (by unfold Seg28.relationRow325 at r325; linear_combination r325), (by unfold Seg28.relationRow326 at r326; linear_combination r326), (by unfold Seg28.relationRow327 at r327; linear_combination r327), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg7
    refine ⟨rho 19722, rho 19723, rho 19724, rho 19725, rho 19726,
      (by unfold Seg28.relationRow328 at r328; linear_combination r328), (by unfold Seg28.relationRow329 at r329; linear_combination r329), (by unfold Seg28.relationRow330 at r330; linear_combination r330), (by unfold Seg28.relationRow331 at r331; linear_combination r331), (by unfold Seg28.relationRow332 at r332; linear_combination r332), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg8
    refine ⟨rho 19727, rho 19728, rho 19729, rho 19730, rho 19731,
      (by unfold Seg28.relationRow333 at r333; linear_combination r333), (by unfold Seg28.relationRow334 at r334; linear_combination r334), (by unfold Seg28.relationRow335 at r335; linear_combination r335), (by unfold Seg28.relationRow336 at r336; linear_combination r336), (by unfold Seg28.relationRow337 at r337; linear_combination r337), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg9
    refine ⟨rho 19732, rho 19733, rho 19734, rho 19735, rho 19736,
      (by unfold Seg28.relationRow338 at r338; linear_combination r338), (by unfold Seg28.relationRow339 at r339; linear_combination r339), (by unfold Seg28.relationRow340 at r340; linear_combination r340), (by unfold Seg28.relationRow341 at r341; linear_combination r341), (by unfold Seg28.relationRow342 at r342; linear_combination r342), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg10
    refine ⟨rho 19737, rho 19738, rho 19739, rho 19740, rho 19741,
      (by unfold Seg28.relationRow343 at r343; linear_combination r343), (by unfold Seg28.relationRow344 at r344; linear_combination r344), (by unfold Seg28.relationRow345 at r345; linear_combination r345), (by unfold Seg28.relationRow346 at r346; linear_combination r346), (by unfold Seg28.relationRow347 at r347; linear_combination r347), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg11
    refine ⟨rho 19742, rho 19743, rho 19744, rho 19745, rho 19746,
      (by unfold Seg28.relationRow348 at r348; linear_combination r348), (by unfold Seg28.relationRow349 at r349; linear_combination r349), (by unfold Seg28.relationRow350 at r350; linear_combination r350), (by unfold Seg28.relationRow351 at r351; linear_combination r351), (by unfold Seg28.relationRow352 at r352; linear_combination r352), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg12
    refine ⟨rho 19747, rho 19748, rho 19749, rho 19750, rho 19751,
      (by unfold Seg28.relationRow353 at r353; linear_combination r353), (by unfold Seg28.relationRow354 at r354; linear_combination r354), (by unfold Seg28.relationRow355 at r355; linear_combination r355), (by unfold Seg28.relationRow356 at r356; linear_combination r356), (by unfold Seg28.relationRow357 at r357; linear_combination r357), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg13
    refine ⟨rho 19752, rho 19753, rho 19754, rho 19755, rho 19756,
      (by unfold Seg28.relationRow358 at r358; linear_combination r358), (by unfold Seg28.relationRow359 at r359; linear_combination r359), (by unfold Seg28.relationRow360 at r360; linear_combination r360), (by unfold Seg28.relationRow361 at r361; linear_combination r361), (by unfold Seg28.relationRow362 at r362; linear_combination r362), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg14
    refine ⟨rho 19757, rho 19758, rho 19759, rho 19760, rho 19761,
      (by unfold Seg28.relationRow363 at r363; linear_combination r363), (by unfold Seg28.relationRow364 at r364; linear_combination r364), (by unfold Seg28.relationRow365 at r365; linear_combination r365), (by unfold Seg28.relationRow366 at r366; linear_combination r366), (by unfold Seg28.relationRow367 at r367; linear_combination r367), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg15
    refine ⟨rho 19762, rho 19763, rho 19764, rho 19765, rho 19766,
      (by unfold Seg28.relationRow368 at r368; linear_combination r368), (by unfold Seg28.relationRow369 at r369; linear_combination r369), (by unfold Seg28.relationRow370 at r370; linear_combination r370), (by unfold Seg28.relationRow371 at r371; linear_combination r371), (by unfold Seg28.relationRow372 at r372; linear_combination r372), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg16
    refine ⟨rho 19767, rho 19768, rho 19769, rho 19770, rho 19771,
      (by unfold Seg28.relationRow373 at r373; linear_combination r373), (by unfold Seg28.relationRow374 at r374; linear_combination r374), (by unfold Seg28.relationRow375 at r375; linear_combination r375), (by unfold Seg28.relationRow376 at r376; linear_combination r376), (by unfold Seg28.relationRow377 at r377; linear_combination r377), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg17
    refine ⟨rho 19772, rho 19773, rho 19774, rho 19775, rho 19776,
      (by unfold Seg28.relationRow378 at r378; linear_combination r378), (by unfold Seg28.relationRow379 at r379; linear_combination r379), (by unfold Seg28.relationRow380 at r380; linear_combination r380), (by unfold Seg28.relationRow381 at r381; linear_combination r381), (by unfold Seg28.relationRow382 at r382; linear_combination r382), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg18
    refine ⟨rho 19777, rho 19778, rho 19779, rho 19780, rho 19781,
      (by unfold Seg28.relationRow383 at r383; linear_combination r383), (by unfold Seg28.relationRow384 at r384; linear_combination r384), (by unfold Seg28.relationRow385 at r385; linear_combination r385), (by unfold Seg28.relationRow386 at r386; linear_combination r386), (by unfold Seg28.relationRow387 at r387; linear_combination r387), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg19
    refine ⟨rho 19782, rho 19783, rho 19784, rho 19785, rho 19786,
      (by unfold Seg28.relationRow388 at r388; linear_combination r388), (by unfold Seg28.relationRow389 at r389; linear_combination r389), (by unfold Seg28.relationRow390 at r390; linear_combination r390), (by unfold Seg28.relationRow391 at r391; linear_combination r391), (by unfold Seg28.relationRow392 at r392; linear_combination r392), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg20
    refine ⟨rho 19787, rho 19788, rho 19789, rho 19790, rho 19791,
      (by unfold Seg28.relationRow393 at r393; linear_combination r393), (by unfold Seg28.relationRow394 at r394; linear_combination r394), (by unfold Seg28.relationRow395 at r395; linear_combination r395), (by unfold Seg28.relationRow396 at r396; linear_combination r396), (by unfold Seg28.relationRow397 at r397; linear_combination r397), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg21
    refine ⟨rho 19792, rho 19793, rho 19794, rho 19795, rho 19796,
      (by unfold Seg28.relationRow398 at r398; linear_combination r398), (by unfold Seg28.relationRow399 at r399; linear_combination r399), (by unfold Seg28.relationRow400 at r400; linear_combination r400), (by unfold Seg28.relationRow401 at r401; linear_combination r401), (by unfold Seg28.relationRow402 at r402; linear_combination r402), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg22
    refine ⟨rho 19797, rho 19798, rho 19799, rho 19800, rho 19801,
      (by unfold Seg28.relationRow403 at r403; linear_combination r403), (by unfold Seg28.relationRow404 at r404; linear_combination r404), (by unfold Seg28.relationRow405 at r405; linear_combination r405), (by unfold Seg28.relationRow406 at r406; linear_combination r406), (by unfold Seg28.relationRow407 at r407; linear_combination r407), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg23
    refine ⟨rho 19802, rho 19803, rho 19804, rho 19805, rho 19806,
      (by unfold Seg28.relationRow408 at r408; linear_combination r408), (by unfold Seg28.relationRow409 at r409; linear_combination r409), (by unfold Seg28.relationRow410 at r410; linear_combination r410), (by unfold Seg28.relationRow411 at r411; linear_combination r411), (by unfold Seg28.relationRow412 at r412; linear_combination r412), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg24
    refine ⟨rho 19807, rho 19808, rho 19809, rho 19810, rho 19811,
      (by unfold Seg28.relationRow413 at r413; linear_combination r413), (by unfold Seg28.relationRow414 at r414; linear_combination r414), (by unfold Seg28.relationRow415 at r415; linear_combination r415), (by unfold Seg28.relationRow416 at r416; linear_combination r416), (by unfold Seg28.relationRow417 at r417; linear_combination r417), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg25
    refine ⟨rho 19812, rho 19813, rho 19814, rho 19815, rho 19816,
      (by unfold Seg28.relationRow418 at r418; linear_combination r418), (by unfold Seg28.relationRow419 at r419; linear_combination r419), (by unfold Seg28.relationRow420 at r420; linear_combination r420), (by unfold Seg28.relationRow421 at r421; linear_combination r421), (by unfold Seg28.relationRow422 at r422; linear_combination r422), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg26
    refine ⟨rho 19817, rho 19818, rho 19819, rho 19820, rho 19821,
      (by unfold Seg28.relationRow423 at r423; linear_combination r423), (by unfold Seg28.relationRow424 at r424; linear_combination r424), (by unfold Seg28.relationRow425 at r425; linear_combination r425), (by unfold Seg28.relationRow426 at r426; linear_combination r426), (by unfold Seg28.relationRow427 at r427; linear_combination r427), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg27
    refine ⟨rho 19822, rho 19823, rho 19824, rho 19825, rho 19826,
      (by unfold Seg28.relationRow428 at r428; linear_combination r428), (by unfold Seg28.relationRow429 at r429; linear_combination r429), (by unfold Seg28.relationRow430 at r430; linear_combination r430), (by unfold Seg28.relationRow431 at r431; linear_combination r431), (by unfold Seg28.relationRow432 at r432; linear_combination r432), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg28
    refine ⟨rho 19827, rho 19828, rho 19829, rho 19830, rho 19831,
      (by unfold Seg28.relationRow433 at r433; linear_combination r433), (by unfold Seg28.relationRow434 at r434; linear_combination r434), (by unfold Seg28.relationRow435 at r435; linear_combination r435), (by unfold Seg28.relationRow436 at r436; linear_combination r436), (by unfold Seg28.relationRow437 at r437; linear_combination r437), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg29
    refine ⟨rho 19832, rho 19833, rho 19834, rho 19835, rho 19836,
      (by unfold Seg28.relationRow438 at r438; linear_combination r438), (by unfold Seg28.relationRow439 at r439; linear_combination r439), (by unfold Seg28.relationRow440 at r440; linear_combination r440), (by unfold Seg28.relationRow441 at r441; linear_combination r441), (by unfold Seg28.relationRow442 at r442; linear_combination r442), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg30
    refine ⟨rho 19837, rho 19838, rho 19839, rho 19840, rho 19841,
      (by unfold Seg28.relationRow443 at r443; linear_combination r443), (by unfold Seg28.relationRow444 at r444; linear_combination r444), (by unfold Seg28.relationRow445 at r445; linear_combination r445), (by unfold Seg28.relationRow446 at r446; linear_combination r446), (by unfold Seg28.relationRow447 at r447; linear_combination r447), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg31
    refine ⟨rho 19842, rho 19843, rho 19844, rho 19845, rho 19846,
      (by unfold Seg28.relationRow448 at r448; linear_combination r448), (by unfold Seg28.relationRow449 at r449; linear_combination r449), (by unfold Seg28.relationRow450 at r450; linear_combination r450), (by unfold Seg28.relationRow451 at r451; linear_combination r451), (by unfold Seg28.relationRow452 at r452; linear_combination r452), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg32
    refine ⟨rho 19847, rho 19848, rho 19849, rho 19850, rho 19851,
      (by unfold Seg28.relationRow453 at r453; linear_combination r453), (by unfold Seg28.relationRow454 at r454; linear_combination r454), (by unfold Seg28.relationRow455 at r455; linear_combination r455), (by unfold Seg28.relationRow456 at r456; linear_combination r456), (by unfold Seg28.relationRow457 at r457; linear_combination r457), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg33
    refine ⟨rho 19852, rho 19853, rho 19854, rho 19855, rho 19856,
      (by unfold Seg28.relationRow458 at r458; linear_combination r458), (by unfold Seg28.relationRow459 at r459; linear_combination r459), (by unfold Seg28.relationRow460 at r460; linear_combination r460), (by unfold Seg28.relationRow461 at r461; linear_combination r461), (by unfold Seg28.relationRow462 at r462; linear_combination r462), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg34
    refine ⟨rho 19857, rho 19858, rho 19859, rho 19860, rho 19861,
      (by unfold Seg28.relationRow463 at r463; linear_combination r463), (by unfold Seg28.relationRow464 at r464; linear_combination r464), (by unfold Seg28.relationRow465 at r465; linear_combination r465), (by unfold Seg28.relationRow466 at r466; linear_combination r466), (by unfold Seg28.relationRow467 at r467; linear_combination r467), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg35
    refine ⟨rho 19862, rho 19863, rho 19864, rho 19865, rho 19866,
      (by unfold Seg28.relationRow468 at r468; linear_combination r468), (by unfold Seg28.relationRow469 at r469; linear_combination r469), (by unfold Seg28.relationRow470 at r470; linear_combination r470), (by unfold Seg28.relationRow471 at r471; linear_combination r471), (by unfold Seg28.relationRow472 at r472; linear_combination r472), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg36
    refine ⟨rho 19867, rho 19868, rho 19869, rho 19870, rho 19871,
      (by unfold Seg28.relationRow473 at r473; linear_combination r473), (by unfold Seg28.relationRow474 at r474; linear_combination r474), (by unfold Seg28.relationRow475 at r475; linear_combination r475), (by unfold Seg28.relationRow476 at r476; linear_combination r476), (by unfold Seg28.relationRow477 at r477; linear_combination r477), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg37
    refine ⟨rho 19872, rho 19873, rho 19874, rho 19875, rho 19876,
      (by unfold Seg28.relationRow478 at r478; linear_combination r478), (by unfold Seg28.relationRow479 at r479; linear_combination r479), (by unfold Seg28.relationRow480 at r480; linear_combination r480), (by unfold Seg28.relationRow481 at r481; linear_combination r481), (by unfold Seg28.relationRow482 at r482; linear_combination r482), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg38
    refine ⟨rho 19877, rho 19878, rho 19879, rho 19880, rho 19881,
      (by unfold Seg28.relationRow483 at r483; linear_combination r483), (by unfold Seg28.relationRow484 at r484; linear_combination r484), (by unfold Seg28.relationRow485 at r485; linear_combination r485), (by unfold Seg28.relationRow486 at r486; linear_combination r486), (by unfold Seg28.relationRow487 at r487; linear_combination r487), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg39
    refine ⟨rho 19882, rho 19883, rho 19884, rho 19885, rho 19886,
      (by unfold Seg28.relationRow488 at r488; linear_combination r488), (by unfold Seg28.relationRow489 at r489; linear_combination r489), (by unfold Seg28.relationRow490 at r490; linear_combination r490), (by unfold Seg28.relationRow491 at r491; linear_combination r491), (by unfold Seg28.relationRow492 at r492; linear_combination r492), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg40
    refine ⟨rho 19887, rho 19888, rho 19889, rho 19890, rho 19891,
      (by unfold Seg28.relationRow493 at r493; linear_combination r493), (by unfold Seg28.relationRow494 at r494; linear_combination r494), (by unfold Seg28.relationRow495 at r495; linear_combination r495), (by unfold Seg28.relationRow496 at r496; linear_combination r496), (by unfold Seg28.relationRow497 at r497; linear_combination r497), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg41
    refine ⟨rho 19892, rho 19893, rho 19894, rho 19895, rho 19896,
      (by unfold Seg28.relationRow498 at r498; linear_combination r498), (by unfold Seg28.relationRow499 at r499; linear_combination r499), (by unfold Seg28.relationRow500 at r500; linear_combination r500), (by unfold Seg28.relationRow501 at r501; linear_combination r501), (by unfold Seg28.relationRow502 at r502; linear_combination r502), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg42
    refine ⟨rho 19897, rho 19898, rho 19899, rho 19900, rho 19901,
      (by unfold Seg28.relationRow503 at r503; linear_combination r503), (by unfold Seg28.relationRow504 at r504; linear_combination r504), (by unfold Seg28.relationRow505 at r505; linear_combination r505), (by unfold Seg28.relationRow506 at r506; linear_combination r506), (by unfold Seg28.relationRow507 at r507; linear_combination r507), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg43
    refine ⟨rho 19902, rho 19903, rho 19904, rho 19905, rho 19906,
      (by unfold Seg28.relationRow508 at r508; linear_combination r508), (by unfold Seg28.relationRow509 at r509; linear_combination r509), (by unfold Seg28.relationRow510 at r510; linear_combination r510), (by unfold Seg28.relationRow511 at r511; linear_combination r511), (by unfold Seg28.relationRow512 at r512; linear_combination r512), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg44
    refine ⟨rho 19907, rho 19908, rho 19909, rho 19910, rho 19911,
      (by unfold Seg28.relationRow513 at r513; linear_combination r513), (by unfold Seg28.relationRow514 at r514; linear_combination r514), (by unfold Seg28.relationRow515 at r515; linear_combination r515), (by unfold Seg28.relationRow516 at r516; linear_combination r516), (by unfold Seg28.relationRow517 at r517; linear_combination r517), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg45
    refine ⟨rho 19912, rho 19913, rho 19914, rho 19915, rho 19916,
      (by unfold Seg28.relationRow518 at r518; linear_combination r518), (by unfold Seg28.relationRow519 at r519; linear_combination r519), (by unfold Seg28.relationRow520 at r520; linear_combination r520), (by unfold Seg28.relationRow521 at r521; linear_combination r521), (by unfold Seg28.relationRow522 at r522; linear_combination r522), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg46
    refine ⟨rho 19917, rho 19918, rho 19919, rho 19920, rho 19921,
      (by unfold Seg28.relationRow523 at r523; linear_combination r523), (by unfold Seg28.relationRow524 at r524; linear_combination r524), (by unfold Seg28.relationRow525 at r525; linear_combination r525), (by unfold Seg28.relationRow526 at r526; linear_combination r526), (by unfold Seg28.relationRow527 at r527; linear_combination r527), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg47
    refine ⟨rho 19922, rho 19923, rho 19924, rho 19925, rho 19926,
      (by unfold Seg28.relationRow528 at r528; linear_combination r528), (by unfold Seg28.relationRow529 at r529; linear_combination r529), (by unfold Seg28.relationRow530 at r530; linear_combination r530), (by unfold Seg28.relationRow531 at r531; linear_combination r531), (by unfold Seg28.relationRow532 at r532; linear_combination r532), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg48
    refine ⟨rho 19927, rho 19928, rho 19929, rho 19930, rho 19931,
      (by unfold Seg28.relationRow533 at r533; linear_combination r533), (by unfold Seg28.relationRow534 at r534; linear_combination r534), (by unfold Seg28.relationRow535 at r535; linear_combination r535), (by unfold Seg28.relationRow536 at r536; linear_combination r536), (by unfold Seg28.relationRow537 at r537; linear_combination r537), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg49
    refine ⟨rho 19932, rho 19933, rho 19934, rho 19935, rho 19936,
      (by unfold Seg28.relationRow538 at r538; linear_combination r538), (by unfold Seg28.relationRow539 at r539; linear_combination r539), (by unfold Seg28.relationRow540 at r540; linear_combination r540), (by unfold Seg28.relationRow541 at r541; linear_combination r541), (by unfold Seg28.relationRow542 at r542; linear_combination r542), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg50
    refine ⟨rho 19937, rho 19938, rho 19939, rho 19940, rho 19941,
      (by unfold Seg28.relationRow543 at r543; linear_combination r543), (by unfold Seg28.relationRow544 at r544; linear_combination r544), (by unfold Seg28.relationRow545 at r545; linear_combination r545), (by unfold Seg28.relationRow546 at r546; linear_combination r546), (by unfold Seg28.relationRow547 at r547; linear_combination r547), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg51
    refine ⟨rho 19942, rho 19943, rho 19944, rho 19945, rho 19946,
      (by unfold Seg28.relationRow548 at r548; linear_combination r548), (by unfold Seg28.relationRow549 at r549; linear_combination r549), (by unfold Seg28.relationRow550 at r550; linear_combination r550), (by unfold Seg28.relationRow551 at r551; linear_combination r551), (by unfold Seg28.relationRow552 at r552; linear_combination r552), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg52
    refine ⟨rho 19947, rho 19948, rho 19949, rho 19950, rho 19951,
      (by unfold Seg28.relationRow553 at r553; linear_combination r553), (by unfold Seg28.relationRow554 at r554; linear_combination r554), (by unfold Seg28.relationRow555 at r555; linear_combination r555), (by unfold Seg28.relationRow556 at r556; linear_combination r556), (by unfold Seg28.relationRow557 at r557; linear_combination r557), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg53
    refine ⟨rho 19952, rho 19953, rho 19954, rho 19955, rho 19956,
      (by unfold Seg28.relationRow558 at r558; linear_combination r558), (by unfold Seg28.relationRow559 at r559; linear_combination r559), (by unfold Seg28.relationRow560 at r560; linear_combination r560), (by unfold Seg28.relationRow561 at r561; linear_combination r561), (by unfold Seg28.relationRow562 at r562; linear_combination r562), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg54
    refine ⟨rho 19957, rho 19958, rho 19959, rho 19960, rho 19961,
      (by unfold Seg28.relationRow563 at r563; linear_combination r563), (by unfold Seg28.relationRow564 at r564; linear_combination r564), (by unfold Seg28.relationRow565 at r565; linear_combination r565), (by unfold Seg28.relationRow566 at r566; linear_combination r566), (by unfold Seg28.relationRow567 at r567; linear_combination r567), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg55
    refine ⟨rho 19962, rho 19963, rho 19964, rho 19965, rho 19966,
      (by unfold Seg28.relationRow568 at r568; linear_combination r568), (by unfold Seg28.relationRow569 at r569; linear_combination r569), (by unfold Seg28.relationRow570 at r570; linear_combination r570), (by unfold Seg28.relationRow571 at r571; linear_combination r571), (by unfold Seg28.relationRow572 at r572; linear_combination r572), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg56
    refine ⟨rho 19967, rho 19968, rho 19969, rho 19970, rho 19971,
      (by unfold Seg28.relationRow573 at r573; linear_combination r573), (by unfold Seg28.relationRow574 at r574; linear_combination r574), (by unfold Seg28.relationRow575 at r575; linear_combination r575), (by unfold Seg28.relationRow576 at r576; linear_combination r576), (by unfold Seg28.relationRow577 at r577; linear_combination r577), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg57
    refine ⟨rho 19972, rho 19973, rho 19974, rho 19975, rho 19976,
      (by unfold Seg28.relationRow578 at r578; linear_combination r578), (by unfold Seg28.relationRow579 at r579; linear_combination r579), (by unfold Seg28.relationRow580 at r580; linear_combination r580), (by unfold Seg28.relationRow581 at r581; linear_combination r581), (by unfold Seg28.relationRow582 at r582; linear_combination r582), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg58
    refine ⟨rho 19977, rho 19978, rho 19979, rho 19980, rho 19981,
      (by unfold Seg28.relationRow583 at r583; linear_combination r583), (by unfold Seg28.relationRow584 at r584; linear_combination r584), (by unfold Seg28.relationRow585 at r585; linear_combination r585), (by unfold Seg28.relationRow586 at r586; linear_combination r586), (by unfold Seg28.relationRow587 at r587; linear_combination r587), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg59
    refine ⟨rho 19982, rho 19983, rho 19984, rho 19985, rho 19986,
      (by unfold Seg28.relationRow588 at r588; linear_combination r588), (by unfold Seg28.relationRow589 at r589; linear_combination r589), (by unfold Seg28.relationRow590 at r590; linear_combination r590), (by unfold Seg28.relationRow591 at r591; linear_combination r591), (by unfold Seg28.relationRow592 at r592; linear_combination r592), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg60
    refine ⟨rho 19987, rho 19988, rho 19989, rho 19990, rho 19991,
      (by unfold Seg28.relationRow593 at r593; linear_combination r593), (by unfold Seg28.relationRow594 at r594; linear_combination r594), (by unfold Seg28.relationRow595 at r595; linear_combination r595), (by unfold Seg28.relationRow596 at r596; linear_combination r596), (by unfold Seg28.relationRow597 at r597; linear_combination r597), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg61
    refine ⟨rho 19992, rho 19993, rho 19994, rho 19995, rho 19996,
      (by unfold Seg28.relationRow598 at r598; linear_combination r598), (by unfold Seg28.relationRow599 at r599; linear_combination r599), (by unfold Seg28.relationRow600 at r600; linear_combination r600), (by unfold Seg28.relationRow601 at r601; linear_combination r601), (by unfold Seg28.relationRow602 at r602; linear_combination r602), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg62
    refine ⟨rho 19997, rho 19998, rho 19999, rho 20000, rho 20001,
      (by unfold Seg28.relationRow603 at r603; linear_combination r603), (by unfold Seg28.relationRow604 at r604; linear_combination r604), (by unfold Seg28.relationRow605 at r605; linear_combination r605), (by unfold Seg28.relationRow606 at r606; linear_combination r606), (by unfold Seg28.relationRow607 at r607; linear_combination r607), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg63
    refine ⟨rho 20002, rho 20003, rho 20004, rho 20005, rho 20006,
      (by unfold Seg28.relationRow608 at r608; linear_combination r608), (by unfold Seg28.relationRow609 at r609; linear_combination r609), (by unfold Seg28.relationRow610 at r610; linear_combination r610), (by unfold Seg28.relationRow611 at r611; linear_combination r611), (by unfold Seg28.relationRow612 at r612; linear_combination r612), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg64
    refine ⟨rho 20007, rho 20008, rho 20009, rho 20010, rho 20011,
      (by unfold Seg28.relationRow613 at r613; linear_combination r613), (by unfold Seg28.relationRow614 at r614; linear_combination r614), (by unfold Seg28.relationRow615 at r615; linear_combination r615), (by unfold Seg28.relationRow616 at r616; linear_combination r616), (by unfold Seg28.relationRow617 at r617; linear_combination r617), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg65
    refine ⟨rho 20012, rho 20013, rho 20014, rho 20015, rho 20016,
      (by unfold Seg28.relationRow618 at r618; linear_combination r618), (by unfold Seg28.relationRow619 at r619; linear_combination r619), (by unfold Seg28.relationRow620 at r620; linear_combination r620), (by unfold Seg28.relationRow621 at r621; linear_combination r621), (by unfold Seg28.relationRow622 at r622; linear_combination r622), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg66
    refine ⟨rho 20017, rho 20018, rho 20019, rho 20020, rho 20021,
      (by unfold Seg28.relationRow623 at r623; linear_combination r623), (by unfold Seg28.relationRow624 at r624; linear_combination r624), (by unfold Seg28.relationRow625 at r625; linear_combination r625), (by unfold Seg28.relationRow626 at r626; linear_combination r626), (by unfold Seg28.relationRow627 at r627; linear_combination r627), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg67
    refine ⟨rho 20022, rho 20023, rho 20024, rho 20025, rho 20026,
      (by unfold Seg28.relationRow628 at r628; linear_combination r628), (by unfold Seg28.relationRow629 at r629; linear_combination r629), (by unfold Seg28.relationRow630 at r630; linear_combination r630), (by unfold Seg28.relationRow631 at r631; linear_combination r631), (by unfold Seg28.relationRow632 at r632; linear_combination r632), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg68
    refine ⟨rho 20027, rho 20028, rho 20029, rho 20030, rho 20031,
      (by unfold Seg28.relationRow633 at r633; linear_combination r633), (by unfold Seg28.relationRow634 at r634; linear_combination r634), (by unfold Seg28.relationRow635 at r635; linear_combination r635), (by unfold Seg28.relationRow636 at r636; linear_combination r636), (by unfold Seg28.relationRow637 at r637; linear_combination r637), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg69
    refine ⟨rho 20032, rho 20033, rho 20034, rho 20035, rho 20036,
      (by unfold Seg28.relationRow638 at r638; linear_combination r638), (by unfold Seg28.relationRow639 at r639; linear_combination r639), (by unfold Seg28.relationRow640 at r640; linear_combination r640), (by unfold Seg28.relationRow641 at r641; linear_combination r641), (by unfold Seg28.relationRow642 at r642; linear_combination r642), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.relation_sound_permSpec (rho 184) (rho 185) (rho 186) (rho 19681) (rho 19682) (rho 19683) (rho 19684) (rho 19685) (rho 19686) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.tctNode1DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.F) + (1 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode0Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

