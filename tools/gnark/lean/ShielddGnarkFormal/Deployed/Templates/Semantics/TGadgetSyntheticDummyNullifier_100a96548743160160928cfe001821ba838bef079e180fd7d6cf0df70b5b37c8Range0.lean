import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8Round0Lane0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8Round0Lane1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8Round0Lane2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8Round0Lane3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8Round1Lane0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8Round1Lane1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8Round1Lane2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8Round1Lane3
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Range0

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p0 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationPart0 rho) (p1 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationPart1 rho) (p2 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationPart2 rho) (p3 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationPart3 rho) (p4 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationPart4 rho) (p5 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationPart5 rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (7 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_0 (rho 17) (rho 22) (rho 27) (rho 32) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (7 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_1 (rho 17) (rho 22) (rho 27) (rho 32) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (7 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_2 (rho 17) (rho 22) (rho 27) (rho 32) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (7 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_3 (rho 17) (rho 22) (rho 27) (rho 32) := by
  have h0_0 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Round0Lane0.sound rho p0 p1
  have h0_1 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Round0Lane1.sound rho p0 p1
  have h0_2 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Round0Lane2.sound rho p0 p1
  have h0_3 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Round0Lane3.sound rho p0 p1
  have h0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (7 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Fixed.s0_0 (rho 6) (rho 12) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (7 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Fixed.s0_1 (rho 6) (rho 12) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (7 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Fixed.s0_2 (rho 6) (rho 12) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (7 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Fixed.s0_3 (rho 6) (rho 12) := ⟨h0_0, h0_1, h0_2, h0_3⟩
  have h1_0 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Round1Lane0.sound rho p2 p3 p4 p5 h0.1 h0.2.1 h0.2.2.1 h0.2.2.2
  have h1_1 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Round1Lane1.sound rho p2 p3 p4 p5 h0.1 h0.2.1 h0.2.2.1 h0.2.2.2
  have h1_2 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Round1Lane2.sound rho p2 p3 p4 p5 h0.1 h0.2.1 h0.2.2.1 h0.2.2.2
  have h1_3 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Round1Lane3.sound rho p2 p3 p4 p5 h0.1 h0.2.1 h0.2.2.1 h0.2.2.2
  have h1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (7 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_0 (rho 17) (rho 22) (rho 27) (rho 32) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (7 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_1 (rho 17) (rho 22) (rho 27) (rho 32) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (7 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_2 (rho 17) (rho 22) (rho 27) (rho 32) ∧
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (7 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_3 (rho 17) (rho 22) (rho 27) (rho 32) := ⟨h1_0, h1_1, h1_2, h1_3⟩
  exact h1

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Range0
