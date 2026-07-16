import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edPart188
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edPart189
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edPart190
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edPart191
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edPart192
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edPart193
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edPart194
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edScalarBlock2Round0Lane2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edRowBlock2Round0Lane2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938edFixed
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Block2Round0Lane2

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p188 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart188 rho) (p189 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart189 rho) (p190 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart190 rho) (p191 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart191 rho) (p192 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart192 rho) (p193 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart193 rho) (p194 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.relationPart194 rho)
    (hChain : Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.hash1 rho = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.flatState1_38Lane1 rho) :
    (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.state2_0 rho)[2] = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.flatState2_0Lane2 rho := by
  have hp188 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part188.sound rho p188
  have hp189 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part189.sound rho p189
  have hp190 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part190.sound rho p190
  have hp191 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part191.sound rho p191
  have hp192 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part192.sound rho p192
  have hp193 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part193.sound rho p193
  have hp194 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Part194.sound rho p194
  have hChainConstant : (0 : F) + (4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) = (4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) := by
    exact Shieldd.GnarkFormal.Poseidon7Bridge.natCastSum8MulEq 1 0 1 4148638154552987643427927719929617623033282419205047107576105870710636474516 0 0 0 0 0 0 0 0 0 0 0 0 4148638154552987643427927719929617623033282419205047107576105870710636474516 (by decide)
  have hChainInput : Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.flatState1_38Lane1 rho + Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.roundConstants0[1] = ((4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 935 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 940 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 945 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 950 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 955 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 960 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 965 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 970) := by
    unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.flatState1_38Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.roundConstants0
    change (((4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 935 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 940 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 945 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 950 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 955 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 960 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 965 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 970) + (4148638154552987643427927719929617623033282419205047107576105870710636474516 : F)) = ((4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 935 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 940 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 945 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 950 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 955 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 960 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 965 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 970)
    linear_combination hChainConstant
  have hInput0 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Fixed.b2l0_sound.symm
  have hInput1 := (Eq.trans (congrArg Shieldd.GnarkFormal.Poseidon7Bridge.p17 (Eq.trans (congrArg (fun value => value + Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.roundConstants0[1]) hChain) hChainInput)) hp188.symm)
  have hInput2 := hp189.symm
  have hInput3 := hp190.symm
  have hInput4 := hp191.symm
  have hInput5 := hp192.symm
  have hInput6 := hp193.symm
  have hInput7 := hp194.symm
  calc
    (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.state2_0 rho)[2] = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.ScalarBlock2Round0Lane2.endpoint rho :=
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.ScalarBlock2Round0Lane2.state_eq_endpoint rho
    _ = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.RowBlock2Round0Lane2.endpoint rho := by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.ScalarBlock2Round0Lane2.endpoint Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.RowBlock2Round0Lane2.endpoint
      apply Shieldd.GnarkFormal.Poseidon7Bridge.row8v_congr
      simp [Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.roundConstants0] at hInput0 hInput1 hInput2 hInput3 hInput4 hInput5 hInput6 hInput7 ⊢
      ring_nf at hInput0 hInput1 hInput2 hInput3 hInput4 hInput5 hInput6 hInput7 ⊢
      rw [hInput0, hInput1, hInput2, hInput3, hInput4, hInput5, hInput6, hInput7]
    _ = (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Trace.rawState2_0 rho)[2] :=
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.RowBlock2Round0Lane2.endpoint_eq_rawState rho

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7f09a82cc498d6d8110288b15abe6c94418d0ca73b1645467aff88fcbdd938ed.Block2Round0Lane2
