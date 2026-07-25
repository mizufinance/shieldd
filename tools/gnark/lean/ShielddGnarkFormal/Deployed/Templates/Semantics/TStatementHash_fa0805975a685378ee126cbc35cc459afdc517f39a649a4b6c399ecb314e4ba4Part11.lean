import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Part11

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationPart11 rho) :
    rho 82 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((5164473840015555661096328793642317708519622301517820944467689623546971147848 : F) + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 6 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 18 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 25 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 34 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 41 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 50 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 57) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationPart11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((5164473840015555661096328793642317708519622301517820944467689623546971147848 : F) + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 6 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 18 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 25 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 34 + (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F) * rho 41 + (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F) * rho 50 + (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F) * rho 57) (rho 78) (rho 79) (rho 80) (rho 81) (rho 82)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Part11
