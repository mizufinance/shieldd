import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace Penumbra.GnarkFormal.Extracted.BoolSelect

def Order : ℕ := 0x12ab655e9a2ca55660b44d1e5c37b00159aa76fed00000010a11800000000001
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order
abbrev Gates := GatesGnark9 Order



def circuit (Cond: F) (IfTrue: F) (IfFalse: F) (Valid: F): Prop :=
    Gates.is_bool Cond ∧
    ∃gate_1, Gates.select Cond IfTrue IfFalse gate_1 ∧
    Gates.eq Valid gate_1 ∧
    True

end Penumbra.GnarkFormal.Extracted.BoolSelect
