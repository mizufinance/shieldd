import ShielddGnarkFormal.PrimeCertificates.Generated.P167Full

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P167Q2 :
    Nat.mod (Nat.pow (nat_lit 5) (nat_lit 83)) (nat_lit 167)
      ≠ nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
