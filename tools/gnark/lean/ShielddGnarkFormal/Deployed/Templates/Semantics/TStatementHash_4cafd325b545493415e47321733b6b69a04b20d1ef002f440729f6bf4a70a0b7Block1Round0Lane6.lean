import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7Part94
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7Part95
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7Part96
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7Part97
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7Part98
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7ScalarBlock1Round0Lane6
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7RowBlock1Round0Lane6
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7Fixed
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Block1Round0Lane6

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p94 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationPart94 rho) (p95 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationPart95 rho) (p96 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationPart96 rho) (p97 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationPart97 rho) (p98 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.relationPart98 rho)
    (hChain : Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.hash0 rho = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.flatState0_38Lane1 rho) :
    (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.state1_0 rho)[6] = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.flatState1_0Lane6 rho := by
  have hp94 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Part94.sound rho p94
  have hp95 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Part95.sound rho p95
  have hp96 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Part96.sound rho p96
  have hp97 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Part97.sound rho p97
  have hp98 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Part98.sound rho p98
  have hChainConstant : (0 : F) + (4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) = (4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) := by
    exact Shieldd.GnarkFormal.Poseidon7Bridge.natCastSum8MulEq 1 0 1 4148638154552987643427927719929617623033282419205047107576105870710636474516 0 0 0 0 0 0 0 0 0 0 0 0 4148638154552987643427927719929617623033282419205047107576105870710636474516 (by decide)
  have hChainInput : Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.flatState0_38Lane1 rho + Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.roundConstants0[1] = ((4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 453 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 458 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 463 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 468 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 473 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 478 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 483 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 488) := by
    unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.flatState0_38Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.roundConstants0
    change (((4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 453 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 458 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 463 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 468 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 473 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 478 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 483 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 488) + (4148638154552987643427927719929617623033282419205047107576105870710636474516 : F)) = ((4148638154552987643427927719929617623033282419205047107576105870710636474516 : F) + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 453 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 458 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 463 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 468 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 473 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 478 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 483 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 488)
    linear_combination hChainConstant
  have hInput0 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Fixed.b1l0_sound.symm
  have hInput1 := (Eq.trans (congrArg Shieldd.GnarkFormal.Poseidon7Bridge.p17 (Eq.trans (congrArg (fun value => value + Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.roundConstants0[1]) hChain) hChainInput)) hp94.symm)
  have hInput2 := hp95.symm
  have hInput3 := hp96.symm
  have hInput4 := hp97.symm
  have hInput5 := hp98.symm
  have hInput6 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Fixed.b1l6_sound.symm
  have hInput7 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Fixed.b1l7_sound.symm
  calc
    (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.state1_0 rho)[6] = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.ScalarBlock1Round0Lane6.endpoint rho :=
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.ScalarBlock1Round0Lane6.state_eq_endpoint rho
    _ = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.RowBlock1Round0Lane6.endpoint rho := by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.ScalarBlock1Round0Lane6.endpoint Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.RowBlock1Round0Lane6.endpoint
      apply Shieldd.GnarkFormal.Poseidon7Bridge.row8v_congr
      simp [Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.roundConstants0] at hInput0 hInput1 hInput2 hInput3 hInput4 hInput5 hInput6 hInput7 ⊢
      ring_nf at hInput0 hInput1 hInput2 hInput3 hInput4 hInput5 hInput6 hInput7 ⊢
      rw [hInput0, hInput1, hInput2, hInput3, hInput4, hInput5, hInput6, hInput7]
    _ = (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.rawState1_0 rho)[6] :=
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.RowBlock1Round0Lane6.endpoint_eq_rawState rho

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Block1Round0Lane6
