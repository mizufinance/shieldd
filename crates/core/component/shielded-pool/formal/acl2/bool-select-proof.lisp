; C3 gadget theorem: the exported R1CS of `gadget-bool-select` implies the
; Select spec it is meant to compute. Certified with the parallel image
; (`acl2p`) so the pre-certified `arithmetic-5` community book — built under the
; same ACL2(p) world — includes cleanly; the serial `acl2` image rejects its
; `arithmetic-5-current-base` deftheory (INCREMENT-TIMER@PAR rune mismatch).
;
; This is the end-to-end certified anchor for the C3 ACL2/Axe methodology: a
; real `R1CS => spec` proof over the *actual* gnark-exported constraints. The
; constraints below are byte-for-byte the axe-json export
; (bool_select_acl2_parity_test.go in tools/gnark asserts the equality, so this
; ACL2 model provably matches the compiled gnark gadget).
;
; Field: BLS12-377 Fr, pinned in formal/toolchain.toml [constraints].
;
; Scope note (honesty): base ACL2 has no primality book, so booleanity of Cond
; (constraint c0: Cond*(1-Cond)=0 => Cond in {0,1}) is taken as a hypothesis
; here; deriving it from c0 needs the prime-fields `primep` book and is the
; CI-gated extension. The algebraic core proved below (c1, c2 => Valid = Select)
; is the soundness content of the `is_regulated.select(...)` primitive.

(in-package "ACL2")

; Standard arithmetic library — supplies the mod/floor congruence reasoning that
; base ACL2 lacks. Pre-certified in the community books shipped with the ACL2
; distribution; include via the parallel `acl2p` image (see header).
(include-book "arithmetic-5/top" :dir :system)

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

; Main theorem: a satisfying assignment of the exported R1CS, with Cond boolean
; and all wires canonical field elements, has Valid equal to the Select spec.
(defthm bool-select-r1cs-implies-spec
  (implies (and (fep cond) (fep iftrue) (fep iffalse) (fep valid) (fep w5)
                (or (equal cond 0) (equal cond 1))
                (bool-select-r1cs cond iftrue iffalse valid w5))
           (equal valid (select-spec cond iftrue iffalse)))
  :rule-classes nil
  :hints (("Goal" :cases ((equal cond 0) (equal cond 1)))))
