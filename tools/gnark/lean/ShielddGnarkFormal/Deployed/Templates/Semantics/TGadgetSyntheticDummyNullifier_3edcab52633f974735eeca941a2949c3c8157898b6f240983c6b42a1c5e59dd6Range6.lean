import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6Round36Lane0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6Round36Lane1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6Round36Lane2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6Round36Lane3
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Range6

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p49 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationPart49 rho) (p50 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationPart50 rho) (p51 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationPart51 rho) (p52 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationPart52 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound35.state35Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s35_0 (rho 232) (rho 237) (rho 242) (rho 247))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound35.state35Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s35_1 (rho 232) (rho 237) (rho 242) (rho 247))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound35.state35Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s35_2 (rho 232) (rho 237) (rho 242) (rho 247))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound35.state35Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s35_3 (rho 232) (rho 237) (rho 242) (rho 247)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound36.state36Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s36_0 (rho 252) (rho 257) (rho 262) (rho 267) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound36.state36Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s36_1 (rho 252) (rho 257) (rho 262) (rho 267) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound36.state36Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s36_2 (rho 252) (rho 257) (rho 262) (rho 267) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound36.state36Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s36_3 (rho 252) (rho 257) (rho 262) (rho 267) := by
  have h36_0 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Round36Lane0.sound rho p49 p50 p51 p52 hPrev0 hPrev1 hPrev2 hPrev3
  have h36_1 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Round36Lane1.sound rho p49 p50 p51 p52 hPrev0 hPrev1 hPrev2 hPrev3
  have h36_2 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Round36Lane2.sound rho p49 p50 p51 p52 hPrev0 hPrev1 hPrev2 hPrev3
  have h36_3 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Round36Lane3.sound rho p49 p50 p51 p52 hPrev0 hPrev1 hPrev2 hPrev3
  have h36 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound36.state36Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s36_0 (rho 252) (rho 257) (rho 262) (rho 267) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound36.state36Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s36_1 (rho 252) (rho 257) (rho 262) (rho 267) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound36.state36Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s36_2 (rho 252) (rho 257) (rho 262) (rho 267) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound36.state36Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s36_3 (rho 252) (rho 257) (rho 262) (rho 267) := ⟨h36_0, h36_1, h36_2, h36_3⟩
  exact h36

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Range6
