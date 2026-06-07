; Focused packing proofs for the generated FieldLessThan ToBinary operands.

(in-package "R1CS")

(include-book "kestrel/axe/r1cs/top" :dir :system)
(include-book "kestrel/axe/dag-to-term" :dir :system)
(include-book "generated/gadget-field-less-than-r1cs")
(include-book "generated/gadget-field-less-than-bit-inputs")
(include-book "lib/fq-compare")
(include-book "lib/field-less-than-wires")

(defconst *gadget-field-less-than-a-pack-constraints*
  (acl2::take 254 *GADGET-FIELD-LESS-THAN-constraints*))

(defconst *gadget-field-less-than-b-pack-constraints*
  (acl2::take 254 (nthcdr 506 *GADGET-FIELD-LESS-THAN-constraints*)))

(defun dag-var-node (var dag)
  (declare (xargs :mode :program))
  (if (endp dag)
      nil
    (let ((entry (car dag)))
      (if (and (consp entry)
               (atom (cdr entry))
               (equal (cdr entry) var))
          (car entry)
        (dag-var-node var (cdr dag))))))

(defun dag-equality-side-equal-to-var (var-node dag)
  (declare (xargs :mode :program))
  (if (endp dag)
      nil
    (let ((entry (car dag)))
      (if (and (consp entry)
               (consp (cdr entry))
               (eq (cadr entry) 'equal)
               (or (equal (caddr entry) var-node)
                   (equal (cadddr entry) var-node)))
          (if (equal (caddr entry) var-node)
              (cadddr entry)
            (caddr entry))
        (dag-equality-side-equal-to-var var-node (cdr dag))))))

(defun recomposition-term-for-var (var dag)
  (declare (xargs :mode :program))
  (let* ((var-node (dag-var-node var dag))
         (term-node (dag-equality-side-equal-to-var var-node dag)))
    (if term-node
        (acl2::dag-to-term-aux term-node dag)
      (er hard? 'recomposition-term-for-var
          "No lifted equality found for ~x0 in DAG." var))))

(local
 (lift-r1cs *gadget-field-less-than-a-pack-lifted*
            *GADGET-FIELD-LESS-THAN-vars*
            *gadget-field-less-than-a-pack-constraints*
            *GADGET-FIELD-LESS-THAN-prime*
            :package "R1CS"))

(local
 (lift-r1cs *gadget-field-less-than-b-pack-lifted*
            *GADGET-FIELD-LESS-THAN-vars*
            *gadget-field-less-than-b-pack-constraints*
            *GADGET-FIELD-LESS-THAN-prime*
            :package "R1CS"))

(make-event
 (let ((term (recomposition-term-for-var 'A
                                         *gadget-field-less-than-a-pack-lifted*)))
   `(verify-r1cs
     *gadget-field-less-than-a-pack-lifted*
     (equal ,term A)
     *GADGET-FIELD-LESS-THAN-prime*
     :bit-inputs ',(internal-wire-range 4 256)
     :global-rules (fq-compare-global-rules)
     :rule-lists '(((pfield::add-and-mul-normalization-rules)
                    pfield::mul-of-1-arg1
                    pfield::mul-of-1-arg2
                    pfield::add-of-0-arg1
                    pfield::add-of-0-arg2
                    pfield::add-of-add-combine-constants
                    pfield::add-commutative-when-constant
                    pfield::add-associative-when-constant))
     :var-ordering ',(cons 'A (internal-wire-range 4 256))
     :print :brief)))

(make-event
 (let ((term (recomposition-term-for-var 'B
                                         *gadget-field-less-than-b-pack-lifted*)))
   `(verify-r1cs
     *gadget-field-less-than-b-pack-lifted*
     (equal ,term B)
     *GADGET-FIELD-LESS-THAN-prime*
     :bit-inputs ',(internal-wire-range 343 595)
     :global-rules (fq-compare-global-rules)
     :rule-lists '(((pfield::add-and-mul-normalization-rules)
                    pfield::mul-of-1-arg1
                    pfield::mul-of-1-arg2
                    pfield::add-of-0-arg1
                    pfield::add-of-0-arg2
                    pfield::add-of-add-combine-constants
                    pfield::add-commutative-when-constant
                    pfield::add-associative-when-constant))
     :var-ordering ',(cons 'B (internal-wire-range 343 595))
     :print :brief)))
