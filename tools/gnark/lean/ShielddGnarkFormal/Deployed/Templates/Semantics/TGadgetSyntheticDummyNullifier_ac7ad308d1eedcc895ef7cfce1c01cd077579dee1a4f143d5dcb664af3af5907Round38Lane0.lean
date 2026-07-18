import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907Part57
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907Part58
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907Part59
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907Part60
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound38
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.Deployed.Nullifier.FullTail

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Round38Lane0

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p57 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart57 rho) (p58 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart58 rho) (p59 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart59 rho) (p60 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart60 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_0 (rho 272) (rho 277) (rho 282) (rho 287))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_1 (rho 272) (rho 277) (rho 282) (rho 287))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_2 (rho 272) (rho 277) (rho 282) (rho 287))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s37_3 (rho 272) (rho 277) (rho 282) (rho 287)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound38.state38Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s38_0 (rho 292) (rho 297) (rho 302) (rho 307) := by
  have hp57 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Part57.sound rho p57
  have hp58 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Part58.sound rho p58
  have hp59 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Part59.sound rho p59
  have hp60 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Part60.sound rho p60
  have ha0 : (rho 292) = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) + (1341193910735288834156152818207813295161416180387476007289323480480850290318 : F)) := by
    rw [hp57, hPrev0, ← Shieldd.GnarkFormal.Deployed.Nullifier.arg38_0_eq (rho 272) (rho 277) (rho 282) (rho 287)]
  have ha1 : (rho 297) = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) + (6430227820490268278323837184448206513428639661392170572655482468189896623489 : F)) := by
    rw [hp58, hPrev1, ← Shieldd.GnarkFormal.Deployed.Nullifier.arg38_1_eq (rho 272) (rho 277) (rho 282) (rho 287)]
  have ha2 : (rho 302) = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) + (5381106858655589782618523649345652522506825219090054633547753330769140464666 : F)) := by
    rw [hp59, hPrev2, ← Shieldd.GnarkFormal.Deployed.Nullifier.arg38_2_eq (rho 272) (rho 277) (rho 282) (rho 287)]
  have ha3 : (rho 307) = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound37.state37Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) + (6815943890781966378087179499267196955390238260135387729266185493827955661877 : F)) := by
    rw [hp60, hPrev3, ← Shieldd.GnarkFormal.Deployed.Nullifier.arg38_3_eq (rho 272) (rho 277) (rho 282) (rho 287)]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound38.state38Lane0 Shieldd.GnarkFormal.Deployed.Nullifier.s38_0
  rw [← ha0, ← ha1, ← ha2, ← ha3]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Round38Lane0
