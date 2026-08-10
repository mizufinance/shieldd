import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4
