import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Part3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationPart3 rho) :
    rho 34 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((3485778653302006026931053379631767402100167194043813051334318884790009606746 : F) + (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 26 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 27 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 28 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 29) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationPart3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((3485778653302006026931053379631767402100167194043813051334318884790009606746 : F) + (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 26 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 27 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 28 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 29) (rho 30) (rho 31) (rho 32) (rho 33) (rho 34)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Part3
