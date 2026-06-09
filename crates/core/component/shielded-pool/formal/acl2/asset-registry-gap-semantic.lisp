; Field-value comparator semantic theorem for AssetRegistryGap (Stage 1 of the
; whole-circuit `proved` milestone).
;
; Goal (in progress): under holdp over the real 5568-constraint gadget, the
; output predicate equals the FIELD-VALUE comparator
;   isRegulated ? (LeafValue == NoteAssetID)
;               : (LeafValue < NoteAssetID < NextValue)
; This refines asset-registry-gap-output (which keeps the predicate in R1CS shape:
; INTERNAL-1520 / fq-prefix-ladder-less) into a statement over the actual field
; values, by layering two field-arithmetic bridges onto the proven ladder collapse:
;
;   (A) IsZero exact-match bridge  [PROVEN BELOW, gap-exact-match-bridge]:
;       constraints 1519/1520 force INTERNAL-1520 = (LeafValue == NoteAssetID).
;       A clean instantiation of the generic iszero-r1cs-implies-spec
;       (input = LeafValue - NoteAssetID, out = flag = INTERNAL-1520,
;        inv = neg INTERNAL-1521).
;
;   (B) Ladder -> integer < bridge  [available, fq-compare +
;       asset-registry-gap-operands-canonical]:
;       fq-prefix-ladder-less-equals-fq-lt-bit-of-packbv-253 rewrites the ladder
;       to fq-lt-bit over the packed operands; its bit-listp/len-253 hypotheses
;       are exactly what asset-registry-gap-operands-canonical establishes over
;       the whole gadget.
;
; CHECKPOINT (honest residual): bridge (A) is certified here. The remaining
; integration -- composing (A) + (B) + the operand packing equalities into a
; single holdp => field-value-predicate theorem over the whole gadget -- is the
; open Stage-1 step. Per CLAUDE.md: no skip-proofs, no weakened statement; this
; book stays at the certified-bridge checkpoint until the full composition closes.

(in-package "R1CS")

(include-book "iszero-proof")
(include-book "kestrel/prime-fields/prime-fields" :dir :system)

(defthm gap-exact-match-bridge
  (implies (and (pfield::fep leafvalue acl2::*fr*)
                (pfield::fep noteassetid acl2::*fr*)
                (pfield::fep flag acl2::*fr*)
                (pfield::fep inv0 acl2::*fr*)
                ;; ISZ0: inv0*(leafvalue - noteassetid) = flag - 1
                (equal (pfield::mul inv0
                                    (pfield::add leafvalue
                                                 (pfield::neg noteassetid acl2::*fr*)
                                                 acl2::*fr*)
                                    acl2::*fr*)
                       (pfield::add flag
                                    (pfield::neg 1 acl2::*fr*)
                                    acl2::*fr*))
                ;; ISZ1: flag*(noteassetid - leafvalue) = 0
                (equal (pfield::mul flag
                                    (pfield::add noteassetid
                                                 (pfield::neg leafvalue acl2::*fr*)
                                                 acl2::*fr*)
                                    acl2::*fr*)
                       0))
           (equal flag (if (equal leafvalue noteassetid) 1 0)))
  :rule-classes nil
  :hints (("Goal"
           :use ((:instance acl2::iszero-r1cs-implies-spec
                            (acl2::input (pfield::sub leafvalue noteassetid acl2::*fr*))
                            (acl2::out flag)
                            (acl2::flag flag)
                            (acl2::inv (pfield::neg inv0 acl2::*fr*))))
           :in-theory (enable pfield::sub pfield::mul pfield::add pfield::neg
                              acl2::iszero-r1cs acl2::iszero-spec acl2::fep))))

;; Field-value exact-match predicate. Wrapped in a defund (not a bare `if`) so it
;; has a rewritable head symbol: Axe refuses to rewrite on an `if` LHS, so the
;; field-value spec must carry (exact-match-spec a b), not (if (equal a b) 1 0).
(defund exact-match-spec (a b)
  (if (equal a b) 1 0))

;; Rewrite-rule form of the exact-match bridge, oriented for the Axe rewriter:
;; LHS is the FIELD-VALUE exact-match term (exact-match-spec a b) that appears in
;; the field-value spec; RHS is the wire `flag` (= INTERNAL-1520). `flag` and
;; `inv` are free variables bound by matching the two IsZero constraints against
;; the lifted DAG context (eq2 binds flag, eq1 binds inv). Constraint forms are
;; stated to match Axe's normalized DAG: eq2 constant-first ((equal 0 (mul ...)))
;; and eq1 RHS constant-first ((add (neg 1) flag)). Lets the field-value spec
;; collapse to the wire-level predicate asset-registry-gap-output certifies.
(defthm exact-match-if-to-wire
  (implies (and ;; ISZ1 (binds free flag): 0 = flag*(b - a) [constant-first per DAG]
                (equal 0
                       (pfield::mul flag
                                    (pfield::add b (pfield::neg a acl2::*fr*) acl2::*fr*)
                                    acl2::*fr*))
                ;; ISZ0 (binds free inv): inv*(a - b) = (neg 1) + flag
                (equal (pfield::mul inv
                                    (pfield::add a (pfield::neg b acl2::*fr*) acl2::*fr*)
                                    acl2::*fr*)
                       (pfield::add (pfield::neg 1 acl2::*fr*) flag acl2::*fr*))
                ;; feps last: a,b from LHS; flag,inv now bound by the hyps above
                (pfield::fep a acl2::*fr*)
                (pfield::fep b acl2::*fr*)
                (pfield::fep flag acl2::*fr*)
                (pfield::fep inv acl2::*fr*))
           (equal (exact-match-spec a b) flag))
  :hints (("Goal"
           :use ((:instance gap-exact-match-bridge
                            (leafvalue a) (noteassetid b)
                            (flag flag) (inv0 inv)))
           :in-theory (e/d (exact-match-spec pfield::add-commutative) nil))))

