import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907Round38Lane0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907Round38Lane1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907Round38Lane2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907Round38Lane3
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Range8

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p57 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart57 rho) (p58 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart58 rho) (p59 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart59 rho) (p60 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart60 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_0 (rho 272) (rho 277) (rho 282) (rho 287))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_1 (rho 272) (rho 277) (rho 282) (rho 287))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_2 (rho 272) (rho 277) (rho 282) (rho 287))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_3 (rho 272) (rho 277) (rho 282) (rho 287)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound38.state38Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s38_0 (rho 292) (rho 297) (rho 302) (rho 307) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound38.state38Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s38_1 (rho 292) (rho 297) (rho 302) (rho 307) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound38.state38Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s38_2 (rho 292) (rho 297) (rho 302) (rho 307) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound38.state38Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s38_3 (rho 292) (rho 297) (rho 302) (rho 307) := by
  have h38_0 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Round38Lane0.sound rho p57 p58 p59 p60 hPrev0 hPrev1 hPrev2 hPrev3
  have h38_1 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Round38Lane1.sound rho p57 p58 p59 p60 hPrev0 hPrev1 hPrev2 hPrev3
  have h38_2 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Round38Lane2.sound rho p57 p58 p59 p60 hPrev0 hPrev1 hPrev2 hPrev3
  have h38_3 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Round38Lane3.sound rho p57 p58 p59 p60 hPrev0 hPrev1 hPrev2 hPrev3
  have h38 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound38.state38Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s38_0 (rho 292) (rho 297) (rho 302) (rho 307) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound38.state38Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s38_1 (rho 292) (rho 297) (rho 302) (rho 307) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound38.state38Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s38_2 (rho 292) (rho 297) (rho 302) (rho 307) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound38.state38Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s38_3 (rho 292) (rho 297) (rho 302) (rho 307) := ⟨h38_0, h38_1, h38_2, h38_3⟩
  exact h38

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Range8
