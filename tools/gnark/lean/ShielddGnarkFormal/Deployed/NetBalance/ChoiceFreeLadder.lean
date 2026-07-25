import ShielddGnarkFormal.Deployed.NetBalance.Ladder
import ShielddGnarkFormal.RvkFixedBaseRungChoiceFree
import ShielddGnarkFormal.ChoiceFreeBinary
import ShielddGnarkFormal.ChoiceFreeZModCast

/-! Choice-free fixed-base net-balance semantics for normalized providers.

The normalized proof path consumes the reviewed deployed row certificates but
targets this ring-only recurrence. Its final theorem connects the recovered
trace directly to the choice-free `scalarMulLE` model, without routing through
the legacy extracted CPS ladder or its classical bit-vector round trip. -/

namespace Shieldd.GnarkFormal.Deployed.NetBalanceChoiceFree

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.ScalarMulBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)
open EdwardsBridge (Point onCurve a d addSpec doubleF double_onCurve
  add_den_plus_ne add_den_minus_ne)

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafEdwardsDouble.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafEdwardsNeg.Order) := ‹_›

def blindGen : Point :=
  ⟨(4661681602708190761543544705274244814260880986867766715334030151044279151219 : F),
   (4337336842509898676347982752646772244181661588533917621717979456142867120378 : F)⟩

theorem blindGen_onCurve : onCurve blindGen := by
  have hcast :
      ((NetBalanceCommitmentBridge.blindGenYNat *
          NetBalanceCommitmentBridge.blindGenYNat +
          (Order - 1) *
            (NetBalanceCommitmentBridge.blindGenXNat *
              NetBalanceCommitmentBridge.blindGenXNat) : ℕ) : F) =
        ((1 + EdwardsBridge.dNat *
          (NetBalanceCommitmentBridge.blindGenXNat *
            NetBalanceCommitmentBridge.blindGenXNat) *
          (NetBalanceCommitmentBridge.blindGenYNat *
            NetBalanceCommitmentBridge.blindGenYNat) : ℕ) : F) := by
    exact ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq Order _ _
      (Nat.Prime.ne_zero Fact.out)
      NetBalanceCommitmentBridge.blindGen_onCurve_nat
  have ha : ((Order - 1 : ℕ) : F) = -1 := by decide
  have hx : ((NetBalanceCommitmentBridge.blindGenXNat : ℕ) : F) =
      (4661681602708190761543544705274244814260880986867766715334030151044279151219 : F) := by
    rfl
  have hy : ((NetBalanceCommitmentBridge.blindGenYNat : ℕ) : F) =
      (4337336842509898676347982752646772244181661588533917621717979456142867120378 : F) := by
    rfl
  simp only [Nat.cast_add, Nat.cast_mul, Nat.cast_one] at hcast
  rw [ha, hx, hy, ← EdwardsBridge.d_natCast] at hcast
  simp only [blindGen]
  show -(_ * _) + _ * _ = 1 + d * (_ * _) * (_ * _)
  linear_combination hcast

def Cb : ℕ → Point
  | 0 => blindGen
  | i + 1 => doubleF (Cb i)

theorem Cb_succ (i : ℕ) : Cb (i + 1) = doubleF (Cb i) := rfl

theorem Cb_onCurve : ∀ i, onCurve (Cb i)
  | 0 => blindGen_onCurve
  | i + 1 => by
      rw [Cb_succ]
      exact double_onCurve (Cb i) (Cb_onCurve i)

