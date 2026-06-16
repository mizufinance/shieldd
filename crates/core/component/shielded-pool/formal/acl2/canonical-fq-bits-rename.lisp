; Generic constraint-renaming substitution lemma (A3 Option A infrastructure).
;
; A CanonicalFqBits253 sub-block compiled at a different wire offset (the leaf,
; id, and next operands inside AssetRegistryGap) is byte-identical to the
; standalone CanonicalFqBits253 slice up to a wire renaming sigma. This book
; proves the generic substitution lemma that transports satisfaction (and wire
; lookups) across such a renaming, so the certified A1 reducedness keystone
; (canonical-fq-bits-slice-reduced) applies to each renamed block without
; re-proving the 506-constraint decomposition.
;
; Core identity (holdp transport):
;   r1cs-constraints-holdp (rename-cons cons sigma) v p
;     = r1cs-constraints-holdp cons (compose-valuation sigma v) p
; where (compose-valuation sigma v) is the pullback valuation x |-> v(sigma x).

(in-package "R1CS")

(include-book "kestrel/crypto/r1cs/sparse/r1cs" :dir :system)
(include-book "kestrel/crypto/r1cs/valuations" :dir :system)
(include-book "kestrel/alists-light/lookup-eq-lst" :dir :system)
(include-book "kestrel/alists-light/lookup-eq" :dir :system)
(local (include-book "kestrel/lists-light/append" :dir :system))
(local (include-book "kestrel/alists-light/assoc-equal" :dir :system))

;;; ---------------------------------------------------------------------------
;;; Renaming a sparse R1CS over an alist sigma (std-var -> new-var).
;;; A var present as a key in sigma is replaced by its image; the constant 1
;;; (and any var not in sigma) is left unchanged.
;;; ---------------------------------------------------------------------------

(defund rename-var (v sigma)
  (declare (xargs :guard (alistp sigma) :verify-guards nil))
  (if (eql v 1)
      1 ; the R1CS constant is never a variable, so never renamed
    (if (assoc-eq v sigma)
        (cdr (assoc-eq v sigma))
      v)))

(defund rename-vec (vec sigma)
  (declare (xargs :guard (and (sparse-vectorp vec) (alistp sigma))
                  :verify-guards nil))
  (if (atom vec)
      nil
    (let* ((item (first vec))
           (coeff (first item))
           (var (second item)))
      (cons (list coeff (rename-var var sigma))
            (rename-vec (rest vec) sigma)))))

(defund rename-con (con sigma)
  (declare (xargs :guard (and (r1cs-constraintp con) (alistp sigma))
                  :verify-guards nil))
  (make-r1cs-constraint :a (rename-vec (r1cs-constraint->a con) sigma)
                        :b (rename-vec (r1cs-constraint->b con) sigma)
                        :c (rename-vec (r1cs-constraint->c con) sigma)))

(defund rename-cons (cons sigma)
  (declare (xargs :guard (and (r1cs-constraint-listp cons) (alistp sigma))
                  :verify-guards nil))
  (if (atom cons)
      nil
    (cons (rename-con (first cons) sigma)
          (rename-cons (rest cons) sigma))))

