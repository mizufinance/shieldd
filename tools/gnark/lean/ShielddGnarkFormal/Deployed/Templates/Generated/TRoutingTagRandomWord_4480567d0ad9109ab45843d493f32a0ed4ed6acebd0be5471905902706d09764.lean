import ShielddGnarkFormal.Deployed.Templates.Relations.TRoutingTagRandomWord_4480567d0ad9109ab45843d493f32a0ed4ed6acebd0be5471905902706d09764
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingTagRandomWord_4480567d0ad9109ab45843d493f32a0ed4ed6acebd0be5471905902706d09764

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagRandomWord_4480567d0ad9109ab45843d493f32a0ed4ed6acebd0be5471905902706d09764

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagRandomWord_4480567d0ad9109ab45843d493f32a0ed4ed6acebd0be5471905902706d09764.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingTagRandomWord_4480567d0ad9109ab45843d493f32a0ed4ed6acebd0be5471905902706d09764.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagRandomWord_4480567d0ad9109ab45843d493f32a0ed4ed6acebd0be5471905902706d09764.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagRandomWord_4480567d0ad9109ab45843d493f32a0ed4ed6acebd0be5471905902706d09764.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagRandomWord_4480567d0ad9109ab45843d493f32a0ed4ed6acebd0be5471905902706d09764
