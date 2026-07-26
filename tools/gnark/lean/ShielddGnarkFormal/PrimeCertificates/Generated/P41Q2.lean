import ShielddGnarkFormal.PrimeCertificates.Generated.P41Full

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P41Q2 :
    Nat.mod (Nat.pow (nat_lit 6) (nat_lit 20)) (nat_lit 41)
      ≠ nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
