import ShielddGnarkFormal.PrimeCertificates.Generated.P5Full

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P5Q2 :
    Nat.mod (Nat.pow (nat_lit 2) (nat_lit 2)) (nat_lit 5)
      ≠ nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
