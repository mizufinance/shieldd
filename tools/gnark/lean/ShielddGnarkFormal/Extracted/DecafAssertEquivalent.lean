import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Extracted.DecafAssertEquivalent

def Order : ℕ := 0x12ab655e9a2ca55660b44d1e5c37b00159aa76fed00000010a11800000000001
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order
abbrev Gates := GatesGnark9 Order



def circuit (LX: F) (LY: F) (RX: F) (RY: F): Prop :=
    ∃gate_0, gate_0 = Gates.mul LX RY ∧
    ∃gate_1, gate_1 = Gates.mul RX LY ∧
    Gates.eq gate_0 gate_1 ∧
    True

end Shieldd.GnarkFormal.Extracted.DecafAssertEquivalent
