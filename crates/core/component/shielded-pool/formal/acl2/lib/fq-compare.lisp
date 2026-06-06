; Portable BLS12-377 Fr comparison support for Axe R1CS proofs.

(in-package "R1CS")

(include-book "kestrel/prime-fields/bv-rules" :dir :system)
(include-book "kestrel/prime-fields/fe-listp-fast" :dir :system)
(include-book "kestrel/bv/bvlt" :dir :system)
(include-book "kestrel/bv/bvcat-rules" :dir :system)
(include-book "kestrel/bv/rules4" :dir :system)
(include-book "kestrel/axe/bv-intro-rules" :dir :system)
(include-book "kestrel/bv-lists/bit-listp" :dir :system)
(include-book "kestrel/bv-lists/packbv" :dir :system)
(include-book "kestrel/lists-light/reverse-list" :dir :system)
(include-book "projects/bls12-377-curves/primes/bls12-377-prime" :dir :system)

(defconst *bls12-377-fr*
  8444461749428370424248824938781546531375899335154063827935233455917409239041)

(defund fq-lt-bit (a b)
  (if (< a b) 1 0))

(defund fq-pack-le (bits)
  (acl2::packbv (len bits) 1 (acl2::reverse-list bits)))

(defthm bitp-of-mul
  (implies (and (bitp a)
                (bitp b)
                (primep p))
           (bitp (mul a b p)))
  :hints (("Goal" :in-theory (e/d (bitp)
                                  (acl2::bitp-becomes-unsigned-byte-p)))))

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
    bitp-of-fq-lt-bit
    bvlt-when-unsigned-byte-p-253))

(defund fq-compare-boolean-rules ()
  '(pfield::bitp-idiom-1
    pfield::bitp-idiom-1-alt
    bitp-of-mul))

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
    pfield::equal-of-add-of-neg-arg2-solve
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
    bvlt-when-unsigned-byte-p-253
    fq-lt-bit))
