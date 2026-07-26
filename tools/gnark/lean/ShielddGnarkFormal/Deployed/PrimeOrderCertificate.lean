import ShielddGnarkFormal.PrimeCertificates.Decaf377

/-! Kernel-checked primality certificate for the BLS12-377 scalar field. -/

namespace Shieldd.GnarkFormal.Deployed

/-- The BLS12-377 scalar-field order is prime. -/
theorem decaf377ScalarFieldPrime :
    Nat.Prime 8444461749428370424248824938781546531375899335154063827935233455917409239041 :=
  PrimeCertificates.Decaf377.prime

end Shieldd.GnarkFormal.Deployed
