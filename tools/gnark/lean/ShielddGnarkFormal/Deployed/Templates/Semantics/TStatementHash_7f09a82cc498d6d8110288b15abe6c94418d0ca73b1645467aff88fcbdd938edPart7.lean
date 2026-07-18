import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part7

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart7 rho) :
    rho 58 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((1681657789692349034160629011284520310468868178603453015047188919266516577260 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 6 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 18 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 25 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 32 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 39 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 46 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 53) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((1681657789692349034160629011284520310468868178603453015047188919266516577260 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 6 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 18 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 25 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 32 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 39 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 46 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 53) (rho 54) (rho 55) (rho 56) (rho 57) (rho 58)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part7
