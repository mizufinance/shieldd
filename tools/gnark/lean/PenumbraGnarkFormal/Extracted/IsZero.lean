import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace Penumbra.GnarkFormal.Extracted.IsZero

def Order : ℕ := 0x12ab655e9a2ca55660b44d1e5c37b00159aa76fed00000010a11800000000001
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order
abbrev Gates := GatesGnark9 Order



def circuit (In: F) (Out: F): Prop :=
    ∃gate_0, Gates.is_zero In gate_0 ∧
    Gates.eq Out gate_0 ∧
    True

end Penumbra.GnarkFormal.Extracted.IsZero
