import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.Part16

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationPart16 rho) :
    rho 87 = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (((2434659271910312083393215981200674932837621277429598130706507640778774127443 : F) + (8263421233974591934739537252948315170507181901467385008661160910236927442893 : F) * rho 57 + (7260868788947148597424134313681494118239763444543928261311440896297503846856 : F) * rho 62 + (7084065973824866808145857319606641283427841345827946323453078374104009662566 : F) * rho 67 + (7191857281660704661880284238619626408822191886264792206174412875086997153626 : F) * rho 72 + (6332580374497633521549498629261780619934974306414513488744809651261783241368 : F) * rho 77 + (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) * rho 82)) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationPart16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationRow80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationRow81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationRow82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationRow83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.Nullifier.p17_from_rows
    (((2434659271910312083393215981200674932837621277429598130706507640778774127443 : F) + (8263421233974591934739537252948315170507181901467385008661160910236927442893 : F) * rho 57 + (7260868788947148597424134313681494118239763444543928261311440896297503846856 : F) * rho 62 + (7084065973824866808145857319606641283427841345827946323453078374104009662566 : F) * rho 67 + (7191857281660704661880284238619626408822191886264792206174412875086997153626 : F) * rho 72 + (6332580374497633521549498629261780619934974306414513488744809651261783241368 : F) * rho 77 + (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) * rho 82)) (rho 83) (rho 84) (rho 85) (rho 86) (rho 87)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.Part16
