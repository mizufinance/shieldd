import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Part6

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationPart6 rho) :
    rho 57 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((8323215308029035830922479600341609342422153730357233252273677915504737315769 : F) + (-1 : F) * rho 51 + rho 52) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationPart6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((8323215308029035830922479600341609342422153730357233252273677915504737315769 : F) + (-1 : F) * rho 51 + rho 52) (rho 53) (rho 54) (rho 55) (rho 56) (rho 57)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Part6
