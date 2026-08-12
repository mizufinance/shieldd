import ShielddGnarkFormal.Deployed.Templates.Relations.TStatementHash_59fc709325ca9b0194b7adef9fe91a97d88a5c690c5278f59425a351790b2376
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_59fc709325ca9b0194b7adef9fe91a97d88a5c690c5278f59425a351790b2376

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_59fc709325ca9b0194b7adef9fe91a97d88a5c690c5278f59425a351790b2376

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_59fc709325ca9b0194b7adef9fe91a97d88a5c690c5278f59425a351790b2376.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_59fc709325ca9b0194b7adef9fe91a97d88a5c690c5278f59425a351790b2376.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_59fc709325ca9b0194b7adef9fe91a97d88a5c690c5278f59425a351790b2376.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             apply Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_59fc709325ca9b0194b7adef9fe91a97d88a5c690c5278f59425a351790b2376.sound rho
             simpa only [relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_59fc709325ca9b0194b7adef9fe91a97d88a5c690c5278f59425a351790b2376.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_59fc709325ca9b0194b7adef9fe91a97d88a5c690c5278f59425a351790b2376.relation, Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_59fc709325ca9b0194b7adef9fe91a97d88a5c690c5278f59425a351790b2376.RelationBlocks.block0, and_assoc] using h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_59fc709325ca9b0194b7adef9fe91a97d88a5c690c5278f59425a351790b2376
