import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part13

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart13 rho) :
    rho 88 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((5821488181664723000067356792439820528022714906073340692219407705169644892380 : F) + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 6 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 18 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 25 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 32 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 39 + (8022238661956951903036383691842469204807104368396360636538471783121538777089 : F) * rho 46 + (8042344523265114689760785655982425267977046985861013169462127100873723084801 : F) * rho 53) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((5821488181664723000067356792439820528022714906073340692219407705169644892380 : F) + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 6 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 18 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 25 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 32 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 39 + (8022238661956951903036383691842469204807104368396360636538471783121538777089 : F) * rho 46 + (8042344523265114689760785655982425267977046985861013169462127100873723084801 : F) * rho 53) (rho 84) (rho 85) (rho 86) (rho 87) (rho 88)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part13
