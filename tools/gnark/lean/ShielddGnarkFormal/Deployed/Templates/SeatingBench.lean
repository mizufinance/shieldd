import Mathlib.Data.ZMod.Basic

namespace Shieldd.GnarkFormal.Deployed.Templates.SeatingBench

def seatingValues : List Nat := [3, 4, 5]
def seating : Nat -> Nat := fun localWire => seatingValues.getD localWire 0

example : seating 1 = 4 := by rfl

end Shieldd.GnarkFormal.Deployed.Templates.SeatingBench
