; Axe lift checkpoint for the Kestrel-shaped canonical decomposition gadget
; (gadget-canonical-fq-bits): one operand decomposed into 253 little-endian bits
; whose packing equals the operand and whose value is asserted reduced
; (packbv <= p-1) via the exact shapes of Kestrel's
; `make-range-check-constraints` constructor for c = p-1, n = 253.
;
; STATUS: lift checkpoint only (ingestion validated). This book certifies that
; the Axe bridge lifts the real 506-constraint reducedness R1CS into a DAG. It
; does NOT yet discharge the reducedness spec `packbv(bits) <= p-1`; that is the
; keystone instantiation carried by canonical-fq-bits-proof.lisp.
;
; Why the 506-slice is not byte-identical to the 340-constraint constructor
; `(make-range-check-constraints avars pivars (1- p) 253)` (recorded honestly, so
; the keystone book bridges the difference rather than assuming identity):
;   * Identity-wire doubling. gnark compiles every `AssertIsEqual(Mul(a,b),c)` to
;     TWO constraints (a product wire `a*b=out` + an `out=c` equality); it never
;     folds to a single `a*b=c`. So the 166 zero-bit a-constraints
;     `(1 - pi_{i+1} - a_i)*a_i = 0` each double:
;       506 = 1 pack + 87 boolean + 166*2 zero-bit + 86 pi.
;     The 166 extra are trivial `out=0` identity equalities the rewriter folds.
;   * Block order. gnark emits `pack, pi-constraints, a-constraints`; the
;     constructor is `(append a-constraints pi-constraints)`. A permutation,
;     handled by `r1cs-constraints-holdp-of-append` reasoning, not algebra.
;   * Boolean strategy. Only the 87 one-bit positions carry a standalone boolean
;     constraint `b*(b-1)=0` (extracted as the bit-inputs); the 166 zero-bit
;     positions are pinned boolean as a *consequence* of the range-check shape
;     (the keystone's `bit-listp` conclusion), not by a per-bit constraint.
;
; Field: BLS12-377 Fr, pinned in formal/toolchain.toml [constraints].

(in-package "R1CS")

(include-book "kestrel/axe/r1cs/top" :dir :system)
(include-book "generated/gadget-canonical-fq-bits-r1cs")
(include-book "generated/gadget-canonical-fq-bits-bit-inputs")

; The lift succeeds on the real 506-constraint reducedness R1CS: this is the
; validated ingestion checkpoint the keystone proof builds on.
(local
 (lift-r1cs *canonical-fq-bits-lifted*
            *GADGET-CANONICAL-FQ-BITS-vars*
            *GADGET-CANONICAL-FQ-BITS-constraints*
            *GADGET-CANONICAL-FQ-BITS-prime*
            :package "R1CS"))
