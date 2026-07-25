import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Capstone
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Wiring

set_option maxHeartbeats 1000000

/-! # Protocol-readable statement for the consolidate2x1 deployed slice

`Consolidate2x1Statement` restates the load-bearing per-segment specs over the
named wires of `Wiring`, so the guarantee is legible without decoding wire
indices. Each conjunct names its *output* wire through `Wiring`; because a
`Wiring` name reduces definitionally to the wire index its spec constrains, the
projection `specOfN` closes it directly — and if a name and its spec's wire ever
disagreed, this file would fail to type-check.

Hand-authored (not generated): the wire names come from `Wiring` (IR-sourced),
the algebra is referenced from `Specs`. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Specs (DeployedF)

/-- What the consolidate2x1 circuit proves, phrased over named wires.
Wave-2: segment indices renumbered by the optimization pass (54/14/10/25/53,
were 56/14/10/26/55); wire content re-derived from `Specs/Glue.lean`. -/
def Consolidate2x1Statement (rho : Nat → DeployedF) : Prop :=
  -- the public statement-hash wire equals the compressed transcript hash.
  (rho Wiring.statementHashPublic =
    (4691367638571316902360458299323081406319944075085591015519574142176338466134 : DeployedF) * rho 34604 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : DeployedF) * rho 34609 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : DeployedF) * rho 34614 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : DeployedF) * rho 34619 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : DeployedF) * rho 34624 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : DeployedF) * rho 34629 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : DeployedF) * rho 34634 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : DeployedF) * rho 34639) ∧
  -- the Merkle anchor equals the folded state-commitment-path root.
  (rho Wiring.anchor =
    (7037051457856975353540687448984622109479916112628386523279361213264507699201 : DeployedF) * rho 16115 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : DeployedF) * rho 16120 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 16125 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : DeployedF) * rho 16130 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : DeployedF) * rho 16135) ∧
  -- spend-1 leaf commitment binds its note-commitment gadget output.
  (rho Wiring.spend1NoteCommitmentLeaf =
    (7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 6877 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : DeployedF) * rho 6882 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : DeployedF) * rho 6887 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : DeployedF) * rho 6892 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : DeployedF) * rho 6897 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : DeployedF) * rho 6902 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : DeployedF) * rho 6907) ∧
  -- spend-2 leaf commitment binds its note-commitment gadget output.
  (rho Wiring.spend2NoteCommitmentLeaf =
    (7388904030749824121217721821433853214953911918259805849443329273927733084161 : DeployedF) * rho 19058 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : DeployedF) * rho 19063 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : DeployedF) * rho 19068 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : DeployedF) * rho 19073 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : DeployedF) * rho 19078 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : DeployedF) * rho 19083 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : DeployedF) * rho 19088) ∧
  -- the transcript hash binds the anchor, both nullifiers, the output-note
  -- commitment and the compressed net-balance commitment (see `Specs`).
  Specs.deployedSpec53 rho

/-- Every named-wire guarantee follows from the composed deployed soundness
theorem via the per-segment projections. -/
theorem consolidate2x1_statement (rho : Nat → DeployedF) (h : relationAll rho) :
    Consolidate2x1Statement rho :=
  ⟨specOf54 rho h, specOf14 rho h, specOf10 rho h, specOf25 rho h, specOf53 rho h⟩

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
