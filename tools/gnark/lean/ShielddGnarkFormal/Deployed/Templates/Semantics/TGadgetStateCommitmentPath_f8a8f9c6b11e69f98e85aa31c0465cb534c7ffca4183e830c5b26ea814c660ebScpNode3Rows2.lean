import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node3_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1485 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1485 rho)
    (r1486 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1486 rho)
    (r1487 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1487 rho)
    (r1488 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1488 rho)
    (r1489 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1489 rho)
    (tail : next (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg20 (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) next := by
  exact ⟨rho 1483, rho 1484, rho 1485, rho 1486, rho 1487, r1485, r1486, r1487, r1488, r1489, tail⟩

theorem template_scp_node3_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1490 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1490 rho)
    (r1491 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1491 rho)
    (r1492 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1492 rho)
    (r1493 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1493 rho)
    (r1494 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1494 rho)
    (tail : next (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg21 (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) next := by
  exact ⟨rho 1488, rho 1489, rho 1490, rho 1491, rho 1492, r1490, r1491, r1492, r1493, r1494, tail⟩

theorem template_scp_node3_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1495 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1495 rho)
    (r1496 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1496 rho)
    (r1497 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1497 rho)
    (r1498 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1498 rho)
    (r1499 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1499 rho)
    (tail : next (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg22 (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) next := by
  exact ⟨rho 1493, rho 1494, rho 1495, rho 1496, rho 1497, r1495, r1496, r1497, r1498, r1499, tail⟩

theorem template_scp_node3_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r1500 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1500 rho)
    (r1501 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1501 rho)
    (r1502 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1502 rho)
    (r1503 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1503 rho)
    (r1504 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1504 rho)
    (tail : next (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg23 (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) next := by
  exact ⟨rho 1498, rho 1499, rho 1500, rho 1501, rho 1502, r1500, r1501, r1502, r1503, r1504, tail⟩

theorem template_scp_node3_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1505 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1505 rho)
    (r1506 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1506 rho)
    (r1507 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1507 rho)
    (r1508 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1508 rho)
    (r1509 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1509 rho)
    (tail : next (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg24 (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) next := by
  exact ⟨rho 1503, rho 1504, rho 1505, rho 1506, rho 1507, r1505, r1506, r1507, r1508, r1509, tail⟩

theorem template_scp_node3_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1510 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1510 rho)
    (r1511 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1511 rho)
    (r1512 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1512 rho)
    (r1513 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1513 rho)
    (r1514 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1514 rho)
    (tail : next (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg25 (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) next := by
  exact ⟨rho 1508, rho 1509, rho 1510, rho 1511, rho 1512, r1510, r1511, r1512, r1513, r1514, tail⟩

theorem template_scp_node3_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1515 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1515 rho)
    (r1516 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1516 rho)
    (r1517 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1517 rho)
    (r1518 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1518 rho)
    (r1519 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1519 rho)
    (tail : next (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg26 (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) next := by
  exact ⟨rho 1513, rho 1514, rho 1515, rho 1516, rho 1517, r1515, r1516, r1517, r1518, r1519, tail⟩

theorem template_scp_node3_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1520 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1520 rho)
    (r1521 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1521 rho)
    (r1522 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1522 rho)
    (r1523 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1523 rho)
    (r1524 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1524 rho)
    (tail : next (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg27 (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) next := by
  exact ⟨rho 1518, rho 1519, rho 1520, rho 1521, rho 1522, r1520, r1521, r1522, r1523, r1524, tail⟩

theorem template_scp_node3_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1525 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1525 rho)
    (r1526 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1526 rho)
    (r1527 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1527 rho)
    (r1528 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1528 rho)
    (r1529 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1529 rho)
    (tail : next (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg28 (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) next := by
  exact ⟨rho 1523, rho 1524, rho 1525, rho 1526, rho 1527, r1525, r1526, r1527, r1528, r1529, tail⟩

theorem template_scp_node3_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1530 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1530 rho)
    (r1531 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1531 rho)
    (r1532 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1532 rho)
    (r1533 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1533 rho)
    (r1534 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow1534 rho)
    (tail : next (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) (rho 1532)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg29 (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487) (rho 1492) (rho 1497) (rho 1502) (rho 1507) (rho 1512) (rho 1517) (rho 1522) (rho 1527) next := by
  exact ⟨rho 1528, rho 1529, rho 1530, rho 1531, rho 1532, r1530, r1531, r1532, r1533, r1534, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

