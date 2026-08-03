import ShielddGnarkFormal.CanonicalFqBitsBridge

/-! Module-named export of the canonical-field-bits soundness theorem for
constraint-manifest resolution. -/

namespace Shieldd.GnarkFormal.CanonicalFqBitsManifestBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canonical_sound [Fact (Nat.Prime Order)]
    (input : F) (k : List.Vector F 253 → Prop)
    (h : canonicalFqBitsGadget input k) :
    ∃ (bits : List.Vector Bool 253),
      Gates.to_binary input 253 (bits.map Bool.toZMod) ∧
      (Fin.ofBitsLE bits).val < Order ∧
      k (bits.map Bool.toZMod) :=
  canonicalFqBitsGadget_canonical input k h

end Shieldd.GnarkFormal.CanonicalFqBitsManifestBridge
