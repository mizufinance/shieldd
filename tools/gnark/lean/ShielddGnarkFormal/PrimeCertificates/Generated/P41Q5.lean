import ShielddGnarkFormal.PrimeCertificates.Generated.P41Q2

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P41Q5 :
    Nat.mod (Nat.pow (nat_lit 6) (nat_lit 8)) (nat_lit 41)
      ≠ nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
