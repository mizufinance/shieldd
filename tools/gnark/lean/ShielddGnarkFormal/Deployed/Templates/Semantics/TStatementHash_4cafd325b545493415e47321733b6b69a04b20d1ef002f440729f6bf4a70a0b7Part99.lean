import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Part99

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationPart99 rho) :
    rho 526 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((7041424585896251054210705239295855328173963030028096452474050392056017623296 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 493 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 500 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 507 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 514 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 521) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationPart99 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow495 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow496 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow497 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow498 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow499 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((7041424585896251054210705239295855328173963030028096452474050392056017623296 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 493 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 500 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 507 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 514 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 521) (rho 522) (rho 523) (rho 524) (rho 525) (rho 526)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Part99
