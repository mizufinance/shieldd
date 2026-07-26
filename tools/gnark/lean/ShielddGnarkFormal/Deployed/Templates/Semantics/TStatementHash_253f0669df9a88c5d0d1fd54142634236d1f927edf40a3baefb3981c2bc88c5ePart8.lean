import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Part8

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationPart8 rho) :
    rho 88 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((4830532306463664249557300836551090781609403233258440126012491312332368231998 : F) + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 6 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 18 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 30 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 42 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 54 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 66 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 78) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationPart8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((4830532306463664249557300836551090781609403233258440126012491312332368231998 : F) + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 6 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 18 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 30 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 42 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 54 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 66 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 78) (rho 84) (rho 85) (rho 86) (rho 87) (rho 88)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Part8
