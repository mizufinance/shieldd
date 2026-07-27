import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Round2Lane0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Round2Lane1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Round2Lane2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Round2Lane3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Round3Lane0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Round3Lane1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Round3Lane2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144Round3Lane3
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.Range1

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p6 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationPart6 rho) (p7 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationPart7 rho) (p8 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationPart8 rho) (p9 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationPart9 rho) (p10 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationPart10 rho) (p11 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationPart11 rho) (p12 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationPart12 rho) (p13 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationPart13 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_0 (rho 17) (rho 22) (rho 27) (rho 32))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_1 (rho 17) (rho 22) (rho 27) (rho 32))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_2 (rho 17) (rho 22) (rho 27) (rho 32))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_3 (rho 17) (rho 22) (rho 27) (rho 32)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03.state3Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s3_0 (rho 57) (rho 62) (rho 67) (rho 72) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03.state3Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s3_1 (rho 57) (rho 62) (rho 67) (rho 72) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03.state3Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s3_2 (rho 57) (rho 62) (rho 67) (rho 72) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03.state3Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s3_3 (rho 57) (rho 62) (rho 67) (rho 72) := by
  have h2_0 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.Round2Lane0.sound rho p6 p7 p8 p9 hPrev0 hPrev1 hPrev2 hPrev3
  have h2_1 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.Round2Lane1.sound rho p6 p7 p8 p9 hPrev0 hPrev1 hPrev2 hPrev3
  have h2_2 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.Round2Lane2.sound rho p6 p7 p8 p9 hPrev0 hPrev1 hPrev2 hPrev3
  have h2_3 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.Round2Lane3.sound rho p6 p7 p8 p9 hPrev0 hPrev1 hPrev2 hPrev3
  have h2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s2_0 (rho 37) (rho 42) (rho 47) (rho 52) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s2_1 (rho 37) (rho 42) (rho 47) (rho 52) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s2_2 (rho 37) (rho 42) (rho 47) (rho 52) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s2_3 (rho 37) (rho 42) (rho 47) (rho 52) := ⟨h2_0, h2_1, h2_2, h2_3⟩
  have h3_0 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.Round3Lane0.sound rho p10 p11 p12 p13 h2.1 h2.2.1 h2.2.2.1 h2.2.2.2
  have h3_1 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.Round3Lane1.sound rho p10 p11 p12 p13 h2.1 h2.2.1 h2.2.2.1 h2.2.2.2
  have h3_2 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.Round3Lane2.sound rho p10 p11 p12 p13 h2.1 h2.2.1 h2.2.2.1 h2.2.2.2
  have h3_3 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.Round3Lane3.sound rho p10 p11 p12 p13 h2.1 h2.2.1 h2.2.2.1 h2.2.2.2
  have h3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03.state3Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s3_0 (rho 57) (rho 62) (rho 67) (rho 72) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03.state3Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s3_1 (rho 57) (rho 62) (rho 67) (rho 72) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03.state3Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s3_2 (rho 57) (rho 62) (rho 67) (rho 72) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03.state3Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (4 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s3_3 (rho 57) (rho 62) (rho 67) (rho 72) := ⟨h3_0, h3_1, h3_2, h3_3⟩
  exact h3

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.Range1
