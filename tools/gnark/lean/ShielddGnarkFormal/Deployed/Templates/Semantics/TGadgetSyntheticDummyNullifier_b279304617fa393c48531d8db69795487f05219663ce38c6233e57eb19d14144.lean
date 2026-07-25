import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Range0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Range1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Range2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Range3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Range4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Range5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Range6
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Range7
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Range8
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat → F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relation rho

def spec (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Nullifier.s38_1 (rho 292) (rho 297) (rho 302) (rho 307) =
    Shieldd.GnarkFormal.Poseidon3Bridge.permSpec3
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F)

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  unfold relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relation at h
  rcases h with ⟨p0, h⟩
  rcases h with ⟨p1, h⟩
  rcases h with ⟨p2, h⟩
  rcases h with ⟨p3, h⟩
  rcases h with ⟨p4, h⟩
  rcases h with ⟨p5, h⟩
  rcases h with ⟨p6, h⟩
  rcases h with ⟨p7, h⟩
  rcases h with ⟨p8, h⟩
  rcases h with ⟨p9, h⟩
  rcases h with ⟨p10, h⟩
  rcases h with ⟨p11, h⟩
  rcases h with ⟨p12, h⟩
  rcases h with ⟨p13, h⟩
  rcases h with ⟨p14, h⟩
  rcases h with ⟨p15, h⟩
  rcases h with ⟨p16, h⟩
  rcases h with ⟨p17, h⟩
  rcases h with ⟨p18, h⟩
  rcases h with ⟨p19, h⟩
  rcases h with ⟨p20, h⟩
  rcases h with ⟨p21, h⟩
  rcases h with ⟨p22, h⟩
  rcases h with ⟨p23, h⟩
  rcases h with ⟨p24, h⟩
  rcases h with ⟨p25, h⟩
  rcases h with ⟨p26, h⟩
  rcases h with ⟨p27, h⟩
  rcases h with ⟨p28, h⟩
  rcases h with ⟨p29, h⟩
  rcases h with ⟨p30, h⟩
  rcases h with ⟨p31, h⟩
  rcases h with ⟨p32, h⟩
  rcases h with ⟨p33, h⟩
  rcases h with ⟨p34, h⟩
  rcases h with ⟨p35, h⟩
  rcases h with ⟨p36, h⟩
  rcases h with ⟨p37, h⟩
  rcases h with ⟨p38, h⟩
  rcases h with ⟨p39, h⟩
  rcases h with ⟨p40, h⟩
  rcases h with ⟨p41, h⟩
  rcases h with ⟨p42, h⟩
  rcases h with ⟨p43, h⟩
  rcases h with ⟨p44, h⟩
  rcases h with ⟨p45, h⟩
  rcases h with ⟨p46, h⟩
  rcases h with ⟨p47, h⟩
  rcases h with ⟨p48, h⟩
  rcases h with ⟨p49, h⟩
  rcases h with ⟨p50, h⟩
  rcases h with ⟨p51, h⟩
  rcases h with ⟨p52, h⟩
  rcases h with ⟨p53, h⟩
  rcases h with ⟨p54, h⟩
  rcases h with ⟨p55, h⟩
  rcases h with ⟨p56, h⟩
  rcases h with ⟨p57, h⟩
  rcases h with ⟨p58, h⟩
  rcases h with ⟨p59, h⟩
  have p60 := h
  have h0 := Range0.sound rho p0 p1 p2 p3 p4 p5
  have h1 := Range1.sound rho p6 p7 p8 p9 p10 p11 p12 p13 h0.1 h0.2.1 h0.2.2.1 h0.2.2.2
  have h2 := Range2.sound rho p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 h1.1 h1.2.1 h1.2.2.1 h1.2.2.2
  have h3 := Range3.sound rho p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 h2.1 h2.2.1 h2.2.2.1 h2.2.2.2
  have h4 := Range4.sound rho p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 h3.1 h3.2.1 h3.2.2.1 h3.2.2.2
  have h5 := Range5.sound rho p45 p46 p47 p48 h4.1 h4.2.1 h4.2.2.1 h4.2.2.2
  have h6 := Range6.sound rho p49 p50 p51 p52 h5.1 h5.2.1 h5.2.2.1 h5.2.2.2
  have h7 := Range7.sound rho p53 p54 p55 p56 h6.1 h6.2.1 h6.2.2.1 h6.2.2.2
  have h8 := Range8.sound rho p57 p58 p59 p60 h7.1 h7.2.1 h7.2.2.1 h7.2.2.2
  unfold spec
  rw [← Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound38.output_eq_permSpec3]
  rw [h8.2.1]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144
