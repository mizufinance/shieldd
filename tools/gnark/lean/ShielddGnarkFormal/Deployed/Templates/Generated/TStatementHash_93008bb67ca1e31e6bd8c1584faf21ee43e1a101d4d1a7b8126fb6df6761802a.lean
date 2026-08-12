import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             apply Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.sound rho
             simpa only [relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.RelationBlocks.block0, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.RelationBlocks.block1, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.RelationBlocks.block2, and_assoc] using h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a