def NbFixedStepRel (i : ℕ) (bit : F) (acc acc' : Point) : Prop :=
  ∃ sum,
    addSpec acc (Cb i) sum ∧
    GatesDef.select bit sum.x acc.x acc'.x ∧
    GatesDef.select bit sum.y acc.y acc'.y

theorem nbFixedRung_stepRel
    (i : ℕ) (bit : F) (acc sum acc' : Point)
    (hacc : onCurve acc)
    (hAddX : sum.x * (1 + d * ((Cb i).y * acc.x) * ((Cb i).x * acc.y))
        = (Cb i).y * acc.x + (Cb i).x * acc.y)
    (hAddY : sum.y * (1 - d * ((Cb i).y * acc.x) * ((Cb i).x * acc.y))
        = a * ((Cb i).y * acc.x) - (Cb i).x * acc.y
          + (acc.y - acc.x * a) * ((Cb i).x + (Cb i).y))
    (hbit : (1 - bit) * bit = 0)
    (hSelX : acc'.x = acc.x - bit * (acc.x - sum.x))
    (hSelY : acc'.y = acc.y - bit * (acc.y - sum.y)) :
    NbFixedStepRel i bit acc acc' :=
  RvkFixedBaseRungChoiceFree.fixedRung_stepRel bit acc (Cb i) sum acc' hacc
    (Cb_onCurve i) hAddX hAddY hbit hSelX hSelY

def seedAcc (bit : F) : Point :=
  ⟨blindGen.x * bit, 1 + (blindGen.y - 1) * bit⟩

theorem identity_addSpec_blindGen : addSpec ⟨0, 1⟩ blindGen blindGen := by
  simp only [addSpec, blindGen, a, d, GatesDef.div_unchecked]
  constructor <;> left <;> constructor
  · norm_num
  · ring
  · norm_num
  · ring

theorem seedStepRel (bit : Bool) :
    NbFixedStepRel 0 (toZMod bit) ⟨0, 1⟩ (seedAcc (toZMod bit)) := by
  cases bit
  · refine ⟨blindGen, identity_addSpec_blindGen, ?_, ?_⟩
    · change GatesDef.select (0 : F) blindGen.x 0 (seedAcc 0).x
      unfold GatesDef.select GatesDef.is_bool
      constructor
      · ring
      · simp only [seedAcc, blindGen]
        ring
    · change GatesDef.select (0 : F) blindGen.y 1 (seedAcc 0).y
      unfold GatesDef.select GatesDef.is_bool
      constructor
      · ring
      · simp only [seedAcc, blindGen]
        ring
  · refine ⟨blindGen, identity_addSpec_blindGen, ?_, ?_⟩
    · change GatesDef.select (1 : F) blindGen.x 0 (seedAcc 1).x
      unfold GatesDef.select GatesDef.is_bool
      constructor
      · ring
      · simp only [seedAcc, blindGen]
        ring
    · change GatesDef.select (1 : F) blindGen.y 1 (seedAcc 1).y
      unfold GatesDef.select GatesDef.is_bool
      constructor
      · ring
      · simp only [seedAcc, blindGen]
        ring

private theorem select_bool_value (b : Bool) (t f out : F)
    (h : GatesDef.select (toZMod b : F) t f out) :
    out = if b then t else f := by
  dsimp [GatesDef.select] at h
  rcases h with ⟨_, hout⟩
  cases b <;> simp [Bool.toZMod_zero, Bool.toZMod_one] at hout ⊢ <;>
    linear_combination hout

theorem fixedStep_semantic (i : ℕ) (b : Bool) (acc acc' : Point)
    (h : NbFixedStepRel i (toZMod b) acc acc')
    (hacc : onCurve acc) :
    acc' = (if b then EdwardsBridge.addF acc (Cb i) else acc) ∧
      onCurve acc' := by
  rcases h with ⟨sum, hadd, hselX, hselY⟩
  have hsum : sum = EdwardsBridge.addF acc (Cb i) :=
    EdwardsBridge.addSpec_eq acc (Cb i) sum hacc (Cb_onCurve i) hadd
  have hx := select_bool_value b sum.x acc.x acc'.x hselX
  have hy := select_bool_value b sum.y acc.y acc'.y hselY
  have hacc' : acc' = (if b then EdwardsBridge.addF acc (Cb i) else acc) := by
    cases b
    · simp only [Bool.false_eq_true, ↓reduceIte] at hx hy ⊢
      cases acc'
      cases acc
      simp only at hx hy ⊢
      cases hx
      cases hy
      rfl
    · simp only [↓reduceIte] at hx hy ⊢
      rw [hsum] at hx hy
      cases acc'
      cases hsumPoint : EdwardsBridge.addF acc (Cb i)
      simp only [hsumPoint] at hx hy ⊢
      cases hx
      cases hy
      rfl
  refine ⟨hacc', ?_⟩
  rw [hacc']
  cases b
  · simpa using hacc
  · exact EdwardsBridge.add_onCurve acc (Cb i) hacc (Cb_onCurve i)

def fixedAccFrom {n : ℕ} (bits : List.Vector Bool n) :
    Nat → Nat → Point → Point
  | 0, _, acc => acc
  | fuel + 1, bitIndex, acc =>
      fixedAccFrom bits fuel (bitIndex + 1)
        (if bits[bitIndex]! then EdwardsBridge.addF acc (Cb bitIndex) else acc)

theorem scalarMulFromBits_eq_fixedAccFrom {n : ℕ} (bits : List.Vector Bool n) :
    ∀ fuel bitIndex acc,
      scalarMulFromBits bits fuel bitIndex acc (Cb bitIndex) =
        fixedAccFrom bits fuel bitIndex acc := by
  intro fuel
  induction fuel with
  | zero =>
      intro bitIndex acc
      rfl
  | succ fuel ih =>
      intro bitIndex acc
      simp only [scalarMulFromBits, fixedAccFrom]
      rw [← Cb_succ bitIndex]
      exact ih (bitIndex + 1)
        (if bits[bitIndex]! then EdwardsBridge.addF acc (Cb bitIndex) else acc)

theorem fixedTrace_eq_fixedAccFrom {n : ℕ} (bits : List.Vector Bool n)
    (acc : Nat → Point)
    (hstep : ∀ i, i < n → onCurve (acc i) →
      NbFixedStepRel i (toZMod bits[i]!) (acc i) (acc (i + 1))) :
    ∀ fuel bitIndex,
      bitIndex + fuel ≤ n →
      onCurve (acc bitIndex) →
      acc (bitIndex + fuel) = fixedAccFrom bits fuel bitIndex (acc bitIndex) ∧
        onCurve (acc (bitIndex + fuel)) := by
  intro fuel
  induction fuel with
  | zero =>
      intro bitIndex _ hacc
      exact ⟨rfl, hacc⟩
  | succ fuel ih =>
      intro bitIndex hbound hacc
      have hlt : bitIndex < n := by omega
      have hnext := fixedStep_semantic bitIndex bits[bitIndex]!
        (acc bitIndex) (acc (bitIndex + 1)) (hstep bitIndex hlt hacc) hacc
      have htail := ih (bitIndex + 1) (by omega) hnext.2
      constructor
      · have hindex : bitIndex + (fuel + 1) = bitIndex + 1 + fuel := by omega
        rw [hindex, htail.1]
        simp only [fixedAccFrom]
        rw [← hnext.1]
      · simpa only [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using htail.2

theorem fixedTrace_to_scalarMulLE {n : ℕ} (bits : List.Vector Bool n)
    (scalar : F) (acc : Nat → Point)
    (hvalue : scalar.val = (Fin.ofBitsLE bits).val)
    (hacc0 : acc 0 = ⟨0, 1⟩)
    (hstep : ∀ i, i < n → onCurve (acc i) →
      NbFixedStepRel i (toZMod bits[i]!) (acc i) (acc (i + 1))) :
    toA (acc n) =
      Decaf377Assumptions.scalarMulLE n (toA blindGen) scalar := by
  have hstart : onCurve (acc 0) := by
    rw [hacc0]
    exact EdwardsBridge.identity_onCurve
  have htrace := fixedTrace_eq_fixedAccFrom bits acc hstep n 0 (by omega) hstart
  have hbits :
      ∀ i, 0 ≤ i → i < 0 + n → bits[i]! = scalar.val.testBit i := by
    intro i _ hi
    rw [hvalue]
    exact (ScalarMulBridge.ofBitsLE_testBit bits i (by omega)).symm
  have hmodel := ScalarMulBridge.scalarMulFromBits_toA bits scalar n 0
    (acc 0) blindGen (by omega) hbits
  calc
    toA (acc n) =
        toA (fixedAccFrom bits n 0 (acc 0)) := by
          exact congrArg toA (by simpa using htrace.1)
    _ = toA (scalarMulFromBits bits n 0 (acc 0) blindGen) :=
      congrArg toA (scalarMulFromBits_eq_fixedAccFrom bits n 0 (acc 0)).symm
    _ = Decaf377Assumptions.scalarMulLEFrom scalar n 0
        (toA (acc 0)) (toA blindGen) := hmodel
    _ = Decaf377Assumptions.scalarMulLE n (toA blindGen) scalar := by
      rw [hacc0]
      rfl

end Shieldd.GnarkFormal.Deployed.NetBalanceChoiceFree
