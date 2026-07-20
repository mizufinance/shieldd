import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Part107

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationPart107 rho) :
    rho 605 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((4948097654978445268930025594629541187422859676682275141470689779330915432887 : F) + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 518 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 530 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 542 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 549 + (8022238661956951903036383691842469204807104368396360636538471783121538777089 : F) * rho 558 + (8042344523265114689760785655982425267977046985861013169462127100873723084801 : F) * rho 565) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationPart107 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow535 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow536 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow537 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow538 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.relationRow539 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((4948097654978445268930025594629541187422859676682275141470689779330915432887 : F) + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 518 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 530 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 542 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 549 + (8022238661956951903036383691842469204807104368396360636538471783121538777089 : F) * rho 558 + (8042344523265114689760785655982425267977046985861013169462127100873723084801 : F) * rho 565) (rho 601) (rho 602) (rho 603) (rho 604) (rho 605)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Part107
