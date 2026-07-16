import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part95

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart95 rho) :
    rho 500 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((4610941420378965310285838612448425703694278187368438665958951036771382090951 : F) + rho 494 + rho 495) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart95 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow475 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow476 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow477 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow478 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow479 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((4610941420378965310285838612448425703694278187368438665958951036771382090951 : F) + rho 494 + rho 495) (rho 496) (rho 497) (rho 498) (rho 499) (rho 500)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part95
