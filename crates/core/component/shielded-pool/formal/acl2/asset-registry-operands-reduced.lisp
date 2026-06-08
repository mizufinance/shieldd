; Operand-block reducedness transfer (A3 Option A) for leaf / id / next.
;
; Each of the three AssetRegistryGap operands (LeafValue, NoteAssetID, NextValue)
; is a CanonicalFqBits253 block compiled at a different wire offset than the
; standalone slice. For each operand this book:
;   (1) builds sigma_X, the explicit wire renaming standalone -> operand X, by
;       zipping the two blocks' distinct-vars-in-order;
;   (2) proves the GROUND rename equality
;         *arg-X* = (rename-cons *GADGET-CANONICAL-FQ-BITS-constraints* sigma_X);
;   (3) transfers the certified A1 keystone (canonical-fq-bits-slice-reduced)
;       across sigma_X, yielding operand reducedness: a satisfying valuation forces
;       the operand's 253 bit wires boolean and to pack to a value <= p-1
;       (canonical field residue) -- over the REAL operand wires.
;
; Block offsets into *GADGET-ASSET-REGISTRY-GAP-constraints* (each 506 long):
;   leaf [1,507)  id [507,1013)  next [1013,1519).
;
; No skip-proofs; the rename equality and all sigma well-formedness / coverage
; side conditions are discharged by ground evaluation. The three operands share
; one macro (def-operand-reduced) so the proof obligation is written once.

(in-package "R1CS")

(include-book "canonical-fq-bits-bridge")     ; A1 keystone over the standalone slice
(include-book "canonical-fq-bits-rename")      ; generic substitution lemmas
(include-book "generated/gadget-asset-registry-gap-r1cs")
(local (include-book "kestrel/alists-light/strip-cars" :dir :system))
(local (include-book "kestrel/alists-light/strip-cdrs" :dir :system))

;;; ---------------------------------------------------------------------------
;;; distinct pseudo-vars in order of first appearance (skipping the constant 1).
;;; ---------------------------------------------------------------------------

(defun vars-of-vec (vec acc)
  (declare (xargs :guard t :verify-guards nil))
  (if (atom vec)
      acc
    (let ((v (second (first vec))))
      (vars-of-vec (rest vec)
                   (if (or (eql v 1) (member-eq v acc)) acc (cons v acc))))))

(defun vars-of-cons (cons acc)
  (declare (xargs :guard t :verify-guards nil))
  (if (atom cons)
      (reverse acc)
    (vars-of-cons (rest cons)
                  (vars-of-vec (r1cs-constraint->c (first cons))
                               (vars-of-vec (r1cs-constraint->b (first cons))
                                            (vars-of-vec (r1cs-constraint->a (first cons))
                                                         acc))))))

(defun distinct-vars (cons)
  (declare (xargs :guard t :verify-guards nil))
  (vars-of-cons cons nil))

;;; ---------------------------------------------------------------------------
;;; Per-operand instantiation macro. SUFFIX is a symbol (LEAF / ID / NEXT); the
;;; operand block is constraints [OFFSET, OFFSET+506) of the whole gadget.
;;; ---------------------------------------------------------------------------

