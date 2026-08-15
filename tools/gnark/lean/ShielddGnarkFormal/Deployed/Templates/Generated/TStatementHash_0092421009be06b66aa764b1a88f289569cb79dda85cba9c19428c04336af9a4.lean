import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_0092421009be06b66aa764b1a88f289569cb79dda85cba9c19428c04336af9a4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_0092421009be06b66aa764b1a88f289569cb79dda85cba9c19428c04336af9a4

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_0092421009be06b66aa764b1a88f289569cb79dda85cba9c19428c04336af9a4

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0092421009be06b66aa764b1a88f289569cb79dda85cba9c19428c04336af9a4.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_0092421009be06b66aa764b1a88f289569cb79dda85cba9c19428c04336af9a4.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0092421009be06b66aa764b1a88f289569cb79dda85cba9c19428c04336af9a4.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             apply Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0092421009be06b66aa764b1a88f289569cb79dda85cba9c19428c04336af9a4.sound rho
             simpa only [relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0092421009be06b66aa764b1a88f289569cb79dda85cba9c19428c04336af9a4.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_0092421009be06b66aa764b1a88f289569cb79dda85cba9c19428c04336af9a4.relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_0092421009be06b66aa764b1a88f289569cb79dda85cba9c19428c04336af9a4.RelationBlocks.block0, and_assoc] using h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_0092421009be06b66aa764b1a88f289569cb79dda85cba9c19428c04336af9a4
