import ShielddGnarkFormal.Deployed.Templates.Relations.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.sound rho h

end Shieldd.GnarkFormal.Deployed.Templates.Generated.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce
