; Wire-list macros for the generated FieldLessThan R1CS.

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

(defmacro field-less-than-a-bits-le ()
  (cons 'list (internal-wire-range 4 256)))

(defmacro field-less-than-b-bits-le ()
  (cons 'list (internal-wire-range 343 595)))

(defmacro field-less-than-a-bits-msb ()
  (cons 'list (reverse (internal-wire-range 4 256))))

(defmacro field-less-than-b-bits-msb ()
  (cons 'list (reverse (internal-wire-range 343 595))))

(defmacro field-less-than-operand-bit-inputs ()
  (append (cons 'list (internal-wire-range 4 256))
          (internal-wire-range 343 595)))
