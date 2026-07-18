import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Part5

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationPart5 rho) :
    rho 46 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((4727315047627304951694923894487815521672122955066864851590793419420877448838 : F) + rho 40 + rho 41) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationPart5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((4727315047627304951694923894487815521672122955066864851590793419420877448838 : F) + rho 40 + rho 41) (rho 42) (rho 43) (rho 44) (rho 45) (rho 46)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Part5
