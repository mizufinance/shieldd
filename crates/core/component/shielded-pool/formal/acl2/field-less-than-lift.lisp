; Axe lift checkpoint for the compiled gnark FieldLessThan comparator gadget
; (gadget-field-less-than): the two 253-bit `to_bits_le` decompositions
; (A -> INTERNAL-4..256, B -> INTERNAL-343..595; 506 boolean-constrained wires)
; plus the MSB-first comparison ladder that is the algebraic core of
; REGULATED-STATUS-SOUNDNESS.
;
; STATUS: lift checkpoint only (ingestion validated).  This book certifies that
; the Axe bridge lifts the real 2531-constraint comparator R1CS into a DAG.  It
; does NOT yet discharge the semantic spec `OUT = (A < B ? 1 : 0)`; that proof is
; the open M3 obligation (see scope note below).
;
; Why the semantic proof is not here yet (recorded honestly):
;   * The Kestrel idiom for a `to_bits_le` comparator is NOT to derive bitp of
;     the witness bits inside `verify-r1cs`; it is to declare those bits via
;     `:bit-inputs` (each is forced boolean by its own `b*(1-b)=0` constraint --
;     the exact shape proven unconditionally for bool-select c0 in
;     bool-select-proof.lisp), then prove the recomposition (packbv of the bits =
;     A,B) and the ladder ordering (= integer `<`) over the recomposed values.
;   * That recomposition/ordering proof is range-check.lisp-scale staged
;     rule-list work.  The correct reusable lemma base for OUR field is the AleoVM
;     BLS12-377 Axe support (projects/aleo/vm/circuits/axe/support.lisp:
;     `bitp-of-mul`, boolean-alt-rules, fe-listp-fast), NOT the BabyJubjub
;     semaphore rule set -- AleoVM and Penumbra share BLS12-377 Fr.
;   * Bit-input wire set (extracted from the export, 506 wires forced boolean by
;     `X*(1-X)=0`): INTERNAL-4..256 (A's bits) and INTERNAL-343..595 (B's bits).
;
; Field: BLS12-377 Fr, pinned in formal/toolchain.toml [constraints].

(in-package "R1CS")

(include-book "kestrel/axe/r1cs/top" :dir :system)
(include-book "generated/gadget-field-less-than-r1cs")

; The lift succeeds on the real 2531-constraint comparator (~73s under acl2p):
; this is the validated ingestion checkpoint the semantic proof builds on.
(local
 (lift-r1cs *field-less-than-lifted*
            *GADGET-FIELD-LESS-THAN-vars*
            *GADGET-FIELD-LESS-THAN-constraints*
            *GADGET-FIELD-LESS-THAN-prime*
            :package "R1CS"))
