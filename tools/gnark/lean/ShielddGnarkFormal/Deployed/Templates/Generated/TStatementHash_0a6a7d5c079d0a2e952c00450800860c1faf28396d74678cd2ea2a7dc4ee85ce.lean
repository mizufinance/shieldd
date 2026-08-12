import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_0a6a7d5c079d0a2e952c00450800860c1faf28396d74678cd2ea2a7dc4ee85ce
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_0a6a7d5c079d0a2e952c00450800860c1faf28396d74678cd2ea2a7dc4ee85ce

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_0a6a7d5c079d0a2e952c00450800860c1faf28396d74678cd2ea2a7dc4ee85ce

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0a6a7d5c079d0a2e952c00450800860c1faf28396d74678cd2ea2a7dc4ee85ce.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_0a6a7d5c079d0a2e952c00450800860c1faf28396d74678cd2ea2a7dc4ee85ce.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0a6a7d5c079d0a2e952c00450800860c1faf28396d74678cd2ea2a7dc4ee85ce.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             apply Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0a6a7d5c079d0a2e952c00450800860c1faf28396d74678cd2ea2a7dc4ee85ce.sound rho
             simpa only [relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0a6a7d5c079d0a2e952c00450800860c1faf28396d74678cd2ea2a7dc4ee85ce.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_0a6a7d5c079d0a2e952c00450800860c1faf28396d74678cd2ea2a7dc4ee85ce.relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0a6a7d5c079d0a2e952c00450800860c1faf28396d74678cd2ea2a7dc4ee85ce.RelationBlocks.block0, and_assoc] using h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_0a6a7d5c079d0a2e952c00450800860c1faf28396d74678cd2ea2a7dc4ee85ce
