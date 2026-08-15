import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_19301faada329781da94b45e73c6963e9c85b971e364be5e52987753c670f898
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_19301faada329781da94b45e73c6963e9c85b971e364be5e52987753c670f898

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_19301faada329781da94b45e73c6963e9c85b971e364be5e52987753c670f898

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_19301faada329781da94b45e73c6963e9c85b971e364be5e52987753c670f898.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_19301faada329781da94b45e73c6963e9c85b971e364be5e52987753c670f898.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_19301faada329781da94b45e73c6963e9c85b971e364be5e52987753c670f898.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             apply Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_19301faada329781da94b45e73c6963e9c85b971e364be5e52987753c670f898.sound rho
             simpa only [relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_19301faada329781da94b45e73c6963e9c85b971e364be5e52987753c670f898.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_19301faada329781da94b45e73c6963e9c85b971e364be5e52987753c670f898.relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_19301faada329781da94b45e73c6963e9c85b971e364be5e52987753c670f898.RelationBlocks.block0, and_assoc] using h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_19301faada329781da94b45e73c6963e9c85b971e364be5e52987753c670f898
