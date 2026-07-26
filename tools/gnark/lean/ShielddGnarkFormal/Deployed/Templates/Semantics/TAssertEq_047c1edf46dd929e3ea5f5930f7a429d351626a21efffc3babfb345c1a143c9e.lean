import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def spec (rho : Nat -> F) : Prop :=
  ((1 : F) * rho 1) = ((1 : F)) * ((1 : F) * rho 1)

theorem sound (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e.relation rho) : spec rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e.relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e.relationSegment0 at h
  exact h.1.symm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e
