import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node3_seg20 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1485 : Seg13.relationRow1485 rho)
    (r1486 : Seg13.relationRow1486 rho)
    (r1487 : Seg13.relationRow1487 rho)
    (r1488 : Seg13.relationRow1488 rho)
    (r1489 : Seg13.relationRow1489 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg20 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) next := by
  exact ⟨rho 8686, rho 8687, rho 8688, rho 8689, rho 8690, r1485, r1486, r1487, r1488, r1489, tail⟩

theorem seg13_scp_node3_seg21 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1490 : Seg13.relationRow1490 rho)
    (r1491 : Seg13.relationRow1491 rho)
    (r1492 : Seg13.relationRow1492 rho)
    (r1493 : Seg13.relationRow1493 rho)
    (r1494 : Seg13.relationRow1494 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg21 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) next := by
  exact ⟨rho 8691, rho 8692, rho 8693, rho 8694, rho 8695, r1490, r1491, r1492, r1493, r1494, tail⟩

theorem seg13_scp_node3_seg22 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1495 : Seg13.relationRow1495 rho)
    (r1496 : Seg13.relationRow1496 rho)
    (r1497 : Seg13.relationRow1497 rho)
    (r1498 : Seg13.relationRow1498 rho)
    (r1499 : Seg13.relationRow1499 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg22 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) next := by
  exact ⟨rho 8696, rho 8697, rho 8698, rho 8699, rho 8700, r1495, r1496, r1497, r1498, r1499, tail⟩

theorem seg13_scp_node3_seg23 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1500 : Seg13.relationRow1500 rho)
    (r1501 : Seg13.relationRow1501 rho)
    (r1502 : Seg13.relationRow1502 rho)
    (r1503 : Seg13.relationRow1503 rho)
    (r1504 : Seg13.relationRow1504 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg23 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) next := by
  exact ⟨rho 8701, rho 8702, rho 8703, rho 8704, rho 8705, r1500, r1501, r1502, r1503, r1504, tail⟩

theorem seg13_scp_node3_seg24 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1505 : Seg13.relationRow1505 rho)
    (r1506 : Seg13.relationRow1506 rho)
    (r1507 : Seg13.relationRow1507 rho)
    (r1508 : Seg13.relationRow1508 rho)
    (r1509 : Seg13.relationRow1509 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg24 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) next := by
  exact ⟨rho 8706, rho 8707, rho 8708, rho 8709, rho 8710, r1505, r1506, r1507, r1508, r1509, tail⟩

theorem seg13_scp_node3_seg25 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1510 : Seg13.relationRow1510 rho)
    (r1511 : Seg13.relationRow1511 rho)
    (r1512 : Seg13.relationRow1512 rho)
    (r1513 : Seg13.relationRow1513 rho)
    (r1514 : Seg13.relationRow1514 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg25 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) next := by
  exact ⟨rho 8711, rho 8712, rho 8713, rho 8714, rho 8715, r1510, r1511, r1512, r1513, r1514, tail⟩

theorem seg13_scp_node3_seg26 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1515 : Seg13.relationRow1515 rho)
    (r1516 : Seg13.relationRow1516 rho)
    (r1517 : Seg13.relationRow1517 rho)
    (r1518 : Seg13.relationRow1518 rho)
    (r1519 : Seg13.relationRow1519 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg26 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) next := by
  exact ⟨rho 8716, rho 8717, rho 8718, rho 8719, rho 8720, r1515, r1516, r1517, r1518, r1519, tail⟩

theorem seg13_scp_node3_seg27 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1520 : Seg13.relationRow1520 rho)
    (r1521 : Seg13.relationRow1521 rho)
    (r1522 : Seg13.relationRow1522 rho)
    (r1523 : Seg13.relationRow1523 rho)
    (r1524 : Seg13.relationRow1524 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg27 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) next := by
  exact ⟨rho 8721, rho 8722, rho 8723, rho 8724, rho 8725, r1520, r1521, r1522, r1523, r1524, tail⟩

theorem seg13_scp_node3_seg28 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1525 : Seg13.relationRow1525 rho)
    (r1526 : Seg13.relationRow1526 rho)
    (r1527 : Seg13.relationRow1527 rho)
    (r1528 : Seg13.relationRow1528 rho)
    (r1529 : Seg13.relationRow1529 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725) (rho 8730)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg28 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725) next := by
  exact ⟨rho 8726, rho 8727, rho 8728, rho 8729, rho 8730, r1525, r1526, r1527, r1528, r1529, tail⟩

theorem seg13_scp_node3_seg29 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1530 : Seg13.relationRow1530 rho)
    (r1531 : Seg13.relationRow1531 rho)
    (r1532 : Seg13.relationRow1532 rho)
    (r1533 : Seg13.relationRow1533 rho)
    (r1534 : Seg13.relationRow1534 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725) (rho 8730) (rho 8735)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg29 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725) (rho 8730) next := by
  exact ⟨rho 8731, rho 8732, rho 8733, rho 8734, rho 8735, r1530, r1531, r1532, r1533, r1534, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

