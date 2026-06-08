; imt-gap gadget composition smoke (M5 / Spike 3).
;
; Goal: demonstrate, on the shipped 5568-constraint gadget-imt-gap export
; (AssetRegistryGap), that satisfying the whole gadget is equivalent to
; satisfying its five sub-blocks independently. This is the
; append-decomposition idiom (r1cs-constraints-holdp-of-append), exercised
; end-to-end on the shipped label.
;
; Block map (indices into *GADGET-IMT-GAP-constraints*, verified by var-occurrence
; scan against AssetRegistryGap in canonical_fq_bits.go):
;
;   reg    [0,1)        isRegulated booleanity
;   leaf   [1,507)      CanonicalFqBits253(LeafValue)
;   id     [507,1013)   CanonicalFqBits253(NoteAssetID)
;   next   [1013,1519)  CanonicalFqBits253(NextValue)
;   tail   [1519,5568)  exact-match + two lexLess253 ladders + final select/output
;
; What this book PROVES (certifies cleanly):
;   1. imt-gap-block-decomposition: the constraint list IS the append of the
;      five named blocks (structural identity, by ground computation).
;   2. imt-gap-holdp-decomposition: holdp(whole) <=> holdp of each block.

(in-package "R1CS")

(include-book "kestrel/crypto/r1cs/sparse/r1cs" :dir :system)
(include-book "generated/gadget-imt-gap-r1cs")

(defconst *imt-gap-reg*  (take 1 *GADGET-IMT-GAP-constraints*))
(defconst *imt-gap-leaf* (take 506 (nthcdr 1 *GADGET-IMT-GAP-constraints*)))
(defconst *imt-gap-id*   (take 506 (nthcdr 507 *GADGET-IMT-GAP-constraints*)))
(defconst *imt-gap-next* (take 506 (nthcdr 1013 *GADGET-IMT-GAP-constraints*)))
(defconst *imt-gap-tail* (nthcdr 1519 *GADGET-IMT-GAP-constraints*))

;; (1) Structural identity: whole = reg ++ leaf ++ id ++ next ++ tail.
(defthm imt-gap-block-decomposition
  (equal *GADGET-IMT-GAP-constraints*
         (append *imt-gap-reg*
                 (append *imt-gap-leaf*
                         (append *imt-gap-id*
                                 (append *imt-gap-next* *imt-gap-tail*)))))
  :rule-classes nil)

;; Generic 5-way append split for holdp (free vars; no large execution).
(defthm r1cs-constraints-holdp-of-append-5
  (equal (r1cs-constraints-holdp
          (append a (append b (append c (append d e)))) v p)
         (and (r1cs-constraints-holdp a v p)
              (r1cs-constraints-holdp b v p)
              (r1cs-constraints-holdp c v p)
              (r1cs-constraints-holdp d v p)
              (r1cs-constraints-holdp e v p)))
  :hints (("Goal" :in-theory (enable r1cs-constraints-holdp-of-append))))

;; (2) Composition primitive: satisfying the whole circuit is equivalent to
;;     satisfying the five gadget blocks independently. Proven from the generic
;;     split + the structural identity, with holdp disabled so the rewriter never
;;     expands the 5568-element constant element-by-element.
(defthm imt-gap-holdp-decomposition
  (equal (r1cs-constraints-holdp *GADGET-IMT-GAP-constraints* valuation prime)
         (and (r1cs-constraints-holdp *imt-gap-reg*  valuation prime)
              (r1cs-constraints-holdp *imt-gap-leaf* valuation prime)
              (r1cs-constraints-holdp *imt-gap-id*   valuation prime)
              (r1cs-constraints-holdp *imt-gap-next* valuation prime)
              (r1cs-constraints-holdp *imt-gap-tail* valuation prime)))
  :hints (("Goal"
           :use ((:instance r1cs-constraints-holdp-of-append-5
                            (a *imt-gap-reg*) (b *imt-gap-leaf*)
                            (c *imt-gap-id*) (d *imt-gap-next*)
                            (e *imt-gap-tail*)
                            (v valuation) (p prime))
                 imt-gap-block-decomposition)
           :in-theory (disable r1cs-constraints-holdp-of-append-5
                               r1cs-constraints-holdp
                               r1cs-constraints-holdp-of-append))))
