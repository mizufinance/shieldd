import ShielddGnarkFormal.PrimeCertificates.Generated.P2Full

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P3Full :
    Nat.mod (Nat.pow (nat_lit 2) (nat_lit 2)) (nat_lit 3)
      = nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
