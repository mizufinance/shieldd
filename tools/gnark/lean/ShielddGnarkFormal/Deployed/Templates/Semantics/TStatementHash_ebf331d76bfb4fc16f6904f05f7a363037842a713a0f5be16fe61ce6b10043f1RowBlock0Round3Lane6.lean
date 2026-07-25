import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1TraceBlock0Round3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1Fixed
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.RowBlock0Round3Lane6

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def endpoint (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.Poseidon7Bridge.row8v vec![(7841285910183486822516766014582864636277620811214487840225573923351880007681 : F), (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F), (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F), (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F), (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F), (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F), (8022238661956951903036383691842469204807104368396360636538471783121538777089 : F), (8042344523265114689760785655982425267977046985861013169462127100873723084801 : F)] vec![(rho 138), (rho 143), (rho 148), (rho 153), (rho 158), (rho 163), (rho 168), (rho 173)]

theorem endpoint_eq_rawState (rho : Nat → F) :
    endpoint rho = (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.rawState0_3 rho)[6] := by
  unfold endpoint Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.rawState0_3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.flatState0_3Lane6 Shieldd.GnarkFormal.Poseidon7Bridge.row8v Shieldd.GnarkFormal.Poseidon7Bridge.row8
  norm_num <;> ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.RowBlock0Round3Lane6
