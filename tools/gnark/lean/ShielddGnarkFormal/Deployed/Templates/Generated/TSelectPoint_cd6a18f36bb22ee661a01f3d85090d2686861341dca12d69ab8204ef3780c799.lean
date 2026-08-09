import ShielddGnarkFormal.Deployed.Templates.Relations.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799
import ShielddGnarkFormal.Deployed.Templates.Semantics.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799
