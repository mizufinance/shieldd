import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Part100

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationPart100 rho) :
    rho 536 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((8323215308029035830922479600341609342422153730357233252273677915504737315770 : F) + (-1 : F) * rho 531) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationPart100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow500 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow501 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow502 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow503 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow504 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((8323215308029035830922479600341609342422153730357233252273677915504737315770 : F) + (-1 : F) * rho 531) (rho 532) (rho 533) (rho 534) (rho 535) (rho 536)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Part100
