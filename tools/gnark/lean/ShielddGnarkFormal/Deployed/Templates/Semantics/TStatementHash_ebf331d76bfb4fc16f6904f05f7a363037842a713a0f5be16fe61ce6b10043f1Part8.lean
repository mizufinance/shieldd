import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Part8

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationPart8 rho) :
    rho 63 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((7851934516320959274829380686220799470672441199098199478353658082702615376101 : F) + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 6 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 18 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 25 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 32 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 39 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 46 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 53) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationPart8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((7851934516320959274829380686220799470672441199098199478353658082702615376101 : F) + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 6 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 18 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 25 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 32 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 39 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 46 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 53) (rho 59) (rho 60) (rho 61) (rho 62) (rho 63)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Part8
