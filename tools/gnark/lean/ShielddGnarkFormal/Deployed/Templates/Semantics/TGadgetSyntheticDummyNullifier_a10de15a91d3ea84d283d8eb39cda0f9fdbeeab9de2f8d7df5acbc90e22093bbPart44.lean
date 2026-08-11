import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Part44

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationPart44 rho) :
    rho 227 = Shieldd.GnarkFormal.Poseidon3Bridge.p17 ((Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationLc2 rho)) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationPart44 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationRow220 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationRow221 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationRow222 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationRow223 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.Nullifier.p17_from_rows
    ((Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationLc2 rho)) (rho 223) (rho 224) (rho 225) (rho 226) (rho 227)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Part44
