import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Part102

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationPart102 rho) :
    rho 580 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((1861598597987220346694040789519320325014997471901711311663194285635644935846 : F) + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 518 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 530 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 542 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 549 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 558 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 565) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationPart102 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow510 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow511 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow512 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow513 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow514 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((1861598597987220346694040789519320325014997471901711311663194285635644935846 : F) + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 518 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 530 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 542 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 549 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 558 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 565) (rho 576) (rho 577) (rho 578) (rho 579) (rho 580)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Part102
