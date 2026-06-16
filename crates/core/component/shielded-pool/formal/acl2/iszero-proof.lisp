; C3 gadget theorem: the exported R1CS of `gadget-iszero` implies the
; gnark IsZero spec over canonical BLS12-377 Fr residues.

(in-package "ACL2")

(include-book "arithmetic-5/top" :dir :system)
(include-book "projects/bls12-377-curves/primes/bls12-377-prime" :dir :system)
(include-book "kestrel/number-theory/mod" :dir :system)
(include-book "kestrel/arithmetic-light/mod" :dir :system)

(defconst *fr*
  8444461749428370424248824938781546531375899335154063827935233455917409239041)

(defun fep (x)
  (and (integerp x) (<= 0 x) (< x *fr*)))

; Exported gadget-iszero R1CS (wires: 0=ONE 1=In 2=Out 3=internal_3
; 4=internal_4):
;   c0: (-In) * internal_4 = -1 + internal_3
;   c1: In    * internal_3 = 0
;   c2: 1     * Out        = internal_3
(defun iszero-r1cs (input out flag inv)
  (and (equal (mod (* (- input) inv) *fr*)
              (mod (+ -1 flag) *fr*))
       (equal (mod (* input flag) *fr*) 0)
       (equal (mod out *fr*) (mod flag *fr*))))

(defun iszero-spec (input)
  (if (equal input 0) 1 0))

(defthm fep-equal-from-equal-mod
  (implies (and (fep x)
                (fep y)
                (equal (mod x *fr*) (mod y *fr*)))
           (equal (equal x y) t))
  :rule-classes nil
  :hints (("Goal" :in-theory (enable fep))))

(defthm flag-is-zero-when-input-nonzero
  (implies (and (fep input)
                (fep flag)
                (not (equal input 0))
                (equal (mod (* input flag) *fr*) 0))
           (equal flag 0))
  :rule-classes nil
  :hints (("Goal"
           :use ((:instance acl2::equal-of-0-and-mod-of-*-when-primep
                            (p *fr*)
                            (x input)
                            (y flag)))
           :in-theory (e/d (fep)
                           (acl2::equal-of-0-and-mod-of-*-when-primep
                            (:definition mod)
                            (:definition floor))))))

(defthm flag-is-one-when-input-zero
  (implies (and (fep flag)
                (equal (mod (+ -1 flag) *fr*) 0))
           (equal flag 1))
  :rule-classes nil
  :hints (("Goal" :in-theory (enable fep))))

(defthm iszero-r1cs-implies-spec
  (implies (and (fep input) (fep out) (fep flag) (fep inv)
                (iszero-r1cs input out flag inv))
           (equal out (iszero-spec input)))
  :rule-classes nil
  :hints (("Goal"
           :use (flag-is-zero-when-input-nonzero
                 flag-is-one-when-input-zero
                 (:instance fep-equal-from-equal-mod
                            (x out)
                            (y flag)))
           :cases ((equal input 0)))))
