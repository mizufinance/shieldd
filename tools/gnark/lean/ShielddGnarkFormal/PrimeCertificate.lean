import Mathlib.Data.Int.GCD
import Mathlib.Data.List.Prime
import Mathlib.Data.ZMod.Basic

namespace Shieldd.GnarkFormal.PrimeCertificate

private theorem lt_mul_of_one_lt_left {m k : Nat} (mgt : 1 < m) (kpos : 0 < k) :
    k < m * k := by
  have twoLe : 2 ≤ m := mgt
  have first : k < 2 * k := by
    rw [two_mul]
    exact Nat.lt_add_of_pos_right kpos
  exact first.trans_le (Nat.mul_le_mul_right k twoLe)

private theorem lt_of_mul_lt_mul_left {a b c : Nat} (h : a * b < a * c) : b < c := by
  by_contra notLt
  exact (Nat.not_lt_of_ge (Nat.mul_le_mul_left a (Nat.le_of_not_gt notLt))) h

private theorem range_nodup : ∀ n : Nat, (List.range n).Nodup
  | 0 => by simp
  | n + 1 => by
      rw [List.range_succ]
      rw [← List.concat_eq_append]
      apply List.Nodup.concat
      · rw [List.mem_range]
        exact Nat.lt_irrefl n
      · exact range_nodup n

private theorem exists_factor_drop
    (factors : List Nat)
    (factorsPrime : ∀ q ∈ factors, q.Prime)
    {d : Nat}
    (dpos : 0 < d)
    (ddiv : d ∣ factors.prod)
    (dlt : d < factors.prod) :
    ∃ q ∈ factors, d ∣ factors.prod / q := by
  induction factors generalizing d with
  | nil =>
      have dzero : d = 0 := Nat.lt_one_iff.mp (by simpa using dlt)
      exact (Nat.ne_of_gt dpos dzero).elim
  | cons q rest ih =>
      have qPrime : q.Prime := factorsPrime q (by simp)
      have restPrime : ∀ r ∈ rest, r.Prime := by
        intro r hr
        exact factorsPrime r (by simp [hr])
      by_cases qdiv : q ∣ d
      · obtain ⟨d', rfl⟩ := qdiv
        have d'pos : 0 < d' := by
          exact Nat.pos_of_mul_pos_left dpos
        have d'div : d' ∣ rest.prod := by
          exact (Nat.mul_dvd_mul_iff_left qPrime.pos).mp (by simpa using ddiv)
        have d'lt : d' < rest.prod := by
          exact lt_of_mul_lt_mul_left (by simpa using dlt)
        obtain ⟨r, hr, hdr⟩ := ih restPrime d'pos d'div d'lt
        refine ⟨r, by simp [hr], ?_⟩
        have rdiv : r ∣ rest.prod := List.dvd_prod hr
        rw [List.prod_cons, Nat.mul_div_assoc q rdiv]
        exact Nat.mul_dvd_mul_left q hdr
      · have coprime : d.Coprime q := by
          rcases qPrime.eq_one_or_self_of_dvd (Nat.gcd d q) (Nat.gcd_dvd_right d q) with h | h
          · exact h
          · exact (qdiv (h ▸ Nat.gcd_dvd_left d q)).elim
        have drest : d ∣ rest.prod := coprime.dvd_of_dvd_mul_left (by simpa using ddiv)
        refine ⟨q, by simp, ?_⟩
        simpa [List.prod_cons, qPrime.ne_zero] using drest

private theorem val_pow_natCast {p a exponent : Nat} [NeZero p] :
    (((a : Nat) : ZMod p) ^ exponent).val = a ^ exponent % p := by
  induction exponent with
  | zero =>
      rw [pow_zero, pow_zero]
      exact ZMod.val_one_eq_one_mod p
  | succ exponent ih =>
      rw [pow_succ, ZMod.val_mul, ih, ZMod.val_natCast, Nat.pow_succ]
      exact (Nat.mul_mod (a ^ exponent) a p).symm

/-- Turn a checked natural modular-exponentiation result into a `ZMod` equality. -/
theorem powNatCastEqOne {p a exponent : Nat}
    (pgt : 1 < p)
    (reduced : a ^ exponent % p = 1) :
    (((a : Nat) : ZMod p) ^ exponent) = 1 := by
  letI : NeZero p := ⟨Nat.ne_of_gt (Nat.zero_lt_one.trans pgt)⟩
  letI : Fact (1 < p) := ⟨pgt⟩
  apply ZMod.val_injective p
  rw [val_pow_natCast, reduced, ZMod.val_one]

/-- Turn a checked non-one natural modular residue into a `ZMod` inequality. -/
theorem powNatCastNeOne {p a exponent residue : Nat}
    (pgt : 1 < p)
    (reduced : a ^ exponent % p = residue)
    (residueNe : residue ≠ 1) :
    (((a : Nat) : ZMod p) ^ exponent) ≠ 1 := by
  letI : NeZero p := ⟨Nat.ne_of_gt (Nat.zero_lt_one.trans pgt)⟩
  letI : Fact (1 < p) := ⟨pgt⟩
  intro powerOne
  have valEq := congrArg ZMod.val powerOne
  rw [val_pow_natCast, reduced, ZMod.val_one] at valEq
  exact residueNe valEq

private theorem powNatCastNeOneOfModNe {p a exponent : Nat}
    (pgt : 1 < p)
    (reducedNe : a ^ exponent % p ≠ 1) :
    (((a : Nat) : ZMod p) ^ exponent) ≠ 1 := by
  letI : NeZero p := ⟨Nat.ne_of_gt (Nat.zero_lt_one.trans pgt)⟩
  letI : Fact (1 < p) := ⟨pgt⟩
  intro powerOne
  have valEq := congrArg ZMod.val powerOne
  rw [val_pow_natCast, ZMod.val_one] at valEq
  exact reducedNe valEq

/-- A complete Lucas certificate also proves that the certified witness
enumerates every nonzero residue. -/
theorem generator_certificate
    (p witness : Nat)
    (factors : List Nat)
    (pgt : 1 < p)
    (factorization : factors.prod = p - 1)
    (factorsPrime : ∀ q ∈ factors, q.Prime)
    (fullOrderMod : ∃ exponent,
      Nat.mod (Nat.pow witness exponent) p = 1 ∧ exponent = p - 1)
    (properOrdersMod : ∀ q ∈ factors,
      ∃ exponent,
        Nat.mod (Nat.pow witness exponent) p ≠ 1 ∧ exponent = (p - 1) / q) :
    ((((witness : Nat) : ZMod p) ^ (p - 1)) = 1) ∧
      ∀ m, 0 < m → m < p →
        ∃ i < p - 1, ((((witness : Nat) : ZMod p) ^ i).val = m) := by
  let a : ZMod p := witness
  have npos : 0 < p - 1 := Nat.sub_pos_of_lt pgt
  have ppos : 0 < p := Nat.zero_lt_one.trans pgt
  letI : NeZero p := ⟨Nat.ne_of_gt ppos⟩
  letI : Fact (1 < p) := ⟨pgt⟩
  obtain ⟨fullExponent, fullOrderMod, fullExponentEq⟩ := fullOrderMod
  have fullOrderModCanonical : witness ^ (p - 1) % p = 1 := by
    change Nat.mod (Nat.pow witness (p - 1)) p = 1
    simpa only [fullExponentEq] using fullOrderMod
  have fullOrder : a ^ (p - 1) = 1 :=
    powNatCastEqOne pgt fullOrderModCanonical
  have properOrders : ∀ q ∈ factors, a ^ ((p - 1) / q) ≠ 1 := by
    intro q qmem
    obtain ⟨exponent, properOrderMod, exponentEq⟩ := properOrdersMod q qmem
    apply powNatCastNeOneOfModNe pgt
    change Nat.mod (Nat.pow witness ((p - 1) / q)) p ≠ 1
    simpa only [exponentEq] using properOrderMod
  have aUnit : IsUnit a := isUnit_ofPowEqOne fullOrder (Nat.ne_of_gt npos)
  have noSmallPower : ∀ d, 0 < d → d < p - 1 → a ^ d ≠ 1 := by
    intro d dpos dlt powerOne
    have gcdPower : a ^ d.gcd (p - 1) = 1 :=
      pow_gcd_eq_one a powerOne fullOrder
    have gcdPos : 0 < d.gcd (p - 1) := Nat.gcd_pos_of_pos_left _ dpos
    have gcdDiv : d.gcd (p - 1) ∣ factors.prod := by
      rw [factorization]
      exact Nat.gcd_dvd_right d (p - 1)
    have gcdLt : d.gcd (p - 1) < factors.prod := by
      rw [factorization]
      exact (Nat.gcd_le_left (p - 1) dpos).trans_lt dlt
    obtain ⟨q, qmem, hdiv⟩ :=
      exists_factor_drop factors factorsPrime gcdPos gcdDiv gcdLt
    apply properOrders q qmem
    rw [← factorization]
    obtain ⟨k, hk⟩ := hdiv
    rw [hk, pow_mul, gcdPower, one_pow]
  have powerValInjective :
      ∀ i < p - 1, ∀ j < p - 1, (a ^ i).val = (a ^ j).val → i = j := by
    intro i ilt j jlt valEq
    have powerEq : a ^ i = a ^ j := ZMod.val_injective p valEq
    rcases Nat.lt_trichotomy i j with hij | hij | hij
    · have diffPower : a ^ (j - i) = 1 := by
        apply (aUnit.pow i).mul_left_cancel
        rw [← pow_add, Nat.add_sub_of_le hij.le, powerEq, mul_one]
      exact (noSmallPower (j - i) (Nat.sub_pos_of_lt hij)
        ((Nat.sub_le j i).trans_lt jlt) diffPower).elim
    · exact hij
    · have diffPower : a ^ (i - j) = 1 := by
        apply (aUnit.pow j).mul_left_cancel
        rw [← pow_add, Nat.add_sub_of_le hij.le, ← powerEq, mul_one]
      exact (noSmallPower (i - j) (Nat.sub_pos_of_lt hij)
        ((Nat.sub_le i j).trans_lt ilt) diffPower).elim
  let source : List Nat := (List.range (p - 1)).map fun i => (a ^ i).val
  let target : List Nat := (List.range (p - 1)).map Nat.succ
  have sourceNodup : source.Nodup := by
    apply List.Nodup.map_on
    · intro i hi j hj mappedEq
      apply powerValInjective i (by simpa using hi) j (by simpa using hj)
      exact mappedEq
    · exact range_nodup (p - 1)
  have sourceSubset : (source : Multiset Nat) ⊆ (target : Multiset Nat) := by
    intro y hy
    change y ∈ source at hy
    rw [List.mem_map] at hy
    obtain ⟨i, hi, rfl⟩ := hy
    have ipowUnit : IsUnit (a ^ i) := aUnit.pow i
    have valNeZero : (a ^ i).val ≠ 0 := by
      intro valZero
      exact ipowUnit.ne_zero ((ZMod.val_eq_zero _).mp valZero)
    have valPos : 0 < (a ^ i).val := Nat.pos_of_ne_zero valNeZero
    have valLt : (a ^ i).val < p := ZMod.val_lt _
    change (a ^ i).val ∈ target
    rw [List.mem_map]
    refine ⟨(a ^ i).val - 1, ?_, ?_⟩
    · rw [List.mem_range]
      omega
    · omega
  have sourceLe : (source : Multiset Nat) ≤ (target : Multiset Nat) :=
    (Multiset.le_iff_subset (Multiset.coe_nodup.mpr sourceNodup)).mpr sourceSubset
  have sourceEqTarget : (source : Multiset Nat) = (target : Multiset Nat) := by
    apply Multiset.eq_of_le_of_card_le sourceLe
    simp [source, target]
  refine ⟨fullOrder, ?_⟩
  intro m mpos mlt
  have targetMem : m ∈ (target : Multiset Nat) := by
    change m ∈ target
    rw [List.mem_map]
    refine ⟨m - 1, ?_, ?_⟩
    · rw [List.mem_range]
      omega
    · omega
  have sourceMem : m ∈ (source : Multiset Nat) := sourceEqTarget.symm ▸ targetMem
  change m ∈ source at sourceMem
  rw [List.mem_map] at sourceMem
  obtain ⟨i, hi, hval⟩ := sourceMem
  exact ⟨i, by simpa using hi, hval⟩

/-- Fermat's theorem from a certified full-order generator and its constructive
enumeration of the nonzero residues. -/
theorem pow_card_sub_one_eq_one_of_generator
    (p witness : Nat)
    (pgt : 1 < p)
    (fullOrder : (((witness : Nat) : ZMod p) ^ (p - 1)) = 1)
    (surjective : ∀ m, 0 < m → m < p →
      ∃ i < p - 1, ((((witness : Nat) : ZMod p) ^ i).val = m))
    (a : ZMod p)
    (ha : a ≠ 0) :
    a ^ (p - 1) = 1 := by
  letI : NeZero p := ⟨Nat.ne_of_gt (Nat.zero_lt_one.trans pgt)⟩
  have hvalNe : a.val ≠ 0 := by
    intro h
    exact ha ((ZMod.val_eq_zero _).mp h)
  obtain ⟨i, -, hval⟩ :=
    surjective a.val (Nat.pos_of_ne_zero hvalNe) (ZMod.val_lt a)
  have haPower : a = ((witness : ZMod p) ^ i) := by
    apply ZMod.val_injective p
    exact hval.symm
  rw [haPower, ← pow_mul, Nat.mul_comm, pow_mul, fullOrder, one_pow]

