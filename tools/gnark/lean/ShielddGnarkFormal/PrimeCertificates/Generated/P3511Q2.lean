import ShielddGnarkFormal.PrimeCertificates.Generated.P3511Full

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P3511Q2 :
    Nat.mod (Nat.pow (nat_lit 7) (nat_lit 1755)) (nat_lit 3511)
      ≠ nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
