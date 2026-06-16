; Helpers for constructing generated INTERNAL-n wire symbols.

(in-package "R1CS")

(defun internal-wire-range-aux (lo hi acc)
  (declare (xargs :mode :program))
  (if (> lo hi)
      (reverse acc)
    (internal-wire-range-aux (+ 1 lo)
                             hi
                             (cons (intern-in-package-of-symbol
                                    (concatenate 'string "INTERNAL-" (coerce (explode-atom lo 10) 'string))
                                    'r1cs::a)
                                   acc))))

(defun internal-wire-range (lo hi)
  (declare (xargs :mode :program))
  (internal-wire-range-aux lo hi nil))
