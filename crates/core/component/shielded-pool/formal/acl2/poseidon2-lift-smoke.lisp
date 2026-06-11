; Axe lift smoke proof for the compiled gnark Poseidon2 gadget.
;
; This proves the ingestion bridge can lift real Shieldd R1CS data and discharge
; a non-vacuous consequence of the first Poseidon round constraint.  It is not
; the semantic Poseidon permutation proof.

(in-package "R1CS")

(include-book "kestrel/axe/r1cs/top" :dir :system)
(include-book "generated/gadget-poseidon2-r1cs")

(local
 (lift-r1cs *gadget-poseidon2-lifted*
            *GADGET-POSEIDON2-vars*
            *GADGET-POSEIDON2-constraints*
            *GADGET-POSEIDON2-prime*
            :package "R1CS"))

(verify-r1cs
 *gadget-poseidon2-lifted*
 (equal (pfield::mul
         (pfield::add
          308026635595114235070436728341841505234226384644787941764356225291780075012
          DOMAIN
          *GADGET-POSEIDON2-prime*)
         (pfield::add
          308026635595114235070436728341841505234226384644787941764356225291780075012
          DOMAIN
          *GADGET-POSEIDON2-prime*)
         *GADGET-POSEIDON2-prime*)
        INTERNAL-5)
 *GADGET-POSEIDON2-prime*)
