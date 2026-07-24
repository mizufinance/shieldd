import ShielddGnarkFormal.PrimeCertificates.Generated.P7Full

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P7Q2 :
    Nat.mod (Nat.pow (nat_lit 3) (nat_lit 3)) (nat_lit 7)
      ≠ nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
