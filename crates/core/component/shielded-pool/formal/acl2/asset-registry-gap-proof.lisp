; AssetRegistryGap whole-gadget composition (the proof-friendly IMT comparator).
;
; Goal: on the real 5568-constraint AssetRegistryGap gadget (the decompose-once
; replacement for AssetMembershipValid / ImtGapGadget), show that satisfying the
; whole circuit is *equivalent* to satisfying its five sub-blocks independently
; -- the append-decomposition idiom (r1cs-constraints-holdp-of-append) that the
; whole-gadget soundness theorem composes from. Same primitive proved for the old
; gadget in imt-gap-compose-smoke.lisp, here re-established over the new shape.
;
; Block map (indices into *GADGET-ASSET-REGISTRY-GAP-constraints*, verified by
; the :c packing-constraint scan against AssetRegistryGap in canonical_fq_bits.go):
;
;   reg    [0,1)        glue: isRegulated booleanity  isReg*(isReg-1)=0  (idx0)
;   leaf   [1,507)      CanonicalFqBits253(LeafValue): 506-constraint Kestrel-shaped
;                       reducedness decomposition (pack + pi-ladder + a-constraints)
;   id     [507,1013)   CanonicalFqBits253(NoteAssetID): 506-constraint decomposition
;   next   [1013,1519)  CanonicalFqBits253(NextValue): 506-constraint decomposition
;   tail   [1519,5568)  IsZero exact-match + lexLess253(leaf,id) + lexLess253(id,next)
;                       + isInGap = gtLow*ltHigh + Select(isRegulated, exactMatch,
;                       isInGap) + output == 1
;
; What this book PROVES (certifies cleanly, no Axe rewriting):
;   1. asset-registry-gap-block-decomposition: the constraint list IS the append
;      of the five named blocks (structural identity, by ground computation).
;   2. asset-registry-gap-holdp-decomposition: holdp(whole) <=> holdp of each of
;      the five blocks. The composition primitive.
;
; What remains for the full whole-gadget semantic theorem (the heavy, CI-gated
; work, recorded in circuit-gadget-proofs.md and ASSET-REGISTRY-GAP-HANDOFF.md):
;   - leaf/id/next block lemmas = the canonical-fq-bits keystone: each 506-block
;     instantiates make-range-check-constraints-correct (range-check.lisp:2268,
;     CERTIFIED) to give packbv <= p-1, i.e. the operand equals its bit
;     decomposition over canonical residues. The Axe lift of one such block is the
;     certified checkpoint canonical-fq-bits-lift.lisp.
;   - the two lexLess253 sub-blocks inside tail = the lex-less ladder lemma
;     (= the certified field-less-than-ladder-proof.lisp bridge, re-pointed onto
;     the reused canonical bits -- the ladder body is byte-identical).
;   - IsZero (= gadget-iszero, PROVED), select glue (= gadget-bool-select, PROVED).
; Once those block lemmas are available, asset-registry-gap-holdp-decomposition
; feeds them directly to conclude AssetRegistryGap = 1 over canonical field reps.

(in-package "R1CS")

(include-book "kestrel/crypto/r1cs/sparse/r1cs" :dir :system)
(include-book "generated/gadget-asset-registry-gap-r1cs")

(defconst *arg-reg*  (take 1 *GADGET-ASSET-REGISTRY-GAP-constraints*))
(defconst *arg-leaf* (take 506 (nthcdr 1 *GADGET-ASSET-REGISTRY-GAP-constraints*)))
(defconst *arg-id*   (take 506 (nthcdr 507 *GADGET-ASSET-REGISTRY-GAP-constraints*)))
(defconst *arg-next* (take 506 (nthcdr 1013 *GADGET-ASSET-REGISTRY-GAP-constraints*)))
(defconst *arg-tail* (nthcdr 1519 *GADGET-ASSET-REGISTRY-GAP-constraints*))

;; (1) Structural identity: whole = reg ++ leaf ++ id ++ next ++ tail.
(defthm asset-registry-gap-block-decomposition
  (equal *GADGET-ASSET-REGISTRY-GAP-constraints*
         (append *arg-reg*
                 (append *arg-leaf*
                         (append *arg-id*
                                 (append *arg-next* *arg-tail*)))))
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

;; (2) Composition primitive: satisfying the whole gadget is equivalent to
;;     satisfying the five blocks independently. Proven from the generic split +
;;     the structural identity, with holdp disabled so the rewriter never expands
;;     the 5568-element constant element-by-element.
(defthm asset-registry-gap-holdp-decomposition
  (equal (r1cs-constraints-holdp *GADGET-ASSET-REGISTRY-GAP-constraints* valuation prime)
         (and (r1cs-constraints-holdp *arg-reg*  valuation prime)
              (r1cs-constraints-holdp *arg-leaf* valuation prime)
              (r1cs-constraints-holdp *arg-id*   valuation prime)
              (r1cs-constraints-holdp *arg-next* valuation prime)
              (r1cs-constraints-holdp *arg-tail* valuation prime)))
  :hints (("Goal"
           :use ((:instance r1cs-constraints-holdp-of-append-5
                            (a *arg-reg*) (b *arg-leaf*) (c *arg-id*)
                            (d *arg-next*) (e *arg-tail*)
                            (v valuation) (p prime))
                 asset-registry-gap-block-decomposition)
           :in-theory (disable r1cs-constraints-holdp-of-append-5
                               r1cs-constraints-holdp
                               r1cs-constraints-holdp-of-append))))
