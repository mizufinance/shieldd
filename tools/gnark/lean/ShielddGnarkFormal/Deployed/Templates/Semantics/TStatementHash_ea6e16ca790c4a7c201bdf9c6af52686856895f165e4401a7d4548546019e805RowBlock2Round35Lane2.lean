import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805TraceBlock2Round35
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805Fixed
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.RowBlock2Round35Lane2

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def endpoint (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.Poseidon7Bridge.row8v vec![(7600015574485533381823942444903391878238309401638657445141710110325668315137 : F), (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F), (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F), (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F), (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F), (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F), (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F), (5464063484924239686278651430976294814419699569805570712193386353828911860556 : F)] vec![(rho 1302), (rho 1307), (rho 1312), (rho 1317), (rho 1322), (rho 1327), (rho 1332), (rho 1337)]

theorem endpoint_eq_rawState (rho : Nat → F) :
    endpoint rho = (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.rawState2_35 rho)[2] := by
  unfold endpoint Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.rawState2_35 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.flatState2_35Lane2 Shieldd.GnarkFormal.Poseidon7Bridge.row8v Shieldd.GnarkFormal.Poseidon7Bridge.row8
  norm_num <;> ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.RowBlock2Round35Lane2
