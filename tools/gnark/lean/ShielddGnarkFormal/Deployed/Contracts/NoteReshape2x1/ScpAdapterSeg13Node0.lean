import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node0Rows0
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node0Rows1
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node0Rows2
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node0Rows3
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node0Rows4
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node0Rows5
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node0Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode0.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node0_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode0Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (1 : Seg13.F))
        (rho 94 + rho 7500) (rho 95 + rho 7501 + rho 7502)
        (rho 95 + rho 7503 + rho 7504) (rho 96 + rho 7505) := by
  unfold Seg13.relation at h
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
  unfold Seg13.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r293, r294, r295, r296, r297, r298, r299, r300, r301, r302, r303, r304, r305, r306, r307, r308, r309, r310, r311, r312, r313, r314, r315, r316, r317, r318, r319⟩
  unfold Seg13.relationPart4 at p4
  rcases p4 with ⟨r320, r321, r322, r323, r324, r325, r326, r327, r328, r329, r330, r331, r332, r333, r334, r335, r336, r337, r338, r339, r340, r341, r342, r343, r344, r345, r346, r347, r348, r349, r350, r351, r352, r353, r354, r355, r356, r357, r358, r359, r360, r361, r362, r363, r364, r365, r366, r367, r368, r369, r370, r371, r372, r373, r374, r375, r376, r377, r378, r379, r380, r381, r382, r383, r384, r385, r386, r387, r388, r389, r390, r391, r392, r393, r394, r395, r396, r397, r398, r399⟩
  unfold Seg13.relationPart5 at p5
  rcases p5 with ⟨r400, r401, r402, r403, r404, r405, r406, r407, r408, r409, r410, r411, r412, r413, r414, r415, r416, r417, r418, r419, r420, r421, r422, r423, r424, r425, r426, r427, r428, r429, r430, r431, r432, r433, r434, r435, r436, r437, r438, r439, r440, r441, r442, r443, r444, r445, r446, r447, r448, r449, r450, r451, r452, r453, r454, r455, r456, r457, r458, r459, r460, r461, r462, r463, r464, r465, r466, r467, r468, r469, r470, r471, r472, r473, r474, r475, r476, r477, r478, r479⟩
  unfold Seg13.relationPart6 at p6
  rcases p6 with ⟨r480, r481, r482, r483, r484, r485, r486, r487, r488, r489, r490, r491, r492, r493, r494, r495, r496, r497, r498, r499, r500, r501, r502, r503, r504, r505, r506, r507, r508, r509, r510, r511, r512, r513, r514, r515, r516, r517, r518, r519, r520, r521, r522, r523, r524, r525, r526, r527, r528, r529, r530, r531, r532, r533, r534, r535, r536, r537, r538, r539, r540, r541, r542, r543, r544, r545, r546, r547, r548, r549, r550, r551, r552, r553, r554, r555, r556, r557, r558, r559⟩
  unfold Seg13.relationPart7 at p7
  rcases p7 with ⟨r560, r561, r562, r563, r564, r565, r566, r567, r568, r569, r570, r571, r572, r573, r574, r575, r576, r577, r578, r579, r580, r581, r582, r583, r584, r585, r586, r587, r588, r589, r590, r591, r592, r593, r594, r595, r596, r597, r598, r599, r600, r601, r602, r603, r604, r605, r606, r607, r608, r609, r610, r611, r612, r613, r614, r615, r616, r617, r618, r619, r620, r621, r622, r623, r624, r625, r626, r627, r628, r629, r630, r631, r632, r633, r634, r635, r636, r637, r638, r639⟩
  unfold Seg13.relationPart8 at p8
  rcases p8 with ⟨r640, r641, r642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.relation (rho 94) (rho 95) (rho 96) (rho 7500) (rho 7501) (rho 7502) (rho 7503) (rho 7504) (rho 7505)
      (fun o0 o1 o2 o3 o4 => o0 = rho 7835 ∧ o1 = rho 7840 ∧ o2 = rho 7845 ∧ o3 = rho 7850 ∧ o4 = rho 7855) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.relation
    exact seg13_scp_node0_seg0 rho _ r293 r294 r295 r296 r297 (seg13_scp_node0_seg1 rho _ r298 r299 r300 r301 r302 (seg13_scp_node0_seg2 rho _ r303 r304 r305 r306 r307 (seg13_scp_node0_seg3 rho _ r308 r309 r310 r311 r312 (seg13_scp_node0_seg4 rho _ r313 r314 r315 r316 r317 (seg13_scp_node0_seg5 rho _ r318 r319 r320 r321 r322 (seg13_scp_node0_seg6 rho _ r323 r324 r325 r326 r327 (seg13_scp_node0_seg7 rho _ r328 r329 r330 r331 r332 (seg13_scp_node0_seg8 rho _ r333 r334 r335 r336 r337 (seg13_scp_node0_seg9 rho _ r338 r339 r340 r341 r342 (seg13_scp_node0_seg10 rho _ r343 r344 r345 r346 r347 (seg13_scp_node0_seg11 rho _ r348 r349 r350 r351 r352 (seg13_scp_node0_seg12 rho _ r353 r354 r355 r356 r357 (seg13_scp_node0_seg13 rho _ r358 r359 r360 r361 r362 (seg13_scp_node0_seg14 rho _ r363 r364 r365 r366 r367 (seg13_scp_node0_seg15 rho _ r368 r369 r370 r371 r372 (seg13_scp_node0_seg16 rho _ r373 r374 r375 r376 r377 (seg13_scp_node0_seg17 rho _ r378 r379 r380 r381 r382 (seg13_scp_node0_seg18 rho _ r383 r384 r385 r386 r387 (seg13_scp_node0_seg19 rho _ r388 r389 r390 r391 r392 (seg13_scp_node0_seg20 rho _ r393 r394 r395 r396 r397 (seg13_scp_node0_seg21 rho _ r398 r399 r400 r401 r402 (seg13_scp_node0_seg22 rho _ r403 r404 r405 r406 r407 (seg13_scp_node0_seg23 rho _ r408 r409 r410 r411 r412 (seg13_scp_node0_seg24 rho _ r413 r414 r415 r416 r417 (seg13_scp_node0_seg25 rho _ r418 r419 r420 r421 r422 (seg13_scp_node0_seg26 rho _ r423 r424 r425 r426 r427 (seg13_scp_node0_seg27 rho _ r428 r429 r430 r431 r432 (seg13_scp_node0_seg28 rho _ r433 r434 r435 r436 r437 (seg13_scp_node0_seg29 rho _ r438 r439 r440 r441 r442 (seg13_scp_node0_seg30 rho _ r443 r444 r445 r446 r447 (seg13_scp_node0_seg31 rho _ r448 r449 r450 r451 r452 (seg13_scp_node0_seg32 rho _ r453 r454 r455 r456 r457 (seg13_scp_node0_seg33 rho _ r458 r459 r460 r461 r462 (seg13_scp_node0_seg34 rho _ r463 r464 r465 r466 r467 (seg13_scp_node0_seg35 rho _ r468 r469 r470 r471 r472 (seg13_scp_node0_seg36 rho _ r473 r474 r475 r476 r477 (seg13_scp_node0_seg37 rho _ r478 r479 r480 r481 r482 (seg13_scp_node0_seg38 rho _ r483 r484 r485 r486 r487 (seg13_scp_node0_seg39 rho _ r488 r489 r490 r491 r492 (seg13_scp_node0_seg40 rho _ r493 r494 r495 r496 r497 (seg13_scp_node0_seg41 rho _ r498 r499 r500 r501 r502 (seg13_scp_node0_seg42 rho _ r503 r504 r505 r506 r507 (seg13_scp_node0_seg43 rho _ r508 r509 r510 r511 r512 (seg13_scp_node0_seg44 rho _ r513 r514 r515 r516 r517 (seg13_scp_node0_seg45 rho _ r518 r519 r520 r521 r522 (seg13_scp_node0_seg46 rho _ r523 r524 r525 r526 r527 (seg13_scp_node0_seg47 rho _ r528 r529 r530 r531 r532 (seg13_scp_node0_seg48 rho _ r533 r534 r535 r536 r537 (seg13_scp_node0_seg49 rho _ r538 r539 r540 r541 r542 (seg13_scp_node0_seg50 rho _ r543 r544 r545 r546 r547 (seg13_scp_node0_seg51 rho _ r548 r549 r550 r551 r552 (seg13_scp_node0_seg52 rho _ r553 r554 r555 r556 r557 (seg13_scp_node0_seg53 rho _ r558 r559 r560 r561 r562 (seg13_scp_node0_seg54 rho _ r563 r564 r565 r566 r567 (seg13_scp_node0_seg55 rho _ r568 r569 r570 r571 r572 (seg13_scp_node0_seg56 rho _ r573 r574 r575 r576 r577 (seg13_scp_node0_seg57 rho _ r578 r579 r580 r581 r582 (seg13_scp_node0_seg58 rho _ r583 r584 r585 r586 r587 (seg13_scp_node0_seg59 rho _ r588 r589 r590 r591 r592 (seg13_scp_node0_seg60 rho _ r593 r594 r595 r596 r597 (seg13_scp_node0_seg61 rho _ r598 r599 r600 r601 r602 (seg13_scp_node0_seg62 rho _ r603 r604 r605 r606 r607 (seg13_scp_node0_seg63 rho _ r608 r609 r610 r611 r612 (seg13_scp_node0_seg64 rho _ r613 r614 r615 r616 r617 (seg13_scp_node0_seg65 rho _ r618 r619 r620 r621 r622 (seg13_scp_node0_seg66 rho _ r623 r624 r625 r626 r627 (seg13_scp_node0_seg67 rho _ r628 r629 r630 r631 r632 (seg13_scp_node0_seg68 rho _ r633 r634 r635 r636 r637 (seg13_scp_node0_seg69 rho _ r638 r639 r640 r641 r642 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.relation_sound_permSpec (rho 94) (rho 95) (rho 96) (rho 7500) (rho 7501) (rho 7502) (rho 7503) (rho 7504) (rho 7505) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.tctNode1DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.F) + (1 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode0Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

