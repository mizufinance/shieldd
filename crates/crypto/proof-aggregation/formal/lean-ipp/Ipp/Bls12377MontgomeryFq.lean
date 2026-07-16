import Ipp.Bls12377Core

/-!
Route-neutral BLS12-377 base-field representation and additive semantics.
Executed arkworks proofs can compose their carry-chain specifications with
these `ZMod` lemmas.
-/

namespace Ipp.Bls12377.MontgomeryFq

set_option maxHeartbeats 400000

def wordRadix : Nat := 2 ^ 64
def limbCount : Nat := 6

/-- A saturated six-word value with unique little-endian digits. -/
structure Rep where
  value : Nat
  value_lt_radix : value < baseMontgomeryRadix

def Rep.limb (a : Rep) (i : Fin limbCount) : Nat :=
  a.value / wordRadix ^ i.val % wordRadix

def Loose (a : Rep) : Prop :=
  ∀ i, a.limb i < wordRadix

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

/-- Canonical modular-addition semantics after the carry chain. -/
def addSem (a b : Rep) : Nat :=
  if a.value + b.value < baseModulus then a.value + b.value
  else a.value + b.value - baseModulus

/-- Canonical modular-subtraction semantics after the borrow chain. -/
def subSem (a b : Rep) : Nat :=
  if b.value ≤ a.value then a.value - b.value
  else a.value + baseModulus - b.value

/-- Canonical modular-negation semantics after the zero test. -/
def negSem (a : Rep) : Nat :=
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

theorem negSem_zero {a : Rep} (h : a.value = 0) : negSem a = 0 := by
  simp [negSem, h]

theorem negSem_nonzero {a : Rep} (h : a.value ≠ 0) :
    negSem a = baseModulus - a.value := by
  simp [negSem, h]

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

theorem negSem_lt (a : Rep) (ha : Tight a) : negSem a < baseModulus := by
  by_cases h : a.value = 0
  · rw [negSem_zero h]
    norm_num [baseModulus]
  · rw [negSem_nonzero h]
    have ha' : a.value < baseModulus := ha.2
    omega

/-! Specifications supplied by an extracted executed operation. -/

structure ToMontgomerySpec (input output : Rep) : Prop where
  inputTight : Tight input
  outputTight : Tight output
  decodeOutput : decode output = (input.value : Fq)

structure FromMontgomerySpec (input output : Rep) : Prop where
  inputTight : Tight input
  outputTight : Tight output
  outputValue : (output.value : Fq) = decode input

structure SetOneSpec (output : Rep) : Prop where
  outputTight : Tight output
  decodeOutput : decode output = 1

structure AddSpec (a b output : Rep) : Prop where
  inputATight : Tight a
  inputBTight : Tight b
  outputTight : Tight output
  outputSemantics : output.value = addSem a b

structure SubSpec (a b output : Rep) : Prop where
  inputATight : Tight a
  inputBTight : Tight b
  outputTight : Tight output
  outputSemantics : output.value = subSem a b

structure NegSpec (a output : Rep) : Prop where
  inputTight : Tight a
  outputTight : Tight output
  outputSemantics : output.value = negSem a

theorem add_range_from_spec (a b output : Rep)
    (hspec : AddSpec a b output) : output.value < baseModulus := by
  rw [hspec.outputSemantics]
  exact addSem_lt a b hspec.inputATight hspec.inputBTight

theorem sub_range_from_spec (a b output : Rep)
    (hspec : SubSpec a b output) : output.value < baseModulus := by
  rw [hspec.outputSemantics]
  exact subSem_lt a b hspec.inputATight hspec.inputBTight

theorem neg_range_from_spec (a output : Rep)
    (hspec : NegSpec a output) : output.value < baseModulus := by
  rw [hspec.outputSemantics]
  exact negSem_lt a hspec.inputTight

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

