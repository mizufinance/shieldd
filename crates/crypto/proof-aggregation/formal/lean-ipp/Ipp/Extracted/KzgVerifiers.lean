import Ipp.Kzg

namespace Ipp.Extracted

/- Aeneas reaches both executed verifier bodies but currently stops at the
   arkworks Pairing/PairingOutput mixed trait group. These are the exact
   no-sorry equations awaiting a translated pairing adapter. -/

def verify_commitment_key_g2_kzg_opening_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT]
    (e : G1 → G2 → GT) (g gBeta : G1) (h : G2)
    (key opening : G2) (eval z : F) (run : Bool) : Prop :=
  run = true ↔
    e g (key - eval • h) - e (gBeta - z • g) opening = 0

def verify_commitment_key_g1_kzg_opening_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT]
    (e : G1 → G2 → GT) (g : G1) (hAlpha : G2) (h : G2)
    (key opening : G1) (eval z : F) (run : Bool) : Prop :=
  run = true ↔
    e (key - eval • g) h - e opening (hAlpha - z • h) = 0

end Ipp.Extracted
