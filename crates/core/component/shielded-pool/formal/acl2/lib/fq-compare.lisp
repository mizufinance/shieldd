; Portable BLS12-377 Fr comparison support for Axe R1CS proofs.

(in-package "R1CS")

(include-book "kestrel/prime-fields/bv-rules" :dir :system)
(include-book "kestrel/prime-fields/fe-listp-fast" :dir :system)
(include-book "kestrel/prime-fields/prime-fields-rules" :dir :system)
(include-book "kestrel/prime-fields/rule-lists" :dir :system)
(include-book "kestrel/bv/bvlt" :dir :system)
(include-book "kestrel/bv/bvcat-rules" :dir :system)
(include-book "kestrel/bv/rules4" :dir :system)
(include-book "kestrel/bv/bitor" :dir :system)
(include-book "kestrel/axe/bv-intro-rules" :dir :system)
(include-book "kestrel/bv-lists/bit-listp" :dir :system)
(include-book "kestrel/bv-lists/bit-listp-rules" :dir :system)
(include-book "kestrel/bv-lists/packbv" :dir :system)
(include-book "kestrel/lists-light/reverse-list" :dir :system)
(include-book "projects/bls12-377-curves/primes/bls12-377-prime" :dir :system)
(include-book "fq-cancel")
(local (include-book "kestrel/bv/bvcat" :dir :system))
(local (include-book "kestrel/arithmetic-light/expt" :dir :system))
(local (include-book "kestrel/arithmetic-light/mod" :dir :system))
(local (include-book "kestrel/arithmetic-light/plus" :dir :system))
(local (include-book "kestrel/arithmetic-light/times" :dir :system))

(defconst *bls12-377-fr*
  8444461749428370424248824938781546531375899335154063827935233455917409239041)

(defthm fq-equal-of-add-and-add-cancel-1-gen
  (implies (posp p)
           (equal (equal (pfield::add x y p) (pfield::add x z p))
                  (equal (mod (ifix y) p) (mod (ifix z) p))))
  :hints (("Goal" :do-not '(preprocess)
           :in-theory (enable pfield::add pfield::sub))))

(defthm fq-equal-of-add-and-add-cancel-2
  (implies (and (integerp y)
                (integerp z)
                (posp p))
           (equal (equal (pfield::add x y p) (pfield::add z x p))
                  (equal (mod y p) (mod z p))))
  :hints (("Goal" :do-not '(preprocess)
           :in-theory (enable pfield::add pfield::sub))))

(defthm fq-equal-of-add-and-add-cancel-3
  (implies (and (integerp y)
                (integerp z)
                (posp p))
           (equal (equal (pfield::add y x p) (pfield::add x z p))
                  (equal (mod y p) (mod z p))))
  :hints (("Goal" :do-not '(preprocess)
           :in-theory (enable pfield::add pfield::sub))))

(defthm fq-equal-of-add-and-add-cancel-4
  (implies (and (integerp y)
                (integerp z)
                (posp p))
           (equal (equal (pfield::add y x p) (pfield::add z x p))
                  (equal (mod y p) (mod z p))))
  :hints (("Goal" :do-not '(preprocess)
           :in-theory (enable pfield::add pfield::sub))))

(defthm fq-equal-of-add-and-add-cancel-2+-2+
  (implies (and (integerp x)
                (integerp y1)
                (integerp z1)
                (integerp y2)
                (integerp z2)
                (posp p))
           (equal (equal (pfield::add y1 (pfield::add x z1 p) p)
                         (pfield::add y2 (pfield::add x z2 p) p))
                  (equal (pfield::add y1 z1 p)
                         (pfield::add y2 z2 p))))
  :hints (("Goal" :do-not '(preprocess)
           :in-theory (enable pfield::add pfield::sub))))

(defthm fq-equal-of-add-and-add-cancel-3+-1+
  (implies (and (integerp x)
                (integerp y1)
                (integerp z1)
                (integerp w1)
                (integerp y2)
                (posp p))
           (equal (equal (pfield::add y1
                                      (pfield::add w1
                                                   (pfield::add x z1 p)
                                                   p)
                                      p)
                         (pfield::add x y2 p))
                  (equal (pfield::add y1 (pfield::add w1 z1 p) p)
                         (mod y2 p))))
  :hints (("Goal" :use (:instance fq-equal-of-add-and-add-cancel-1-gen
                                  (x (pfield::neg x p))
                                  (y (pfield::add y1
                                                  (pfield::add w1
                                                               (pfield::add x z1 p)
                                                               p)
                                                  p))
                                  (z (pfield::add x y2 p)))
           :in-theory (disable fq-equal-of-add-and-add-cancel-1-gen
                               pfield::equal-of-add-cancel-1))))

