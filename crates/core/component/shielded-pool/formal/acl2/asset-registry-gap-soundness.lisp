; Whole-gadget operand-canonicity soundness for AssetRegistryGap.
;
; Composes the certified pieces into a statement over the REAL 5568-constraint
; gadget: any satisfying assignment forces all three operands (LeafValue,
; NoteAssetID, NextValue) to be canonical field residues -- their 253 bit wires
; are boolean and pack to a value <= p-1. This is the reducedness foundation of
; the full whole-gadget semantic theorem.
;
; Proof = asset-registry-gap-holdp-decomposition (5-way block split of the whole
; gadget) feeding the three operand reducedness theorems
; (asset-registry-{leaf,id,next}-reduced), each itself a rename-transfer of the
; A1 keystone canonical-fq-bits-slice-reduced.
;
; STILL OPEN (the deferred heavy step) -- the output-predicate equivalence
;   output == 1  <=>  (isRegulated ? id == leaf : leaf < id < next)
; requires re-expressing the two one-shot ladder Axe proofs (lex-less-proof.lisp,
; verify-r1cs over [1521,3543) and [3543,5565)) as reusable holdp=>spec lemmas,
; lifting the ~5 glue constraints (IsZero exact-match [1519,1521), isInGap =
; gtLow*ltHigh + Select(isRegulated,...) + output==1 in [5565,5568)), and chaining
; the packbv<->ladder-less bridge fq-prefix-ladder-less-equals-fq-lt-bit-of-packbv-253
; (lib/fq-compare). The operand-canonicity proved here supplies the canonical-bits
; hypotheses that bridge depends on.

(in-package "R1CS")

(include-book "asset-registry-gap-proof")        ; 5-way holdp decomposition
(include-book "asset-registry-operands-reduced")  ; leaf/id/next reducedness transfers

;; Whole-gadget operand canonicity. The three binds hypotheses say the witness
;; assigns every operand wire (the gadget's own witness always does); holdp says
;; the assignment satisfies the whole gadget.
(defthm asset-registry-gap-operands-canonical
  (implies (and (primep *fq-prime*)
                (r1cs-valuationp valuation *fq-prime*)
                (valuation-binds-allp valuation (strip-cdrs *sigma-leaf*))
                (valuation-binds-allp valuation (strip-cdrs *sigma-id*))
                (valuation-binds-allp valuation (strip-cdrs *sigma-next*))
                (r1cs-constraints-holdp *GADGET-ASSET-REGISTRY-GAP-constraints*
                                        valuation *fq-prime*))
           (and ;; LeafValue operand is a canonical residue
                (acl2::bit-listp (acl2::lookup-eq-lst *leaf-avars* valuation))
                (<= (acl2::packbv 253 1
                                  (acl2::lookup-eq-lst *leaf-avars-rev* valuation))
                    *fq-c*)
                ;; NoteAssetID operand is a canonical residue
                (acl2::bit-listp (acl2::lookup-eq-lst *id-avars* valuation))
                (<= (acl2::packbv 253 1
                                  (acl2::lookup-eq-lst *id-avars-rev* valuation))
                    *fq-c*)
                ;; NextValue operand is a canonical residue
                (acl2::bit-listp (acl2::lookup-eq-lst *next-avars* valuation))
                (<= (acl2::packbv 253 1
                                  (acl2::lookup-eq-lst *next-avars-rev* valuation))
                    *fq-c*)))
  :hints (("Goal"
           :use ((:instance asset-registry-gap-holdp-decomposition
                            (valuation valuation) (prime *fq-prime*))
                 asset-registry-leaf-reduced
                 asset-registry-id-reduced
                 asset-registry-next-reduced)
           :in-theory (theory 'acl2::minimal-theory))))