theorem setOne_represents (output : Rep)
    (hspec : SetOneSpec output) : Represents output 1 := by
  rw [represents_iff]
  exact ⟨hspec.outputTight, hspec.decodeOutput⟩

theorem toMontgomery_represents (input output : Rep)
    (hspec : ToMontgomerySpec input output) :
    Represents output (input.value : Fq) := by
  rw [represents_iff]
  exact ⟨hspec.outputTight, hspec.decodeOutput⟩

theorem conversion_roundTrip (input encoded decoded : Rep)
    (hto : ToMontgomerySpec input encoded)
    (hfrom : FromMontgomerySpec encoded decoded) :
    (decoded.value : Fq) = (input.value : Fq) := by
  exact hfrom.outputValue.trans hto.decodeOutput

theorem conversion_roundTrip_value (input encoded decoded : Rep)
    (hto : ToMontgomerySpec input encoded)
    (hfrom : FromMontgomerySpec encoded decoded) :
    decoded.value = input.value := by
  have hcast := conversion_roundTrip input encoded decoded hto hfrom
  have hval := congrArg ZMod.val hcast
  simpa [ZMod.val_natCast, Nat.mod_eq_of_lt hfrom.outputTight.2,
    Nat.mod_eq_of_lt hto.inputTight.2] using hval

theorem fromMontgomery_unique (input output₁ output₂ : Rep)
    (h₁ : FromMontgomerySpec input output₁)
    (h₂ : FromMontgomerySpec input output₂) :
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

private theorem cast_negSem (a : Rep) (ha : Tight a) :
    (negSem a : Fq) = -(a.value : Fq) := by
  by_cases h : a.value = 0
  · simp [negSem_zero h, h]
  · rw [negSem_nonzero h]
    rw [Nat.cast_sub ha.2.le]
    rw [ZMod.natCast_self]
    simp

theorem add_represents (a b output : Rep) (x y : Fq)
    (ha : Represents a x) (hb : Represents b y)
    (hspec : AddSpec a b output) : Represents output (x + y) := by
  rw [represents_iff] at ha hb ⊢
  refine ⟨hspec.outputTight, ?_⟩
  change (output.value : Fq) * (baseMontgomeryRadix : Fq)⁻¹ = x + y
  rw [hspec.outputSemantics, cast_addSem a b, add_mul]
  change decode a + decode b = x + y
  exact congrArg₂ (· + ·) ha.2 hb.2

theorem sub_represents (a b output : Rep) (x y : Fq)
    (ha : Represents a x) (hb : Represents b y)
    (hspec : SubSpec a b output) : Represents output (x - y) := by
  rw [represents_iff] at ha hb ⊢
  refine ⟨hspec.outputTight, ?_⟩
  change (output.value : Fq) * (baseMontgomeryRadix : Fq)⁻¹ = x - y
  rw [hspec.outputSemantics, cast_subSem a b hspec.inputBTight, sub_mul]
  change decode a - decode b = x - y
  exact congrArg₂ (· - ·) ha.2 hb.2

theorem neg_represents (a output : Rep) (x : Fq)
    (ha : Represents a x) (hspec : NegSpec a output) :
    Represents output (-x) := by
  rw [represents_iff] at ha ⊢
  refine ⟨hspec.outputTight, ?_⟩
  change (output.value : Fq) * (baseMontgomeryRadix : Fq)⁻¹ = -x
  rw [hspec.outputSemantics, cast_negSem a hspec.inputTight, neg_mul]
  change -(decode a) = -x
  exact congrArg Neg.neg ha.2

end Ipp.Bls12377.MontgomeryFq

#print axioms Ipp.Bls12377.MontgomeryFq.conversion_roundTrip
#print axioms Ipp.Bls12377.MontgomeryFq.fromMontgomery_unique
#print axioms Ipp.Bls12377.MontgomeryFq.add_represents
#print axioms Ipp.Bls12377.MontgomeryFq.sub_represents
#print axioms Ipp.Bls12377.MontgomeryFq.neg_represents
