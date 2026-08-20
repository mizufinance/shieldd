import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode22Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode22Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode22Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode22Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode22Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode22Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode22Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode22.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node22_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation rho) :
    seg37ScpNode22Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (23 : F))
        (rho 8276 + rho 8277) (rho 8278 + rho 8279 + rho 8280)
        (rho 8278 + rho 8282 + rho 8283) (rho 8281 + rho 8284) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation at h
  rcases h with ⟨
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
    _, _, _, p103, p104, p105, p106, p107, p108, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart103 at p103
  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8301, r8302, r8303, r8304, r8305, r8306, r8307, r8308, r8309, r8310, r8311, r8312, r8313, r8314, r8315, r8316, r8317, r8318, r8319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart104 at p104
  rcases p104 with ⟨r8320, r8321, r8322, r8323, r8324, r8325, r8326, r8327, r8328, r8329, r8330, r8331, r8332, r8333, r8334, r8335, r8336, r8337, r8338, r8339, r8340, r8341, r8342, r8343, r8344, r8345, r8346, r8347, r8348, r8349, r8350, r8351, r8352, r8353, r8354, r8355, r8356, r8357, r8358, r8359, r8360, r8361, r8362, r8363, r8364, r8365, r8366, r8367, r8368, r8369, r8370, r8371, r8372, r8373, r8374, r8375, r8376, r8377, r8378, r8379, r8380, r8381, r8382, r8383, r8384, r8385, r8386, r8387, r8388, r8389, r8390, r8391, r8392, r8393, r8394, r8395, r8396, r8397, r8398, r8399⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart105 at p105
  rcases p105 with ⟨r8400, r8401, r8402, r8403, r8404, r8405, r8406, r8407, r8408, r8409, r8410, r8411, r8412, r8413, r8414, r8415, r8416, r8417, r8418, r8419, r8420, r8421, r8422, r8423, r8424, r8425, r8426, r8427, r8428, r8429, r8430, r8431, r8432, r8433, r8434, r8435, r8436, r8437, r8438, r8439, r8440, r8441, r8442, r8443, r8444, r8445, r8446, r8447, r8448, r8449, r8450, r8451, r8452, r8453, r8454, r8455, r8456, r8457, r8458, r8459, r8460, r8461, r8462, r8463, r8464, r8465, r8466, r8467, r8468, r8469, r8470, r8471, r8472, r8473, r8474, r8475, r8476, r8477, r8478, r8479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart106 at p106
  rcases p106 with ⟨r8480, r8481, r8482, r8483, r8484, r8485, r8486, r8487, r8488, r8489, r8490, r8491, r8492, r8493, r8494, r8495, r8496, r8497, r8498, r8499, r8500, r8501, r8502, r8503, r8504, r8505, r8506, r8507, r8508, r8509, r8510, r8511, r8512, r8513, r8514, r8515, r8516, r8517, r8518, r8519, r8520, r8521, r8522, r8523, r8524, r8525, r8526, r8527, r8528, r8529, r8530, r8531, r8532, r8533, r8534, r8535, r8536, r8537, r8538, r8539, r8540, r8541, r8542, r8543, r8544, r8545, r8546, r8547, r8548, r8549, r8550, r8551, r8552, r8553, r8554, r8555, r8556, r8557, r8558, r8559⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart107 at p107
  rcases p107 with ⟨r8560, r8561, r8562, r8563, r8564, r8565, r8566, r8567, r8568, r8569, r8570, r8571, r8572, r8573, r8574, r8575, r8576, r8577, r8578, r8579, r8580, r8581, r8582, r8583, r8584, r8585, r8586, r8587, r8588, r8589, r8590, r8591, r8592, r8593, r8594, r8595, r8596, r8597, r8598, r8599, r8600, r8601, r8602, r8603, r8604, r8605, r8606, r8607, r8608, r8609, r8610, r8611, r8612, r8613, r8614, r8615, r8616, r8617, r8618, r8619, r8620, r8621, r8622, r8623, r8624, r8625, r8626, r8627, r8628, r8629, r8630, r8631, r8632, r8633, r8634, r8635, r8636, r8637, r8638, r8639⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart108 at p108
  rcases p108 with ⟨r8640, r8641, r8642, r8643, r8644, r8645, r8646, r8647, r8648, r8649, r8650, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.relation (rho 8276) (rho 8278) (rho 8281) (rho 8277) (rho 8279) (rho 8280) (rho 8282) (rho 8283) (rho 8284)
      (fun o0 o1 o2 o3 o4 => o0 = rho 8614 ∧ o1 = rho 8619 ∧ o2 = rho 8624 ∧ o3 = rho 8629 ∧ o4 = rho 8634) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.relation
    exact template_scp_node22_seg0 rho _ r8301 r8302 r8303 r8304 r8305 (template_scp_node22_seg1 rho _ r8306 r8307 r8308 r8309 r8310 (template_scp_node22_seg2 rho _ r8311 r8312 r8313 r8314 r8315 (template_scp_node22_seg3 rho _ r8316 r8317 r8318 r8319 r8320 (template_scp_node22_seg4 rho _ r8321 r8322 r8323 r8324 r8325 (template_scp_node22_seg5 rho _ r8326 r8327 r8328 r8329 r8330 (template_scp_node22_seg6 rho _ r8331 r8332 r8333 r8334 r8335 (template_scp_node22_seg7 rho _ r8336 r8337 r8338 r8339 r8340 (template_scp_node22_seg8 rho _ r8341 r8342 r8343 r8344 r8345 (template_scp_node22_seg9 rho _ r8346 r8347 r8348 r8349 r8350 (template_scp_node22_seg10 rho _ r8351 r8352 r8353 r8354 r8355 (template_scp_node22_seg11 rho _ r8356 r8357 r8358 r8359 r8360 (template_scp_node22_seg12 rho _ r8361 r8362 r8363 r8364 r8365 (template_scp_node22_seg13 rho _ r8366 r8367 r8368 r8369 r8370 (template_scp_node22_seg14 rho _ r8371 r8372 r8373 r8374 r8375 (template_scp_node22_seg15 rho _ r8376 r8377 r8378 r8379 r8380 (template_scp_node22_seg16 rho _ r8381 r8382 r8383 r8384 r8385 (template_scp_node22_seg17 rho _ r8386 r8387 r8388 r8389 r8390 (template_scp_node22_seg18 rho _ r8391 r8392 r8393 r8394 r8395 (template_scp_node22_seg19 rho _ r8396 r8397 r8398 r8399 r8400 (template_scp_node22_seg20 rho _ r8401 r8402 r8403 r8404 r8405 (template_scp_node22_seg21 rho _ r8406 r8407 r8408 r8409 r8410 (template_scp_node22_seg22 rho _ r8411 r8412 r8413 r8414 r8415 (template_scp_node22_seg23 rho _ r8416 r8417 r8418 r8419 r8420 (template_scp_node22_seg24 rho _ r8421 r8422 r8423 r8424 r8425 (template_scp_node22_seg25 rho _ r8426 r8427 r8428 r8429 r8430 (template_scp_node22_seg26 rho _ r8431 r8432 r8433 r8434 r8435 (template_scp_node22_seg27 rho _ r8436 r8437 r8438 r8439 r8440 (template_scp_node22_seg28 rho _ r8441 r8442 r8443 r8444 r8445 (template_scp_node22_seg29 rho _ r8446 r8447 r8448 r8449 r8450 (template_scp_node22_seg30 rho _ r8451 r8452 r8453 r8454 r8455 (template_scp_node22_seg31 rho _ r8456 r8457 r8458 r8459 r8460 (template_scp_node22_seg32 rho _ r8461 r8462 r8463 r8464 r8465 (template_scp_node22_seg33 rho _ r8466 r8467 r8468 r8469 r8470 (template_scp_node22_seg34 rho _ r8471 r8472 r8473 r8474 r8475 (template_scp_node22_seg35 rho _ r8476 r8477 r8478 r8479 r8480 (template_scp_node22_seg36 rho _ r8481 r8482 r8483 r8484 r8485 (template_scp_node22_template rho _ r8486 r8487 r8488 r8489 r8490 (template_scp_node22_seg38 rho _ r8491 r8492 r8493 r8494 r8495 (template_scp_node22_seg39 rho _ r8496 r8497 r8498 r8499 r8500 (template_scp_node22_seg40 rho _ r8501 r8502 r8503 r8504 r8505 (template_scp_node22_seg41 rho _ r8506 r8507 r8508 r8509 r8510 (template_scp_node22_seg42 rho _ r8511 r8512 r8513 r8514 r8515 (template_scp_node22_seg43 rho _ r8516 r8517 r8518 r8519 r8520 (template_scp_node22_seg44 rho _ r8521 r8522 r8523 r8524 r8525 (template_scp_node22_seg45 rho _ r8526 r8527 r8528 r8529 r8530 (template_scp_node22_seg46 rho _ r8531 r8532 r8533 r8534 r8535 (template_scp_node22_seg47 rho _ r8536 r8537 r8538 r8539 r8540 (template_scp_node22_seg48 rho _ r8541 r8542 r8543 r8544 r8545 (template_scp_node22_seg49 rho _ r8546 r8547 r8548 r8549 r8550 (template_scp_node22_seg50 rho _ r8551 r8552 r8553 r8554 r8555 (template_scp_node22_seg51 rho _ r8556 r8557 r8558 r8559 r8560 (template_scp_node22_seg52 rho _ r8561 r8562 r8563 r8564 r8565 (template_scp_node22_seg53 rho _ r8566 r8567 r8568 r8569 r8570 (template_scp_node22_seg54 rho _ r8571 r8572 r8573 r8574 r8575 (template_scp_node22_seg55 rho _ r8576 r8577 r8578 r8579 r8580 (template_scp_node22_seg56 rho _ r8581 r8582 r8583 r8584 r8585 (template_scp_node22_seg57 rho _ r8586 r8587 r8588 r8589 r8590 (template_scp_node22_seg58 rho _ r8591 r8592 r8593 r8594 r8595 (template_scp_node22_seg59 rho _ r8596 r8597 r8598 r8599 r8600 (template_scp_node22_seg60 rho _ r8601 r8602 r8603 r8604 r8605 (template_scp_node22_seg61 rho _ r8606 r8607 r8608 r8609 r8610 (template_scp_node22_seg62 rho _ r8611 r8612 r8613 r8614 r8615 (template_scp_node22_seg63 rho _ r8616 r8617 r8618 r8619 r8620 (template_scp_node22_seg64 rho _ r8621 r8622 r8623 r8624 r8625 (template_scp_node22_seg65 rho _ r8626 r8627 r8628 r8629 r8630 (template_scp_node22_seg66 rho _ r8631 r8632 r8633 r8634 r8635 (template_scp_node22_seg67 rho _ r8636 r8637 r8638 r8639 r8640 (template_scp_node22_seg68 rho _ r8641 r8642 r8643 r8644 r8645 (template_scp_node22_seg69 rho _ r8646 r8647 r8648 r8649 r8650 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.relation_sound_permSpec (rho 8276) (rho 8278) (rho 8281) (rho 8277) (rho 8279) (rho 8280) (rho 8282) (rho 8283) (rho 8284) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.tctNode23DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.F) + (23 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg37ScpNode22Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode22.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
