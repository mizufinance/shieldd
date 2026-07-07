import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg29Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode0.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg29_scp_node0_eq (rho : Nat -> Seg29.F) (h : Seg29.relation rho) :
    seg29ScpNode0Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg29.F) + (1 : Seg29.F))
        (rho 184 + rho 20635) (rho 185 + rho 20636 + rho 20637)
        (rho 185 + rho 20638 + rho 20639) (rho 186 + rho 20640) := by
  unfold Seg29.relation at h
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
  unfold Seg29.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r293, r294, r295, r296, r297, r298, r299, r300, r301, r302, r303, r304, r305, r306, r307, r308, r309, r310, r311, r312, r313, r314, r315, r316, r317, r318, r319⟩
  unfold Seg29.relationPart4 at p4
  rcases p4 with ⟨r320, r321, r322, r323, r324, r325, r326, r327, r328, r329, r330, r331, r332, r333, r334, r335, r336, r337, r338, r339, r340, r341, r342, r343, r344, r345, r346, r347, r348, r349, r350, r351, r352, r353, r354, r355, r356, r357, r358, r359, r360, r361, r362, r363, r364, r365, r366, r367, r368, r369, r370, r371, r372, r373, r374, r375, r376, r377, r378, r379, r380, r381, r382, r383, r384, r385, r386, r387, r388, r389, r390, r391, r392, r393, r394, r395, r396, r397, r398, r399⟩
  unfold Seg29.relationPart5 at p5
  rcases p5 with ⟨r400, r401, r402, r403, r404, r405, r406, r407, r408, r409, r410, r411, r412, r413, r414, r415, r416, r417, r418, r419, r420, r421, r422, r423, r424, r425, r426, r427, r428, r429, r430, r431, r432, r433, r434, r435, r436, r437, r438, r439, r440, r441, r442, r443, r444, r445, r446, r447, r448, r449, r450, r451, r452, r453, r454, r455, r456, r457, r458, r459, r460, r461, r462, r463, r464, r465, r466, r467, r468, r469, r470, r471, r472, r473, r474, r475, r476, r477, r478, r479⟩
  unfold Seg29.relationPart6 at p6
  rcases p6 with ⟨r480, r481, r482, r483, r484, r485, r486, r487, r488, r489, r490, r491, r492, r493, r494, r495, r496, r497, r498, r499, r500, r501, r502, r503, r504, r505, r506, r507, r508, r509, r510, r511, r512, r513, r514, r515, r516, r517, r518, r519, r520, r521, r522, r523, r524, r525, r526, r527, r528, r529, r530, r531, r532, r533, r534, r535, r536, r537, r538, r539, r540, r541, r542, r543, r544, r545, r546, r547, r548, r549, r550, r551, r552, r553, r554, r555, r556, r557, r558, r559⟩
  unfold Seg29.relationPart7 at p7
  rcases p7 with ⟨r560, r561, r562, r563, r564, r565, r566, r567, r568, r569, r570, r571, r572, r573, r574, r575, r576, r577, r578, r579, r580, r581, r582, r583, r584, r585, r586, r587, r588, r589, r590, r591, r592, r593, r594, r595, r596, r597, r598, r599, r600, r601, r602, r603, r604, r605, r606, r607, r608, r609, r610, r611, r612, r613, r614, r615, r616, r617, r618, r619, r620, r621, r622, r623, r624, r625, r626, r627, r628, r629, r630, r631, r632, r633, r634, r635, r636, r637, r638, r639⟩
  unfold Seg29.relationPart8 at p8
  rcases p8 with ⟨r640, r641, r642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.relation (rho 184) (rho 185) (rho 186) (rho 20635) (rho 20636) (rho 20637) (rho 20638) (rho 20639) (rho 20640)
      (fun o0 o1 o2 o3 o4 => o0 = rho 20970 ∧ o1 = rho 20975 ∧ o2 = rho 20980 ∧ o3 = rho 20985 ∧ o4 = rho 20990) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg0
    refine ⟨rho 20641, rho 20642, rho 20643, rho 20644, rho 20645,
      (by unfold Seg29.relationRow293 at r293; linear_combination r293), (by unfold Seg29.relationRow294 at r294; linear_combination r294), (by unfold Seg29.relationRow295 at r295; linear_combination r295), (by unfold Seg29.relationRow296 at r296; linear_combination r296), (by unfold Seg29.relationRow297 at r297; linear_combination r297), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg1
    refine ⟨rho 20646, rho 20647, rho 20648, rho 20649, rho 20650,
      (by unfold Seg29.relationRow298 at r298; linear_combination r298), (by unfold Seg29.relationRow299 at r299; linear_combination r299), (by unfold Seg29.relationRow300 at r300; linear_combination r300), (by unfold Seg29.relationRow301 at r301; linear_combination r301), (by unfold Seg29.relationRow302 at r302; linear_combination r302), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg2
    refine ⟨rho 20651, rho 20652, rho 20653, rho 20654, rho 20655,
      (by unfold Seg29.relationRow303 at r303; linear_combination r303), (by unfold Seg29.relationRow304 at r304; linear_combination r304), (by unfold Seg29.relationRow305 at r305; linear_combination r305), (by unfold Seg29.relationRow306 at r306; linear_combination r306), (by unfold Seg29.relationRow307 at r307; linear_combination r307), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg3
    refine ⟨rho 20656, rho 20657, rho 20658, rho 20659, rho 20660,
      (by unfold Seg29.relationRow308 at r308; linear_combination r308), (by unfold Seg29.relationRow309 at r309; linear_combination r309), (by unfold Seg29.relationRow310 at r310; linear_combination r310), (by unfold Seg29.relationRow311 at r311; linear_combination r311), (by unfold Seg29.relationRow312 at r312; linear_combination r312), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg4
    refine ⟨rho 20661, rho 20662, rho 20663, rho 20664, rho 20665,
      (by unfold Seg29.relationRow313 at r313; linear_combination r313), (by unfold Seg29.relationRow314 at r314; linear_combination r314), (by unfold Seg29.relationRow315 at r315; linear_combination r315), (by unfold Seg29.relationRow316 at r316; linear_combination r316), (by unfold Seg29.relationRow317 at r317; linear_combination r317), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg5
    refine ⟨rho 20666, rho 20667, rho 20668, rho 20669, rho 20670,
      (by unfold Seg29.relationRow318 at r318; linear_combination r318), (by unfold Seg29.relationRow319 at r319; linear_combination r319), (by unfold Seg29.relationRow320 at r320; linear_combination r320), (by unfold Seg29.relationRow321 at r321; linear_combination r321), (by unfold Seg29.relationRow322 at r322; linear_combination r322), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg6
    refine ⟨rho 20671, rho 20672, rho 20673, rho 20674, rho 20675,
      (by unfold Seg29.relationRow323 at r323; linear_combination r323), (by unfold Seg29.relationRow324 at r324; linear_combination r324), (by unfold Seg29.relationRow325 at r325; linear_combination r325), (by unfold Seg29.relationRow326 at r326; linear_combination r326), (by unfold Seg29.relationRow327 at r327; linear_combination r327), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg7
    refine ⟨rho 20676, rho 20677, rho 20678, rho 20679, rho 20680,
      (by unfold Seg29.relationRow328 at r328; linear_combination r328), (by unfold Seg29.relationRow329 at r329; linear_combination r329), (by unfold Seg29.relationRow330 at r330; linear_combination r330), (by unfold Seg29.relationRow331 at r331; linear_combination r331), (by unfold Seg29.relationRow332 at r332; linear_combination r332), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg8
    refine ⟨rho 20681, rho 20682, rho 20683, rho 20684, rho 20685,
      (by unfold Seg29.relationRow333 at r333; linear_combination r333), (by unfold Seg29.relationRow334 at r334; linear_combination r334), (by unfold Seg29.relationRow335 at r335; linear_combination r335), (by unfold Seg29.relationRow336 at r336; linear_combination r336), (by unfold Seg29.relationRow337 at r337; linear_combination r337), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg9
    refine ⟨rho 20686, rho 20687, rho 20688, rho 20689, rho 20690,
      (by unfold Seg29.relationRow338 at r338; linear_combination r338), (by unfold Seg29.relationRow339 at r339; linear_combination r339), (by unfold Seg29.relationRow340 at r340; linear_combination r340), (by unfold Seg29.relationRow341 at r341; linear_combination r341), (by unfold Seg29.relationRow342 at r342; linear_combination r342), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg10
    refine ⟨rho 20691, rho 20692, rho 20693, rho 20694, rho 20695,
      (by unfold Seg29.relationRow343 at r343; linear_combination r343), (by unfold Seg29.relationRow344 at r344; linear_combination r344), (by unfold Seg29.relationRow345 at r345; linear_combination r345), (by unfold Seg29.relationRow346 at r346; linear_combination r346), (by unfold Seg29.relationRow347 at r347; linear_combination r347), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg11
    refine ⟨rho 20696, rho 20697, rho 20698, rho 20699, rho 20700,
      (by unfold Seg29.relationRow348 at r348; linear_combination r348), (by unfold Seg29.relationRow349 at r349; linear_combination r349), (by unfold Seg29.relationRow350 at r350; linear_combination r350), (by unfold Seg29.relationRow351 at r351; linear_combination r351), (by unfold Seg29.relationRow352 at r352; linear_combination r352), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg12
    refine ⟨rho 20701, rho 20702, rho 20703, rho 20704, rho 20705,
      (by unfold Seg29.relationRow353 at r353; linear_combination r353), (by unfold Seg29.relationRow354 at r354; linear_combination r354), (by unfold Seg29.relationRow355 at r355; linear_combination r355), (by unfold Seg29.relationRow356 at r356; linear_combination r356), (by unfold Seg29.relationRow357 at r357; linear_combination r357), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg13
    refine ⟨rho 20706, rho 20707, rho 20708, rho 20709, rho 20710,
      (by unfold Seg29.relationRow358 at r358; linear_combination r358), (by unfold Seg29.relationRow359 at r359; linear_combination r359), (by unfold Seg29.relationRow360 at r360; linear_combination r360), (by unfold Seg29.relationRow361 at r361; linear_combination r361), (by unfold Seg29.relationRow362 at r362; linear_combination r362), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg14
    refine ⟨rho 20711, rho 20712, rho 20713, rho 20714, rho 20715,
      (by unfold Seg29.relationRow363 at r363; linear_combination r363), (by unfold Seg29.relationRow364 at r364; linear_combination r364), (by unfold Seg29.relationRow365 at r365; linear_combination r365), (by unfold Seg29.relationRow366 at r366; linear_combination r366), (by unfold Seg29.relationRow367 at r367; linear_combination r367), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg15
    refine ⟨rho 20716, rho 20717, rho 20718, rho 20719, rho 20720,
      (by unfold Seg29.relationRow368 at r368; linear_combination r368), (by unfold Seg29.relationRow369 at r369; linear_combination r369), (by unfold Seg29.relationRow370 at r370; linear_combination r370), (by unfold Seg29.relationRow371 at r371; linear_combination r371), (by unfold Seg29.relationRow372 at r372; linear_combination r372), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg16
    refine ⟨rho 20721, rho 20722, rho 20723, rho 20724, rho 20725,
      (by unfold Seg29.relationRow373 at r373; linear_combination r373), (by unfold Seg29.relationRow374 at r374; linear_combination r374), (by unfold Seg29.relationRow375 at r375; linear_combination r375), (by unfold Seg29.relationRow376 at r376; linear_combination r376), (by unfold Seg29.relationRow377 at r377; linear_combination r377), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg17
    refine ⟨rho 20726, rho 20727, rho 20728, rho 20729, rho 20730,
      (by unfold Seg29.relationRow378 at r378; linear_combination r378), (by unfold Seg29.relationRow379 at r379; linear_combination r379), (by unfold Seg29.relationRow380 at r380; linear_combination r380), (by unfold Seg29.relationRow381 at r381; linear_combination r381), (by unfold Seg29.relationRow382 at r382; linear_combination r382), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg18
    refine ⟨rho 20731, rho 20732, rho 20733, rho 20734, rho 20735,
      (by unfold Seg29.relationRow383 at r383; linear_combination r383), (by unfold Seg29.relationRow384 at r384; linear_combination r384), (by unfold Seg29.relationRow385 at r385; linear_combination r385), (by unfold Seg29.relationRow386 at r386; linear_combination r386), (by unfold Seg29.relationRow387 at r387; linear_combination r387), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg19
    refine ⟨rho 20736, rho 20737, rho 20738, rho 20739, rho 20740,
      (by unfold Seg29.relationRow388 at r388; linear_combination r388), (by unfold Seg29.relationRow389 at r389; linear_combination r389), (by unfold Seg29.relationRow390 at r390; linear_combination r390), (by unfold Seg29.relationRow391 at r391; linear_combination r391), (by unfold Seg29.relationRow392 at r392; linear_combination r392), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg20
    refine ⟨rho 20741, rho 20742, rho 20743, rho 20744, rho 20745,
      (by unfold Seg29.relationRow393 at r393; linear_combination r393), (by unfold Seg29.relationRow394 at r394; linear_combination r394), (by unfold Seg29.relationRow395 at r395; linear_combination r395), (by unfold Seg29.relationRow396 at r396; linear_combination r396), (by unfold Seg29.relationRow397 at r397; linear_combination r397), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg21
    refine ⟨rho 20746, rho 20747, rho 20748, rho 20749, rho 20750,
      (by unfold Seg29.relationRow398 at r398; linear_combination r398), (by unfold Seg29.relationRow399 at r399; linear_combination r399), (by unfold Seg29.relationRow400 at r400; linear_combination r400), (by unfold Seg29.relationRow401 at r401; linear_combination r401), (by unfold Seg29.relationRow402 at r402; linear_combination r402), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg22
    refine ⟨rho 20751, rho 20752, rho 20753, rho 20754, rho 20755,
      (by unfold Seg29.relationRow403 at r403; linear_combination r403), (by unfold Seg29.relationRow404 at r404; linear_combination r404), (by unfold Seg29.relationRow405 at r405; linear_combination r405), (by unfold Seg29.relationRow406 at r406; linear_combination r406), (by unfold Seg29.relationRow407 at r407; linear_combination r407), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg23
    refine ⟨rho 20756, rho 20757, rho 20758, rho 20759, rho 20760,
      (by unfold Seg29.relationRow408 at r408; linear_combination r408), (by unfold Seg29.relationRow409 at r409; linear_combination r409), (by unfold Seg29.relationRow410 at r410; linear_combination r410), (by unfold Seg29.relationRow411 at r411; linear_combination r411), (by unfold Seg29.relationRow412 at r412; linear_combination r412), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg24
    refine ⟨rho 20761, rho 20762, rho 20763, rho 20764, rho 20765,
      (by unfold Seg29.relationRow413 at r413; linear_combination r413), (by unfold Seg29.relationRow414 at r414; linear_combination r414), (by unfold Seg29.relationRow415 at r415; linear_combination r415), (by unfold Seg29.relationRow416 at r416; linear_combination r416), (by unfold Seg29.relationRow417 at r417; linear_combination r417), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg25
    refine ⟨rho 20766, rho 20767, rho 20768, rho 20769, rho 20770,
      (by unfold Seg29.relationRow418 at r418; linear_combination r418), (by unfold Seg29.relationRow419 at r419; linear_combination r419), (by unfold Seg29.relationRow420 at r420; linear_combination r420), (by unfold Seg29.relationRow421 at r421; linear_combination r421), (by unfold Seg29.relationRow422 at r422; linear_combination r422), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg26
    refine ⟨rho 20771, rho 20772, rho 20773, rho 20774, rho 20775,
      (by unfold Seg29.relationRow423 at r423; linear_combination r423), (by unfold Seg29.relationRow424 at r424; linear_combination r424), (by unfold Seg29.relationRow425 at r425; linear_combination r425), (by unfold Seg29.relationRow426 at r426; linear_combination r426), (by unfold Seg29.relationRow427 at r427; linear_combination r427), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg27
    refine ⟨rho 20776, rho 20777, rho 20778, rho 20779, rho 20780,
      (by unfold Seg29.relationRow428 at r428; linear_combination r428), (by unfold Seg29.relationRow429 at r429; linear_combination r429), (by unfold Seg29.relationRow430 at r430; linear_combination r430), (by unfold Seg29.relationRow431 at r431; linear_combination r431), (by unfold Seg29.relationRow432 at r432; linear_combination r432), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg28
    refine ⟨rho 20781, rho 20782, rho 20783, rho 20784, rho 20785,
      (by unfold Seg29.relationRow433 at r433; linear_combination r433), (by unfold Seg29.relationRow434 at r434; linear_combination r434), (by unfold Seg29.relationRow435 at r435; linear_combination r435), (by unfold Seg29.relationRow436 at r436; linear_combination r436), (by unfold Seg29.relationRow437 at r437; linear_combination r437), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg29
    refine ⟨rho 20786, rho 20787, rho 20788, rho 20789, rho 20790,
      (by unfold Seg29.relationRow438 at r438; linear_combination r438), (by unfold Seg29.relationRow439 at r439; linear_combination r439), (by unfold Seg29.relationRow440 at r440; linear_combination r440), (by unfold Seg29.relationRow441 at r441; linear_combination r441), (by unfold Seg29.relationRow442 at r442; linear_combination r442), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg30
    refine ⟨rho 20791, rho 20792, rho 20793, rho 20794, rho 20795,
      (by unfold Seg29.relationRow443 at r443; linear_combination r443), (by unfold Seg29.relationRow444 at r444; linear_combination r444), (by unfold Seg29.relationRow445 at r445; linear_combination r445), (by unfold Seg29.relationRow446 at r446; linear_combination r446), (by unfold Seg29.relationRow447 at r447; linear_combination r447), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg31
    refine ⟨rho 20796, rho 20797, rho 20798, rho 20799, rho 20800,
      (by unfold Seg29.relationRow448 at r448; linear_combination r448), (by unfold Seg29.relationRow449 at r449; linear_combination r449), (by unfold Seg29.relationRow450 at r450; linear_combination r450), (by unfold Seg29.relationRow451 at r451; linear_combination r451), (by unfold Seg29.relationRow452 at r452; linear_combination r452), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg32
    refine ⟨rho 20801, rho 20802, rho 20803, rho 20804, rho 20805,
      (by unfold Seg29.relationRow453 at r453; linear_combination r453), (by unfold Seg29.relationRow454 at r454; linear_combination r454), (by unfold Seg29.relationRow455 at r455; linear_combination r455), (by unfold Seg29.relationRow456 at r456; linear_combination r456), (by unfold Seg29.relationRow457 at r457; linear_combination r457), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg33
    refine ⟨rho 20806, rho 20807, rho 20808, rho 20809, rho 20810,
      (by unfold Seg29.relationRow458 at r458; linear_combination r458), (by unfold Seg29.relationRow459 at r459; linear_combination r459), (by unfold Seg29.relationRow460 at r460; linear_combination r460), (by unfold Seg29.relationRow461 at r461; linear_combination r461), (by unfold Seg29.relationRow462 at r462; linear_combination r462), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg34
    refine ⟨rho 20811, rho 20812, rho 20813, rho 20814, rho 20815,
      (by unfold Seg29.relationRow463 at r463; linear_combination r463), (by unfold Seg29.relationRow464 at r464; linear_combination r464), (by unfold Seg29.relationRow465 at r465; linear_combination r465), (by unfold Seg29.relationRow466 at r466; linear_combination r466), (by unfold Seg29.relationRow467 at r467; linear_combination r467), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg35
    refine ⟨rho 20816, rho 20817, rho 20818, rho 20819, rho 20820,
      (by unfold Seg29.relationRow468 at r468; linear_combination r468), (by unfold Seg29.relationRow469 at r469; linear_combination r469), (by unfold Seg29.relationRow470 at r470; linear_combination r470), (by unfold Seg29.relationRow471 at r471; linear_combination r471), (by unfold Seg29.relationRow472 at r472; linear_combination r472), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg36
    refine ⟨rho 20821, rho 20822, rho 20823, rho 20824, rho 20825,
      (by unfold Seg29.relationRow473 at r473; linear_combination r473), (by unfold Seg29.relationRow474 at r474; linear_combination r474), (by unfold Seg29.relationRow475 at r475; linear_combination r475), (by unfold Seg29.relationRow476 at r476; linear_combination r476), (by unfold Seg29.relationRow477 at r477; linear_combination r477), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg37
    refine ⟨rho 20826, rho 20827, rho 20828, rho 20829, rho 20830,
      (by unfold Seg29.relationRow478 at r478; linear_combination r478), (by unfold Seg29.relationRow479 at r479; linear_combination r479), (by unfold Seg29.relationRow480 at r480; linear_combination r480), (by unfold Seg29.relationRow481 at r481; linear_combination r481), (by unfold Seg29.relationRow482 at r482; linear_combination r482), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg38
    refine ⟨rho 20831, rho 20832, rho 20833, rho 20834, rho 20835,
      (by unfold Seg29.relationRow483 at r483; linear_combination r483), (by unfold Seg29.relationRow484 at r484; linear_combination r484), (by unfold Seg29.relationRow485 at r485; linear_combination r485), (by unfold Seg29.relationRow486 at r486; linear_combination r486), (by unfold Seg29.relationRow487 at r487; linear_combination r487), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg39
    refine ⟨rho 20836, rho 20837, rho 20838, rho 20839, rho 20840,
      (by unfold Seg29.relationRow488 at r488; linear_combination r488), (by unfold Seg29.relationRow489 at r489; linear_combination r489), (by unfold Seg29.relationRow490 at r490; linear_combination r490), (by unfold Seg29.relationRow491 at r491; linear_combination r491), (by unfold Seg29.relationRow492 at r492; linear_combination r492), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg40
    refine ⟨rho 20841, rho 20842, rho 20843, rho 20844, rho 20845,
      (by unfold Seg29.relationRow493 at r493; linear_combination r493), (by unfold Seg29.relationRow494 at r494; linear_combination r494), (by unfold Seg29.relationRow495 at r495; linear_combination r495), (by unfold Seg29.relationRow496 at r496; linear_combination r496), (by unfold Seg29.relationRow497 at r497; linear_combination r497), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg41
    refine ⟨rho 20846, rho 20847, rho 20848, rho 20849, rho 20850,
      (by unfold Seg29.relationRow498 at r498; linear_combination r498), (by unfold Seg29.relationRow499 at r499; linear_combination r499), (by unfold Seg29.relationRow500 at r500; linear_combination r500), (by unfold Seg29.relationRow501 at r501; linear_combination r501), (by unfold Seg29.relationRow502 at r502; linear_combination r502), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg42
    refine ⟨rho 20851, rho 20852, rho 20853, rho 20854, rho 20855,
      (by unfold Seg29.relationRow503 at r503; linear_combination r503), (by unfold Seg29.relationRow504 at r504; linear_combination r504), (by unfold Seg29.relationRow505 at r505; linear_combination r505), (by unfold Seg29.relationRow506 at r506; linear_combination r506), (by unfold Seg29.relationRow507 at r507; linear_combination r507), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg43
    refine ⟨rho 20856, rho 20857, rho 20858, rho 20859, rho 20860,
      (by unfold Seg29.relationRow508 at r508; linear_combination r508), (by unfold Seg29.relationRow509 at r509; linear_combination r509), (by unfold Seg29.relationRow510 at r510; linear_combination r510), (by unfold Seg29.relationRow511 at r511; linear_combination r511), (by unfold Seg29.relationRow512 at r512; linear_combination r512), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg44
    refine ⟨rho 20861, rho 20862, rho 20863, rho 20864, rho 20865,
      (by unfold Seg29.relationRow513 at r513; linear_combination r513), (by unfold Seg29.relationRow514 at r514; linear_combination r514), (by unfold Seg29.relationRow515 at r515; linear_combination r515), (by unfold Seg29.relationRow516 at r516; linear_combination r516), (by unfold Seg29.relationRow517 at r517; linear_combination r517), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg45
    refine ⟨rho 20866, rho 20867, rho 20868, rho 20869, rho 20870,
      (by unfold Seg29.relationRow518 at r518; linear_combination r518), (by unfold Seg29.relationRow519 at r519; linear_combination r519), (by unfold Seg29.relationRow520 at r520; linear_combination r520), (by unfold Seg29.relationRow521 at r521; linear_combination r521), (by unfold Seg29.relationRow522 at r522; linear_combination r522), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg46
    refine ⟨rho 20871, rho 20872, rho 20873, rho 20874, rho 20875,
      (by unfold Seg29.relationRow523 at r523; linear_combination r523), (by unfold Seg29.relationRow524 at r524; linear_combination r524), (by unfold Seg29.relationRow525 at r525; linear_combination r525), (by unfold Seg29.relationRow526 at r526; linear_combination r526), (by unfold Seg29.relationRow527 at r527; linear_combination r527), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg47
    refine ⟨rho 20876, rho 20877, rho 20878, rho 20879, rho 20880,
      (by unfold Seg29.relationRow528 at r528; linear_combination r528), (by unfold Seg29.relationRow529 at r529; linear_combination r529), (by unfold Seg29.relationRow530 at r530; linear_combination r530), (by unfold Seg29.relationRow531 at r531; linear_combination r531), (by unfold Seg29.relationRow532 at r532; linear_combination r532), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg48
    refine ⟨rho 20881, rho 20882, rho 20883, rho 20884, rho 20885,
      (by unfold Seg29.relationRow533 at r533; linear_combination r533), (by unfold Seg29.relationRow534 at r534; linear_combination r534), (by unfold Seg29.relationRow535 at r535; linear_combination r535), (by unfold Seg29.relationRow536 at r536; linear_combination r536), (by unfold Seg29.relationRow537 at r537; linear_combination r537), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg49
    refine ⟨rho 20886, rho 20887, rho 20888, rho 20889, rho 20890,
      (by unfold Seg29.relationRow538 at r538; linear_combination r538), (by unfold Seg29.relationRow539 at r539; linear_combination r539), (by unfold Seg29.relationRow540 at r540; linear_combination r540), (by unfold Seg29.relationRow541 at r541; linear_combination r541), (by unfold Seg29.relationRow542 at r542; linear_combination r542), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg50
    refine ⟨rho 20891, rho 20892, rho 20893, rho 20894, rho 20895,
      (by unfold Seg29.relationRow543 at r543; linear_combination r543), (by unfold Seg29.relationRow544 at r544; linear_combination r544), (by unfold Seg29.relationRow545 at r545; linear_combination r545), (by unfold Seg29.relationRow546 at r546; linear_combination r546), (by unfold Seg29.relationRow547 at r547; linear_combination r547), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg51
    refine ⟨rho 20896, rho 20897, rho 20898, rho 20899, rho 20900,
      (by unfold Seg29.relationRow548 at r548; linear_combination r548), (by unfold Seg29.relationRow549 at r549; linear_combination r549), (by unfold Seg29.relationRow550 at r550; linear_combination r550), (by unfold Seg29.relationRow551 at r551; linear_combination r551), (by unfold Seg29.relationRow552 at r552; linear_combination r552), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg52
    refine ⟨rho 20901, rho 20902, rho 20903, rho 20904, rho 20905,
      (by unfold Seg29.relationRow553 at r553; linear_combination r553), (by unfold Seg29.relationRow554 at r554; linear_combination r554), (by unfold Seg29.relationRow555 at r555; linear_combination r555), (by unfold Seg29.relationRow556 at r556; linear_combination r556), (by unfold Seg29.relationRow557 at r557; linear_combination r557), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg53
    refine ⟨rho 20906, rho 20907, rho 20908, rho 20909, rho 20910,
      (by unfold Seg29.relationRow558 at r558; linear_combination r558), (by unfold Seg29.relationRow559 at r559; linear_combination r559), (by unfold Seg29.relationRow560 at r560; linear_combination r560), (by unfold Seg29.relationRow561 at r561; linear_combination r561), (by unfold Seg29.relationRow562 at r562; linear_combination r562), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg54
    refine ⟨rho 20911, rho 20912, rho 20913, rho 20914, rho 20915,
      (by unfold Seg29.relationRow563 at r563; linear_combination r563), (by unfold Seg29.relationRow564 at r564; linear_combination r564), (by unfold Seg29.relationRow565 at r565; linear_combination r565), (by unfold Seg29.relationRow566 at r566; linear_combination r566), (by unfold Seg29.relationRow567 at r567; linear_combination r567), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg55
    refine ⟨rho 20916, rho 20917, rho 20918, rho 20919, rho 20920,
      (by unfold Seg29.relationRow568 at r568; linear_combination r568), (by unfold Seg29.relationRow569 at r569; linear_combination r569), (by unfold Seg29.relationRow570 at r570; linear_combination r570), (by unfold Seg29.relationRow571 at r571; linear_combination r571), (by unfold Seg29.relationRow572 at r572; linear_combination r572), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg56
    refine ⟨rho 20921, rho 20922, rho 20923, rho 20924, rho 20925,
      (by unfold Seg29.relationRow573 at r573; linear_combination r573), (by unfold Seg29.relationRow574 at r574; linear_combination r574), (by unfold Seg29.relationRow575 at r575; linear_combination r575), (by unfold Seg29.relationRow576 at r576; linear_combination r576), (by unfold Seg29.relationRow577 at r577; linear_combination r577), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg57
    refine ⟨rho 20926, rho 20927, rho 20928, rho 20929, rho 20930,
      (by unfold Seg29.relationRow578 at r578; linear_combination r578), (by unfold Seg29.relationRow579 at r579; linear_combination r579), (by unfold Seg29.relationRow580 at r580; linear_combination r580), (by unfold Seg29.relationRow581 at r581; linear_combination r581), (by unfold Seg29.relationRow582 at r582; linear_combination r582), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg58
    refine ⟨rho 20931, rho 20932, rho 20933, rho 20934, rho 20935,
      (by unfold Seg29.relationRow583 at r583; linear_combination r583), (by unfold Seg29.relationRow584 at r584; linear_combination r584), (by unfold Seg29.relationRow585 at r585; linear_combination r585), (by unfold Seg29.relationRow586 at r586; linear_combination r586), (by unfold Seg29.relationRow587 at r587; linear_combination r587), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg59
    refine ⟨rho 20936, rho 20937, rho 20938, rho 20939, rho 20940,
      (by unfold Seg29.relationRow588 at r588; linear_combination r588), (by unfold Seg29.relationRow589 at r589; linear_combination r589), (by unfold Seg29.relationRow590 at r590; linear_combination r590), (by unfold Seg29.relationRow591 at r591; linear_combination r591), (by unfold Seg29.relationRow592 at r592; linear_combination r592), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg60
    refine ⟨rho 20941, rho 20942, rho 20943, rho 20944, rho 20945,
      (by unfold Seg29.relationRow593 at r593; linear_combination r593), (by unfold Seg29.relationRow594 at r594; linear_combination r594), (by unfold Seg29.relationRow595 at r595; linear_combination r595), (by unfold Seg29.relationRow596 at r596; linear_combination r596), (by unfold Seg29.relationRow597 at r597; linear_combination r597), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg61
    refine ⟨rho 20946, rho 20947, rho 20948, rho 20949, rho 20950,
      (by unfold Seg29.relationRow598 at r598; linear_combination r598), (by unfold Seg29.relationRow599 at r599; linear_combination r599), (by unfold Seg29.relationRow600 at r600; linear_combination r600), (by unfold Seg29.relationRow601 at r601; linear_combination r601), (by unfold Seg29.relationRow602 at r602; linear_combination r602), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg62
    refine ⟨rho 20951, rho 20952, rho 20953, rho 20954, rho 20955,
      (by unfold Seg29.relationRow603 at r603; linear_combination r603), (by unfold Seg29.relationRow604 at r604; linear_combination r604), (by unfold Seg29.relationRow605 at r605; linear_combination r605), (by unfold Seg29.relationRow606 at r606; linear_combination r606), (by unfold Seg29.relationRow607 at r607; linear_combination r607), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg63
    refine ⟨rho 20956, rho 20957, rho 20958, rho 20959, rho 20960,
      (by unfold Seg29.relationRow608 at r608; linear_combination r608), (by unfold Seg29.relationRow609 at r609; linear_combination r609), (by unfold Seg29.relationRow610 at r610; linear_combination r610), (by unfold Seg29.relationRow611 at r611; linear_combination r611), (by unfold Seg29.relationRow612 at r612; linear_combination r612), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg64
    refine ⟨rho 20961, rho 20962, rho 20963, rho 20964, rho 20965,
      (by unfold Seg29.relationRow613 at r613; linear_combination r613), (by unfold Seg29.relationRow614 at r614; linear_combination r614), (by unfold Seg29.relationRow615 at r615; linear_combination r615), (by unfold Seg29.relationRow616 at r616; linear_combination r616), (by unfold Seg29.relationRow617 at r617; linear_combination r617), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg65
    refine ⟨rho 20966, rho 20967, rho 20968, rho 20969, rho 20970,
      (by unfold Seg29.relationRow618 at r618; linear_combination r618), (by unfold Seg29.relationRow619 at r619; linear_combination r619), (by unfold Seg29.relationRow620 at r620; linear_combination r620), (by unfold Seg29.relationRow621 at r621; linear_combination r621), (by unfold Seg29.relationRow622 at r622; linear_combination r622), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg66
    refine ⟨rho 20971, rho 20972, rho 20973, rho 20974, rho 20975,
      (by unfold Seg29.relationRow623 at r623; linear_combination r623), (by unfold Seg29.relationRow624 at r624; linear_combination r624), (by unfold Seg29.relationRow625 at r625; linear_combination r625), (by unfold Seg29.relationRow626 at r626; linear_combination r626), (by unfold Seg29.relationRow627 at r627; linear_combination r627), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg67
    refine ⟨rho 20976, rho 20977, rho 20978, rho 20979, rho 20980,
      (by unfold Seg29.relationRow628 at r628; linear_combination r628), (by unfold Seg29.relationRow629 at r629; linear_combination r629), (by unfold Seg29.relationRow630 at r630; linear_combination r630), (by unfold Seg29.relationRow631 at r631; linear_combination r631), (by unfold Seg29.relationRow632 at r632; linear_combination r632), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg68
    refine ⟨rho 20981, rho 20982, rho 20983, rho 20984, rho 20985,
      (by unfold Seg29.relationRow633 at r633; linear_combination r633), (by unfold Seg29.relationRow634 at r634; linear_combination r634), (by unfold Seg29.relationRow635 at r635; linear_combination r635), (by unfold Seg29.relationRow636 at r636; linear_combination r636), (by unfold Seg29.relationRow637 at r637; linear_combination r637), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.seg69
    refine ⟨rho 20986, rho 20987, rho 20988, rho 20989, rho 20990,
      (by unfold Seg29.relationRow638 at r638; linear_combination r638), (by unfold Seg29.relationRow639 at r639; linear_combination r639), (by unfold Seg29.relationRow640 at r640; linear_combination r640), (by unfold Seg29.relationRow641 at r641; linear_combination r641), (by unfold Seg29.relationRow642 at r642; linear_combination r642), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.relation_sound_permSpec (rho 184) (rho 185) (rho 186) (rho 20635) (rho 20636) (rho 20637) (rho 20638) (rho 20639) (rho 20640) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.tctNode1DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.F) + (1 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg29ScpNode0Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

