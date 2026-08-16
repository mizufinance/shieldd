import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAmount_da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAmount_da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetPoseidonEncryptionAmount_da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAmount_da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAmount_da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAmount_da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAmount_da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetPoseidonEncryptionAmount_da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e
