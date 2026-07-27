import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Part9

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationPart9 rho) :
    rho 68 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((2807146180717319040355977006358340484536074600938399747364945026972787350753 : F) + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 6 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 18 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 25 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 32 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 39 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 46 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 53) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationPart9 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((2807146180717319040355977006358340484536074600938399747364945026972787350753 : F) + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 6 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 18 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 25 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 32 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 39 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 46 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 53) (rho 64) (rho 65) (rho 66) (rho 67) (rho 68)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Part9
