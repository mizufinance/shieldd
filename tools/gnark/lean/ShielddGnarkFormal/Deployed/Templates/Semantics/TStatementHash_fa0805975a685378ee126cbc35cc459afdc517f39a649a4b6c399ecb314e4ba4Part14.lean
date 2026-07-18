import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Part14

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationPart14 rho) :
    rho 97 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((8029657076003952653527598940631458559282822244749804141989630375551212804807 : F) + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 6 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 18 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 25 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 34 + (8022238661956951903036383691842469204807104368396360636538471783121538777089 : F) * rho 41 + (8042344523265114689760785655982425267977046985861013169462127100873723084801 : F) * rho 50 + (1151517511285686876033930673470210890642168091157372340172986380352373987142 : F) * rho 57) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationPart14 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((8029657076003952653527598940631458559282822244749804141989630375551212804807 : F) + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 6 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 18 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 25 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 34 + (8022238661956951903036383691842469204807104368396360636538471783121538777089 : F) * rho 41 + (8042344523265114689760785655982425267977046985861013169462127100873723084801 : F) * rho 50 + (1151517511285686876033930673470210890642168091157372340172986380352373987142 : F) * rho 57) (rho 93) (rho 94) (rho 95) (rho 96) (rho 97)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Part14
