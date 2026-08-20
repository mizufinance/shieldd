import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             apply Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.sound rho
             simpa only [relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.RelationBlocks.block0, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.RelationBlocks.block1, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.RelationBlocks.block2, and_assoc] using h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66
