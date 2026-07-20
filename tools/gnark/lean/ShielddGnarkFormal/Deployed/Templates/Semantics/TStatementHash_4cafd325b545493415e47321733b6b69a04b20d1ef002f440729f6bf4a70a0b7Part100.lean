import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Part100

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationPart100 rho) :
    rho 531 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((3123386735241225107819327506118117214084490793543274280121853110008284020746 : F) + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 493 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 500 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 507 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 514 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 521) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationPart100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow500 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow501 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow502 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow503 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow504 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((3123386735241225107819327506118117214084490793543274280121853110008284020746 : F) + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 493 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 500 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 507 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 514 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 521) (rho 527) (rho 528) (rho 529) (rho 530) (rho 531)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Part100
