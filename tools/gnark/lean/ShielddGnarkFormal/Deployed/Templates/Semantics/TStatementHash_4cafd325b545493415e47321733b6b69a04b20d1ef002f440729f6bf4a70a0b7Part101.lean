import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Part101

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationPart101 rho) :
    rho 536 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((762740214529129674373153113133357445311649875623916733614880135767780792275 : F) + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 493 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 500 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 507 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 514 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 521) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationPart101 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow505 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow506 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow507 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow508 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow509 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((762740214529129674373153113133357445311649875623916733614880135767780792275 : F) + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 493 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 500 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 507 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 514 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 521) (rho 532) (rho 533) (rho 534) (rho 535) (rho 536)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Part101
