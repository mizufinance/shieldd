import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Part104

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationPart104 rho) :
    rho 590 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((430223165276577168883501802867564583788798685776330951098239314133818520960 : F) + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 518 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 530 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 542 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 549 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 558 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 565) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationPart104 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow520 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow521 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow522 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow523 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow524 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((430223165276577168883501802867564583788798685776330951098239314133818520960 : F) + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 518 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 530 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 542 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 549 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 558 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 565) (rho 586) (rho 587) (rho 588) (rho 589) (rho 590)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Part104
