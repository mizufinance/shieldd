import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Core
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection
import ShielddGnarkFormal.Poseidon1Bridge
import ShielddGnarkFormal.Poseidon4Bridge
-- The SCP deployed adapters prove per-bit booleanity by `interval_cases` over the
-- position-bit index; the pre-split monolithic `Specs` supplied this tactic
-- transitively (via `Specs.Dtk`). Carry it explicitly on the SCP family path.
import Mathlib.Tactic.IntervalCases

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs

/-- Deployed state-commitment Merkle path endpoint (seg13): the position
bits are boolean and recompose to the position input, and the root output LC
equals the 24-level per-height-domain quad-Merkle recovery of the committed
leaf hash. -/
def deployedSpec13 (rho : Nat → DeployedF) : Prop :=
  (∀ i : Nat, i < 48 →
      rho (7448 + i) = 0 ∨ rho (7448 + i) = 1) ∧
  rho 24 = (1 : DeployedF) * rho (7448 + 0)
      + (2 : DeployedF) * rho (7448 + 1)
      + (4 : DeployedF) * rho (7448 + 2)
      + (8 : DeployedF) * rho (7448 + 3)
      + (16 : DeployedF) * rho (7448 + 4)
      + (32 : DeployedF) * rho (7448 + 5)
      + (64 : DeployedF) * rho (7448 + 6)
      + (128 : DeployedF) * rho (7448 + 7)
      + (256 : DeployedF) * rho (7448 + 8)
      + (512 : DeployedF) * rho (7448 + 9)
      + (1024 : DeployedF) * rho (7448 + 10)
      + (2048 : DeployedF) * rho (7448 + 11)
      + (4096 : DeployedF) * rho (7448 + 12)
      + (8192 : DeployedF) * rho (7448 + 13)
      + (16384 : DeployedF) * rho (7448 + 14)
      + (32768 : DeployedF) * rho (7448 + 15)
      + (65536 : DeployedF) * rho (7448 + 16)
      + (131072 : DeployedF) * rho (7448 + 17)
      + (262144 : DeployedF) * rho (7448 + 18)
      + (524288 : DeployedF) * rho (7448 + 19)
      + (1048576 : DeployedF) * rho (7448 + 20)
      + (2097152 : DeployedF) * rho (7448 + 21)
      + (4194304 : DeployedF) * rho (7448 + 22)
      + (8388608 : DeployedF) * rho (7448 + 23)
      + (16777216 : DeployedF) * rho (7448 + 24)
      + (33554432 : DeployedF) * rho (7448 + 25)
      + (67108864 : DeployedF) * rho (7448 + 26)
      + (134217728 : DeployedF) * rho (7448 + 27)
      + (268435456 : DeployedF) * rho (7448 + 28)
      + (536870912 : DeployedF) * rho (7448 + 29)
      + (1073741824 : DeployedF) * rho (7448 + 30)
      + (2147483648 : DeployedF) * rho (7448 + 31)
      + (4294967296 : DeployedF) * rho (7448 + 32)
      + (8589934592 : DeployedF) * rho (7448 + 33)
      + (17179869184 : DeployedF) * rho (7448 + 34)
      + (34359738368 : DeployedF) * rho (7448 + 35)
      + (68719476736 : DeployedF) * rho (7448 + 36)
      + (137438953472 : DeployedF) * rho (7448 + 37)
      + (274877906944 : DeployedF) * rho (7448 + 38)
      + (549755813888 : DeployedF) * rho (7448 + 39)
      + (1099511627776 : DeployedF) * rho (7448 + 40)
      + (2199023255552 : DeployedF) * rho (7448 + 41)
      + (4398046511104 : DeployedF) * rho (7448 + 42)
      + (8796093022208 : DeployedF) * rho (7448 + 43)
      + (17592186044416 : DeployedF) * rho (7448 + 44)
      + (35184372088832 : DeployedF) * rho (7448 + 45)
      + (70368744177664 : DeployedF) * rho (7448 + 46)
      + (140737488355328 : DeployedF) * rho (7448 + 47) ∧
  (7037051457856975353540687448984622109479916112628386523279361213264507699201 : DeployedF) * rho 16115
      + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : DeployedF) * rho 16120
      + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 16125
      + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : DeployedF) * rho 16130
      + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : DeployedF) * rho 16135
    = Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recover24H
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4
      (fun k => (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        + ((k + 1 : Nat) : DeployedF))
      (Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1
        (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        (rho 23))
      (fun k => rho (94 - 3 * k)) (fun k => rho (95 - 3 * k))
      (fun k => rho (96 - 3 * k))
      (fun k => rho (7448 + 2 * k)) (fun k => rho (7449 + 2 * k))

/-- Deployed state-commitment Merkle path endpoint (seg28): the position
bits are boolean and recompose to the position input, and the root output LC
equals the 24-level per-height-domain quad-Merkle recovery of the committed
leaf hash. -/
def deployedSpec28 (rho : Nat → DeployedF) : Prop :=
  (∀ i : Nat, i < 48 →
      rho (19629 + i) = 0 ∨ rho (19629 + i) = 1) ∧
  rho 114 = (1 : DeployedF) * rho (19629 + 0)
      + (2 : DeployedF) * rho (19629 + 1)
      + (4 : DeployedF) * rho (19629 + 2)
      + (8 : DeployedF) * rho (19629 + 3)
      + (16 : DeployedF) * rho (19629 + 4)
      + (32 : DeployedF) * rho (19629 + 5)
      + (64 : DeployedF) * rho (19629 + 6)
      + (128 : DeployedF) * rho (19629 + 7)
      + (256 : DeployedF) * rho (19629 + 8)
      + (512 : DeployedF) * rho (19629 + 9)
      + (1024 : DeployedF) * rho (19629 + 10)
      + (2048 : DeployedF) * rho (19629 + 11)
      + (4096 : DeployedF) * rho (19629 + 12)
      + (8192 : DeployedF) * rho (19629 + 13)
      + (16384 : DeployedF) * rho (19629 + 14)
      + (32768 : DeployedF) * rho (19629 + 15)
      + (65536 : DeployedF) * rho (19629 + 16)
      + (131072 : DeployedF) * rho (19629 + 17)
      + (262144 : DeployedF) * rho (19629 + 18)
      + (524288 : DeployedF) * rho (19629 + 19)
      + (1048576 : DeployedF) * rho (19629 + 20)
      + (2097152 : DeployedF) * rho (19629 + 21)
      + (4194304 : DeployedF) * rho (19629 + 22)
      + (8388608 : DeployedF) * rho (19629 + 23)
      + (16777216 : DeployedF) * rho (19629 + 24)
      + (33554432 : DeployedF) * rho (19629 + 25)
      + (67108864 : DeployedF) * rho (19629 + 26)
      + (134217728 : DeployedF) * rho (19629 + 27)
      + (268435456 : DeployedF) * rho (19629 + 28)
      + (536870912 : DeployedF) * rho (19629 + 29)
      + (1073741824 : DeployedF) * rho (19629 + 30)
      + (2147483648 : DeployedF) * rho (19629 + 31)
      + (4294967296 : DeployedF) * rho (19629 + 32)
      + (8589934592 : DeployedF) * rho (19629 + 33)
      + (17179869184 : DeployedF) * rho (19629 + 34)
      + (34359738368 : DeployedF) * rho (19629 + 35)
      + (68719476736 : DeployedF) * rho (19629 + 36)
      + (137438953472 : DeployedF) * rho (19629 + 37)
      + (274877906944 : DeployedF) * rho (19629 + 38)
      + (549755813888 : DeployedF) * rho (19629 + 39)
      + (1099511627776 : DeployedF) * rho (19629 + 40)
      + (2199023255552 : DeployedF) * rho (19629 + 41)
      + (4398046511104 : DeployedF) * rho (19629 + 42)
      + (8796093022208 : DeployedF) * rho (19629 + 43)
      + (17592186044416 : DeployedF) * rho (19629 + 44)
      + (35184372088832 : DeployedF) * rho (19629 + 45)
      + (70368744177664 : DeployedF) * rho (19629 + 46)
      + (140737488355328 : DeployedF) * rho (19629 + 47) ∧
  (7037051457856975353540687448984622109479916112628386523279361213264507699201 : DeployedF) * rho 28296
      + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : DeployedF) * rho 28301
      + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 28306
      + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : DeployedF) * rho 28311
      + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : DeployedF) * rho 28316
    = Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recover24H
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4
      (fun k => (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        + ((k + 1 : Nat) : DeployedF))
      (Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1
        (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        (rho 113))
      (fun k => rho (184 - 3 * k)) (fun k => rho (185 - 3 * k))
      (fun k => rho (186 - 3 * k))
      (fun k => rho (19629 + 2 * k)) (fun k => rho (19630 + 2 * k))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs
