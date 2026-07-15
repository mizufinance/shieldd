import Ipp.Bls12377Core

/-!
Fiat-backed BLS12-377 base-field facade for representation, conversion, and
basic additive operations. Generator contracts are explicit premises; the
Lean definitions expose the conditional reduction branches used by Fiat.
-/

namespace Ipp.Bls12377.FiatFq

set_option maxHeartbeats 400000

def wordRadix : Nat := 2 ^ 64
def limbCount : Nat := 6

/-- A saturated six-word value. Limbs are its unique little-endian digits. -/
structure Rep where
  value : Nat
  value_lt_radix : value < baseMontgomeryRadix

def Rep.limb (a : Rep) (i : Fin limbCount) : Nat :=
  a.value / wordRadix ^ i.val % wordRadix

/-- Fiat's loose bound: each stored word fits in one unsigned 64-bit limb. -/
def Loose (a : Rep) : Prop :=
  ∀ i, a.limb i < wordRadix

/-- Fiat's saturated/tight field-element invariant. -/
def Tight (a : Rep) : Prop :=
  Loose a ∧ a.value < baseModulus

theorem loose (a : Rep) : Loose a := by
  intro i
  exact Nat.mod_lt _ (by norm_num [wordRadix])

theorem tight_iff (a : Rep) : Tight a ↔ a.value < baseModulus := by
  simp only [Tight, loose, true_and]

def Rep.asMontgomeryRep (a : Rep) : MontgomeryRep := ⟨a.value⟩

def decode (a : Rep) : Fq :=
  montgomeryDecode baseModulus baseMontgomeryRadix a.asMontgomeryRep

def Represents (a : Rep) (x : Fq) : Prop :=
  montgomeryRepresents baseModulus baseMontgomeryRadix a.asMontgomeryRep x

theorem represents_iff (a : Rep) (x : Fq) :
    Represents a x ↔ Tight a ∧ decode a = x := by
  change (a.value < baseModulus ∧ decode a = x) ↔
    Tight a ∧ decode a = x
  simp [tight_iff]

/-- The final carry/conditional-move semantics of generated Fq addition. -/
def addSem (a b : Rep) : Nat :=
  if a.value + b.value < baseModulus then a.value + b.value
  else a.value + b.value - baseModulus

/-- The borrow/conditional-move semantics of generated Fq subtraction. -/
def subSem (a b : Rep) : Nat :=
  if b.value ≤ a.value then a.value - b.value
  else a.value + baseModulus - b.value

/-- The zero-test/conditional-move semantics of generated Fq opposite. -/
def oppSem (a : Rep) : Nat :=
  if a.value = 0 then 0 else baseModulus - a.value

theorem addSem_no_reduction {a b : Rep}
    (h : a.value + b.value < baseModulus) :
    addSem a b = a.value + b.value := by
  simp [addSem, h]

theorem addSem_reduction {a b : Rep}
    (h : baseModulus ≤ a.value + b.value) :
    addSem a b = a.value + b.value - baseModulus := by
  simp [addSem, Nat.not_lt.mpr h]

theorem subSem_no_borrow {a b : Rep} (h : b.value ≤ a.value) :
    subSem a b = a.value - b.value := by
  simp [subSem, h]

theorem subSem_borrow {a b : Rep} (h : a.value < b.value) :
    subSem a b = a.value + baseModulus - b.value := by
  simp [subSem, Nat.not_le.mpr h]

theorem oppSem_zero {a : Rep} (h : a.value = 0) : oppSem a = 0 := by
  simp [oppSem, h]

theorem oppSem_nonzero {a : Rep} (h : a.value ≠ 0) :
    oppSem a = baseModulus - a.value := by
  simp [oppSem, h]

theorem addSem_lt (a b : Rep) (ha : Tight a) (hb : Tight b) :
    addSem a b < baseModulus := by
  by_cases h : a.value + b.value < baseModulus
  · simpa [addSem_no_reduction h] using h
  · rw [addSem_reduction (Nat.not_lt.mp h)]
    have ha' : a.value < baseModulus := ha.2
    have hb' : b.value < baseModulus := hb.2
    omega

theorem subSem_lt (a b : Rep) (ha : Tight a) (hb : Tight b) :
    subSem a b < baseModulus := by
  by_cases h : b.value ≤ a.value
  · rw [subSem_no_borrow h]
    exact lt_of_le_of_lt (Nat.sub_le _ _) ha.2
  · rw [subSem_borrow (Nat.lt_of_not_ge h)]
    have ha' : a.value < baseModulus := ha.2
    have hb' : b.value < baseModulus := hb.2
    omega

theorem oppSem_lt (a : Rep) (ha : Tight a) : oppSem a < baseModulus := by
  by_cases h : a.value = 0
  · rw [oppSem_zero h]
    norm_num [baseModulus]
  · rw [oppSem_nonzero h]
    have ha' : a.value < baseModulus := ha.2
    omega

/-! Fiat-generator contracts. Each structure is a named premise corresponding
to one generated function; none is an axiom or an assertion about Rust. -/

structure ToMontgomeryContract (input output : Rep) : Prop where
  inputTight : Tight input
  outputTight : Tight output
  decodeOutput : decode output = (input.value : Fq)

structure FromMontgomeryContract (input output : Rep) : Prop where
  inputTight : Tight input
  outputTight : Tight output
  outputValue : (output.value : Fq) = decode input

structure SetOneContract (output : Rep) : Prop where
  outputTight : Tight output
  decodeOutput : decode output = 1

structure AddContract (a b output : Rep) : Prop where
  inputATight : Tight a
  inputBTight : Tight b
  outputTight : Tight output
  outputSemantics : output.value = addSem a b

structure SubContract (a b output : Rep) : Prop where
  inputATight : Tight a
  inputBTight : Tight b
  outputTight : Tight output
  outputSemantics : output.value = subSem a b

structure OppContract (a output : Rep) : Prop where
  inputTight : Tight a
  outputTight : Tight output
  outputSemantics : output.value = oppSem a

theorem fiat_add_range_from_branches (a b output : Rep)
    (hfiat : AddContract a b output) : output.value < baseModulus := by
  rw [hfiat.outputSemantics]
  exact addSem_lt a b hfiat.inputATight hfiat.inputBTight

theorem fiat_sub_range_from_branches (a b output : Rep)
    (hfiat : SubContract a b output) : output.value < baseModulus := by
  rw [hfiat.outputSemantics]
  exact subSem_lt a b hfiat.inputATight hfiat.inputBTight

theorem fiat_opp_range_from_branches (a output : Rep)
    (hfiat : OppContract a output) : output.value < baseModulus := by
  rw [hfiat.outputSemantics]
  exact oppSem_lt a hfiat.inputTight

theorem decode_zero (zero : Rep) (hzero : zero.value = 0) :
    decode zero = 0 := by
  change (zero.value : Fq) * (baseMontgomeryRadix : Fq)⁻¹ = 0
  simp [hzero]

theorem zero_represents_zero (zero : Rep) (hzero : zero.value = 0) :
    Represents zero 0 := by
  rw [represents_iff]
  refine ⟨?_, decode_zero zero hzero⟩
  rw [tight_iff, hzero]
  norm_num [baseModulus]

theorem fiat_set_one_decodes_to_one (output : Rep)
    (hfiat : SetOneContract output) : Represents output 1 := by
  rw [represents_iff]
  exact ⟨hfiat.outputTight, hfiat.decodeOutput⟩

theorem fiat_to_montgomery_represents (input output : Rep)
    (hfiat : ToMontgomeryContract input output) :
    Represents output (input.value : Fq) := by
  rw [represents_iff]
  exact ⟨hfiat.outputTight, hfiat.decodeOutput⟩

theorem fiat_conversion_round_trip (input encoded decoded : Rep)
    (hto : ToMontgomeryContract input encoded)
    (hfrom : FromMontgomeryContract encoded decoded) :
    (decoded.value : Fq) = (input.value : Fq) := by
  exact hfrom.outputValue.trans hto.decodeOutput

theorem fiat_conversion_round_trip_value (input encoded decoded : Rep)
    (hto : ToMontgomeryContract input encoded)
    (hfrom : FromMontgomeryContract encoded decoded) :
    decoded.value = input.value := by
  have hcast := fiat_conversion_round_trip input encoded decoded hto hfrom
  have hval := congrArg ZMod.val hcast
  simpa [ZMod.val_natCast, Nat.mod_eq_of_lt hfrom.outputTight.2,
    Nat.mod_eq_of_lt hto.inputTight.2] using hval

theorem fiat_from_montgomery_canonical (input output₁ output₂ : Rep)
    (h₁ : FromMontgomeryContract input output₁)
    (h₂ : FromMontgomeryContract input output₂) :
    output₁.value = output₂.value := by
  have hcast : (output₁.value : Fq) = (output₂.value : Fq) :=
    h₁.outputValue.trans h₂.outputValue.symm
  have hval := congrArg ZMod.val hcast
  simpa [ZMod.val_natCast, Nat.mod_eq_of_lt h₁.outputTight.2,
    Nat.mod_eq_of_lt h₂.outputTight.2] using hval

private theorem cast_addSem (a b : Rep) :
    (addSem a b : Fq) = (a.value : Fq) + (b.value : Fq) := by
  by_cases h : a.value + b.value < baseModulus
  · simp [addSem, h]
  · rw [addSem_reduction (Nat.not_lt.mp h)]
    rw [Nat.cast_sub (Nat.not_lt.mp h)]
    push_cast
    rw [ZMod.natCast_self]
    simp

private theorem cast_subSem (a b : Rep) (hb : Tight b) :
    (subSem a b : Fq) = (a.value : Fq) - (b.value : Fq) := by
  by_cases h : b.value ≤ a.value
  · rw [subSem_no_borrow h]
    rw [Nat.cast_sub h]
  · rw [subSem_borrow (Nat.lt_of_not_ge h)]
    have hbv : b.value < baseModulus := hb.2
    have hb' : b.value ≤ a.value + baseModulus := by
      omega
    rw [Nat.cast_sub hb']
    push_cast
    simp

private theorem cast_oppSem (a : Rep) (ha : Tight a) :
    (oppSem a : Fq) = -(a.value : Fq) := by
  by_cases h : a.value = 0
  · simp [oppSem_zero h, h]
  · rw [oppSem_nonzero h]
    rw [Nat.cast_sub ha.2.le]
    rw [ZMod.natCast_self]
    simp

theorem fiat_add_decodes_to_add (a b output : Rep) (x y : Fq)
    (ha : Represents a x) (hb : Represents b y)
    (hfiat : AddContract a b output) : Represents output (x + y) := by
  rw [represents_iff] at ha hb ⊢
  refine ⟨hfiat.outputTight, ?_⟩
  change (output.value : Fq) * (baseMontgomeryRadix : Fq)⁻¹ = x + y
  rw [hfiat.outputSemantics, cast_addSem a b, add_mul]
  change decode a + decode b = x + y
  exact congrArg₂ (· + ·) ha.2 hb.2

theorem fiat_sub_decodes_to_sub (a b output : Rep) (x y : Fq)
    (ha : Represents a x) (hb : Represents b y)
    (hfiat : SubContract a b output) : Represents output (x - y) := by
  rw [represents_iff] at ha hb ⊢
  refine ⟨hfiat.outputTight, ?_⟩
  change (output.value : Fq) * (baseMontgomeryRadix : Fq)⁻¹ = x - y
  rw [hfiat.outputSemantics,
    cast_subSem a b hfiat.inputBTight, sub_mul]
  change decode a - decode b = x - y
  exact congrArg₂ (· - ·) ha.2 hb.2

theorem fiat_opp_decodes_to_neg (a output : Rep) (x : Fq)
    (ha : Represents a x) (hfiat : OppContract a output) :
    Represents output (-x) := by
  rw [represents_iff] at ha ⊢
  refine ⟨hfiat.outputTight, ?_⟩
  change (output.value : Fq) * (baseMontgomeryRadix : Fq)⁻¹ = -x
  rw [hfiat.outputSemantics, cast_oppSem a hfiat.inputTight, neg_mul]
  change -(decode a) = -x
  exact congrArg Neg.neg ha.2

end Ipp.Bls12377.FiatFq

#print axioms Ipp.Bls12377.FiatFq.fiat_conversion_round_trip
#print axioms Ipp.Bls12377.FiatFq.fiat_from_montgomery_canonical
#print axioms Ipp.Bls12377.FiatFq.fiat_add_decodes_to_add
#print axioms Ipp.Bls12377.FiatFq.fiat_sub_decodes_to_sub
#print axioms Ipp.Bls12377.FiatFq.fiat_opp_decodes_to_neg
