import ShielddGnarkFormal.PrimeCertificates.Generated.P499Q2

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P499Q3 :
    Nat.mod (Nat.pow (nat_lit 7) (nat_lit 166)) (nat_lit 499)
      ≠ nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
