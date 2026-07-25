import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4TraceBlock0Round1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4Fixed
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.RowBlock0Round1Lane7

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def endpoint (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.Poseidon7Bridge.row8v vec![(7881497632799812395965569942862776762617506046143792906072884558856248623105 : F), (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F), (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F), (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F), (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F), (8022238661956951903036383691842469204807104368396360636538471783121538777089 : F), (8042344523265114689760785655982425267977046985861013169462127100873723084801 : F), (1151517511285686876033930673470210890642168091157372340172986380352373987142 : F)] vec![(rho 62), (rho 67), (rho 72), (rho 77), (rho 82), (rho 87), (rho 92), (rho 97)]

theorem endpoint_eq_rawState (rho : Nat → F) :
    endpoint rho = (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Trace.rawState0_1 rho)[7] := by
  unfold endpoint Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Trace.rawState0_1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Trace.flatState0_1Lane7 Shieldd.GnarkFormal.Poseidon7Bridge.row8v Shieldd.GnarkFormal.Poseidon7Bridge.row8
  norm_num <;> ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.RowBlock0Round1Lane7
