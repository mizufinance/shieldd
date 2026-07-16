import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part287

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart287 rho) :
    rho 1491 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((8371004042969728954689362273685886268465125572887037224491773658767874241298 : F) + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 1457 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 1470 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 1476) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow1435 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow1436 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow1437 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow1438 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow1439 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((8371004042969728954689362273685886268465125572887037224491773658767874241298 : F) + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 1457 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 1470 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 1476) (rho 1487) (rho 1488) (rho 1489) (rho 1490) (rho 1491)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part287
