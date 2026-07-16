import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6Part30
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound20
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.Deployed.Nullifier.Round20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Round20Lane2

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p30 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationPart30 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound19.state19Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s19_0 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound19.state19Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s19_1 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound19.state19Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s19_2 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound19.state19Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s19_3 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound20.state20Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s20_2 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) := by
  have hp30 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Part30.sound rho p30
  have ha0 : (rho 157) = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound19.state19Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) + (3721920025713798370498076140674600002053797988537455641711174690390895385364 : F)) := by
    rw [hp30, Shieldd.GnarkFormal.Deployed.Nullifier.arg20_0_eq (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152), hPrev0]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound20.state20Lane2 Shieldd.GnarkFormal.Deployed.Nullifier.s20_2
  rw [← ha0, hPrev1, hPrev2, hPrev3]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Round20Lane2
