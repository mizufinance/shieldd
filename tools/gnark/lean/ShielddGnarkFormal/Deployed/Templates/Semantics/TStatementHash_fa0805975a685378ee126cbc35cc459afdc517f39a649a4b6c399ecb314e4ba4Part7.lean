import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4
import ShielddGnarkFormal.Deployed.StatementHashDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Part7

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationPart7 rho) :
    rho 62 = Shieldd.GnarkFormal.Poseidon7Bridge.p17 ((1664455254958887241090871073712863206741556214361611154108291466374117405276 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 6 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 18 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 25 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 34 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 41 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 50 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 57) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationPart7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩

  exact Shieldd.GnarkFormal.Deployed.StatementHash.p17_from_rows
    ((1664455254958887241090871073712863206741556214361611154108291466374117405276 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 6 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 18 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 25 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 34 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 41 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 50 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 57) (rho 58) (rho 59) (rho 60) (rho 61) (rho 62)
    (by simpa only [one_mul] using h0)
    (by simpa only [one_mul] using h1)
    (by simpa only [one_mul] using h2)
    (by simpa only [one_mul] using h3)
    (by simpa only [one_mul] using h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Part7
