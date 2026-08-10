import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             apply Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193.sound rho
             simpa only [relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193.relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193.RelationBlocks.block0, and_assoc] using h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193
