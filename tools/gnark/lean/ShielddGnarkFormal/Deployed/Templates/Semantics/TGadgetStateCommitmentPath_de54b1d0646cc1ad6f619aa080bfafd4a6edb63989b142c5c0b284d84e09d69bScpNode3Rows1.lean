import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node3_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1435 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1435 rho)
    (r1436 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1436 rho)
    (r1437 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1437 rho)
    (r1438 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1438 rho)
    (r1439 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1439 rho)
    (tail : next (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg10 (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) next := by
  exact ⟨rho 1438, rho 1439, rho 1440, rho 1441, rho 1442, r1435, r1436, r1437, r1438, r1439, tail⟩

theorem template_scp_node3_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1440 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1440 rho)
    (r1441 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1441 rho)
    (r1442 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1442 rho)
    (r1443 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1443 rho)
    (r1444 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1444 rho)
    (tail : next (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg11 (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) next := by
  exact ⟨rho 1443, rho 1444, rho 1445, rho 1446, rho 1447, r1440, r1441, r1442, r1443, r1444, tail⟩

theorem template_scp_node3_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1445 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1445 rho)
    (r1446 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1446 rho)
    (r1447 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1447 rho)
    (r1448 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1448 rho)
    (r1449 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1449 rho)
    (tail : next (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg12 (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) next := by
  exact ⟨rho 1448, rho 1449, rho 1450, rho 1451, rho 1452, r1445, r1446, r1447, r1448, r1449, tail⟩

theorem template_scp_node3_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1450 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1450 rho)
    (r1451 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1451 rho)
    (r1452 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1452 rho)
    (r1453 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1453 rho)
    (r1454 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1454 rho)
    (tail : next (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg13 (rho 1412) (rho 1417) (rho 1422) (rho 1427) (rho 1432) (rho 1437) (rho 1442) (rho 1447) (rho 1452) next := by
  exact ⟨rho 1453, rho 1454, rho 1455, rho 1456, rho 1457, r1450, r1451, r1452, r1453, r1454, tail⟩

theorem template_scp_node3_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1455 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1455 rho)
    (r1456 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1456 rho)
    (r1457 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1457 rho)
    (r1458 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1458 rho)
    (r1459 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1459 rho)
    (tail : next (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg14 (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) next := by
  exact ⟨rho 1458, rho 1459, rho 1460, rho 1461, rho 1462, r1455, r1456, r1457, r1458, r1459, tail⟩

theorem template_scp_node3_seg15 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1460 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1460 rho)
    (r1461 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1461 rho)
    (r1462 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1462 rho)
    (r1463 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1463 rho)
    (r1464 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1464 rho)
    (tail : next (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg15 (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) next := by
  exact ⟨rho 1463, rho 1464, rho 1465, rho 1466, rho 1467, r1460, r1461, r1462, r1463, r1464, tail⟩

theorem template_scp_node3_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1465 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1465 rho)
    (r1466 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1466 rho)
    (r1467 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1467 rho)
    (r1468 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1468 rho)
    (r1469 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1469 rho)
    (tail : next (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg16 (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) next := by
  exact ⟨rho 1468, rho 1469, rho 1470, rho 1471, rho 1472, r1465, r1466, r1467, r1468, r1469, tail⟩

theorem template_scp_node3_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1470 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1470 rho)
    (r1471 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1471 rho)
    (r1472 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1472 rho)
    (r1473 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1473 rho)
    (r1474 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1474 rho)
    (tail : next (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg17 (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) next := by
  exact ⟨rho 1473, rho 1474, rho 1475, rho 1476, rho 1477, r1470, r1471, r1472, r1473, r1474, tail⟩

theorem template_scp_node3_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1475 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1475 rho)
    (r1476 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1476 rho)
    (r1477 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1477 rho)
    (r1478 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1478 rho)
    (r1479 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1479 rho)
    (tail : next (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg18 (rho 1437) (rho 1442) (rho 1447) (rho 1452) (rho 1457) (rho 1462) (rho 1467) (rho 1472) (rho 1477) next := by
  exact ⟨rho 1478, rho 1479, rho 1480, rho 1481, rho 1482, r1475, r1476, r1477, r1478, r1479, tail⟩

theorem template_scp_node3_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1480 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1480 rho)
    (r1481 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1481 rho)
    (r1482 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1482 rho)
    (r1483 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1483 rho)
    (r1484 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1484 rho)
    (tail : next (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) (rho 1487)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg19 (rho 1462) (rho 1467) (rho 1472) (rho 1477) (rho 1482) next := by
  exact ⟨rho 1483, rho 1484, rho 1485, rho 1486, rho 1487, r1480, r1481, r1482, r1483, r1484, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
