import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32Part14
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound04
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.Nullifier.Round04

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Round4Lane2

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p14 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.relationPart14 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03.state3Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s3_0 (rho 57) (rho 62) (rho 67) (rho 72))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03.state3Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s3_1 (rho 57) (rho 62) (rho 67) (rho 72))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03.state3Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s3_2 (rho 57) (rho 62) (rho 67) (rho 72))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03.state3Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s3_3 (rho 57) (rho 62) (rho 67) (rho 72)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound04.state4Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s4_2 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) := by
  have hp14 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Part14.sound rho p14
  have ha0 : (rho 77) = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03.state3Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) + (7736716524450328636992649732099229308498454296838040636411888315240829896039 : F)) := by
    rw [hp14, hPrev0, ← Shieldd.GnarkFormal.Deployed.Nullifier.arg4_0_eq (rho 57) (rho 62) (rho 67) (rho 72)]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound04.state4Lane2 Shieldd.GnarkFormal.Deployed.Nullifier.s4_2
  rw [← ha0, hPrev1, hPrev2, hPrev3]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Round4Lane2
