import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651bPart32
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.Deployed.Nullifier.Round22

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Round22Lane2

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p32 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationPart32 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s21_0 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s21_1 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s21_2 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s21_3 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s22_2 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) := by
  have hp32 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Part32.sound rho p32
  have ha0 : (rho 167) = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) + (6849267447668928646234210841379777456966734633732540873989202454970094962426 : F)) := by
    rw [hp32, Shieldd.GnarkFormal.Deployed.Nullifier.arg22_0_eq (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162), hPrev0]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane2 Shieldd.GnarkFormal.Deployed.Nullifier.s22_2
  rw [← ha0, hPrev1, hPrev2, hPrev3]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Round22Lane2
