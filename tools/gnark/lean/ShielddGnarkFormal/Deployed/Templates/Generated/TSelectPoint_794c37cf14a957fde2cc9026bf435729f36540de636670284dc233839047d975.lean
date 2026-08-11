import ShielddGnarkFormal.Deployed.Templates.Relations.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975
import ShielddGnarkFormal.Deployed.Templates.Semantics.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975
