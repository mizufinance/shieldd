import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Part3

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationPart3 rho) :
    rho 32 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((3485778653302006026931053379631767402100167194043813051334318884790009606746 : F) + rho 26 + rho 27) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationPart3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((3485778653302006026931053379631767402100167194043813051334318884790009606746 : F) + rho 26 + rho 27) (rho 28) (rho 29) (rho 30) (rho 31) (rho 32)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Part3
