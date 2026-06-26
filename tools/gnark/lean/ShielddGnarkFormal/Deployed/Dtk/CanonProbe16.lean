import ShielddGnarkFormal.CanonicalFqBitsDeployedKernel
import ShielddGnarkFormal.CanonicalFqBitsChainAcc

/-! # seg16 canonicalFqBits block1 wiring probe (throwaway validation)

Validates that the base-agnostic `chainK_of_obligations` + `canonicalFqBitsGadget_of_components`
compose at the DTK block1 base (13108) with recomposition wire 13107 — the per-row
obligations (recomposition, booleanity, counter-chain) are taken as opaque hyps here
since their discharge is mechanically identical to the proven `block1_canonical`. -/

namespace Shieldd.GnarkFormal.Extracted.CanonicalFqBits

variable [Fact (Nat.Prime Order)]

private abbrev b1 (rho : Nat → F) : List.Vector F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (13108 + i.val))

theorem block1_wiring_probe (rho : Nat → F) (k : List.Vector F 253 → Prop)
    (hrec : recover_binary_zmod' (b1 rho) = rho 13107)
    (hbin : is_vector_binary (b1 rho))
    (hk : k (b1 rho))
    (hobl : ∀ j, j < 253 → pmBit j = false → chainAcc (b1 rho) (j + 1) * (b1 rho)[j]! = 0) :
    canonicalFqBitsGadget (rho 13107) k :=
  canonicalFqBitsGadget_of_components (rho 13107) (b1 rho) k hrec hbin
    (chainK_of_obligations (b1 rho) k hk hobl)

end Shieldd.GnarkFormal.Extracted.CanonicalFqBits
