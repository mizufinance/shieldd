import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Part195

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationPart195 rho) :
    rho 1022 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((1681657789692349034160629011284520310468868178603453015047188919266516577260 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 975 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 982 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 989 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 996 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 1003 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 1010 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 1017) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationPart195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow975 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow976 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow977 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow978 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow979 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((1681657789692349034160629011284520310468868178603453015047188919266516577260 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 975 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 982 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 989 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 996 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 1003 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 1010 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 1017) (rho 1018) (rho 1019) (rho 1020) (rho 1021) (rho 1022)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Part195
