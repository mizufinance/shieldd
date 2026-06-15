; Reducedness keystone, specialized to Shieldd's field (BLS12-377 Fr).
;
; This book instantiates Kestrel's CERTIFIED range-check keystone
; `make-range-check-constraints-correct`
; (kestrel/crypto/r1cs/sparse/gadgets/range-check.lisp:2268) at the concrete
; parameters the CanonicalFqBits253 gadget targets:
;   c = p - 1  (the largest canonical residue), n = 253.
; It discharges every ground arithmetic side condition for OUR field -- the
; leading-1 bit position, unsigned-byte width, operand-list lengths and
; distinctness -- leaving a clean reducedness statement: any valuation that
; satisfies the range-check constraints over these operands has packbv(avars) of
; the bits <= p-1.  This is the reusable core the gadget proof builds on; no STP,
; no encoding-equivalence lemma.
;
; Scope (stated honestly): this re-export is over the *constructor* constraints
; `(make-range-check-constraints avars pivars (1- p) 253)`.  Bridging it to the
; gnark 506-constraint export (identity-wire folding + block reorder +
; reconciling the boolean strategy -- the 87 one-bit positions carry standalone
; boolean constraints, the 166 zero-bit positions are pinned boolean as a
; consequence of the range-check shape) is the remaining gadget-level obligation
; recorded in circuit-gadget-proofs.md.  The Axe lift of the real export is
; the certified checkpoint canonical-fq-bits-lift.lisp.

(in-package "R1CS")

(include-book "kestrel/crypto/r1cs/sparse/gadgets/range-check" :dir :system)
(include-book "lib/internal-wires")

; p = BLS12-377 scalar field; c = p-1 is the largest canonical residue.
(defconst *fq-prime*
  8444461749428370424248824938781546531375899335154063827935233455917409239041)
(defconst *fq-c* (+ -1 *fq-prime*))

; 253 distinct avars (the bit wires) and 253 distinct pivars, disjoint by range.
(make-event
 `(defconst *cfb-avars* ',(internal-wire-range 2 254)))
(make-event
 `(defconst *cfb-pivars* ',(internal-wire-range 1002 1254)))

; The specialized reducedness keystone: satisfying the c=p-1, n=253 range-check
; constraints forces the packed bits to be <= p-1 (and boolean).  Proved purely
; by instantiating the certified keystone; the concrete hypotheses (leading 1 at
; bit 252, unsigned-byte-p 253 (p-1), lengths = 253, no-duplicates, disjointness)
; are discharged by ground evaluation for our field.
(defthm canonical-fq-bits-reduced
  (implies (and (primep *fq-prime*)
                (r1cs-valuationp valuation *fq-prime*)
                (valuation-binds-allp valuation *cfb-avars*)
                (valuation-binds-allp valuation
                                      (pivars-for-1s *cfb-pivars* 251
                                                     (index-of-lowest-0 *fq-c*)
                                                     *fq-c*))
                (r1cs-constraints-holdp
                 (make-range-check-constraints *cfb-avars* *cfb-pivars* *fq-c* 253)
                 valuation *fq-prime*))
           (and (acl2::bit-listp (acl2::lookup-eq-lst *cfb-avars* valuation))
                (<= (acl2::packbv 253 1
                                  (acl2::lookup-eq-lst
                                   (acl2::reverse-list *cfb-avars*) valuation))
                    *fq-c*)))
  :hints (("Goal"
           :use (:instance make-range-check-constraints-correct
                           (avars *cfb-avars*)
                           (pivars *cfb-pivars*)
                           (c *fq-c*)
                           (n 253)
                           (p *fq-prime*))
           ;; Minimal theory + exactly the executable-counterparts needed to
           ;; discharge the keystone's GROUND side conditions for our parameters
           ;; (leading-1 bit, width, list lengths/distinctness). Everything else
           ;; (holdp, bit-listp, packbv, lookup-eq-lst, the constructor) stays
           ;; folded, so the goal matches the :use instance literally instead of
           ;; unrolling the 253-element operand lists.
           :in-theory (union-theories
                       (theory 'acl2::minimal-theory)
                       '((:executable-counterpart equal)
                         (:executable-counterpart not)
                         (:executable-counterpart getbit)
                         (:executable-counterpart index-of-lowest-0)
                         (:executable-counterpart pivars-for-1s)
                         (:executable-counterpart no-duplicatesp-equal)
                         (:executable-counterpart intersection-equal)
                         (:executable-counterpart unsigned-byte-p)
                         (:executable-counterpart symbol-listp)
                         (:executable-counterpart len)
                         (:executable-counterpart binary-+)
                         (:executable-counterpart unary--)
                         (:executable-counterpart posp))))))
