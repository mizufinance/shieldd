import ShielddGnarkFormal.CanonicalFqBitsBridge

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false

/-!
Reusable kernel: deployed-flat-row witnesses for a canonical-`Fq`-bits block imply
the abstract extracted `canonicalFqBitsGadget`. Deployed slices emit the gadget as
253 booleanity rows + one little-endian recomposition row + a `≤ p-1` comparison
ladder; this file packages those into the gadget's three components
(`recover_binary_zmod'`, `is_vector_binary`, `chainK`) and reassembles the gadget
via the proven `canonicalFqBitsGadget_eq_chainK`. Shared by `compress_to_field` and
any other deployed gadget carrying a canonical-bits block.
-/

namespace Shieldd.GnarkFormal.Extracted.CanonicalFqBits

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

variable [Fact (Nat.Prime Order)]

/-- **Kernel composition.** Given a 253-bit witness vector that (1) recovers `In`
little-endian, (2) is binary, and (3) satisfies the `≤ p-1` counter chain feeding
continuation `k`, the abstract `canonicalFqBitsGadget In k` holds. The deployed
bridge discharges the three hypotheses from flat rows; everything circuit-semantic
above this (canonicity, `< Order`, determinism) reuses the extracted machinery. -/
theorem canonicalFqBitsGadget_of_components (In : F) (bits : List.Vector F 253)
    (k : List.Vector F 253 → Prop)
    (hrec : recover_binary_zmod' bits = In)
    (hbin : is_vector_binary bits)
    (hchain : chainK bits k 253 (1 : F)) :
    canonicalFqBitsGadget In k :=
  (canonicalFqBitsGadget_eq_chainK In k).mpr ⟨bits, ⟨hrec, hbin⟩, hchain⟩

/-- **Bool-parametrized kernel.** When the deployed bit wires are presented as a
`Bool` vector `x` (each row already discharged to a boolean), booleanity is free via
`is_vector_binary_iff_exists_bool_vec`; only recomposition and the counter chain
remain as hypotheses. This is the shape the per-instance deployed bridge targets. -/
theorem canonicalFqBitsGadget_of_bool (In : F) (x : List.Vector Bool 253)
    (k : List.Vector F 253 → Prop)
    (hrec : recover_binary_zmod' (x.map Bool.toZMod) = In)
    (hchain : chainK (x.map Bool.toZMod) k 253 (1 : F)) :
    canonicalFqBitsGadget In k :=
  canonicalFqBitsGadget_of_components In (x.map Bool.toZMod) k hrec
    (is_vector_binary_iff_exists_bool_vec.mpr ⟨x, rfl⟩) hchain

end Shieldd.GnarkFormal.Extracted.CanonicalFqBits
