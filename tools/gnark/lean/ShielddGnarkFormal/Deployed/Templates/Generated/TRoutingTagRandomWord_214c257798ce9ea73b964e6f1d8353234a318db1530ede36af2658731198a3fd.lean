import ShielddGnarkFormal.Deployed.Templates.Relations.TRoutingTagRandomWord_214c257798ce9ea73b964e6f1d8353234a318db1530ede36af2658731198a3fd
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingTagRandomWord_214c257798ce9ea73b964e6f1d8353234a318db1530ede36af2658731198a3fd

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagRandomWord_214c257798ce9ea73b964e6f1d8353234a318db1530ede36af2658731198a3fd

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagRandomWord_214c257798ce9ea73b964e6f1d8353234a318db1530ede36af2658731198a3fd.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingTagRandomWord_214c257798ce9ea73b964e6f1d8353234a318db1530ede36af2658731198a3fd.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagRandomWord_214c257798ce9ea73b964e6f1d8353234a318db1530ede36af2658731198a3fd.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagRandomWord_214c257798ce9ea73b964e6f1d8353234a318db1530ede36af2658731198a3fd.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagRandomWord_214c257798ce9ea73b964e6f1d8353234a318db1530ede36af2658731198a3fd
