import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651bPart31
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.Deployed.Nullifier.Round21

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Round21Lane3

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p31 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationPart31 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound20.state20Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s20_0 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound20.state20Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s20_1 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound20.state20Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s20_2 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound20.state20Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s20_3 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s21_3 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) := by
  have hp31 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Part31.sound rho p31
  have ha0 : (rho 162) = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound20.state20Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) + (4106060455498591909999696539072262778095731079248778115501584357839174902332 : F)) := by
    rw [hp31, Shieldd.GnarkFormal.Deployed.Nullifier.arg21_0_eq (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157), hPrev0]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane3 Shieldd.GnarkFormal.Deployed.Nullifier.s21_3
  rw [← ha0, hPrev1, hPrev2, hPrev3]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Round21Lane3
