; Axe lift smoke proof for the compiled gnark nullifier gadget.
;
; This proves the sparse-R1CS bridge can lift the actual nullifier export and
; discharge a non-vacuous first Poseidon rate-3 constraint. It is not the
; semantic nullifier proof.

(in-package "R1CS")

(include-book "kestrel/axe/r1cs/top" :dir :system)
(include-book "generated/gadget-nullifier-r1cs")

(local
 (lift-r1cs *gadget-nullifier-lifted*
            *GADGET-NULLIFIER-vars*
            *GADGET-NULLIFIER-constraints*
            *GADGET-NULLIFIER-prime*
            :package "R1CS"))

(verify-r1cs
 *gadget-nullifier-lifted*
 (equal (pfield::mul
         (pfield::add
          7491635671712014457226444359115925142756691872583683345054285850544197741427
          NK
          *GADGET-NULLIFIER-prime*)
         (pfield::add
          7491635671712014457226444359115925142756691872583683345054285850544197741427
          NK
          *GADGET-NULLIFIER-prime*)
         *GADGET-NULLIFIER-prime*)
        INTERNAL-5)
 *GADGET-NULLIFIER-prime*)