;;; Apply sigma to a plain list of variables (for the conclusion's avar list).
(defund rename-vars (vars sigma)
  (declare (xargs :guard (alistp sigma) :verify-guards nil))
  (if (atom vars)
      nil
    (cons (rename-var (first vars) sigma)
          (rename-vars (rest vars) sigma))))

;;; ---------------------------------------------------------------------------
;;; The pullback valuation:  x |-> v(sigma x)  over dom(sigma).
;;; ---------------------------------------------------------------------------

(defund compose-valuation (sigma v)
  (declare (xargs :guard (and (alistp sigma) (alistp v)) :verify-guards nil))
  (if (atom sigma)
      nil
    (cons (cons (caar sigma) (lookup-eq (cdar sigma) v))
          (compose-valuation (cdr sigma) v))))

(defthm strip-cars-of-compose-valuation
  (equal (strip-cars (compose-valuation sigma v))
         (strip-cars sigma))
  :hints (("Goal" :in-theory (enable compose-valuation))))

(defthm alistp-of-compose-valuation
  (alistp (compose-valuation sigma v))
  :hints (("Goal" :in-theory (enable compose-valuation))))

;;; Well-formed wire renaming: the constant 1 and nil are never variables, so
;;; they are never keys of a wire renaming. (Discharged by ground evaluation for
;;; the concrete sigma_leaf / sigma_id / sigma_next.)
(defund good-sigmap (sigma)
  (declare (xargs :guard t))
  (and (alistp sigma)
       (not (member-equal 1 (strip-cars sigma)))
       (not (member-equal nil (strip-cars sigma)))
       (not (member-equal 1 (strip-cdrs sigma)))))

;;; Image of a key lies among sigma's values, hence is never the constant 1.
(defthm member-cdr-assoc-in-strip-cdrs
  (implies (member-equal var (strip-cars sigma))
           (member-equal (cdr (assoc-equal var sigma)) (strip-cdrs sigma)))
  :hints (("Goal" :in-theory (enable assoc-equal strip-cars strip-cdrs))))

(defthm cdr-assoc-not-1-when-good-sigmap
  (implies (and (good-sigmap sigma)
                (member-equal var (strip-cars sigma)))
           (not (equal (cdr (assoc-equal var sigma)) 1)))
  :hints (("Goal" :in-theory (enable good-sigmap))))

;;; A renamed genuine variable is never the constant 1 (images are variables).
(defthm rename-var-not-1-when-good-sigmap
  (implies (and (good-sigmap sigma)
                (member-eq var (strip-cars sigma)))
           (not (equal (rename-var var sigma) 1)))
  :hints (("Goal" :in-theory (enable good-sigmap rename-var assoc-equal))))

;;; Per-var transport: for a var that is a key of sigma, looking it up in the
;;; pullback valuation equals looking up its image in v.
(defthm lookup-eq-of-compose-valuation
  (implies (and (good-sigmap sigma)
                (member-eq var (strip-cars sigma)))
           (equal (lookup-eq var (compose-valuation sigma v))
                  (lookup-eq (rename-var var sigma) v)))
  :hints (("Goal" :in-theory (enable compose-valuation lookup-eq lookup-equal
                                     rename-var assoc-equal good-sigmap))))

;;; ---------------------------------------------------------------------------
;;; dot-product transport.
;;; ---------------------------------------------------------------------------

;; rename-var leaves 1 fixed (a valuation never binds 1, so it is not a key).
(defthm dot-product-of-rename-vec
  (implies (and (good-sigmap sigma)
                (good-sparse-vectorp vec (strip-cars sigma)))
           (equal (dot-product (rename-vec vec sigma) v prime)
                  (dot-product vec (compose-valuation sigma v) prime)))
  :hints (("Goal" :in-theory (enable dot-product rename-vec rename-var
                                     good-sparse-vectorp good-sparse-vectorp-aux))))

;;; ---------------------------------------------------------------------------
;;; constraint / constraint-list transport.
;;; ---------------------------------------------------------------------------

(defthm r1cs-constraint-holdsp-of-rename-con
  (implies (and (good-sigmap sigma)
                (good-r1cs-constraintp con (strip-cars sigma)))
           (equal (r1cs-constraint-holdsp (rename-con con sigma) v prime)
                  (r1cs-constraint-holdsp con (compose-valuation sigma v) prime)))
  :hints (("Goal" :in-theory (enable r1cs-constraint-holdsp rename-con
                                     good-r1cs-constraintp))))

(defthm r1cs-constraints-holdp-of-rename-cons
  (implies (and (good-sigmap sigma)
                (good-r1cs-constraint-listp cons (strip-cars sigma)))
           (equal (r1cs-constraints-holdp (rename-cons cons sigma) v prime)
                  (r1cs-constraints-holdp cons (compose-valuation sigma v) prime)))
  :hints (("Goal" :in-theory (enable r1cs-constraints-holdp rename-cons
                                     good-r1cs-constraint-listp))))

;;; ---------------------------------------------------------------------------
;;; lookup-eq-lst transport (for the conclusion's avar lists).
;;; ---------------------------------------------------------------------------

(defthm lookup-eq-lst-of-rename-vars
  (implies (and (good-sigmap sigma)
                (subsetp-equal vars (strip-cars sigma)))
           (equal (acl2::lookup-eq-lst (rename-vars vars sigma) v)
                  (acl2::lookup-eq-lst vars (compose-valuation sigma v))))
  :hints (("Goal" :in-theory (enable acl2::lookup-eq-lst rename-vars subsetp-equal))))

;;; ---------------------------------------------------------------------------
;;; well-formedness of the pullback valuation (needed to apply the keystone).
;;; ---------------------------------------------------------------------------

(defthm fe-listp-of-strip-cdrs-of-compose-valuation
  (implies (and (r1cs-valuationp v prime)
                (valuation-binds-allp v (strip-cdrs sigma)))
           (fe-listp (strip-cdrs (compose-valuation sigma v)) prime))
  :hints (("Goal" :in-theory (enable compose-valuation valuation-binds-allp
                                     valuation-bindsp lookup-eq))))

(defthm r1cs-valuationp-of-compose-valuation
  (implies (and (r1cs-valuationp v prime)
                (valuation-binds-allp v (strip-cdrs sigma))
                (var-listp (strip-cars sigma)))
           (r1cs-valuationp (compose-valuation sigma v) prime))
  :hints (("Goal" :in-theory (enable r1cs-valuationp))))

;;; binds-allp depends only on the valuation's keys.
(defthm valuation-binds-allp-when-subsetp-of-strip-cars
  (implies (subsetp-equal vars (strip-cars val))
           (valuation-binds-allp val vars))
  :hints (("Goal" :in-theory (enable valuation-binds-allp valuation-bindsp
                                      subsetp-equal))))

;;; The pullback valuation binds exactly dom(sigma); so it binds any var-list
;;; covered by dom(sigma) -- independent of what v binds (these are the keystone's
;;; avar / pivar binding hypotheses, dischargeable by ground subset checks).
(defthm valuation-binds-allp-of-compose-valuation-when-subsetp
  (implies (subsetp-equal vars (strip-cars sigma))
           (valuation-binds-allp (compose-valuation sigma v) vars))
  :hints (("Goal" :use (:instance valuation-binds-allp-when-subsetp-of-strip-cars
                                   (val (compose-valuation sigma v)))
           :in-theory (disable valuation-binds-allp-when-subsetp-of-strip-cars))))
