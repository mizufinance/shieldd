import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Part100

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationPart100 rho) :
    rho 570 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((1545385123395096149953775280570907452814120180663217523733108530823294927359 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 518 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 530 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 542 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 549 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 558 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 565) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationPart100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow500 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow501 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow502 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow503 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow504 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((1545385123395096149953775280570907452814120180663217523733108530823294927359 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 518 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 530 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 542 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 549 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 558 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 565) (rho 566) (rho 567) (rho 568) (rho 569) (rho 570)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Part100
