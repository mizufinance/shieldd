; C3 gadget theorem: the exported R1CS of `gadget-bool-select` implies the
; Select spec it is meant to compute. Certified with the parallel image
; (`acl2p`) so the Kestrel community books built under the same ACL2(p) world
; include cleanly.
;
; This is the end-to-end certified anchor for the C3 ACL2/Axe methodology: a
; real `R1CS => spec` proof over the *actual* gnark-exported constraints. The
; constraints below are byte-for-byte the axe-json export
; (bool_select_acl2_parity_test.go in tools/gnark asserts the equality, so this
; ACL2 model provably matches the compiled gnark gadget).
;
; Field: BLS12-377 Fr, pinned in formal/toolchain.toml [constraints].
;
; Scope note (honesty): c0 derives booleanity of Cond using the checked
; BLS12-377 scalar-field prime certificate in the Kestrel books. The theorem is
; still gadget-scoped; it does not prove the full comparator or Merkle path.

(in-package "ACL2")

; Standard arithmetic library — supplies the mod/floor congruence reasoning that
; base ACL2 lacks. Pre-certified in the community books shipped with the ACL2
; distribution; include via the parallel `acl2p` image (see header).
(include-book "arithmetic-5/top" :dir :system)
(include-book "projects/bls12-377-curves/primes/bls12-377-prime" :dir :system)
(include-book "kestrel/number-theory/mod" :dir :system)
(include-book "kestrel/arithmetic-light/mod" :dir :system)

(defconst *fr*
  8444461749428370424248824938781546531375899335154063827935233455917409239041)

; Field element: a canonical residue in [0, p).
(defun fep (x)
  (and (integerp x) (<= 0 x) (< x *fr*)))

; Exported gadget-bool-select R1CS (wires: 0=ONE 1=Cond 2=IfTrue 3=IfFalse
; 4=Valid 5=internal), each constraint (A.w)*(B.w) = (C.w) over Fr:
;   c0: Cond * (1 - Cond)          = 0
;   c1: Cond * (IfTrue - IfFalse)  = w5
;   c2: 1    * Valid               = IfFalse + w5
(defun bool-select-r1cs (cond iftrue iffalse valid w5)
  (and (equal (mod (* cond (- 1 cond)) *fr*) 0)
       (equal (mod (* cond (- iftrue iffalse)) *fr*) (mod w5 *fr*))
       (equal (mod valid *fr*) (mod (+ iffalse w5) *fr*))))

; Spec: the value Select(Cond, IfTrue, IfFalse) computes for boolean Cond.
(defun select-spec (cond iftrue iffalse)
  (if (equal cond 1) iftrue iffalse))

(defthm cond-boolean-from-r1cs-c0
  (implies (and (fep cond)
                (equal (mod (* cond (- 1 cond)) *fr*) 0))
           (or (equal cond 0) (equal cond 1)))
  :rule-classes nil
  :hints (("Goal"
           :use ((:instance acl2::equal-of-0-and-mod-of-*-when-primep
                            (p *fr*)
                            (x cond)
                            (y (- 1 cond))))
           :in-theory (e/d (fep)
                           (acl2::equal-of-0-and-mod-of-*-when-primep
                            (:definition mod)
                            (:definition floor))))))

; Main theorem: a satisfying assignment of the exported R1CS, with all wires
; canonical field elements, has Valid equal to the Select spec. Cond booleanity
; is derived from c0, not assumed.
(defthm bool-select-r1cs-implies-spec
  (implies (and (fep cond) (fep iftrue) (fep iffalse) (fep valid) (fep w5)
                (bool-select-r1cs cond iftrue iffalse valid w5))
           (equal valid (select-spec cond iftrue iffalse)))
  :rule-classes nil
  :hints (("Goal"
           :use (:instance cond-boolean-from-r1cs-c0)
           :cases ((equal cond 0) (equal cond 1)))))
