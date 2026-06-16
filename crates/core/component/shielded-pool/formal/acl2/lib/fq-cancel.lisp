; Field-cancellation lemmas for generated R1CS latch equalities.

(in-package "R1CS")

(include-book "kestrel/prime-fields/bv-rules" :dir :system)
(include-book "kestrel/prime-fields/fe-listp-fast" :dir :system)
(include-book "kestrel/prime-fields/prime-fields-rules" :dir :system)
(include-book "kestrel/prime-fields/rule-lists" :dir :system)
(include-book "projects/bls12-377-curves/primes/bls12-377-prime" :dir :system)
(local (include-book "arithmetic-5/top" :dir :system))
(local (include-book "kestrel/arithmetic-light/mod" :dir :system))
(local (include-book "kestrel/arithmetic-light/plus" :dir :system))
(local (include-book "kestrel/arithmetic-light/times" :dir :system))

(defconst *bls12-377-fr*
  8444461749428370424248824938781546531375899335154063827935233455917409239041)

(defthm fq-equal-of-add-of-add-of-neg
  (implies (and (integerp x)
                (integerp y)
                (integerp z)
                (integerp w)
                (pfield::fep w p)
                (posp p))
           (equal (equal (pfield::add x
                                      (pfield::add (pfield::neg z p) y p)
                                      p)
                         w)
                  (equal (mod z p)
                         (pfield::add x
                                      (pfield::add y (pfield::neg w p) p)
                                      p))))
  :hints (("Goal" :do-not '(preprocess)
           :in-theory (enable pfield::add pfield::neg))))

(defthm fq-equal-of-add-of-add-of-neg-of-mul-bls12-377
  (implies (and (integerp x)
                (integerp y)
                (integerp z))
           (equal (equal (pfield::add x
                                      (pfield::add (pfield::neg z *bls12-377-fr*) y *bls12-377-fr*)
                                      *bls12-377-fr*)
                         (pfield::mul u v *bls12-377-fr*))
                  (equal (mod z *bls12-377-fr*)
                         (pfield::add x
                                      (pfield::add y
                                                   (pfield::neg (pfield::mul u v *bls12-377-fr*)
                                                                *bls12-377-fr*)
                                                   *bls12-377-fr*)
                                      *bls12-377-fr*))))
  :hints (("Goal" :use (:instance fq-equal-of-add-of-add-of-neg
                                  (w (pfield::mul u v *bls12-377-fr*))
                                  (p *bls12-377-fr*))
           :in-theory (e/d (primes::primep-of-bls12-377-scalar-field-prime-constant)
                           (fq-equal-of-add-of-add-of-neg)))))
