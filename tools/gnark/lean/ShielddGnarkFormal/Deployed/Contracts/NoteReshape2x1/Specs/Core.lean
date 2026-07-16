import Mathlib.Algebra.Ring.Defs
import Mathlib.Data.ZMod.Basic
import ShielddGnarkFormal.Deployed.PrimeOrder

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs

variable {F : Type} [CommRing F]

abbrev DeployedOrder : Nat :=
  8444461749428370424248824938781546531375899335154063827935233455917409239041

abbrev DeployedF := ZMod DeployedOrder

/-- decaf377 twisted-Edwards membership (`a = -1`, `d = 3021`). Definitionally the
proposition `EdwardsBridge.onCurve ⟨x, y⟩`, stated `Fact`-free over `CommRing`. -/
def onCurveAt (x y : F) : Prop :=
  -(x * x) + y * y = 1 + 3021 * (x * x) * (y * y)

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs
