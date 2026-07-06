import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection
import ShielddGnarkFormal.Poseidon1Bridge
import ShielddGnarkFormal.Poseidon4Bridge
-- The SCP deployed adapters prove per-bit booleanity by `interval_cases` over the
-- position-bit index; the pre-split monolithic `Specs` supplied this tactic
-- transitively (via `Specs.Dtk`). Carry it explicitly on the SCP family path.
import Mathlib.Tactic.IntervalCases

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed state-commitment Merkle path endpoint (seg11): the position
bits are boolean and recompose to the position input, and the root output LC
equals the 24-level per-height-domain quad-Merkle recovery of the committed
leaf hash. -/
def deployedSpec11 (rho : Nat → DeployedF) : Prop :=
  (∀ i : Nat, i < 48 →
      rho (1883 + i) = 0 ∨ rho (1883 + i) = 1) ∧
  rho 24 = (1 : DeployedF) * rho (1883 + 0)
      + (2 : DeployedF) * rho (1883 + 1)
      + (4 : DeployedF) * rho (1883 + 2)
      + (8 : DeployedF) * rho (1883 + 3)
      + (16 : DeployedF) * rho (1883 + 4)
      + (32 : DeployedF) * rho (1883 + 5)
      + (64 : DeployedF) * rho (1883 + 6)
      + (128 : DeployedF) * rho (1883 + 7)
      + (256 : DeployedF) * rho (1883 + 8)
      + (512 : DeployedF) * rho (1883 + 9)
      + (1024 : DeployedF) * rho (1883 + 10)
      + (2048 : DeployedF) * rho (1883 + 11)
      + (4096 : DeployedF) * rho (1883 + 12)
      + (8192 : DeployedF) * rho (1883 + 13)
      + (16384 : DeployedF) * rho (1883 + 14)
      + (32768 : DeployedF) * rho (1883 + 15)
      + (65536 : DeployedF) * rho (1883 + 16)
      + (131072 : DeployedF) * rho (1883 + 17)
      + (262144 : DeployedF) * rho (1883 + 18)
      + (524288 : DeployedF) * rho (1883 + 19)
      + (1048576 : DeployedF) * rho (1883 + 20)
      + (2097152 : DeployedF) * rho (1883 + 21)
      + (4194304 : DeployedF) * rho (1883 + 22)
      + (8388608 : DeployedF) * rho (1883 + 23)
      + (16777216 : DeployedF) * rho (1883 + 24)
      + (33554432 : DeployedF) * rho (1883 + 25)
      + (67108864 : DeployedF) * rho (1883 + 26)
      + (134217728 : DeployedF) * rho (1883 + 27)
      + (268435456 : DeployedF) * rho (1883 + 28)
      + (536870912 : DeployedF) * rho (1883 + 29)
      + (1073741824 : DeployedF) * rho (1883 + 30)
      + (2147483648 : DeployedF) * rho (1883 + 31)
      + (4294967296 : DeployedF) * rho (1883 + 32)
      + (8589934592 : DeployedF) * rho (1883 + 33)
      + (17179869184 : DeployedF) * rho (1883 + 34)
      + (34359738368 : DeployedF) * rho (1883 + 35)
      + (68719476736 : DeployedF) * rho (1883 + 36)
      + (137438953472 : DeployedF) * rho (1883 + 37)
      + (274877906944 : DeployedF) * rho (1883 + 38)
      + (549755813888 : DeployedF) * rho (1883 + 39)
      + (1099511627776 : DeployedF) * rho (1883 + 40)
      + (2199023255552 : DeployedF) * rho (1883 + 41)
      + (4398046511104 : DeployedF) * rho (1883 + 42)
      + (8796093022208 : DeployedF) * rho (1883 + 43)
      + (17592186044416 : DeployedF) * rho (1883 + 44)
      + (35184372088832 : DeployedF) * rho (1883 + 45)
      + (70368744177664 : DeployedF) * rho (1883 + 46)
      + (140737488355328 : DeployedF) * rho (1883 + 47) ∧
  (7037051457856975353540687448984622109479916112628386523279361213264507699201 : DeployedF) * rho 10550
      + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : DeployedF) * rho 10555
      + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 10560
      + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : DeployedF) * rho 10565
      + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : DeployedF) * rho 10570
    = Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recover24H
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4
      (fun k => (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        + ((k + 1 : Nat) : DeployedF))
      (Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1
        (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        (rho 23))
      (fun k => rho (94 - 3 * k)) (fun k => rho (95 - 3 * k))
      (fun k => rho (96 - 3 * k))
      (fun k => rho (1883 + 2 * k)) (fun k => rho (1884 + 2 * k))

/-- Deployed state-commitment Merkle path endpoint (seg29): the position
bits are boolean and recompose to the position input, and the root output LC
equals the 24-level per-height-domain quad-Merkle recovery of the committed
leaf hash. -/
def deployedSpec29 (rho : Nat → DeployedF) : Prop :=
  (∀ i : Nat, i < 48 →
      rho (20583 + i) = 0 ∨ rho (20583 + i) = 1) ∧
  rho 114 = (1 : DeployedF) * rho (20583 + 0)
      + (2 : DeployedF) * rho (20583 + 1)
      + (4 : DeployedF) * rho (20583 + 2)
      + (8 : DeployedF) * rho (20583 + 3)
      + (16 : DeployedF) * rho (20583 + 4)
      + (32 : DeployedF) * rho (20583 + 5)
      + (64 : DeployedF) * rho (20583 + 6)
      + (128 : DeployedF) * rho (20583 + 7)
      + (256 : DeployedF) * rho (20583 + 8)
      + (512 : DeployedF) * rho (20583 + 9)
      + (1024 : DeployedF) * rho (20583 + 10)
      + (2048 : DeployedF) * rho (20583 + 11)
      + (4096 : DeployedF) * rho (20583 + 12)
      + (8192 : DeployedF) * rho (20583 + 13)
      + (16384 : DeployedF) * rho (20583 + 14)
      + (32768 : DeployedF) * rho (20583 + 15)
      + (65536 : DeployedF) * rho (20583 + 16)
      + (131072 : DeployedF) * rho (20583 + 17)
      + (262144 : DeployedF) * rho (20583 + 18)
      + (524288 : DeployedF) * rho (20583 + 19)
      + (1048576 : DeployedF) * rho (20583 + 20)
      + (2097152 : DeployedF) * rho (20583 + 21)
      + (4194304 : DeployedF) * rho (20583 + 22)
      + (8388608 : DeployedF) * rho (20583 + 23)
      + (16777216 : DeployedF) * rho (20583 + 24)
      + (33554432 : DeployedF) * rho (20583 + 25)
      + (67108864 : DeployedF) * rho (20583 + 26)
      + (134217728 : DeployedF) * rho (20583 + 27)
      + (268435456 : DeployedF) * rho (20583 + 28)
      + (536870912 : DeployedF) * rho (20583 + 29)
      + (1073741824 : DeployedF) * rho (20583 + 30)
      + (2147483648 : DeployedF) * rho (20583 + 31)
      + (4294967296 : DeployedF) * rho (20583 + 32)
      + (8589934592 : DeployedF) * rho (20583 + 33)
      + (17179869184 : DeployedF) * rho (20583 + 34)
      + (34359738368 : DeployedF) * rho (20583 + 35)
      + (68719476736 : DeployedF) * rho (20583 + 36)
      + (137438953472 : DeployedF) * rho (20583 + 37)
      + (274877906944 : DeployedF) * rho (20583 + 38)
      + (549755813888 : DeployedF) * rho (20583 + 39)
      + (1099511627776 : DeployedF) * rho (20583 + 40)
      + (2199023255552 : DeployedF) * rho (20583 + 41)
      + (4398046511104 : DeployedF) * rho (20583 + 42)
      + (8796093022208 : DeployedF) * rho (20583 + 43)
      + (17592186044416 : DeployedF) * rho (20583 + 44)
      + (35184372088832 : DeployedF) * rho (20583 + 45)
      + (70368744177664 : DeployedF) * rho (20583 + 46)
      + (140737488355328 : DeployedF) * rho (20583 + 47) ∧
  (7037051457856975353540687448984622109479916112628386523279361213264507699201 : DeployedF) * rho 29250
      + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : DeployedF) * rho 29255
      + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 29260
      + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : DeployedF) * rho 29265
      + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : DeployedF) * rho 29270
    = Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recover24H
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4
      (fun k => (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        + ((k + 1 : Nat) : DeployedF))
      (Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1
        (545001158149490383238005163525397553024965043366546261617421270984613353336 : DeployedF)
        (rho 113))
      (fun k => rho (184 - 3 * k)) (fun k => rho (185 - 3 * k))
      (fun k => rho (186 - 3 * k))
      (fun k => rho (20583 + 2 * k)) (fun k => rho (20584 + 2 * k))


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
