import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Part15

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationPart15 rho) :
    rho 82 = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (((2525212075811847070714039496122508180842266665678267845595010262833888331107 : F) + (6332580374497633521549498629261780619934974306414513488744809651261783241368 : F) * rho 57 + (7811127118221242642430163068372930541522706885017509040840090946723603546113 : F) * rho 62 + (5078405468753450546805196109017235622341339461280152274299939008905886389590 : F) * rho 67 + (6079789061129447118939993934098936212999870381116874261303105251396621493135 : F) * rho 72 + (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) * rho 77)) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationPart15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationRow75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationRow76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationRow77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationRow78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.Nullifier.p17_from_rows
    (((2525212075811847070714039496122508180842266665678267845595010262833888331107 : F) + (6332580374497633521549498629261780619934974306414513488744809651261783241368 : F) * rho 57 + (7811127118221242642430163068372930541522706885017509040840090946723603546113 : F) * rho 62 + (5078405468753450546805196109017235622341339461280152274299939008905886389590 : F) * rho 67 + (6079789061129447118939993934098936212999870381116874261303105251396621493135 : F) * rho 72 + (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) * rho 77)) (rho 78) (rho 79) (rho 80) (rho 81) (rho 82)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Part15
