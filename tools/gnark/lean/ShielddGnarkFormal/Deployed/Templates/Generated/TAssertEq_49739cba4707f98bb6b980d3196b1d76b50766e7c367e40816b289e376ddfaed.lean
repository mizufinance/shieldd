import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed
