import ShielddGnarkFormal.Deployed.Templates.Relations.TRoutingTagRouteBits_1edfe2259ad982b4d12d407718e8f566a4bc0dbee4d85678278543dba94ce239
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingTagRouteBits_1edfe2259ad982b4d12d407718e8f566a4bc0dbee4d85678278543dba94ce239

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagRouteBits_1edfe2259ad982b4d12d407718e8f566a4bc0dbee4d85678278543dba94ce239

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagRouteBits_1edfe2259ad982b4d12d407718e8f566a4bc0dbee4d85678278543dba94ce239.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingTagRouteBits_1edfe2259ad982b4d12d407718e8f566a4bc0dbee4d85678278543dba94ce239.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagRouteBits_1edfe2259ad982b4d12d407718e8f566a4bc0dbee4d85678278543dba94ce239.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagRouteBits_1edfe2259ad982b4d12d407718e8f566a4bc0dbee4d85678278543dba94ce239.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagRouteBits_1edfe2259ad982b4d12d407718e8f566a4bc0dbee4d85678278543dba94ce239
