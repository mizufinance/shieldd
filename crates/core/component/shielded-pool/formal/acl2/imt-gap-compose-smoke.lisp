; imt-gap whole-circuit composition smoke (M5 / Spike 3).
;
; Goal: demonstrate, on the real 6074-constraint AssetMembershipValid gadget,
; that satisfying the whole circuit is *equivalent* to satisfying its four
; gadget sub-blocks independently -- the load-bearing composition primitive for
; the whole-circuit soundness artifact. This is the append-decomposition idiom
; (r1cs-constraints-holdp-of-append), exercised end-to-end on a real export.
;
; Block map (indices into *GADGET-IMT-GAP-constraints*, verified by var-occurrence
; scan against the gnark source AssetMembershipValid in indexed_tree.go):
;
;   front  [0,3)      glue: isRegulated booleanity (idx0) + IsZero isExactMatch
;                     (idx1,2):  INTERNAL-5 = (NOTEASSETID == LEAFVALUE ? 1 : 0)
;   comp1  [3,3037)   FieldLessThan(LEAFVALUE, NOTEASSETID)
;                     -> gtLow  = INTERNAL-2197 = (LEAFVALUE < NOTEASSETID ? 1:0)
;   comp2  [3037,6071) FieldLessThan(NOTEASSETID, NEXTVALUE)
;                     -> ltHigh = INTERNAL-4391 = (NOTEASSETID < NEXTVALUE ? 1:0)
;   back   [6071,6074) glue: isInGap = gtLow*ltHigh (idx6071),
;                     select INTERNAL-4396 = ISREGULATED*(INTERNAL-5 - isInGap)
;                     (idx6072), output isInGap + INTERNAL-4396 = 1 (idx6073)
;                     i.e. Select(isRegulated, isExactMatch, isInGap) = 1.
;
; What this book PROVES (certifies cleanly):
;   1. imt-gap-block-decomposition: the constraint list IS the append of the
;      four named blocks (structural identity, by ground computation).
;   2. imt-gap-holdp-decomposition: holdp(whole) <=> holdp(front) & holdp(comp1)
;      & holdp(comp2) & holdp(back).  The composition primitive.
;
; What remains for the full whole-circuit theorem (codex deep work, recorded in
; circuit-gadget-proofs.md as assumed gadget obligations):
;   - comp1/comp2 semantic lemmas (= gadget-field-less-than, currently DEFERRED:
;     reducedness keystone). Stated below as the exact obligations to discharge.
;   - front IsZero lemma (= gadget-iszero, PROVED) and back-glue select lemma
;     (= gadget-bool-select, PROVED) -- instantiate the proved gadget theorems.
; Once those four block lemmas are available, imt-gap-holdp-decomposition feeds
; them directly to conclude AssetMembershipValid = 1 over canonical field reps.

(in-package "R1CS")

(include-book "kestrel/crypto/r1cs/sparse/r1cs" :dir :system)
(include-book "generated/gadget-imt-gap-r1cs")

(defconst *imt-gap-front* (take 3 *GADGET-IMT-GAP-constraints*))
(defconst *imt-gap-comp1* (take 3034 (nthcdr 3 *GADGET-IMT-GAP-constraints*)))
(defconst *imt-gap-comp2* (take 3034 (nthcdr 3037 *GADGET-IMT-GAP-constraints*)))
(defconst *imt-gap-back*  (nthcdr 6071 *GADGET-IMT-GAP-constraints*))

;; (1) Structural identity: whole = front ++ comp1 ++ comp2 ++ back.
(defthm imt-gap-block-decomposition
  (equal *GADGET-IMT-GAP-constraints*
         (append *imt-gap-front*
                 (append *imt-gap-comp1*
                         (append *imt-gap-comp2* *imt-gap-back*))))
  :rule-classes nil)

;; Generic 4-way append split for holdp (free vars; no large execution).
(defthm r1cs-constraints-holdp-of-append-4
  (equal (r1cs-constraints-holdp (append a (append b (append c d))) v p)
         (and (r1cs-constraints-holdp a v p)
              (r1cs-constraints-holdp b v p)
              (r1cs-constraints-holdp c v p)
              (r1cs-constraints-holdp d v p)))
  :hints (("Goal" :in-theory (enable r1cs-constraints-holdp-of-append))))

;; (2) Composition primitive: satisfying the whole circuit is equivalent to
;;     satisfying the four gadget blocks independently.  Proven from the generic
;;     split + the structural identity, with the holdp definition disabled so the
;;     rewriter never expands the 6074-element constant element-by-element.
(defthm imt-gap-holdp-decomposition
  (equal (r1cs-constraints-holdp *GADGET-IMT-GAP-constraints* valuation prime)
         (and (r1cs-constraints-holdp *imt-gap-front* valuation prime)
              (r1cs-constraints-holdp *imt-gap-comp1* valuation prime)
              (r1cs-constraints-holdp *imt-gap-comp2* valuation prime)
              (r1cs-constraints-holdp *imt-gap-back* valuation prime)))
  :hints (("Goal"
           :use ((:instance r1cs-constraints-holdp-of-append-4
                            (a *imt-gap-front*) (b *imt-gap-comp1*)
                            (c *imt-gap-comp2*) (d *imt-gap-back*)
                            (v valuation) (p prime))
                 imt-gap-block-decomposition)
           :in-theory (disable r1cs-constraints-holdp-of-append-4
                               r1cs-constraints-holdp
                               r1cs-constraints-holdp-of-append))))