;; ----------------------------------------------------------------------------
;; Stage 1b integration status (open -- precise structural diagnosis).
;;
;; The DAG normal form the lifter builds for the two IsZero constraints was
;; recovered exactly (via a 2-constraint lift-r1cs isolate over C1519/C1520):
;;   A1 (C1519): (equal (mul INTERNAL-1521 (add LEAFVALUE (neg NOTEASSETID p) p) p)
;;                      (add <p-1> INTERNAL-1520 p))          ; constant-FIRST add
;;   A2 (C1520): (equal '0 (mul INTERNAL-1520
;;                              (add NOTEASSETID (neg LEAFVALUE p) p) p)) ; const-FIRST
;;   spec node:  (exact-match-spec LEAFVALUE NOTEASSETID)     ; defund head, see below
;; exact-match-if-to-wire is written to match A1/A2 byte-for-byte (eq2 constant
;; first, eq1 RHS constant first), and certifies as an ACL2 theorem.
;;
;; Two facts pinned down with the isolate:
;;   * Axe REFUSES `if` as a rewrite LHS, so the field-value spec must carry
;;     (exact-match-spec a b), never a bare (if (equal a b) 1 0). Confirmed: a
;;     no-hyp opener rule with LHS (exact-match-spec a b) DOES fire and rewrites
;;     the node to (if ...).
;;   * exact-match-if-to-wire (LHS (exact-match-spec a b), RHS the free wire
;;     `flag` bound by the two IsZero hyps) is NEVER tried by the Axe r1cs prover,
;;     even though the structurally-identical arg-select wire-binding rules in
;;     asset-registry-gap-output.lisp DO fire. The IsZero witness wire has no
;;     `(equal <ground-expr> wire)` defining equation in the DAG (unlike in-gap /
;;     ladder-step wires), so Axe never binds INTERNAL-1520.
;;
;; UPDATED DIAGNOSIS (2026-06-09, b0 phantom-wrapper isolate): the original
;; "Axe won't bind the implicit IsZero witness wire" story was INCOMPLETE.
;; Binding is not the obstruction. A phantom-argument wrapper
;;   (defund exact-match-spec/witness (a b flag inv) ... (exact-match-spec a b))
;; with spec node (exact-match-spec/witness LEAFVALUE NOTEASSETID INTERNAL-1520
;; INTERNAL-1521) binds ALL FOUR vars by the LHS structural match -- zero
;; free-variable binding required -- and the rewrite rule still CERTIFIES yet is
;; STILL NEVER TRIED inside verify-r1cs (monitor emits no attempt line). Three
;; data points now agree:
;;   - exact-match-if-to-wire     (free-var binding)     -> never tried
;;   - exact-match-witness-to-wire (b0, fully LHS-bound) -> never tried
;;   - arg-select wire-binding rules (output book)       -> DO fire
;; The discriminator is NOT binding. The rules that fire rewrite WIRE nodes shared
;; between the constraint DAG and the spec; all three exact-match rules target a
;; SPEC-ONLY head (exact-match-spec...) that appears nowhere in the constraints.
;; Most consistent explanation: the Axe r1cs rewriter applies rewrite rules while
;; simplifying the CONSTRAINT DAG, and a term living only in the negated-spec
;; conclusion never gets swept -- so no spec-only-head rule will ever fire,
;; regardless of how its operands are bound.
;;
;; CONSEQUENCE FOR THE PATHS:
;;   (b0) phantom-argument spec wrapper          -> DEAD (shown above).
;;   (b2) axe-bind-free hook to locate the wire  -> DEAD: the problem was never
;;        binding, so a spec-only-head rule won't be tried no matter how cleanly
;;        the witness wire is located.
;;   (b1) re-express the ladder + output verify-r1cs results as CITABLE
;;        holdp => wire-spec ACL2 defthms (plan Step 2 item 1), then compose them
;;        with gap-exact-match-bridge + bridge B (fq-compare) + operand canonicity
;;        into one pure-ACL2 holdp => field-value-predicate theorem -> ONLY
;;        SURVIVOR, because it never asks the Axe rewriter to touch a spec-only
;;        term. Large: requires re-proving the 506-step ladders and the output
;;        glue as named lemmas.
;;
;; Certified building blocks already in this book toward (b1): exact-match-spec,
;; gap-exact-match-bridge, exact-match-if-to-wire. Per CLAUDE.md: no skip-proofs,
;; no weakened statement -- this book stays at this certified checkpoint and the
;; REGULATED row stays `refined` until the chosen path closes.
