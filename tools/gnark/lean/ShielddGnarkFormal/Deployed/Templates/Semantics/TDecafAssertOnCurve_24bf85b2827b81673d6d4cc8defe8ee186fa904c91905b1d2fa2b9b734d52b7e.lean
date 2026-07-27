import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e
import ShielddGnarkFormal.Deployed.Templates.Simple
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def spec (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Simple.onCurveSpec rho

theorem sound (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.relation rho) : spec rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.relationSegment0 at h
  rcases h with ⟨h0, h1, h2, h3, _⟩
  exact Shieldd.GnarkFormal.Deployed.Templates.Simple.onCurveSound rho ⟨h0, h1, h2, h3⟩

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e
