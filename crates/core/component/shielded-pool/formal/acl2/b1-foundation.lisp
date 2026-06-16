(in-package "R1CS")
(include-book "kestrel/axe/r1cs/top" :dir :system)
(include-book "kestrel/axe/register-and-wrap-clause-processor-simple" :dir :system)
(include-book "projects/bls12-377-curves/primes/bls12-377-prime" :dir :system)

;; Mint a NAMED, citable defthm macro backed by the trusted r1cs clause
;; processor -- the SAME trust basis verify-r1cs already uses (NOT skip-proofs).
(acl2::register-and-wrap-clause-processor-simple r1cs)

(defconst *p* 8444461749428370424248824938781546531375899335154063827935233455917409239041)
(defconst *vs* '(LEAFVALUE NOTEASSETID INTERNAL-1520 INTERNAL-1521))
(defconst *cs*
  '(((A (1 INTERNAL-1521)) (B (-1 NOTEASSETID) (1 LEAFVALUE)) (C (-1 1) (1 INTERNAL-1520)))
    ((A (1 INTERNAL-1520)) (B (1 NOTEASSETID) (-1 LEAFVALUE)) (C (0 1)))))
(local (lift-r1cs *lc* *vs* *cs* *p* :package "R1CS"))

;; Named theorem: holdp(2 constraints) => C1520's own equation. Trivially closable
;; by the rewriter (conclusion is an assumed constraint); the point is that this
;; yields a CITABLE defthm, not an anonymous verify-r1cs event.
(make-event
 (acl2::defthm-axe-r1cs-fn
  'smoke-holdp-implies-c1520
  `(implies (and ,(pfield::gen-fe-listp-assumption (acl2::dag-vars-unsorted *lc*) (list 'quote *p*))
                 ,(acl2::dag2term *lc*))
            (equal '0
                   (mul INTERNAL-1520
                        (add NOTEASSETID (neg LEAFVALUE ',*p*) ',*p*)
                        ',*p*)))
  '(:rep :rewrite :subst)            ; tactic
  nil                                 ; rules
  (list (append (list 'pfield::fe-listp-rules-axe) ; rule-lists (one list)
                '(acl2::equal-same
                  primes::primep-of-bls12-377-scalar-field-prime-constant)))
  nil                                 ; remove-rules
  t                                   ; no-splitp
  nil nil nil nil :brief nil nil      ; print-as-clausesp no-print-fns monitor use print var-ordering count-hits
  nil                                 ; rule-classes
  state))

;; Citability test: an ordinary defthm that :use's the named theorem.
(defthm cite-smoke
  (implies (and (pfield::fep INTERNAL-1520 *p*)
                (pfield::fep INTERNAL-1521 *p*)
                (pfield::fep LEAFVALUE *p*)
                (pfield::fep NOTEASSETID *p*)
                ;; the two constraint equations as ordinary hyps
                (equal (mul INTERNAL-1521 (add LEAFVALUE (neg NOTEASSETID *p*) *p*) *p*)
                       (add (neg 1 *p*) INTERNAL-1520 *p*))
                (equal '0 (mul INTERNAL-1520 (add NOTEASSETID (neg LEAFVALUE *p*) *p*) *p*)))
           (equal '0 (mul INTERNAL-1520 (add NOTEASSETID (neg LEAFVALUE *p*) *p*) *p*)))
  :rule-classes nil)
