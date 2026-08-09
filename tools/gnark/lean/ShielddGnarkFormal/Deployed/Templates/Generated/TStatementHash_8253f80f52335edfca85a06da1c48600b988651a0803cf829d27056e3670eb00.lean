import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             apply Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00.sound rho
             simpa only [relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00.relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00.RelationBlocks.block0, and_assoc] using h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00
