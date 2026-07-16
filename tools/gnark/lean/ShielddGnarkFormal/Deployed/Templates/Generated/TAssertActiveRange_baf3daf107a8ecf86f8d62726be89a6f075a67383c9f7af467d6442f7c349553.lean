import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553.sound rho h

end Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553
