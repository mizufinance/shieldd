import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa
