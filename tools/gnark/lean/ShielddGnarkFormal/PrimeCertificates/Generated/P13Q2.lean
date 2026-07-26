import ShielddGnarkFormal.PrimeCertificates.Generated.P13Full

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P13Q2 :
    Nat.mod (Nat.pow (nat_lit 2) (nat_lit 6)) (nat_lit 13)
      ≠ nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
