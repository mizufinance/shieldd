import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b
