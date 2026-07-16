import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part289

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart289 rho) :
    rho 1501 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((4350834995674463358149998534983837012984683851733380014740166396891241472036 : F) + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 1457 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 1470 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 1476) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart289 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow1445 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow1446 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow1447 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow1448 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow1449 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((4350834995674463358149998534983837012984683851733380014740166396891241472036 : F) + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 1457 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 1470 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 1476) (rho 1497) (rho 1498) (rho 1499) (rho 1500) (rho 1501)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part289
