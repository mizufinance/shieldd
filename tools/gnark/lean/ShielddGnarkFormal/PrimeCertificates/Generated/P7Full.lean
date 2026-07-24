import ShielddGnarkFormal.PrimeCertificates.Generated.P5Q2

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem P7Full :
    Nat.mod (Nat.pow (nat_lit 3) (nat_lit 6)) (nat_lit 7)
      = nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
