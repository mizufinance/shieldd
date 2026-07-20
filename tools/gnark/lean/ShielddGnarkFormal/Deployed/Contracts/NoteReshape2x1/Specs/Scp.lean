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
      rho (7442 + i) = 0 ∨ rho (7442 + i) = 1) ∧
  rho 24 = (1 : DeployedF) * rho (7442 + 0)
      + (2 : DeployedF) * rho (7442 + 1)
      + (4 : DeployedF) * rho (7442 + 2)
      + (8 : DeployedF) * rho (7442 + 3)
      + (16 : DeployedF) * rho (7442 + 4)
      + (32 : DeployedF) * rho (7442 + 5)
      + (64 : DeployedF) * rho (7442 + 6)
      + (128 : DeployedF) * rho (7442 + 7)
      + (256 : DeployedF) * rho (7442 + 8)
      + (512 : DeployedF) * rho (7442 + 9)
      + (1024 : DeployedF) * rho (7442 + 10)
      + (2048 : DeployedF) * rho (7442 + 11)
      + (4096 : DeployedF) * rho (7442 + 12)
      + (8192 : DeployedF) * rho (7442 + 13)
      + (16384 : DeployedF) * rho (7442 + 14)
      + (32768 : DeployedF) * rho (7442 + 15)
      + (65536 : DeployedF) * rho (7442 + 16)
      + (131072 : DeployedF) * rho (7442 + 17)
      + (262144 : DeployedF) * rho (7442 + 18)
      + (524288 : DeployedF) * rho (7442 + 19)
      + (1048576 : DeployedF) * rho (7442 + 20)
      + (2097152 : DeployedF) * rho (7442 + 21)
      + (4194304 : DeployedF) * rho (7442 + 22)
      + (8388608 : DeployedF) * rho (7442 + 23)
      + (16777216 : DeployedF) * rho (7442 + 24)
      + (33554432 : DeployedF) * rho (7442 + 25)
      + (67108864 : DeployedF) * rho (7442 + 26)
      + (134217728 : DeployedF) * rho (7442 + 27)
      + (268435456 : DeployedF) * rho (7442 + 28)
      + (536870912 : DeployedF) * rho (7442 + 29)
      + (1073741824 : DeployedF) * rho (7442 + 30)
      + (2147483648 : DeployedF) * rho (7442 + 31)
      + (4294967296 : DeployedF) * rho (7442 + 32)
      + (8589934592 : DeployedF) * rho (7442 + 33)
      + (17179869184 : DeployedF) * rho (7442 + 34)
      + (34359738368 : DeployedF) * rho (7442 + 35)
      + (68719476736 : DeployedF) * rho (7442 + 36)
      + (137438953472 : DeployedF) * rho (7442 + 37)
      + (274877906944 : DeployedF) * rho (7442 + 38)
      + (549755813888 : DeployedF) * rho (7442 + 39)
      + (1099511627776 : DeployedF) * rho (7442 + 40)
      + (2199023255552 : DeployedF) * rho (7442 + 41)
      + (4398046511104 : DeployedF) * rho (7442 + 42)
      + (8796093022208 : DeployedF) * rho (7442 + 43)
      + (17592186044416 : DeployedF) * rho (7442 + 44)
      + (35184372088832 : DeployedF) * rho (7442 + 45)
      + (70368744177664 : DeployedF) * rho (7442 + 46)
      + (140737488355328 : DeployedF) * rho (7442 + 47) ∧
  (7037051457856975353540687448984622109479916112628386523279361213264507699201 : DeployedF) * rho 16109
      + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : DeployedF) * rho 16114
      + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 16119
      + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : DeployedF) * rho 16124
      + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : DeployedF) * rho 16129
    = Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recover24H
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4
      (fun k => (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        + (k : DeployedF) + (1 : DeployedF))
      (Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1
        (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        (rho 23))
      (fun k => rho (94 - 3 * k)) (fun k => rho (95 - 3 * k))
      (fun k => rho (96 - 3 * k))
      (fun k => rho (7442 + 2 * k)) (fun k => rho (7443 + 2 * k))

/-- Deployed state-commitment Merkle path endpoint (seg28): the position
bits are boolean and recompose to the position input, and the root output LC
equals the 24-level per-height-domain quad-Merkle recovery of the committed
leaf hash. -/
def deployedSpec28 (rho : Nat → DeployedF) : Prop :=
  (∀ i : Nat, i < 48 →
      rho (19623 + i) = 0 ∨ rho (19623 + i) = 1) ∧
  rho 111 = (1 : DeployedF) * rho (19623 + 0)
      + (2 : DeployedF) * rho (19623 + 1)
      + (4 : DeployedF) * rho (19623 + 2)
      + (8 : DeployedF) * rho (19623 + 3)
      + (16 : DeployedF) * rho (19623 + 4)
      + (32 : DeployedF) * rho (19623 + 5)
      + (64 : DeployedF) * rho (19623 + 6)
      + (128 : DeployedF) * rho (19623 + 7)
      + (256 : DeployedF) * rho (19623 + 8)
      + (512 : DeployedF) * rho (19623 + 9)
      + (1024 : DeployedF) * rho (19623 + 10)
      + (2048 : DeployedF) * rho (19623 + 11)
      + (4096 : DeployedF) * rho (19623 + 12)
      + (8192 : DeployedF) * rho (19623 + 13)
      + (16384 : DeployedF) * rho (19623 + 14)
      + (32768 : DeployedF) * rho (19623 + 15)
      + (65536 : DeployedF) * rho (19623 + 16)
      + (131072 : DeployedF) * rho (19623 + 17)
      + (262144 : DeployedF) * rho (19623 + 18)
      + (524288 : DeployedF) * rho (19623 + 19)
      + (1048576 : DeployedF) * rho (19623 + 20)
      + (2097152 : DeployedF) * rho (19623 + 21)
      + (4194304 : DeployedF) * rho (19623 + 22)
      + (8388608 : DeployedF) * rho (19623 + 23)
      + (16777216 : DeployedF) * rho (19623 + 24)
      + (33554432 : DeployedF) * rho (19623 + 25)
      + (67108864 : DeployedF) * rho (19623 + 26)
      + (134217728 : DeployedF) * rho (19623 + 27)
      + (268435456 : DeployedF) * rho (19623 + 28)
      + (536870912 : DeployedF) * rho (19623 + 29)
      + (1073741824 : DeployedF) * rho (19623 + 30)
      + (2147483648 : DeployedF) * rho (19623 + 31)
      + (4294967296 : DeployedF) * rho (19623 + 32)
      + (8589934592 : DeployedF) * rho (19623 + 33)
      + (17179869184 : DeployedF) * rho (19623 + 34)
      + (34359738368 : DeployedF) * rho (19623 + 35)
      + (68719476736 : DeployedF) * rho (19623 + 36)
      + (137438953472 : DeployedF) * rho (19623 + 37)
      + (274877906944 : DeployedF) * rho (19623 + 38)
      + (549755813888 : DeployedF) * rho (19623 + 39)
      + (1099511627776 : DeployedF) * rho (19623 + 40)
      + (2199023255552 : DeployedF) * rho (19623 + 41)
      + (4398046511104 : DeployedF) * rho (19623 + 42)
      + (8796093022208 : DeployedF) * rho (19623 + 43)
      + (17592186044416 : DeployedF) * rho (19623 + 44)
      + (35184372088832 : DeployedF) * rho (19623 + 45)
      + (70368744177664 : DeployedF) * rho (19623 + 46)
      + (140737488355328 : DeployedF) * rho (19623 + 47) ∧
  (7037051457856975353540687448984622109479916112628386523279361213264507699201 : DeployedF) * rho 28290
      + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : DeployedF) * rho 28295
      + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 28300
      + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : DeployedF) * rho 28305
      + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : DeployedF) * rho 28310
    = Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recover24H
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4
      (fun k => (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        + (k : DeployedF) + (1 : DeployedF))
      (Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1
        (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        (rho 110))
      (fun k => rho (181 - 3 * k)) (fun k => rho (182 - 3 * k))
      (fun k => rho (183 - 3 * k))
      (fun k => rho (19623 + 2 * k)) (fun k => rho (19624 + 2 * k))

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs
