import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907Round37Lane0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907Round37Lane1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907Round37Lane2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907Round37Lane3
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Range7

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p53 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart53 rho) (p54 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart54 rho) (p55 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart55 rho) (p56 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart56 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound36.state36Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s36_0 (rho 252) (rho 257) (rho 262) (rho 267))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound36.state36Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s36_1 (rho 252) (rho 257) (rho 262) (rho 267))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound36.state36Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s36_2 (rho 252) (rho 257) (rho 262) (rho 267))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound36.state36Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s36_3 (rho 252) (rho 257) (rho 262) (rho 267)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_0 (rho 272) (rho 277) (rho 282) (rho 287) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_1 (rho 272) (rho 277) (rho 282) (rho 287) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_2 (rho 272) (rho 277) (rho 282) (rho 287) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_3 (rho 272) (rho 277) (rho 282) (rho 287) := by
  have h37_0 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Round37Lane0.sound rho p53 p54 p55 p56 hPrev0 hPrev1 hPrev2 hPrev3
  have h37_1 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Round37Lane1.sound rho p53 p54 p55 p56 hPrev0 hPrev1 hPrev2 hPrev3
  have h37_2 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Round37Lane2.sound rho p53 p54 p55 p56 hPrev0 hPrev1 hPrev2 hPrev3
  have h37_3 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Round37Lane3.sound rho p53 p54 p55 p56 hPrev0 hPrev1 hPrev2 hPrev3
  have h37 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_0 (rho 272) (rho 277) (rho 282) (rho 287) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_1 (rho 272) (rho 277) (rho 282) (rho 287) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_2 (rho 272) (rho 277) (rho 282) (rho 287) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_3 (rho 272) (rho 277) (rho 282) (rho 287) := ⟨h37_0, h37_1, h37_2, h37_3⟩
  exact h37

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Range7
