import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edTraceBlock2Round37
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edFixed
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.RowBlock2Round37Lane7

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def endpoint (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.Poseidon7Bridge.row8v vec![(7881497632799812395965569942862776762617506046143792906072884558856248623105 : F), (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F), (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F), (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F), (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F), (8022238661956951903036383691842469204807104368396360636538471783121538777089 : F), (8042344523265114689760785655982425267977046985861013169462127100873723084801 : F), (1151517511285686876033930673470210890642168091157372340172986380352373987142 : F)] vec![(rho 1377), (rho 1382), (rho 1387), (rho 1392), (rho 1397), (rho 1402), (rho 1407), (rho 1412)]

theorem endpoint_eq_rawState (rho : Nat → F) :
    endpoint rho = (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.rawState2_37 rho)[7] := by
  unfold endpoint Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.rawState2_37 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.flatState2_37Lane7 Shieldd.GnarkFormal.Poseidon7Bridge.row8v Shieldd.GnarkFormal.Poseidon7Bridge.row8
  norm_num <;> ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.RowBlock2Round37Lane7
