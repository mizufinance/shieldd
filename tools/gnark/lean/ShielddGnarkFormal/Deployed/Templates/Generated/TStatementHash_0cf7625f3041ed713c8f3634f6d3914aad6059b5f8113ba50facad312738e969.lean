import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             apply Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969.sound rho
             simpa only [relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969.relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969.RelationBlocks.block0, and_assoc] using h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969
