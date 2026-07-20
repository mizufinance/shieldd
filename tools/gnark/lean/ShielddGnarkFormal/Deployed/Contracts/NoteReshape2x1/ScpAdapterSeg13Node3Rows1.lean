import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node3_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1435 : Seg13.relationRow1435 rho)
    (r1436 : Seg13.relationRow1436 rho)
    (r1437 : Seg13.relationRow1437 rho)
    (r1438 : Seg13.relationRow1438 rho)
    (r1439 : Seg13.relationRow1439 rho)
    (tail : next (rho 8604) (rho 8609) (rho 8614) (rho 8619) (rho 8624) (rho 8629) (rho 8634)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg10 (rho 8604) (rho 8609) (rho 8614) (rho 8619) (rho 8624) (rho 8629) next := by
  exact ⟨rho 8630, rho 8631, rho 8632, rho 8633, rho 8634, r1435, r1436, r1437, r1438, r1439, tail⟩

theorem seg13_scp_node3_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1440 : Seg13.relationRow1440 rho)
    (r1441 : Seg13.relationRow1441 rho)
    (r1442 : Seg13.relationRow1442 rho)
    (r1443 : Seg13.relationRow1443 rho)
    (r1444 : Seg13.relationRow1444 rho)
    (tail : next (rho 8604) (rho 8609) (rho 8614) (rho 8619) (rho 8624) (rho 8629) (rho 8634) (rho 8639)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg11 (rho 8604) (rho 8609) (rho 8614) (rho 8619) (rho 8624) (rho 8629) (rho 8634) next := by
  exact ⟨rho 8635, rho 8636, rho 8637, rho 8638, rho 8639, r1440, r1441, r1442, r1443, r1444, tail⟩

theorem seg13_scp_node3_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1445 : Seg13.relationRow1445 rho)
    (r1446 : Seg13.relationRow1446 rho)
    (r1447 : Seg13.relationRow1447 rho)
    (r1448 : Seg13.relationRow1448 rho)
    (r1449 : Seg13.relationRow1449 rho)
    (tail : next (rho 8604) (rho 8609) (rho 8614) (rho 8619) (rho 8624) (rho 8629) (rho 8634) (rho 8639) (rho 8644)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg12 (rho 8604) (rho 8609) (rho 8614) (rho 8619) (rho 8624) (rho 8629) (rho 8634) (rho 8639) next := by
  exact ⟨rho 8640, rho 8641, rho 8642, rho 8643, rho 8644, r1445, r1446, r1447, r1448, r1449, tail⟩

theorem seg13_scp_node3_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1450 : Seg13.relationRow1450 rho)
    (r1451 : Seg13.relationRow1451 rho)
    (r1452 : Seg13.relationRow1452 rho)
    (r1453 : Seg13.relationRow1453 rho)
    (r1454 : Seg13.relationRow1454 rho)
    (tail : next (rho 8629) (rho 8634) (rho 8639) (rho 8644) (rho 8649)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg13 (rho 8604) (rho 8609) (rho 8614) (rho 8619) (rho 8624) (rho 8629) (rho 8634) (rho 8639) (rho 8644) next := by
  exact ⟨rho 8645, rho 8646, rho 8647, rho 8648, rho 8649, r1450, r1451, r1452, r1453, r1454, tail⟩

theorem seg13_scp_node3_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1455 : Seg13.relationRow1455 rho)
    (r1456 : Seg13.relationRow1456 rho)
    (r1457 : Seg13.relationRow1457 rho)
    (r1458 : Seg13.relationRow1458 rho)
    (r1459 : Seg13.relationRow1459 rho)
    (tail : next (rho 8629) (rho 8634) (rho 8639) (rho 8644) (rho 8649) (rho 8654)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg14 (rho 8629) (rho 8634) (rho 8639) (rho 8644) (rho 8649) next := by
  exact ⟨rho 8650, rho 8651, rho 8652, rho 8653, rho 8654, r1455, r1456, r1457, r1458, r1459, tail⟩

theorem seg13_scp_node3_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1460 : Seg13.relationRow1460 rho)
    (r1461 : Seg13.relationRow1461 rho)
    (r1462 : Seg13.relationRow1462 rho)
    (r1463 : Seg13.relationRow1463 rho)
    (r1464 : Seg13.relationRow1464 rho)
    (tail : next (rho 8629) (rho 8634) (rho 8639) (rho 8644) (rho 8649) (rho 8654) (rho 8659)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg15 (rho 8629) (rho 8634) (rho 8639) (rho 8644) (rho 8649) (rho 8654) next := by
  exact ⟨rho 8655, rho 8656, rho 8657, rho 8658, rho 8659, r1460, r1461, r1462, r1463, r1464, tail⟩

theorem seg13_scp_node3_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1465 : Seg13.relationRow1465 rho)
    (r1466 : Seg13.relationRow1466 rho)
    (r1467 : Seg13.relationRow1467 rho)
    (r1468 : Seg13.relationRow1468 rho)
    (r1469 : Seg13.relationRow1469 rho)
    (tail : next (rho 8629) (rho 8634) (rho 8639) (rho 8644) (rho 8649) (rho 8654) (rho 8659) (rho 8664)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg16 (rho 8629) (rho 8634) (rho 8639) (rho 8644) (rho 8649) (rho 8654) (rho 8659) next := by
  exact ⟨rho 8660, rho 8661, rho 8662, rho 8663, rho 8664, r1465, r1466, r1467, r1468, r1469, tail⟩

theorem seg13_scp_node3_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1470 : Seg13.relationRow1470 rho)
    (r1471 : Seg13.relationRow1471 rho)
    (r1472 : Seg13.relationRow1472 rho)
    (r1473 : Seg13.relationRow1473 rho)
    (r1474 : Seg13.relationRow1474 rho)
    (tail : next (rho 8629) (rho 8634) (rho 8639) (rho 8644) (rho 8649) (rho 8654) (rho 8659) (rho 8664) (rho 8669)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg17 (rho 8629) (rho 8634) (rho 8639) (rho 8644) (rho 8649) (rho 8654) (rho 8659) (rho 8664) next := by
  exact ⟨rho 8665, rho 8666, rho 8667, rho 8668, rho 8669, r1470, r1471, r1472, r1473, r1474, tail⟩

theorem seg13_scp_node3_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1475 : Seg13.relationRow1475 rho)
    (r1476 : Seg13.relationRow1476 rho)
    (r1477 : Seg13.relationRow1477 rho)
    (r1478 : Seg13.relationRow1478 rho)
    (r1479 : Seg13.relationRow1479 rho)
    (tail : next (rho 8654) (rho 8659) (rho 8664) (rho 8669) (rho 8674)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg18 (rho 8629) (rho 8634) (rho 8639) (rho 8644) (rho 8649) (rho 8654) (rho 8659) (rho 8664) (rho 8669) next := by
  exact ⟨rho 8670, rho 8671, rho 8672, rho 8673, rho 8674, r1475, r1476, r1477, r1478, r1479, tail⟩

theorem seg13_scp_node3_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1480 : Seg13.relationRow1480 rho)
    (r1481 : Seg13.relationRow1481 rho)
    (r1482 : Seg13.relationRow1482 rho)
    (r1483 : Seg13.relationRow1483 rho)
    (r1484 : Seg13.relationRow1484 rho)
    (tail : next (rho 8654) (rho 8659) (rho 8664) (rho 8669) (rho 8674) (rho 8679)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg19 (rho 8654) (rho 8659) (rho 8664) (rho 8669) (rho 8674) next := by
  exact ⟨rho 8675, rho 8676, rho 8677, rho 8678, rho 8679, r1480, r1481, r1482, r1483, r1484, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

