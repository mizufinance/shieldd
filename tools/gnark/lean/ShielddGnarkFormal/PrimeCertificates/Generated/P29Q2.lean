import ShielddGnarkFormal.PrimeCertificates.Generated.P29Full

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P29Q2 :
    Nat.mod (Nat.pow (nat_lit 2) (nat_lit 14)) (nat_lit 29)
      ≠ nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
