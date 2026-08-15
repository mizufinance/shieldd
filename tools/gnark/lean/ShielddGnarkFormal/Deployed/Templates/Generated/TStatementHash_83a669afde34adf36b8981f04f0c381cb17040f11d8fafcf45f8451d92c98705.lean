import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             apply Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.sound rho
             simpa only [relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.RelationBlocks.block0, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.RelationBlocks.block1, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.RelationBlocks.block2, and_assoc] using h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705
