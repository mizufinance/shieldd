import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node3_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1435 : Seg28.relationRow1435 rho)
    (r1436 : Seg28.relationRow1436 rho)
    (r1437 : Seg28.relationRow1437 rho)
    (r1438 : Seg28.relationRow1438 rho)
    (r1439 : Seg28.relationRow1439 rho)
    (tail : next (rho 20791) (rho 20796) (rho 20801) (rho 20806) (rho 20811) (rho 20816) (rho 20821)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg10 (rho 20791) (rho 20796) (rho 20801) (rho 20806) (rho 20811) (rho 20816) next := by
  exact ⟨rho 20817, rho 20818, rho 20819, rho 20820, rho 20821, r1435, r1436, r1437, r1438, r1439, tail⟩

theorem seg28_scp_node3_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1440 : Seg28.relationRow1440 rho)
    (r1441 : Seg28.relationRow1441 rho)
    (r1442 : Seg28.relationRow1442 rho)
    (r1443 : Seg28.relationRow1443 rho)
    (r1444 : Seg28.relationRow1444 rho)
    (tail : next (rho 20791) (rho 20796) (rho 20801) (rho 20806) (rho 20811) (rho 20816) (rho 20821) (rho 20826)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg11 (rho 20791) (rho 20796) (rho 20801) (rho 20806) (rho 20811) (rho 20816) (rho 20821) next := by
  exact ⟨rho 20822, rho 20823, rho 20824, rho 20825, rho 20826, r1440, r1441, r1442, r1443, r1444, tail⟩

theorem seg28_scp_node3_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1445 : Seg28.relationRow1445 rho)
    (r1446 : Seg28.relationRow1446 rho)
    (r1447 : Seg28.relationRow1447 rho)
    (r1448 : Seg28.relationRow1448 rho)
    (r1449 : Seg28.relationRow1449 rho)
    (tail : next (rho 20791) (rho 20796) (rho 20801) (rho 20806) (rho 20811) (rho 20816) (rho 20821) (rho 20826) (rho 20831)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg12 (rho 20791) (rho 20796) (rho 20801) (rho 20806) (rho 20811) (rho 20816) (rho 20821) (rho 20826) next := by
  exact ⟨rho 20827, rho 20828, rho 20829, rho 20830, rho 20831, r1445, r1446, r1447, r1448, r1449, tail⟩

theorem seg28_scp_node3_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1450 : Seg28.relationRow1450 rho)
    (r1451 : Seg28.relationRow1451 rho)
    (r1452 : Seg28.relationRow1452 rho)
    (r1453 : Seg28.relationRow1453 rho)
    (r1454 : Seg28.relationRow1454 rho)
    (tail : next (rho 20816) (rho 20821) (rho 20826) (rho 20831) (rho 20836)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg13 (rho 20791) (rho 20796) (rho 20801) (rho 20806) (rho 20811) (rho 20816) (rho 20821) (rho 20826) (rho 20831) next := by
  exact ⟨rho 20832, rho 20833, rho 20834, rho 20835, rho 20836, r1450, r1451, r1452, r1453, r1454, tail⟩

theorem seg28_scp_node3_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1455 : Seg28.relationRow1455 rho)
    (r1456 : Seg28.relationRow1456 rho)
    (r1457 : Seg28.relationRow1457 rho)
    (r1458 : Seg28.relationRow1458 rho)
    (r1459 : Seg28.relationRow1459 rho)
    (tail : next (rho 20816) (rho 20821) (rho 20826) (rho 20831) (rho 20836) (rho 20841)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg14 (rho 20816) (rho 20821) (rho 20826) (rho 20831) (rho 20836) next := by
  exact ⟨rho 20837, rho 20838, rho 20839, rho 20840, rho 20841, r1455, r1456, r1457, r1458, r1459, tail⟩

theorem seg28_scp_node3_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1460 : Seg28.relationRow1460 rho)
    (r1461 : Seg28.relationRow1461 rho)
    (r1462 : Seg28.relationRow1462 rho)
    (r1463 : Seg28.relationRow1463 rho)
    (r1464 : Seg28.relationRow1464 rho)
    (tail : next (rho 20816) (rho 20821) (rho 20826) (rho 20831) (rho 20836) (rho 20841) (rho 20846)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg15 (rho 20816) (rho 20821) (rho 20826) (rho 20831) (rho 20836) (rho 20841) next := by
  exact ⟨rho 20842, rho 20843, rho 20844, rho 20845, rho 20846, r1460, r1461, r1462, r1463, r1464, tail⟩

theorem seg28_scp_node3_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1465 : Seg28.relationRow1465 rho)
    (r1466 : Seg28.relationRow1466 rho)
    (r1467 : Seg28.relationRow1467 rho)
    (r1468 : Seg28.relationRow1468 rho)
    (r1469 : Seg28.relationRow1469 rho)
    (tail : next (rho 20816) (rho 20821) (rho 20826) (rho 20831) (rho 20836) (rho 20841) (rho 20846) (rho 20851)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg16 (rho 20816) (rho 20821) (rho 20826) (rho 20831) (rho 20836) (rho 20841) (rho 20846) next := by
  exact ⟨rho 20847, rho 20848, rho 20849, rho 20850, rho 20851, r1465, r1466, r1467, r1468, r1469, tail⟩

theorem seg28_scp_node3_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1470 : Seg28.relationRow1470 rho)
    (r1471 : Seg28.relationRow1471 rho)
    (r1472 : Seg28.relationRow1472 rho)
    (r1473 : Seg28.relationRow1473 rho)
    (r1474 : Seg28.relationRow1474 rho)
    (tail : next (rho 20816) (rho 20821) (rho 20826) (rho 20831) (rho 20836) (rho 20841) (rho 20846) (rho 20851) (rho 20856)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg17 (rho 20816) (rho 20821) (rho 20826) (rho 20831) (rho 20836) (rho 20841) (rho 20846) (rho 20851) next := by
  exact ⟨rho 20852, rho 20853, rho 20854, rho 20855, rho 20856, r1470, r1471, r1472, r1473, r1474, tail⟩

theorem seg28_scp_node3_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1475 : Seg28.relationRow1475 rho)
    (r1476 : Seg28.relationRow1476 rho)
    (r1477 : Seg28.relationRow1477 rho)
    (r1478 : Seg28.relationRow1478 rho)
    (r1479 : Seg28.relationRow1479 rho)
    (tail : next (rho 20841) (rho 20846) (rho 20851) (rho 20856) (rho 20861)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg18 (rho 20816) (rho 20821) (rho 20826) (rho 20831) (rho 20836) (rho 20841) (rho 20846) (rho 20851) (rho 20856) next := by
  exact ⟨rho 20857, rho 20858, rho 20859, rho 20860, rho 20861, r1475, r1476, r1477, r1478, r1479, tail⟩

theorem seg28_scp_node3_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1480 : Seg28.relationRow1480 rho)
    (r1481 : Seg28.relationRow1481 rho)
    (r1482 : Seg28.relationRow1482 rho)
    (r1483 : Seg28.relationRow1483 rho)
    (r1484 : Seg28.relationRow1484 rho)
    (tail : next (rho 20841) (rho 20846) (rho 20851) (rho 20856) (rho 20861) (rho 20866)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg19 (rho 20841) (rho 20846) (rho 20851) (rho 20856) (rho 20861) next := by
  exact ⟨rho 20862, rho 20863, rho 20864, rho 20865, rho 20866, r1480, r1481, r1482, r1483, r1484, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

