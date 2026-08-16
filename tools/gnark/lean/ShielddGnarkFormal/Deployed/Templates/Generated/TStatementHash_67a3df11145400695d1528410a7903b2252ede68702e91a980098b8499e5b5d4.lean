import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_67a3df11145400695d1528410a7903b2252ede68702e91a980098b8499e5b5d4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_67a3df11145400695d1528410a7903b2252ede68702e91a980098b8499e5b5d4

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_67a3df11145400695d1528410a7903b2252ede68702e91a980098b8499e5b5d4

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_67a3df11145400695d1528410a7903b2252ede68702e91a980098b8499e5b5d4.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_67a3df11145400695d1528410a7903b2252ede68702e91a980098b8499e5b5d4.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_67a3df11145400695d1528410a7903b2252ede68702e91a980098b8499e5b5d4.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             apply Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_67a3df11145400695d1528410a7903b2252ede68702e91a980098b8499e5b5d4.sound rho
             simpa only [relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_67a3df11145400695d1528410a7903b2252ede68702e91a980098b8499e5b5d4.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_67a3df11145400695d1528410a7903b2252ede68702e91a980098b8499e5b5d4.relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_67a3df11145400695d1528410a7903b2252ede68702e91a980098b8499e5b5d4.RelationBlocks.block0, and_assoc] using h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_67a3df11145400695d1528410a7903b2252ede68702e91a980098b8499e5b5d4