(defthm fq-equal-of-0-and-add-of-add-of-neg
  (implies (and (integerp x)
                (integerp y)
                (integerp z)
                (posp p))
           (equal (equal 0
                         (pfield::add x
                                      (pfield::add y (pfield::neg z p) p)
                                      p))
                  (equal (mod z p)
                         (pfield::add x y p))))
  :hints (("Goal" :use (:instance fq-equal-of-add-and-add-cancel-1-gen
                                  (x z)
                                  (y (pfield::add x
                                                  (pfield::add y
                                                               (pfield::neg z p)
                                                               p)
                                                  p))
                                  (z 0))
           :in-theory (disable fq-equal-of-add-and-add-cancel-1-gen
                               pfield::equal-of-add-cancel-1))))

(defthm fq-equal-of-0-and-add-of-add-of-add-of-neg
  (implies (and (integerp x)
                (integerp y)
                (integerp z)
                (integerp w)
                (pfield::fep w p)
                (posp p))
           (equal (equal 0
                         (pfield::add x
                                      (pfield::add y
                                                   (pfield::add w
                                                                (pfield::neg z p)
                                                                p)
                                                   p)
                                      p))
                  (equal (mod z p)
                         (pfield::add x (pfield::add y w p) p))))
  :hints (("Goal" :use (:instance fq-equal-of-add-and-add-cancel-1-gen
                                  (x z)
                                  (y (pfield::add x
                                                  (pfield::add y
                                                               (pfield::add w
                                                                            (pfield::neg z p)
                                                                            p)
                                                               p)
                                                  p))
                                  (z 0))
           :in-theory (disable fq-equal-of-add-and-add-cancel-1-gen
                               pfield::equal-of-add-cancel-1))))

(defthm fq-equal-of-0-and-add-of-add-of-add-of-add-of-neg
  (implies (and (integerp x)
                (integerp y)
                (integerp z)
                (integerp w)
                (integerp v)
                (posp p))
           (equal (equal 0
                         (pfield::add x
                                      (pfield::add y
                                                   (pfield::add w
                                                                (pfield::add v
                                                                             (pfield::neg z p)
                                                                             p)
                                                                p)
                                                   p)
                                      p))
                  (equal (mod z p)
                         (pfield::add x (pfield::add y (pfield::add w v p) p) p))))
  :hints (("Goal" :use (:instance fq-equal-of-add-and-add-cancel-1-gen
                                  (x z)
                                  (y (pfield::add x
                                                  (pfield::add y
                                                               (pfield::add w
                                                                            (pfield::add v
                                                                                         (pfield::neg z p)
                                                                                         p)
                                                                            p)
                                                               p)
                                                  p))
                                  (z 0))
           :in-theory (disable fq-equal-of-add-and-add-cancel-1-gen
                               pfield::equal-of-add-cancel-1))))

(defund fq-lt-bit (a b)
  (if (< a b) 1 0))

(defund fq-pack-le (bits)
  (acl2::packbv (len bits) 1 (acl2::reverse-list bits)))

(defund bit-list-lt-msb (a-bits b-bits)
  (if (or (endp a-bits) (endp b-bits))
      0
    (let ((a0 (car a-bits))
          (b0 (car b-bits)))
      (if (< a0 b0)
          1
        (if (< b0 a0)
            0
          (bit-list-lt-msb (cdr a-bits) (cdr b-bits)))))))

(defund fq-not (x)
  (pfield::add 1 (pfield::neg x *bls12-377-fr*) *bls12-377-fr*))

(defund fq-or (x y)
  (pfield::add (pfield::add x y *bls12-377-fr*)
               (pfield::neg (pfield::mul x y *bls12-377-fr*)
                            *bls12-377-fr*)
               *bls12-377-fr*))

(defund fq-eq-bit (x y)
  (pfield::add 1
               (pfield::add (pfield::neg x *bls12-377-fr*)
                            (pfield::add (pfield::neg y *bls12-377-fr*)
                                         (pfield::mul 2
                                                      (pfield::mul x y *bls12-377-fr*)
                                                      *bls12-377-fr*)
                                         *bls12-377-fr*)
                            *bls12-377-fr*)
               *bls12-377-fr*))

