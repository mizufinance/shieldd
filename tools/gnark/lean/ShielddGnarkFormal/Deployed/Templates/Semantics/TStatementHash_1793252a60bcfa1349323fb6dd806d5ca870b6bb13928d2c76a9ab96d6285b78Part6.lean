import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Part6

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationPart6 rho) :
    rho 53 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((8323215308029035830922479600341609342422153730357233252273677915504737315769 : F) + (-1 : F) * rho 47 + rho 48) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationPart6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((8323215308029035830922479600341609342422153730357233252273677915504737315769 : F) + (-1 : F) * rho 47 + rho 48) (rho 49) (rho 50) (rho 51) (rho 52) (rho 53)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Part6
