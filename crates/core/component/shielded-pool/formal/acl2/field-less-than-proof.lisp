; Composed FieldLessThan proof obligations over the generated gnark R1CS.
;
; The full 3035-constraint monolithic Axe target is too large for the current
; rewrite setup.  This book keeps the proof split at the generated circuit
; boundaries: ToBinary recomposition, comparator suffix, and a pure bridge from
; the MSB-first ladder semantics to integer less-than on the recomposed values.

(in-package "R1CS")

(include-book "field-less-than-pack-proof")
(include-book "field-less-than-ladder-proof")
(include-book "lib/fq-compare")
(include-book "lib/field-less-than-wires")

(defthm field-less-than-pack-ladder-bridge
  (implies (and (acl2::bit-listp a-bits-msb)
                (acl2::bit-listp b-bits-msb)
                (equal (len a-bits-msb) 253)
                (equal (len b-bits-msb) 253)
                (equal a (acl2::packbv 253 1 a-bits-msb))
                (equal b (acl2::packbv 253 1 b-bits-msb))
                (equal out (fq-prefix-ladder-less a-bits-msb b-bits-msb)))
           (equal out (fq-lt-bit a b)))
  :rule-classes nil
  :hints (("Goal" :use (:instance fq-prefix-ladder-less-equals-fq-lt-bit-of-packbv-253
                                  (a-bits a-bits-msb)
                                  (b-bits b-bits-msb))
           :in-theory (disable fq-prefix-ladder-less-equals-fq-lt-bit-of-packbv-253))))

(defthm field-less-than-concrete-pack-ladder-bridge
  (implies (and (acl2::bit-listp (field-less-than-a-bits-msb))
                (acl2::bit-listp (field-less-than-b-bits-msb))
                (equal a (acl2::packbv 253 1 (field-less-than-a-bits-msb)))
                (equal b (acl2::packbv 253 1 (field-less-than-b-bits-msb)))
                (equal out
                       (fq-prefix-ladder-less (field-less-than-a-bits-msb)
                                              (field-less-than-b-bits-msb))))
           (equal out (fq-lt-bit a b)))
  :rule-classes nil
  :hints (("Goal" :use (:instance field-less-than-pack-ladder-bridge
                                  (a-bits-msb (field-less-than-a-bits-msb))
                                  (b-bits-msb (field-less-than-b-bits-msb)))
           :in-theory (enable acl2::bit-listp))))