(defund fq-prefix-ladder-msb (a-bits b-bits prefix-equal is-less)
  (if (or (endp a-bits) (endp b-bits))
      is-less
    (let* ((ai (car a-bits))
           (bi (car b-bits))
           (less-at-i (pfield::mul
                       (pfield::mul prefix-equal (fq-not ai) *bls12-377-fr*)
                       bi
                       *bls12-377-fr*))
           (next-less (pfield::add is-less less-at-i *bls12-377-fr*))
           (next-prefix (pfield::mul prefix-equal
                                     (fq-eq-bit ai bi)
                                     *bls12-377-fr*)))
      (fq-prefix-ladder-msb (cdr a-bits)
                            (cdr b-bits)
                            next-prefix
                            next-less))))

(defund fq-prefix-ladder-less (a-bits b-bits)
  (fq-prefix-ladder-msb a-bits b-bits 1 0))

(defund fq-dual-ladder-msb (a-bits b-bits is-greater is-less)
  (if (or (endp a-bits) (endp b-bits))
      is-less
    (let* ((ai (car a-bits))
           (bi (car b-bits))
           (not-greater (fq-not is-greater))
           (not-less (fq-not is-less))
           (greater-at-i (pfield::mul
                          (pfield::mul ai not-less *bls12-377-fr*)
                          (fq-not bi)
                          *bls12-377-fr*))
           (less-at-i (pfield::mul
                       (pfield::mul not-greater (fq-not ai) *bls12-377-fr*)
                       bi
                       *bls12-377-fr*)))
      (fq-dual-ladder-msb (cdr a-bits)
                          (cdr b-bits)
                          (fq-or is-greater greater-at-i)
                          (fq-or is-less less-at-i)))))

(defund fq-dual-ladder-less (a-bits b-bits)
  (fq-dual-ladder-msb a-bits b-bits 0 0))

(defund fq-dual-ladder-spec (a-bits b-bits is-greater is-less)
  (if (equal is-less 1)
      1
    (if (equal is-greater 1)
        0
      (bit-list-lt-msb a-bits b-bits))))

(defthm bitp-of-bit-list-lt-msb
  (bitp (bit-list-lt-msb a-bits b-bits))
  :hints (("Goal" :in-theory (enable bit-list-lt-msb bitp))))

(defthm endp-of-cons
  (equal (endp (cons x y)) nil))

(defthm bitp-of-mul
  (implies (and (bitp a)
                (bitp b)
                (primep p))
           (bitp (mul a b p)))
  :hints (("Goal" :in-theory (e/d (bitp)
                                  (acl2::bitp-becomes-unsigned-byte-p)))))

(defthm bitp-of-fq-not
  (implies (bitp x)
           (bitp (fq-not x)))
  :hints (("Goal" :cases ((equal x 0) (equal x 1))
           :in-theory (enable fq-not
                              bitp
                              pfield::add-of-neg-same-arg1
                              pfield::add-of-neg-same-arg2))))

(defthm bitp-of-fq-or
  (implies (and (bitp x)
                (bitp y))
           (bitp (fq-or x y)))
  :hints (("Goal" :cases ((equal x 0) (equal x 1)
                          (equal y 0) (equal y 1))
           :in-theory (enable fq-or
                              bitp
                              pfield::add-of-neg-same-arg1
                              pfield::add-of-neg-same-arg2
                              pfield::add-of-add-of-neg-same
                              pfield::add-of-neg-and-add-same))))

(defthm fq-or-when-bitp
  (implies (and (bitp x)
                (bitp y))
           (equal (fq-or x y)
                  (acl2::bitor x y)))
  :hints (("Goal" :cases ((equal x 0) (equal x 1)
                          (equal y 0) (equal y 1))
           :in-theory (enable fq-or
                              acl2::bitor
                              bitp
                              pfield::add-of-neg-same-arg1
                              pfield::add-of-neg-same-arg2
                              pfield::add-of-add-of-neg-same
                              pfield::add-of-neg-and-add-same))))

(defthm fq-eq-bit-when-bitp
  (implies (and (bitp x)
                (bitp y))
           (equal (fq-eq-bit x y)
                  (if (equal x y) 1 0)))
  :hints (("Goal" :cases ((equal x 0) (equal x 1)
                          (equal y 0) (equal y 1))
           :in-theory (enable fq-eq-bit
                              bitp
                              pfield::add-of-neg-same-arg1
                              pfield::add-of-neg-same-arg2
                              pfield::add-of-add-of-neg-same
                              pfield::add-of-neg-and-add-same))))

(defthm bitp-of-fq-eq-bit
  (implies (and (bitp x)
                (bitp y))
           (bitp (fq-eq-bit x y)))
  :hints (("Goal" :use (:instance fq-eq-bit-when-bitp)
           :in-theory (disable fq-eq-bit-when-bitp))))

(defthm pfield-not-idiom-when-bitp
  (implies (and (bitp x)
                (primep p))
           (equal (pfield::add 1 (pfield::neg x p) p)
                  (acl2::bitnot x)))
  :hints (("Goal" :cases ((equal x 0) (equal x 1))
           :in-theory (enable acl2::bitnot
                              bitp
                              pfield::add-of-neg-same-arg1
                              pfield::add-of-neg-same-arg2))))

(defthm pfield-or-idiom-when-bitp
  (implies (and (bitp x)
                (bitp y)
                (primep p))
           (equal (pfield::add (pfield::add x y p)
                               (pfield::neg (pfield::mul x y p) p)
                               p)
                  (acl2::bitor x y)))
  :hints (("Goal" :cases ((equal x 0) (equal x 1)
                          (equal y 0) (equal y 1))
           :in-theory (enable acl2::bitor
                              bitp
                              pfield::add-of-neg-same-arg1
                              pfield::add-of-neg-same-arg2
                              pfield::add-of-add-of-neg-same
                              pfield::add-of-neg-and-add-same))))

(defthm pfield-mul-of-bit-and-bitnot
  (implies (and (bitp x)
                (primep p))
           (equal (pfield::mul x (acl2::bitnot x) p)
                  0))
  :hints (("Goal" :cases ((equal x 0) (equal x 1))
           :in-theory (enable acl2::bitnot bitp))))

(defthm pfield-add-of-neg-of-mul-same-when-bitp
  (implies (and (bitp x)
                (primep p))
           (equal (pfield::add x
                               (pfield::neg (pfield::mul x x p) p)
                               p)
                  0))
  :hints (("Goal" :cases ((equal x 0) (equal x 1))
           :in-theory (enable bitp
                              pfield::add-of-neg-same-arg1
                              pfield::add-of-neg-same-arg2))))

(defthm bitp-of-add-of-neg-of-mul-same-when-bitp
  (implies (and (bitp x)
                (primep p))
           (bitp (pfield::add x
                              (pfield::neg (pfield::mul x x p) p)
                              p)))
  :hints (("Goal" :cases ((equal x 0) (equal x 1))
           :in-theory (enable bitp
                              pfield::add-of-neg-same-arg1
                              pfield::add-of-neg-same-arg2))))

(defthm bitp-of-add-of-neg-of-minus-one-plus-bit
  (implies (and (bitp x)
                (primep p))
           (bitp (pfield::add x
                              (pfield::neg (+ -1 x) p)
                              p)))
  :hints (("Goal" :cases ((equal x 0) (equal x 1))
           :in-theory (enable bitp
                              pfield::add
                              pfield::neg))))

(defthm fq-dual-ladder-msb-when-less-latched
  (equal (fq-dual-ladder-msb a-bits b-bits is-greater 1)
         1)
  :hints (("Goal" :induct (fq-dual-ladder-msb a-bits b-bits is-greater 1)
           :in-theory (enable fq-dual-ladder-msb
                              fq-not
                              fq-or
                              pfield::add-of-neg-same-arg1
                              pfield::add-of-neg-same-arg2
                              pfield::add-of-add-of-neg-same
                              pfield::add-of-neg-and-add-same))))

(defthm fq-dual-ladder-msb-when-greater-latched
  (equal (fq-dual-ladder-msb a-bits b-bits 1 0)
         0)
  :hints (("Goal" :induct (fq-dual-ladder-msb a-bits b-bits 1 0)
           :in-theory (enable fq-dual-ladder-msb
                              fq-not
                              fq-or
                              pfield::add-of-neg-same-arg1
                              pfield::add-of-neg-same-arg2
                              pfield::add-of-add-of-neg-same
                              pfield::add-of-neg-and-add-same))))

(defthm fq-dual-ladder-less-equals-bit-list-lt-msb
  (implies (and (acl2::bit-listp a-bits)
                (acl2::bit-listp b-bits)
                (equal (len a-bits) (len b-bits)))
           (equal (fq-dual-ladder-less a-bits b-bits)
                  (bit-list-lt-msb a-bits b-bits)))
  :hints (("Goal" :induct (bit-list-lt-msb a-bits b-bits)
           :in-theory (enable fq-dual-ladder-less
                              fq-dual-ladder-msb
                              bit-list-lt-msb
                              acl2::bit-listp
                              fq-not
                              fq-or
                              bitp
                              pfield::add-of-neg-same-arg1
                              pfield::add-of-neg-same-arg2
                              pfield::add-of-add-of-neg-same
                              pfield::add-of-neg-and-add-same))))

(defthm fq-prefix-ladder-msb-when-prefix-zero
  (implies (bitp is-less)
           (equal (fq-prefix-ladder-msb a-bits b-bits 0 is-less)
                  is-less))
  :hints (("Goal" :induct (fq-prefix-ladder-msb a-bits b-bits 0 is-less)
           :in-theory (enable fq-prefix-ladder-msb
                              bitp
                              fq-not
                              fq-eq-bit))))

(defthm fq-prefix-ladder-less-equals-bit-list-lt-msb
  (implies (and (acl2::bit-listp a-bits)
                (acl2::bit-listp b-bits)
                (equal (len a-bits) (len b-bits)))
           (equal (fq-prefix-ladder-less a-bits b-bits)
                  (bit-list-lt-msb a-bits b-bits)))
  :hints (("Goal" :induct (bit-list-lt-msb a-bits b-bits)
           :in-theory (enable fq-prefix-ladder-less
                              fq-prefix-ladder-msb
                              fq-prefix-ladder-msb-when-prefix-zero
                              bit-list-lt-msb
                              acl2::bit-listp
                              fq-not
                              fq-eq-bit
                              bitp
                              pfield::add-of-neg-same-arg1
                              pfield::add-of-neg-same-arg2
                              pfield::add-of-add-of-neg-same
                              pfield::add-of-neg-and-add-same))))

(defthm bitp-of-fq-lt-bit
  (bitp (fq-lt-bit a b))
  :hints (("Goal" :in-theory (enable fq-lt-bit bitp))))

(defthm fq-lt-bit-when-<
  (implies (< a b)
           (equal (fq-lt-bit a b) 1))
  :hints (("Goal" :in-theory (enable fq-lt-bit))))

(defthm fq-lt-bit-when-not-<
  (implies (not (< a b))
           (equal (fq-lt-bit a b) 0))
  :hints (("Goal" :in-theory (enable fq-lt-bit))))

(defthm natp-of-fq-pack-le
  (natp (fq-pack-le bits))
  :rule-classes :type-prescription
  :hints (("Goal" :in-theory (enable fq-pack-le))))

(defthm unsigned-byte-p-of-fq-pack-le
  (unsigned-byte-p (len bits) (fq-pack-le bits))
  :hints (("Goal" :in-theory (enable fq-pack-le))))

(defthm bvlt-when-unsigned-byte-p-253
  (implies (and (unsigned-byte-p 253 a)
                (unsigned-byte-p 253 b))
           (equal (acl2::bvlt 253 a b)
                  (< a b)))
  :hints (("Goal" :in-theory (enable acl2::bvlt))))

(local
 (defthm <-of-bvcat-1-same-low-size-when-low-<
   (implies (and (natp lowsize)
                 (unsigned-byte-p lowsize x)
                 (unsigned-byte-p lowsize y)
                 (< x y))
            (< (acl2::bvcat 1 high lowsize x)
               (acl2::bvcat 1 high lowsize y)))
   :hints (("Goal" :in-theory (enable acl2::bvcat unsigned-byte-p)))))

(local
 (defthm <-of-bvcat-1-0-and-1
   (implies (and (natp lowsize)
                 (unsigned-byte-p lowsize x)
                 (unsigned-byte-p lowsize y))
            (< (acl2::bvcat 1 0 lowsize x)
               (acl2::bvcat 1 1 lowsize y)))
   :hints (("Goal" :in-theory (enable acl2::bvcat unsigned-byte-p)))))

(local
 (defthm not-<-of-bvcat-1-1-and-0
   (implies (and (natp lowsize)
                 (unsigned-byte-p lowsize x)
                 (unsigned-byte-p lowsize y))
            (not (< (acl2::bvcat 1 1 lowsize x)
                    (acl2::bvcat 1 0 lowsize y))))
   :hints (("Goal" :in-theory (enable acl2::bvcat unsigned-byte-p)))))

(local
 (defthm bitp-of-car-when-bit-listp
   (implies (and (acl2::bit-listp x)
                 (consp x))
            (bitp (car x)))
   :hints (("Goal" :in-theory (enable acl2::bit-listp)))))

(local
 (defthm equal-0-when-bitp-and-<-of-other-bit
   (implies (and (bitp x)
                 (bitp y)
                 (< x y))
            (equal x 0))
   :rule-classes nil
   :hints (("Goal" :in-theory (enable bitp)))))

(local
 (defthm equal-1-when-bitp-and-<-of-other-bit
   (implies (and (bitp x)
                 (bitp y)
                 (< x y))
            (equal y 1))
   :rule-classes nil
   :hints (("Goal" :in-theory (enable bitp)))))

(local
 (defthm <-of-bits
   (implies (and (bitp x)
                 (bitp y))
            (equal (< x y)
                   (and (equal x 0)
                        (equal y 1))))
   :hints (("Goal" :in-theory (enable bitp)))))

(local
 (defthm packbv-of-cons-0
   (equal (acl2::packbv (+ 1 (len bits)) 1 (cons 0 bits))
          (acl2::packbv (len bits) 1 bits))
   :hints (("Goal" :in-theory (enable acl2::packbv-opener
                                      acl2::bvcat
                                      unsigned-byte-p)))))

(local
 (defthm packbv-of-cons-1
   (equal (acl2::packbv (+ 1 (len bits)) 1 (cons 1 bits))
          (+ (expt 2 (len bits))
             (acl2::packbv (len bits) 1 bits)))
   :hints (("Goal" :in-theory (enable acl2::packbv-opener
                                      acl2::bvcat
                                      unsigned-byte-p)))))

(local
 (defthm <-of-packbv-when-car-0-and-car-1
   (implies (and (consp a-bits)
                 (consp b-bits)
                 (equal (car a-bits) 0)
                 (equal (car b-bits) 1)
                 (equal (len a-bits) (len b-bits)))
            (< (acl2::packbv (len a-bits) 1 a-bits)
               (acl2::packbv (len b-bits) 1 b-bits)))
   :hints (("Goal" :cases ((equal a-bits (cons (car a-bits) (cdr a-bits)))
                           (equal b-bits (cons (car b-bits) (cdr b-bits))))))))

(local
 (defthm <=-of-packbv-when-car-0-and-car-1
   (implies (and (consp a-bits)
                 (consp b-bits)
                 (equal (car a-bits) 0)
                 (equal (car b-bits) 1)
                 (equal (len a-bits) (len b-bits)))
            (<= (acl2::packbv (len a-bits) 1 a-bits)
                (acl2::packbv (len b-bits) 1 b-bits)))
   :hints (("Goal" :use (:instance <-of-packbv-when-car-0-and-car-1)
            :in-theory (disable <-of-packbv-when-car-0-and-car-1)))))

(local
 (defthm <-of-packbv-same-count-when-car-0-and-car-1
   (implies (and (consp a-bits)
                 (consp b-bits)
                 (equal (car a-bits) 0)
                 (equal (car b-bits) 1)
                 (equal (len a-bits) (len b-bits)))
            (< (acl2::packbv (len a-bits) 1 a-bits)
               (acl2::packbv (len a-bits) 1 b-bits)))
   :hints (("Goal" :use (:instance <-of-packbv-when-car-0-and-car-1)
            :in-theory (disable <-of-packbv-when-car-0-and-car-1)))))

(local
 (defthm <=-of-packbv-same-count-when-car-0-and-car-1
   (implies (and (consp a-bits)
                 (consp b-bits)
                 (equal (car a-bits) 0)
                 (equal (car b-bits) 1)
                 (equal (len a-bits) (len b-bits)))
            (<= (acl2::packbv (len a-bits) 1 a-bits)
                (acl2::packbv (len a-bits) 1 b-bits)))
   :hints (("Goal" :use (:instance <-of-packbv-same-count-when-car-0-and-car-1)
            :in-theory (disable <-of-packbv-same-count-when-car-0-and-car-1)))))

(local
 (defthm not-<-of-packbv-same-count-when-car-1-and-car-0
   (implies (and (consp a-bits)
                 (consp b-bits)
                 (equal (car a-bits) 1)
                 (equal (car b-bits) 0)
                 (equal (len a-bits) (len b-bits)))
            (not (< (acl2::packbv (len a-bits) 1 a-bits)
                    (acl2::packbv (len a-bits) 1 b-bits))))
   :hints (("Goal" :use (:instance <-of-packbv-same-count-when-car-0-and-car-1
                                   (a-bits b-bits)
                                   (b-bits a-bits))
            :in-theory (disable <-of-packbv-same-count-when-car-0-and-car-1)))))

(defthm bit-list-lt-msb-equals-bvlt-of-packbv
  (implies (and (acl2::bit-listp a-bits)
                (acl2::bit-listp b-bits)
                (equal (len a-bits) (len b-bits)))
           (equal (bit-list-lt-msb a-bits b-bits)
                  (if (acl2::bvlt (len a-bits)
                                  (acl2::packbv (len a-bits) 1 a-bits)
                                  (acl2::packbv (len b-bits) 1 b-bits))
                      1
                    0)))
  :hints (("Goal" :induct (bit-list-lt-msb a-bits b-bits)
           :in-theory (enable bit-list-lt-msb
                              acl2::bit-listp
                              acl2::packbv-opener
                              acl2::bvlt
                              bitp))))

