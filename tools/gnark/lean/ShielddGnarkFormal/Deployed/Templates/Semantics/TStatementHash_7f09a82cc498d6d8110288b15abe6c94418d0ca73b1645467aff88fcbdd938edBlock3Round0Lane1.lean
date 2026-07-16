import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edPart282
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edPart283
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edPart284
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edScalarBlock3Round0Lane1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edRowBlock3Round0Lane1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edFixed
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Block3Round0Lane1

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p282 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart282 rho) (p283 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart283 rho) (p284 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart284 rho)
    (hChain : Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.hash2 rho = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.flatState2_38Lane1 rho) :
    (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.state3_0 rho)[1] = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.flatState3_0Lane1 rho := by
  have hp282 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part282.sound rho p282
  have hp283 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part283.sound rho p283
  have hp284 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part284.sound rho p284
  have hChainConstant : (0 : F) + (4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) = (4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) := by
    exact Shieldd.GnarkFormal.Poseidon7Bridge.natCastSum8MulEq 1 0 1 4148638154552987643427927719929617623033282419205047107576105870710636474516 0 0 0 0 0 0 0 0 0 0 0 0 4148638154552987643427927719929617623033282419205047107576105870710636474516 (by decide)
  have hChainInput : Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.flatState2_38Lane1 rho + Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.roundConstants0[1] = ((4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 1417 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 1422 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 1427 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 1432 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 1437 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 1442 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 1447 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 1452) := by
    unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.flatState2_38Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.roundConstants0
    change (((4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 1417 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 1422 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 1427 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 1432 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 1437 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 1442 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 1447 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 1452) + (4148638154552987643427927719929617623033282419205047107576105870710636474516 : F)) = ((4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 1417 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 1422 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 1427 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 1432 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 1437 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 1442 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 1447 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 1452)
    linear_combination hChainConstant
  have hInput0 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Fixed.b3l0_sound.symm
  have hInput1 := (Eq.trans (congrArg Shieldd.GnarkFormal.Poseidon7Bridge.p17 (Eq.trans (congrArg (fun value => value + Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.roundConstants0[1]) hChain) hChainInput)) hp282.symm)
  have hInput2 := hp283.symm
  have hInput3 := hp284.symm
  have hInput4 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Fixed.b3l4_sound.symm
  have hInput5 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Fixed.b3l5_sound.symm
  have hInput6 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Fixed.b3l6_sound.symm
  have hInput7 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Fixed.b3l7_sound.symm
  calc
    (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.state3_0 rho)[1] = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.ScalarBlock3Round0Lane1.endpoint rho :=
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.ScalarBlock3Round0Lane1.state_eq_endpoint rho
    _ = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.RowBlock3Round0Lane1.endpoint rho := by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.ScalarBlock3Round0Lane1.endpoint Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.RowBlock3Round0Lane1.endpoint
      apply Shieldd.GnarkFormal.Poseidon7Bridge.row8v_congr
      simp [Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.roundConstants0] at hInput0 hInput1 hInput2 hInput3 hInput4 hInput5 hInput6 hInput7 ⊢
      ring_nf at hInput0 hInput1 hInput2 hInput3 hInput4 hInput5 hInput6 hInput7 ⊢
      rw [hInput0, hInput1, hInput2, hInput3, hInput4, hInput5, hInput6, hInput7]
    _ = (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.rawState3_0 rho)[1] :=
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.RowBlock3Round0Lane1.endpoint_eq_rawState rho

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Block3Round0Lane1
