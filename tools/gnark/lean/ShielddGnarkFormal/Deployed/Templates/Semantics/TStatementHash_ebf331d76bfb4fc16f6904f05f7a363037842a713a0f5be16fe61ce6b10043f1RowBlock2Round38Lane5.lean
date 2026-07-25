import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1TraceBlock2Round38
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1Fixed
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.RowBlock2Round38Lane5

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def endpoint (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.Poseidon7Bridge.row8v vec![(7794887768703111160845069174259889105885445540142212764247907805462223912961 : F), (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F), (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F), (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F), (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F), (2345683819285658451180229149661540703159972037542795507759787071088169233067 : F), (5777789618029937658696564431797900258309825860894885777008317627732964216186 : F), (8022238661956951903036383691842469204807104368396360636538471783121538777089 : F)] vec![(rho 1417), (rho 1422), (rho 1427), (rho 1432), (rho 1437), (rho 1442), (rho 1447), (rho 1452)]

theorem endpoint_eq_rawState (rho : Nat → F) :
    endpoint rho = (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.rawState2_38 rho)[5] := by
  unfold endpoint Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.rawState2_38 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.flatState2_38Lane5 Shieldd.GnarkFormal.Poseidon7Bridge.row8v Shieldd.GnarkFormal.Poseidon7Bridge.row8
  norm_num <;> ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.RowBlock2Round38Lane5