(defthm ladder-equals-bvlt
  (implies (and (acl2::bit-listp a-bits)
                (acl2::bit-listp b-bits)
                (equal (len a-bits) 253)
                (equal (len b-bits) 253))
           (equal (bit-list-lt-msb a-bits b-bits)
                  (if (acl2::bvlt 253
                                  (acl2::packbv 253 1 a-bits)
                                  (acl2::packbv 253 1 b-bits))
                      1
                    0)))
  :hints (("Goal" :use (:instance bit-list-lt-msb-equals-bvlt-of-packbv)
           :in-theory (disable bit-list-lt-msb-equals-bvlt-of-packbv))))

(defthm bit-list-lt-msb-equals-fq-lt-bit-of-packbv-253
  (implies (and (acl2::bit-listp a-bits)
                (acl2::bit-listp b-bits)
                (equal (len a-bits) 253)
                (equal (len b-bits) 253))
           (equal (bit-list-lt-msb a-bits b-bits)
                  (fq-lt-bit (acl2::packbv 253 1 a-bits)
                             (acl2::packbv 253 1 b-bits))))
  :hints (("Goal" :use ((:instance ladder-equals-bvlt)
                        (:instance bvlt-when-unsigned-byte-p-253
                                   (a (acl2::packbv 253 1 a-bits))
                                   (b (acl2::packbv 253 1 b-bits))))
           :in-theory (e/d (fq-lt-bit)
                           (ladder-equals-bvlt
                            bvlt-when-unsigned-byte-p-253)))))

(defthm fq-prefix-ladder-less-equals-fq-lt-bit-of-packbv-253
  (implies (and (acl2::bit-listp a-bits)
                (acl2::bit-listp b-bits)
                (equal (len a-bits) 253)
                (equal (len b-bits) 253))
           (equal (fq-prefix-ladder-less a-bits b-bits)
                  (fq-lt-bit (acl2::packbv 253 1 a-bits)
                             (acl2::packbv 253 1 b-bits))))
  :hints (("Goal" :use ((:instance fq-prefix-ladder-less-equals-bit-list-lt-msb)
                        (:instance bit-list-lt-msb-equals-fq-lt-bit-of-packbv-253))
           :in-theory (disable fq-prefix-ladder-less-equals-bit-list-lt-msb
                               bit-list-lt-msb-equals-fq-lt-bit-of-packbv-253))))

(defund fq-compare-global-rules ()
  '(acl2::rationalp-when-integerp
    acl2::integerp-of-bvcat
    acl2::integerp-of-bvchop
    pfield::integerp-of-add
    pfield::integerp-of-mul
    pfield::integerp-of-neg
    pfield::fep-of-mod
    pfield::fep-of-add
    pfield::fep-of-mul
    pfield::fep-of-neg
    pfield::fep-of-bvcat
    pfield::add-of-0-arg1
    pfield::neg-of-0
    pfield::neg-of-mod
    pfield::add-of-mod-arg1
    pfield::add-of-mod-arg2
    pfield::mul-of-mod-arg1
    pfield::mul-of-mod-arg2
    acl2::ifix-when-integerp
    pfield::mod-of-ifix-when-fep
    (acl2::booleanp-rules)
    pfield::booleanp-of-fe-listp
    (pfield::fe-listp-rules-axe)
    primes::primep-of-bls12-377-scalar-field-prime-constant
    acl2::unsigned-byte-p-of-bvcat
    acl2::unsigned-byte-p-of-bvchop
    acl2::bvcat-when-lowsize-is-not-positive
    acl2::bvchop-1-becomes-getbit
    acl2::bvchop-of-bvcat-cases-gen
    acl2::bvchop-identity
    acl2::bvcat-of-bvchop-low
    acl2::bvcat-of-bvchop-high
    acl2::mod-when-<
    acl2::bvcat-numeric-bound
    acl2::bvcat-non-negative
    acl2::integerp-of-bvnot
    acl2::<-becomes-bvlt-axe-bind-free-arg1
    acl2::<-becomes-bvlt-axe-bind-free-arg2
    acl2::<-becomes-bvlt-axe-bind-free-and-bind-free
    acl2::<-becomes-bvlt-axe-bind-free-and-free
    acl2::<-becomes-bvlt-axe-free-and-bind-free
    fq-lt-bit
    bitp-of-fq-not
    bitp-of-fq-or
    bitp-of-fq-eq-bit
    pfield-not-idiom-when-bitp
    pfield-or-idiom-when-bitp
    bitp-of-fq-lt-bit
    bvlt-when-unsigned-byte-p-253))

