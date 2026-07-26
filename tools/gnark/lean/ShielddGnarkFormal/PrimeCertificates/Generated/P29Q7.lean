import ShielddGnarkFormal.PrimeCertificates.Generated.P29Q2

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P29Q7 :
    Nat.mod (Nat.pow (nat_lit 2) (nat_lit 4)) (nat_lit 29)
      ≠ nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
