; Field-value soundness for AssetRegistryGap (Stage 1b, path b1) -- DECOMPOSITION.
;
; Goal: a CITABLE pure-ACL2 theorem that any satisfying assignment of the whole
; 5568-constraint gadget forces the FIELD-VALUE comparator predicate
;   isRegulated ? (LeafValue == NoteAssetID)
;               : (LeafValue < NoteAssetID  AND  NoteAssetID < NextValue)
;
; Route (proven on THIS gadget by asset-registry-gap-operands-canonical): split
; the whole holdp into blocks (asset-registry-gap-holdp-decomposition), prove each
; block's wire-level spec from holdp by DIRECT dot-product unfolding (no Axe, no
; dag2term -- the term/shared-DAG impedance mismatch makes the named whole-gadget
; Axe route impossible: dag2term of even a 2022-constraint ladder is a ~1e79-cons
; tree), then compose in ordinary ACL2 over a free valuation.
;
; This book builds that chain block by block. First block: IsZero exact-match
; [1519,1521) -> INTERNAL-1520 = (LeafValue == NoteAssetID), via gap-exact-match-bridge.
;
; ----------------------------------------------------------------------------
; CHECKPOINT STATUS (honest residual; CLAUDE.md: no skip-proofs, no weakening).
;
; DONE (certified here): b1.9a = gap-iszero-block-flag. holdp over the IsZero block
;   forces INTERNAL-1520 to the exact-match indicator, in free-valuation form
;   (lookup-equal ... valuation), by direct dot-product unfold + gap-exact-match-bridge.
;
; DISPROVEN (do not retry): the named WHOLE-GADGET Axe route, both ways.
;   (i)  dag2term of the lifted DAG: even a single 2022-constraint ladder lifted DAG
;        is 10616 nodes in memory but its dag2term TERM has acl2-count ~4.06e79
;        (ACL2 term = tree, shared structure expands) -> the ~5GB OOM. Dead at all
;        scales. verify-r1cs survives only via conjoin-term-with-dag! (shared DAG
;        assumption); a defthm statement is a term, which cannot express that.
;   (ii) compact holdp + acons self-valuation + (r1cs-rules): memory bounded but
;        FAILED TO CLOSE (1641s, 1892 prover steps; the deep acons forced lookup-eq
;        expansion and the prover never reached the proof).
;
; OPEN (the bulk of b1 -- large, deferred):
;   b1.9b  the two lexLess253 ladders [1521,3543) and [3543,5565): citable
;          holdp(slice,val,p) => (lookup-equal output val) = fq-prefix-ladder-less(...)
;          in valuation form. No Axe (dag2term-dead) and no library lemma exists
;          (unlike the bit-range-check, which operand-canonicity got for free from
;          make-range-check-constraints-correct). Must be a 253-step telescoping
;          induction reusing the certified ARG-{L1,L2}-LADDER-STEP-i lemmas in
;          asset-registry-gap-output.lisp, each step's wire hyps discharged from
;          holdp by direct dot-product unfold (as in b1.9a). 253 steps x 2 ladders
;          over a 2022-constraint holdp unfold -- a large, slow, iterative proof.
;   b1.9c  glue [5565,5568): C5565 INTERNAL-3034*INTERNAL-4550=INTERNAL-4554,
;          C5566 ISREGULATED*(INTERNAL-1520-INTERNAL-4554)=INTERNAL-4555,
;          C5567 INTERNAL-4554+INTERNAL-4555=output (= arg-select(isReg,flag,lt1*lt2));
;          then compose b1.9a + b1.9b + glue + operand canonicity via
;          asset-registry-gap-holdp-decomposition into the field-value predicate
;          (:rule-classes nil); stamp artifact + wire the gate.
; ----------------------------------------------------------------------------

(in-package "R1CS")

(include-book "asset-registry-gap-soundness")   ; *fq-prime*, constraints, decomposition, operand canonicity
(include-book "asset-registry-gap-semantic")    ; gap-exact-match-bridge
(local (include-book "kestrel/crypto/r1cs/valuations" :dir :system))
(local (include-book "kestrel/prime-fields/prime-fields-rules" :dir :system))

;; IsZero exact-match block: the two constraints at [1519,1521).
;;   C1519: INTERNAL-1521 * (LeafValue - NoteAssetID) = INTERNAL-1520 - 1
;;   C1520: INTERNAL-1520 * (NoteAssetID - LeafValue) = 0
(defconst *gap-iszero-block*
  (take 2 (nthcdr 1519 *GADGET-IMT-GAP-constraints*)))

;; b1.9a: holdp over the IsZero block forces the flag wire INTERNAL-1520 to be the
;; exact-match indicator of the two operands. Direct dot-product unfold yields the
;; two field equations (in gap-exact-match-bridge's ISZ0/ISZ1 shape after
;; prime-field normalization); the bridge then collapses them to the predicate.
(defthm gap-iszero-block-flag
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (valuation-bindsp valuation 'INTERNAL-1520)
                (valuation-bindsp valuation 'INTERNAL-1521)
                (valuation-bindsp valuation 'LEAFVALUE)
                (valuation-bindsp valuation 'NOTEASSETID)
                (r1cs-constraints-holdp *gap-iszero-block* valuation *fq-prime*))
           (equal (lookup-equal 'INTERNAL-1520 valuation)
                  (if (equal (lookup-equal 'LEAFVALUE valuation)
                             (lookup-equal 'NOTEASSETID valuation))
                      1 0)))
  :rule-classes nil
  :hints (("Goal"
           :do-not-induct t
           :use ((:instance gap-exact-match-bridge
                            (leafvalue (lookup-equal 'LEAFVALUE valuation))
                            (noteassetid (lookup-equal 'NOTEASSETID valuation))
                            (flag (lookup-equal 'INTERNAL-1520 valuation))
                            (inv0 (lookup-equal 'INTERNAL-1521 valuation))))
           :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp
                              dot-product fep-of-lookup-equal))))
