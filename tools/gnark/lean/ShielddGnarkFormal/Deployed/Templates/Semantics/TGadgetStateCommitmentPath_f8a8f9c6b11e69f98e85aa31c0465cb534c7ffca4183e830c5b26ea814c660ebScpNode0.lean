import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode0Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode0Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode0Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode0Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode0Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode0Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode0Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode0.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node0_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation rho) :
    seg13ScpNode0Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (1 : F))
        (rho 285 + rho 286) (rho 287 + rho 288 + rho 289)
        (rho 287 + rho 291 + rho 292) (rho 290 + rho 293) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r293, r294, r295, r296, r297, r298, r299, r300, r301, r302, r303, r304, r305, r306, r307, r308, r309, r310, r311, r312, r313, r314, r315, r316, r317, r318, r319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart4 at p4
  rcases p4 with ⟨r320, r321, r322, r323, r324, r325, r326, r327, r328, r329, r330, r331, r332, r333, r334, r335, r336, r337, r338, r339, r340, r341, r342, r343, r344, r345, r346, r347, r348, r349, r350, r351, r352, r353, r354, r355, r356, r357, r358, r359, r360, r361, r362, r363, r364, r365, r366, r367, r368, r369, r370, r371, r372, r373, r374, r375, r376, r377, r378, r379, r380, r381, r382, r383, r384, r385, r386, r387, r388, r389, r390, r391, r392, r393, r394, r395, r396, r397, r398, r399⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart5 at p5
  rcases p5 with ⟨r400, r401, r402, r403, r404, r405, r406, r407, r408, r409, r410, r411, r412, r413, r414, r415, r416, r417, r418, r419, r420, r421, r422, r423, r424, r425, r426, r427, r428, r429, r430, r431, r432, r433, r434, r435, r436, r437, r438, r439, r440, r441, r442, r443, r444, r445, r446, r447, r448, r449, r450, r451, r452, r453, r454, r455, r456, r457, r458, r459, r460, r461, r462, r463, r464, r465, r466, r467, r468, r469, r470, r471, r472, r473, r474, r475, r476, r477, r478, r479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart6 at p6
  rcases p6 with ⟨r480, r481, r482, r483, r484, r485, r486, r487, r488, r489, r490, r491, r492, r493, r494, r495, r496, r497, r498, r499, r500, r501, r502, r503, r504, r505, r506, r507, r508, r509, r510, r511, r512, r513, r514, r515, r516, r517, r518, r519, r520, r521, r522, r523, r524, r525, r526, r527, r528, r529, r530, r531, r532, r533, r534, r535, r536, r537, r538, r539, r540, r541, r542, r543, r544, r545, r546, r547, r548, r549, r550, r551, r552, r553, r554, r555, r556, r557, r558, r559⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart7 at p7
  rcases p7 with ⟨r560, r561, r562, r563, r564, r565, r566, r567, r568, r569, r570, r571, r572, r573, r574, r575, r576, r577, r578, r579, r580, r581, r582, r583, r584, r585, r586, r587, r588, r589, r590, r591, r592, r593, r594, r595, r596, r597, r598, r599, r600, r601, r602, r603, r604, r605, r606, r607, r608, r609, r610, r611, r612, r613, r614, r615, r616, r617, r618, r619, r620, r621, r622, r623, r624, r625, r626, r627, r628, r629, r630, r631, r632, r633, r634, r635, r636, r637, r638, r639⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart8 at p8
  rcases p8 with ⟨r640, r641, r642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.relation (rho 285) (rho 287) (rho 290) (rho 286) (rho 288) (rho 289) (rho 291) (rho 292) (rho 293)
      (fun o0 o1 o2 o3 o4 => o0 = rho 623 ∧ o1 = rho 628 ∧ o2 = rho 633 ∧ o3 = rho 638 ∧ o4 = rho 643) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_9a4a8f.relation
    exact template_scp_node0_seg0 rho _ r293 r294 r295 r296 r297 (template_scp_node0_seg1 rho _ r298 r299 r300 r301 r302 (template_scp_node0_seg2 rho _ r303 r304 r305 r306 r307 (template_scp_node0_seg3 rho _ r308 r309 r310 r311 r312 (template_scp_node0_seg4 rho _ r313 r314 r315 r316 r317 (template_scp_node0_seg5 rho _ r318 r319 r320 r321 r322 (template_scp_node0_seg6 rho _ r323 r324 r325 r326 r327 (template_scp_node0_seg7 rho _ r328 r329 r330 r331 r332 (template_scp_node0_seg8 rho _ r333 r334 r335 r336 r337 (template_scp_node0_seg9 rho _ r338 r339 r340 r341 r342 (template_scp_node0_seg10 rho _ r343 r344 r345 r346 r347 (template_scp_node0_seg11 rho _ r348 r349 r350 r351 r352 (template_scp_node0_seg12 rho _ r353 r354 r355 r356 r357 (template_scp_node0_template rho _ r358 r359 r360 r361 r362 (template_scp_node0_seg14 rho _ r363 r364 r365 r366 r367 (template_scp_node0_seg15 rho _ r368 r369 r370 r371 r372 (template_scp_node0_seg16 rho _ r373 r374 r375 r376 r377 (template_scp_node0_seg17 rho _ r378 r379 r380 r381 r382 (template_scp_node0_seg18 rho _ r383 r384 r385 r386 r387 (template_scp_node0_seg19 rho _ r388 r389 r390 r391 r392 (template_scp_node0_seg20 rho _ r393 r394 r395 r396 r397 (template_scp_node0_seg21 rho _ r398 r399 r400 r401 r402 (template_scp_node0_seg22 rho _ r403 r404 r405 r406 r407 (template_scp_node0_seg23 rho _ r408 r409 r410 r411 r412 (template_scp_node0_seg24 rho _ r413 r414 r415 r416 r417 (template_scp_node0_seg25 rho _ r418 r419 r420 r421 r422 (template_scp_node0_seg26 rho _ r423 r424 r425 r426 r427 (template_scp_node0_seg27 rho _ r428 r429 r430 r431 r432 (template_scp_node0_seg28 rho _ r433 r434 r435 r436 r437 (template_scp_node0_seg29 rho _ r438 r439 r440 r441 r442 (template_scp_node0_seg30 rho _ r443 r444 r445 r446 r447 (template_scp_node0_seg31 rho _ r448 r449 r450 r451 r452 (template_scp_node0_seg32 rho _ r453 r454 r455 r456 r457 (template_scp_node0_seg33 rho _ r458 r459 r460 r461 r462 (template_scp_node0_seg34 rho _ r463 r464 r465 r466 r467 (template_scp_node0_seg35 rho _ r468 r469 r470 r471 r472 (template_scp_node0_seg36 rho _ r473 r474 r475 r476 r477 (template_scp_node0_seg37 rho _ r478 r479 r480 r481 r482 (template_scp_node0_seg38 rho _ r483 r484 r485 r486 r487 (template_scp_node0_seg39 rho _ r488 r489 r490 r491 r492 (template_scp_node0_seg40 rho _ r493 r494 r495 r496 r497 (template_scp_node0_seg41 rho _ r498 r499 r500 r501 r502 (template_scp_node0_seg42 rho _ r503 r504 r505 r506 r507 (template_scp_node0_seg43 rho _ r508 r509 r510 r511 r512 (template_scp_node0_seg44 rho _ r513 r514 r515 r516 r517 (template_scp_node0_seg45 rho _ r518 r519 r520 r521 r522 (template_scp_node0_seg46 rho _ r523 r524 r525 r526 r527 (template_scp_node0_seg47 rho _ r528 r529 r530 r531 r532 (template_scp_node0_seg48 rho _ r533 r534 r535 r536 r537 (template_scp_node0_seg49 rho _ r538 r539 r540 r541 r542 (template_scp_node0_seg50 rho _ r543 r544 r545 r546 r547 (template_scp_node0_seg51 rho _ r548 r549 r550 r551 r552 (template_scp_node0_seg52 rho _ r553 r554 r555 r556 r557 (template_scp_node0_seg53 rho _ r558 r559 r560 r561 r562 (template_scp_node0_seg54 rho _ r563 r564 r565 r566 r567 (template_scp_node0_seg55 rho _ r568 r569 r570 r571 r572 (template_scp_node0_seg56 rho _ r573 r574 r575 r576 r577 (template_scp_node0_seg57 rho _ r578 r579 r580 r581 r582 (template_scp_node0_seg58 rho _ r583 r584 r585 r586 r587 (template_scp_node0_seg59 rho _ r588 r589 r590 r591 r592 (template_scp_node0_seg60 rho _ r593 r594 r595 r596 r597 (template_scp_node0_seg61 rho _ r598 r599 r600 r601 r602 (template_scp_node0_seg62 rho _ r603 r604 r605 r606 r607 (template_scp_node0_seg63 rho _ r608 r609 r610 r611 r612 (template_scp_node0_seg64 rho _ r613 r614 r615 r616 r617 (template_scp_node0_seg65 rho _ r618 r619 r620 r621 r622 (template_scp_node0_seg66 rho _ r623 r624 r625 r626 r627 (template_scp_node0_seg67 rho _ r628 r629 r630 r631 r632 (template_scp_node0_seg68 rho _ r633 r634 r635 r636 r637 (template_scp_node0_seg69 rho _ r638 r639 r640 r641 r642 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.relation_sound_permSpec (rho 285) (rho 287) (rho 290) (rho 286) (rho 288) (rho 289) (rho 291) (rho 292) (rho 293) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.tctNode1DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.F) + (1 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode0Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode0.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

