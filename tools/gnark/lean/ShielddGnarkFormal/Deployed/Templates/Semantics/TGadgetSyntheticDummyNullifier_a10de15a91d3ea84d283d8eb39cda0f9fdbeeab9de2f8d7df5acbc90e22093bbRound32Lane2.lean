import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bbPart42
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound32
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.Nullifier.Round32
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bbFixed

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Round32Lane2

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p42 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationPart42 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound31.state31Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s31_0 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound31.state31Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s31_1 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound31.state31Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s31_2 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound31.state31Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s31_3 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound32.state32Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s32_2 (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) := by
  have hp42 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Part42.sound rho p42
  have hArg0 : (Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationLc0 rho) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound31.state31Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) + (3318846374911785204190875758231457337043668093149524076485922702513345093073 : F) := by
    simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationLc0Part1]
    rw [hPrev0]
    have hArgEq0 := Shieldd.GnarkFormal.Deployed.Nullifier.arg32_0_eq (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212)
    linear_combination hArgEq0
  have ha0 : (rho 217) = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound31.state31Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) + (3318846374911785204190875758231457337043668093149524076485922702513345093073 : F)) := by
    rw [hp42, hArg0]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound32.state32Lane2 Shieldd.GnarkFormal.Deployed.Nullifier.s32_2
  rw [← ha0, hPrev1, hPrev2, hPrev3]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Round32Lane2
