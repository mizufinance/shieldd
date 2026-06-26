import ShielddGnarkFormal.CanonicalFqBitsDeployedKernel
import ShielddGnarkFormal.CanonicalFqBitsChainAcc

/-!
Per-block entry point for the deployed compress bridge: assemble one
`canonicalFqBitsGadget In k` from a block's `Bool` bit vector, its recomposition
row, and the 166 `pmBit = false` comparison obligations — composing the kernel
(`canonicalFqBitsGadget_of_bool`) with the chainK keystone
(`chainK_of_obligations`). This is exactly the shape each of compress's two
canonical blocks (`habs1`/`habs2`) feeds.
-/

namespace Shieldd.GnarkFormal.Extracted.CanonicalFqBits

open Bool (toZMod)

variable [Fact (Nat.Prime Order)]

/-- One canonical block → `canonicalFqBitsGadget`. `hobl` is the per-rung slice
obligation supplied by `comparison_row_obligation` + `flag_eq_chainAcc` at each
`pmBit = false` position. -/
theorem canonicalFqBitsGadget_block (In : F) (x : List.Vector Bool 253)
    (k : List.Vector F 253 → Prop)
    (hrec : recover_binary_zmod' (x.map toZMod) = In)
    (hk : k (x.map toZMod))
    (hobl : ∀ j, j < 253 → pmBit j = false →
      chainAcc (x.map toZMod) (j + 1) * (x.map toZMod)[j]! = 0) :
    canonicalFqBitsGadget In k :=
  canonicalFqBitsGadget_of_bool In x k hrec
    (chainK_of_obligations (x.map toZMod) k hk hobl)

end Shieldd.GnarkFormal.Extracted.CanonicalFqBits
