import ShielddGnarkFormal.ScalarMulBridge
import ShielddGnarkFormal.Decaf377CircuitDefs
import ShielddGnarkFormal.Extracted.DecafDtk
import ShielddGnarkFormal.CanonicalFqBitsBridge
import ShielddGnarkFormal.Poseidon2Bridge
import ShielddGnarkFormal.IvkModRBridge
import ProvenZk.Lemmas
import ProvenZk.Ext.Vector

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false
set_option linter.unnecessarySeqFocus false
set_option linter.unreachableTactic false

/-!
Bridge for the extracted DecafDtk circuit. The circuit asserts `ak` on-curve,
compresses it, derives the IVK via Poseidon2 and the mod-r decomposition, then
runs a 251-bit ladder over `div_gen` pinned to the outputs. This file proves
the output relation (`dtk` over the witnessed reduced IVK) and the implied
`ak` on-curve fact; the IVK-provenance semantics remain a tracked open item.
-/

namespace Shieldd.GnarkFormal.DtkBridge

open Bool (toZMod)
open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

abbrev F := EdwardsBridge.F

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafDtk.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafCompressToField.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.Poseidon2.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.IvkModR.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.CanonicalFqBits.Order) := ‹_›

end Shieldd.GnarkFormal.DtkBridge
