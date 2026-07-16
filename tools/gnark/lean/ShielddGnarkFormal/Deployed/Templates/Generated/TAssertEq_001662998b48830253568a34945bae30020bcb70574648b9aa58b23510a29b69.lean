import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.sound rho h

end Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69