/-- A choice-free Lucas certificate specialized to an explicit complete factor list. -/
theorem primality
    (p witness : Nat)
    (factors : List Nat)
    (pgt : 1 < p)
    (factorization : factors.prod = p - 1)
    (factorsPrime : ∀ q ∈ factors, q.Prime)
    (fullOrderMod : ∃ exponent,
      Nat.mod (Nat.pow witness exponent) p = 1 ∧ exponent = p - 1)
    (properOrdersMod : ∀ q ∈ factors,
      ∃ exponent,
        Nat.mod (Nat.pow witness exponent) p ≠ 1 ∧ exponent = (p - 1) / q) :
    p.Prime := by
  let a : ZMod p := witness
  have npos : 0 < p - 1 := Nat.sub_pos_of_lt pgt
  have ppos : 0 < p := Nat.zero_lt_one.trans pgt
  letI : NeZero p := ⟨Nat.ne_of_gt ppos⟩
  letI : Fact (1 < p) := ⟨pgt⟩
  obtain ⟨fullExponent, fullOrderMod, fullExponentEq⟩ := fullOrderMod
  have fullOrderModCanonical : witness ^ (p - 1) % p = 1 := by
    change Nat.mod (Nat.pow witness (p - 1)) p = 1
    simpa only [fullExponentEq] using fullOrderMod
  have fullOrder : a ^ (p - 1) = 1 := powNatCastEqOne pgt fullOrderModCanonical
  have properOrders : ∀ q ∈ factors, a ^ ((p - 1) / q) ≠ 1 := by
    intro q qmem
    obtain ⟨exponent, properOrderMod, exponentEq⟩ := properOrdersMod q qmem
    apply powNatCastNeOneOfModNe pgt
    change Nat.mod (Nat.pow witness ((p - 1) / q)) p ≠ 1
    simpa only [exponentEq] using properOrderMod
  have aUnit : IsUnit a := isUnit_ofPowEqOne fullOrder (Nat.ne_of_gt npos)
  have noSmallPower : ∀ d, 0 < d → d < p - 1 → a ^ d ≠ 1 := by
    intro d dpos dlt powerOne
    have gcdPower : a ^ d.gcd (p - 1) = 1 := pow_gcd_eq_one a powerOne fullOrder
    have gcdPos : 0 < d.gcd (p - 1) := Nat.gcd_pos_of_pos_left _ dpos
    have gcdDiv : d.gcd (p - 1) ∣ factors.prod := by
      rw [factorization]
      exact Nat.gcd_dvd_right d (p - 1)
    have gcdLt : d.gcd (p - 1) < factors.prod := by
      rw [factorization]
      exact (Nat.gcd_le_left (p - 1) dpos).trans_lt dlt
    obtain ⟨q, qmem, hdiv⟩ :=
      exists_factor_drop factors factorsPrime gcdPos gcdDiv gcdLt
    apply properOrders q qmem
    rw [← factorization]
    obtain ⟨k, hk⟩ := hdiv
    rw [hk, pow_mul, gcdPower, one_pow]
  have powerValInjective :
      ∀ i < p - 1, ∀ j < p - 1, (a ^ i).val = (a ^ j).val → i = j := by
    intro i ilt j jlt valEq
    have powerEq : a ^ i = a ^ j := ZMod.val_injective p valEq
    rcases Nat.lt_trichotomy i j with hij | hij | hij
    · have diffPower : a ^ (j - i) = 1 := by
        apply (aUnit.pow i).mul_left_cancel
        rw [← pow_add, Nat.add_sub_of_le hij.le, powerEq, mul_one]
      exact (noSmallPower (j - i) (Nat.sub_pos_of_lt hij) ((Nat.sub_le j i).trans_lt jlt) diffPower).elim
    · exact hij
    · have diffPower : a ^ (i - j) = 1 := by
        apply (aUnit.pow j).mul_left_cancel
        rw [← pow_add, Nat.add_sub_of_le hij.le, ← powerEq, mul_one]
      exact (noSmallPower (i - j) (Nat.sub_pos_of_lt hij) ((Nat.sub_le i j).trans_lt ilt) diffPower).elim
  let source : List Nat := (List.range (p - 1)).map fun i => (a ^ i).val
  let target : List Nat := (List.range (p - 1)).map Nat.succ
  have sourceNodup : source.Nodup := by
    apply List.Nodup.map_on
    · intro i hi j hj mappedEq
      apply powerValInjective i (by simpa using hi) j (by simpa using hj)
      exact mappedEq
    · exact range_nodup (p - 1)
  have sourceSubset : (source : Multiset Nat) ⊆ (target : Multiset Nat) := by
    intro y hy
    change y ∈ source at hy
    rw [List.mem_map] at hy
    obtain ⟨i, hi, rfl⟩ := hy
    have ipowUnit : IsUnit (a ^ i) := aUnit.pow i
    have valNeZero : (a ^ i).val ≠ 0 := by
      intro valZero
      exact ipowUnit.ne_zero ((ZMod.val_eq_zero _).mp valZero)
    have valPos : 0 < (a ^ i).val := Nat.pos_of_ne_zero valNeZero
    have valLt : (a ^ i).val < p := ZMod.val_lt _
    change (a ^ i).val ∈ target
    rw [List.mem_map]
    refine ⟨(a ^ i).val - 1, ?_, ?_⟩
    · rw [List.mem_range]
      omega
    · omega
  have sourceLe : (source : Multiset Nat) ≤ (target : Multiset Nat) :=
    (Multiset.le_iff_subset (Multiset.coe_nodup.mpr sourceNodup)).mpr sourceSubset
  have sourceEqTarget : (source : Multiset Nat) = (target : Multiset Nat) := by
    apply Multiset.eq_of_le_of_card_le sourceLe
    simp [source, target]
  have powerSurjective : ∀ m, 0 < m → m < p → ∃ i < p - 1, (a ^ i).val = m := by
    intro m mpos mlt
    have targetMem : m ∈ (target : Multiset Nat) := by
      change m ∈ target
      rw [List.mem_map]
      refine ⟨m - 1, ?_, ?_⟩
      · rw [List.mem_range]
        omega
      · omega
    have sourceMem : m ∈ (source : Multiset Nat) := sourceEqTarget.symm ▸ targetMem
    change m ∈ source at sourceMem
    rw [List.mem_map] at sourceMem
    obtain ⟨i, hi, hval⟩ := sourceMem
    exact ⟨i, by simpa using hi, hval⟩
  apply Nat.prime_def.mpr
  refine ⟨pgt, ?_⟩
  intro m mdiv
  by_cases mone : m = 1
  · exact Or.inl mone
  right
  have mle : m ≤ p := Nat.le_of_dvd ppos mdiv
  by_cases meq : m = p
  · exact meq
  have mlt : m < p := lt_of_le_of_ne mle meq
  have mpos : 0 < m := by
    apply Nat.pos_of_ne_zero
    intro mzero
    subst m
    simp at mdiv
    exact (Nat.ne_of_gt ppos) mdiv
  obtain ⟨i, ilt, hval⟩ := powerSurjective m mpos mlt
  have castEq : (m : ZMod p) = a ^ i := by
    apply ZMod.val_injective p
    rw [ZMod.val_natCast_of_lt mlt]
    exact hval.symm
  have castUnit : IsUnit (m : ZMod p) := castEq ▸ aUnit.pow i
  obtain ⟨k, hk⟩ := mdiv
  have kpos : 0 < k := by
    apply Nat.pos_of_ne_zero
    intro kzero
    subst k
    simp at hk
    exact (Nat.ne_of_gt ppos) hk
  have mgt : 1 < m := by omega
  have klt : k < p := (lt_mul_of_one_lt_left mgt kpos).trans_eq hk.symm
  have mulZero : (m : ZMod p) * (k : ZMod p) = 0 := by
    rw [← Nat.cast_mul, hk, ZMod.natCast_self]
  have castKZero : (k : ZMod p) = 0 := by
    apply castUnit.mul_left_cancel
    simpa using mulZero
  have valKZero : (k : ZMod p).val = 0 := (ZMod.val_eq_zero _).mpr castKZero
  rw [ZMod.val_natCast_of_lt klt] at valKZero
  exact (Nat.ne_of_gt kpos valKZero).elim

end Shieldd.GnarkFormal.PrimeCertificate
