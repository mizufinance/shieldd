import ShielddGnarkFormal.PrimeCertificates.Generated.P499Full

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P499Q2 :
    Nat.mod (Nat.pow (nat_lit 7) (nat_lit 249)) (nat_lit 499)
      ≠ nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