(defmacro def-operand-reduced (suffix offset)
  (let* ((argc      (acl2::packn-pos (list "*ARG-" suffix "*") 'rename-cons))
         (sigmac    (acl2::packn-pos (list "*SIGMA-" suffix "*") 'rename-cons))
         (avarsc    (acl2::packn-pos (list "*" suffix "-AVARS*") 'rename-cons))
         (avarsrevc (acl2::packn-pos (list "*" suffix "-AVARS-REV*") 'rename-cons))
         (l-renamed (acl2::packn-pos (list "ARG-" suffix "-IS-RENAMED-STANDALONE") 'rename-cons))
         (l-goodsig (acl2::packn-pos (list "GOOD-SIGMAP-OF-SIGMA-" suffix) 'rename-cons))
         (l-goodcon (acl2::packn-pos (list "GOOD-CONSTRAINTS-STANDALONE-OVER-SIGMA-" suffix) 'rename-cons))
         (l-avsub   (acl2::packn-pos (list "AVARS-SUBSETP-KEYS-" suffix) 'rename-cons))
         (l-avrsub  (acl2::packn-pos (list "AVARS-REV-SUBSETP-KEYS-" suffix) 'rename-cons))
         (l-pisub   (acl2::packn-pos (list "PIVARS-SUBSETP-KEYS-" suffix) 'rename-cons))
         (l-varl    (acl2::packn-pos (list "VAR-LISTP-KEYS-OF-SIGMA-" suffix) 'rename-cons))
         (l-pull    (acl2::packn-pos (list "HOLDP-ARG-" suffix "-AS-PULLBACK") 'rename-cons))
         (thm       (acl2::packn-pos (list "ASSET-REGISTRY-" suffix "-REDUCED") 'rename-cons)))
    `(progn
       (defconst ,argc (take 506 (nthcdr ,offset *GADGET-ASSET-REGISTRY-GAP-constraints*)))
       (defconst ,sigmac
         (pairlis$ (distinct-vars *GADGET-CANONICAL-FQ-BITS-constraints*)
                   (distinct-vars ,argc)))
       (defconst ,avarsc     (rename-vars *cfb-gnark-avars* ,sigmac))
       (defconst ,avarsrevc  (rename-vars (acl2::reverse-list *cfb-gnark-avars*) ,sigmac))

       ;; (1) ground rename equality + ground side conditions
       (defthm ,l-renamed
         (equal ,argc (rename-cons *GADGET-CANONICAL-FQ-BITS-constraints* ,sigmac))
         :rule-classes nil)
       (defthm ,l-goodsig (good-sigmap ,sigmac) :rule-classes nil)
       (defthm ,l-goodcon
         (good-r1cs-constraint-listp *GADGET-CANONICAL-FQ-BITS-constraints*
                                     (strip-cars ,sigmac))
         :rule-classes nil)
       (defthm ,l-avsub
         (subsetp-equal *cfb-gnark-avars* (strip-cars ,sigmac)) :rule-classes nil)
       (defthm ,l-avrsub
         (subsetp-equal (acl2::reverse-list *cfb-gnark-avars*) (strip-cars ,sigmac))
         :rule-classes nil)
       (defthm ,l-pisub
         (subsetp-equal (pivars-for-1s *cfb-gnark-pivars* 251
                                       (index-of-lowest-0 *fq-c*) *fq-c*)
                        (strip-cars ,sigmac))
         :rule-classes nil)
       (defthm ,l-varl (var-listp (strip-cars ,sigmac)) :rule-classes nil)

       ;; (2) holdp transport to the pullback valuation over the standalone slice
       (defthm ,l-pull
         (equal (r1cs-constraints-holdp ,argc v prime)
                (r1cs-constraints-holdp *GADGET-CANONICAL-FQ-BITS-constraints*
                                        (compose-valuation ,sigmac v) prime))
         :hints (("Goal"
                  :use (,l-renamed ,l-goodsig ,l-goodcon
                        (:instance r1cs-constraints-holdp-of-rename-cons
                                   (cons *GADGET-CANONICAL-FQ-BITS-constraints*)
                                   (sigma ,sigmac) (v v) (prime prime)))
                  :in-theory (disable r1cs-constraints-holdp-of-rename-cons
                                      r1cs-constraints-holdp))))

       ;; (3) operand reducedness over the REAL operand wires
       (defthm ,thm
         (implies (and (primep *fq-prime*)
                       (r1cs-valuationp valuation *fq-prime*)
                       (valuation-binds-allp valuation (strip-cdrs ,sigmac))
                       (r1cs-constraints-holdp ,argc valuation *fq-prime*))
                  (and (acl2::bit-listp (acl2::lookup-eq-lst ,avarsc valuation))
                       (<= (acl2::packbv 253 1
                                         (acl2::lookup-eq-lst ,avarsrevc valuation))
                           *fq-c*)))
         :hints (("Goal"
                  :use (,l-goodsig ,l-varl ,l-avsub ,l-avrsub ,l-pisub
                        (:instance ,l-pull (v valuation) (prime *fq-prime*))
                        (:instance canonical-fq-bits-slice-reduced
                                   (valuation (compose-valuation ,sigmac valuation)))
                        (:instance lookup-eq-lst-of-rename-vars
                                   (vars *cfb-gnark-avars*)
                                   (sigma ,sigmac) (v valuation))
                        (:instance lookup-eq-lst-of-rename-vars
                                   (vars (acl2::reverse-list *cfb-gnark-avars*))
                                   (sigma ,sigmac) (v valuation))
                        (:instance r1cs-valuationp-of-compose-valuation
                                   (v valuation) (prime *fq-prime*) (sigma ,sigmac))
                        (:instance valuation-binds-allp-of-compose-valuation-when-subsetp
                                   (vars *cfb-gnark-avars*) (sigma ,sigmac) (v valuation))
                        (:instance valuation-binds-allp-of-compose-valuation-when-subsetp
                                   (vars (pivars-for-1s *cfb-gnark-pivars* 251
                                                        (index-of-lowest-0 *fq-c*) *fq-c*))
                                   (sigma ,sigmac) (v valuation)))
                  :in-theory (union-theories
                              (theory 'acl2::minimal-theory)
                              '((:executable-counterpart rename-vars)
                                (:executable-counterpart acl2::reverse-list)
                                (:executable-counterpart strip-cars)
                                (:executable-counterpart strip-cdrs)
                                (:executable-counterpart pivars-for-1s)
                                (:executable-counterpart index-of-lowest-0)
                                (:executable-counterpart good-sigmap)
                                (:executable-counterpart var-listp)
                                (:executable-counterpart subsetp-equal)
                                (:executable-counterpart binary-+)
                                (:executable-counterpart unary--)))))))))

;;; ---------------------------------------------------------------------------
;;; The three operands.
;;; ---------------------------------------------------------------------------

(def-operand-reduced leaf 1)
(def-operand-reduced id   507)
(def-operand-reduced next 1013)
