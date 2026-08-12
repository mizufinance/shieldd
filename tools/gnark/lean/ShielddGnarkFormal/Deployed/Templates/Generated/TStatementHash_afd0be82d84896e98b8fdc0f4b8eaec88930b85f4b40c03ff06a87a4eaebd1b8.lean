import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_afd0be82d84896e98b8fdc0f4b8eaec88930b85f4b40c03ff06a87a4eaebd1b8
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_afd0be82d84896e98b8fdc0f4b8eaec88930b85f4b40c03ff06a87a4eaebd1b8

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_afd0be82d84896e98b8fdc0f4b8eaec88930b85f4b40c03ff06a87a4eaebd1b8

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_afd0be82d84896e98b8fdc0f4b8eaec88930b85f4b40c03ff06a87a4eaebd1b8.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_afd0be82d84896e98b8fdc0f4b8eaec88930b85f4b40c03ff06a87a4eaebd1b8.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_afd0be82d84896e98b8fdc0f4b8eaec88930b85f4b40c03ff06a87a4eaebd1b8.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             apply Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_afd0be82d84896e98b8fdc0f4b8eaec88930b85f4b40c03ff06a87a4eaebd1b8.sound rho
             simpa only [relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_afd0be82d84896e98b8fdc0f4b8eaec88930b85f4b40c03ff06a87a4eaebd1b8.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_afd0be82d84896e98b8fdc0f4b8eaec88930b85f4b40c03ff06a87a4eaebd1b8.relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_afd0be82d84896e98b8fdc0f4b8eaec88930b85f4b40c03ff06a87a4eaebd1b8.RelationBlocks.block0, and_assoc] using h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_afd0be82d84896e98b8fdc0f4b8eaec88930b85f4b40c03ff06a87a4eaebd1b8
