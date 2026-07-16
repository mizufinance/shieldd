import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651bPart16
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound06
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.Deployed.Nullifier.Round06

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Round6Lane3

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p16 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationPart16 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound05.state5Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s5_0 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound05.state5Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s5_1 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound05.state5Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s5_2 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound05.state5Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s5_3 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound06.state6Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s6_3 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) := by
  have hp16 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Part16.sound rho p16
  have ha0 : (rho 87) = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound05.state5Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) + (3169994258510125562695300946459466516753097859237027453101755698752871805159 : F)) := by
    rw [hp16, Shieldd.GnarkFormal.Deployed.Nullifier.arg6_0_eq (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82), hPrev0]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound06.state6Lane3 Shieldd.GnarkFormal.Deployed.Nullifier.s6_3
  rw [← ha0, hPrev1, hPrev2, hPrev3]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Round6Lane3
