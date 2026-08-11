import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f.relation rho

def guard (rho : Nat → F) : F :=
  (1 : F) + (-1 : F) * rho 1

def residual (rho : Nat → F) : F :=
  (-1 : F) * rho 2 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 3 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 4 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 5 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 6 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 7 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 8 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 9

def spec (rho : Nat → F) : Prop :=
  guard rho = 0 ∨ residual rho = 0

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  unfold relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f.relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f.relationSegment0 at h
  rcases h with ⟨h0, h1, _⟩
  have hproduct : guard rho * residual rho = 0 := by
    unfold guard residual
    linear_combination h0 + h1
  exact mul_eq_zero.mp hproduct

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f
