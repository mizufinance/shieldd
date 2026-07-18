import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805Part188
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805Part189
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805ScalarBlock2Round0Lane5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805RowBlock2Round0Lane5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805Fixed
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Block2Round0Lane5

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p188 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationPart188 rho) (p189 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.relationPart189 rho)
    (hChain : Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.hash1 rho = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.flatState1_38Lane1 rho) :
    (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.state2_0 rho)[5] = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.flatState2_0Lane5 rho := by
  have hp188 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Part188.sound rho p188
  have hp189 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Part189.sound rho p189
  have hChainConstant : (0 : F) + (4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) = (4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) := by
    exact Shieldd.GnarkFormal.Poseidon7Bridge.natCastSum8MulEq 1 0 1 4148638154552987643427927719929617623033282419205047107576105870710636474516 0 0 0 0 0 0 0 0 0 0 0 0 4148638154552987643427927719929617623033282419205047107576105870710636474516 (by decide)
  have hChainInput : Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.flatState1_38Lane1 rho + Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.roundConstants0[1] = ((4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 969 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 974 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 979 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 984 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 989 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 994 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 999 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 1004) := by
    unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.flatState1_38Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.roundConstants0
    change (((4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 969 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 974 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 979 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 984 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 989 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 994 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 999 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 1004) + (4148638154552987643427927719929617623033282419205047107576105870710636474516 : F)) = ((4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 969 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 974 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 979 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 984 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 989 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 994 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 999 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 1004)
    linear_combination hChainConstant
  have hInput0 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Fixed.b2l0_sound.symm
  have hInput1 := (Eq.trans (congrArg Shieldd.GnarkFormal.Poseidon7Bridge.p17 (Eq.trans (congrArg (fun value => value + Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.roundConstants0[1]) hChain) hChainInput)) hp188.symm)
  have hInput2 := hp189.symm
  have hInput3 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Fixed.b2l3_sound.symm
  have hInput4 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Fixed.b2l4_sound.symm
  have hInput5 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Fixed.b2l5_sound.symm
  have hInput6 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Fixed.b2l6_sound.symm
  have hInput7 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Fixed.b2l7_sound.symm
  calc
    (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.state2_0 rho)[5] = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.ScalarBlock2Round0Lane5.endpoint rho :=
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.ScalarBlock2Round0Lane5.state_eq_endpoint rho
    _ = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.RowBlock2Round0Lane5.endpoint rho := by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.ScalarBlock2Round0Lane5.endpoint Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.RowBlock2Round0Lane5.endpoint
      apply Shieldd.GnarkFormal.Poseidon7Bridge.row8v_congr
      simp [Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.roundConstants0] at hInput0 hInput1 hInput2 hInput3 hInput4 hInput5 hInput6 hInput7 ⊢
      ring_nf at hInput0 hInput1 hInput2 hInput3 hInput4 hInput5 hInput6 hInput7 ⊢
      rw [hInput0, hInput1, hInput2, hInput3, hInput4, hInput5, hInput6, hInput7]
    _ = (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Trace.rawState2_0 rho)[5] :=
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.RowBlock2Round0Lane5.endpoint_eq_rawState rho

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_ea6e16ca790c4a7c201bdf9c6af52686856895f165e4401a7d4548546019e805.Block2Round0Lane5
