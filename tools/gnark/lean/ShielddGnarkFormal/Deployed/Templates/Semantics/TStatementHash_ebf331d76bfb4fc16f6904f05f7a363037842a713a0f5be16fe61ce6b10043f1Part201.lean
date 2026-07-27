import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Part201

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationPart201 rho) :
    rho 1052 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((5821488181664723000067356792439820528022714906073340692219407705169644892380 : F) + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 975 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 982 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 989 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 996 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 1003 + (8022238661956951903036383691842469204807104368396360636538471783121538777089 : F) * rho 1010 + (8042344523265114689760785655982425267977046985861013169462127100873723084801 : F) * rho 1017) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationPart201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow1005 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow1006 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow1007 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow1008 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.relationRow1009 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((5821488181664723000067356792439820528022714906073340692219407705169644892380 : F) + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 975 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 982 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 989 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 996 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 1003 + (8022238661956951903036383691842469204807104368396360636538471783121538777089 : F) * rho 1010 + (8042344523265114689760785655982425267977046985861013169462127100873723084801 : F) * rho 1017) (rho 1048) (rho 1049) (rho 1050) (rho 1051) (rho 1052)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Part201
