import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.sound rho h

end Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9
