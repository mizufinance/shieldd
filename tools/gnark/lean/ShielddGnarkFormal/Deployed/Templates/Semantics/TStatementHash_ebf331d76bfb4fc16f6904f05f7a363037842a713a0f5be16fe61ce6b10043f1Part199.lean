import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Part199

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationPart199 rho) :
    rho 1042 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((5175942196504530189809500752023422444337830277679048851760287925475237262504 : F) + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 975 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 982 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 989 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 996 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 1003 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 1010 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 1017) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationPart199 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow995 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow996 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow997 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow998 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow999 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((5175942196504530189809500752023422444337830277679048851760287925475237262504 : F) + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 975 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 982 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 989 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 996 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 1003 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 1010 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 1017) (rho 1038) (rho 1039) (rho 1040) (rho 1041) (rho 1042)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Part199