(defund fq-compare-boolean-rules ()
  '(pfield::bitp-idiom-1
    pfield::bitp-idiom-1-alt
    bitp-of-mul
    bitp-of-fq-not
    bitp-of-fq-or
    bitp-of-fq-eq-bit
    fq-or-when-bitp
    fq-eq-bit-when-bitp
    pfield-not-idiom-when-bitp
    pfield-or-idiom-when-bitp
    acl2::bitp-of-bitnot
    acl2::bitp-of-bitor
    acl2::bitor-of-0-arg1
    acl2::bitor-of-0-arg2
    acl2::bitor-of-1-arg1
    acl2::bitor-of-1-arg2
    acl2::bitor-same
    acl2::bitor-associative))

(defund fq-compare-recomposition-rules ()
  '(pfield::mul-of-power-of-2-when-bitp
    pfield::mul-of-negative-power-of-2-when-bitp
    pfield::add-commutative-2-when-constant
    pfield::add-commutative-when-constant
    pfield::add-associative-when-constant
    pfield::add-of-add-combine-constants
    pfield::add-of-bvcat-1-of-0-and-add-of-bvcat-1-of-0-extra
    pfield::add-of-bvcat-of-0-when-unsigned-byte-p-arg1
    pfield::add-of-bvcat-of-0-when-unsigned-byte-p-arg2
    pfield::add-of-bvcat-of-0-when-unsigned-byte-p-arg1-bitp
    pfield::add-of-bvcat-of-0-when-unsigned-byte-p-arg2-bitp
    pfield::add-of-add-of-bvcat-of-0-when-unsigned-byte-p-with-extra
    pfield::add-of-add-of-bvcat-of-0-when-unsigned-byte-p-with-extra-special
    pfield::add-of-add-of-bvcat-of-0-when-unsigned-byte-p-with-extra-alt
    pfield::add-of-add-of-bvcat-of-0-when-unsigned-byte-p-with-extra-special-alt
    acl2::bvcat-associative-helper
    acl2::bvcat-associative
    acl2::bvcat-equal-rewrite
    acl2::bvcat-equal-rewrite-alt
    acl2::bvcat-of-bvnot-and-bvnot
    acl2::bvcat-of-bitnot-and-bvnot
    acl2::bvcat-of-bvnot-and-bitnot
    acl2::bvcat-of-bitnot-and-bitnot
    pfield::add-of-bvnot-becomes-add-of-neg
    pfield::add-of-bvnot-becomes-add-of-neg-arg2
    pfield::add-of-neg-and-bvcat-of-0
    pfield::add-of-neg-and-bvcat-of-0-extra
    pfield::equal-of-0-and-add-of-add-of-neg-lemma
    pfield::equal-of-add-of-neg-arg2
    acl2::packbv-opener
    fq-pack-le))

(defund fq-compare-ordering-rules ()
  '(acl2::bvlt-of-bvcat-arg2
    acl2::bvlt-of-bvcat-arg2-constant
    acl2::bvlt-of-bvcat-arg2-constant-arg2-arg3
    acl2::bvlt-of-bvcat-arg2-constant-arg4-arg3
    acl2::bvlt-of-bvcat-arg3
    acl2::bvlt-of-bvcat-arg3-constant
    acl2::bvlt-of-bvcat-arg3-constant-arg2-arg2
    acl2::bvlt-of-bvcat-arg3-constant-arg2-arg4
    acl2::bvlt-of-bvcat-low-arg2
    acl2::bvlt-of-bvcat-low-arg3
    acl2::bvlt-of-bvcat-trim-special
    acl2::<-of-bvcat
    acl2::<-of-bvcat-alt
    acl2::bvcat-of-getbit-and-getbit-adjacent
    acl2::bvcat-of-slice-and-slice-adjacent
    acl2::bvcat-of-getbit-and-slice-adjacent
    acl2::bvcat-of-slice-and-getbit-adjacent
    acl2::bvcat-of-getbit-and-x-adjacent-2
    acl2::bvcat-of-getbit-and-x-adjacent
    acl2::bvcat-of-slice-and-x-adjacent-2
    acl2::bvcat-of-slice-and-x-adjacent
    fq-prefix-ladder-less-equals-bit-list-lt-msb
    bit-list-lt-msb-equals-bvlt-of-packbv
    ladder-equals-bvlt
    bit-list-lt-msb-equals-fq-lt-bit-of-packbv-253
    fq-prefix-ladder-less-equals-fq-lt-bit-of-packbv-253
    bvlt-when-unsigned-byte-p-253
    fq-lt-bit))
