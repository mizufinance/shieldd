import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_5804cb48cce27e24aa8fa559e9e23e995c25c83d8af6b4ef440384b01de85476
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_5804cb48cce27e24aa8fa559e9e23e995c25c83d8af6b4ef440384b01de85476

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_5804cb48cce27e24aa8fa559e9e23e995c25c83d8af6b4ef440384b01de85476

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_5804cb48cce27e24aa8fa559e9e23e995c25c83d8af6b4ef440384b01de85476.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_5804cb48cce27e24aa8fa559e9e23e995c25c83d8af6b4ef440384b01de85476.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_5804cb48cce27e24aa8fa559e9e23e995c25c83d8af6b4ef440384b01de85476.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             apply Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_5804cb48cce27e24aa8fa559e9e23e995c25c83d8af6b4ef440384b01de85476.sound rho
             simpa only [relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_5804cb48cce27e24aa8fa559e9e23e995c25c83d8af6b4ef440384b01de85476.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_5804cb48cce27e24aa8fa559e9e23e995c25c83d8af6b4ef440384b01de85476.relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_5804cb48cce27e24aa8fa559e9e23e995c25c83d8af6b4ef440384b01de85476.RelationBlocks.block0, and_assoc] using h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_5804cb48cce27e24aa8fa559e9e23e995c25c83d8af6b4ef440384b01de85476
