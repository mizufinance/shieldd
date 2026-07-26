import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Part11

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationPart11 rho) :
    rho 78 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((455892025464161515637665755660043256883910444164996892271695873436360673309 : F) + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 6 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 18 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 25 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 32 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 39 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 46 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 53) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationPart11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((455892025464161515637665755660043256883910444164996892271695873436360673309 : F) + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 6 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 18 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 25 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 32 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 39 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 46 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 53) (rho 74) (rho 75) (rho 76) (rho 77) (rho 78)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Part11
