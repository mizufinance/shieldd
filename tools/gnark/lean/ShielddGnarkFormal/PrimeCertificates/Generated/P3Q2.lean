import ShielddGnarkFormal.PrimeCertificates.Generated.P3Full

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P3Q2 :
    Nat.mod (Nat.pow (nat_lit 2) (nat_lit 1)) (nat_lit 3)
      ≠ nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
