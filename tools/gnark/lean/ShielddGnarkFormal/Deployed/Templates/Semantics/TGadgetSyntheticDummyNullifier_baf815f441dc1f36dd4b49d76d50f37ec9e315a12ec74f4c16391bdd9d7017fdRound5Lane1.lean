import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fdPart15
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound05
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.Nullifier.Round05
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fdFixed

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.Round5Lane1

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p15 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.relationPart15 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound04.state4Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s4_0 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound04.state4Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s4_1 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound04.state4Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s4_2 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound04.state4Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s4_3 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound05.state5Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s5_1 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) := by
  have hp15 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.Part15.sound rho p15
  have ha0 : (rho 82) = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound04.state4Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) + (8133406852969123956605817319998510162150586162953352059663647357307786450170 : F)) := by
    rw [hp15, hPrev0, ← Shieldd.GnarkFormal.Deployed.Nullifier.arg5_0_eq (rho 57) (rho 62) (rho 67) (rho 72) (rho 77)]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound05.state5Lane1 Shieldd.GnarkFormal.Deployed.Nullifier.s5_1
  rw [← ha0, hPrev1, hPrev2, hPrev3]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.Round5Lane1
