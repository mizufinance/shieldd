import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0Part17
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound07
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.Deployed.Nullifier.Round07

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.Round7Lane3

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p17 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationPart17 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound06.state6Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (6 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s6_0 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound06.state6Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (6 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s6_1 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound06.state6Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (6 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s6_2 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound06.state6Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (6 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s6_3 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound07.state7Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (6 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s7_3 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) := by
  have hp17 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.Part17.sound rho p17
  have ha0 : (rho 92) = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound06.state6Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (6 : F) + (5707913825835366556092824230880552633384012284396562419512114568454781766272 : F)) := by
    rw [hp17, Shieldd.GnarkFormal.Deployed.Nullifier.arg7_0_eq (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87), hPrev0]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound07.state7Lane3 Shieldd.GnarkFormal.Deployed.Nullifier.s7_3
  rw [← ha0, hPrev1, hPrev2, hPrev3]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.Round7Lane3
