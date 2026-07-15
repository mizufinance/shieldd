import Ipp.Extracted.ArkworksFqMulGenerated
import Ipp.Bls12377Core
import Mathlib.Tactic

namespace Ipp.Extracted.ArkworksFqMul

open Aeneas Aeneas.Std Result

abbrev LimbArray := ark_ip_proofs.s3_07_arkworks_fq_spike.LimbArray
abbrev ExtractedMac := ark_ip_proofs.s3_07_arkworks_fq_spike.Mac

def wordBase : Nat := 2 ^ 64
def limbCount : Nat := 6

theorem wordBase_pos : 0 < wordBase := by
  simp [wordBase]

theorem u128Base_eq : MacCampaign.u128Base = wordBase * wordBase := by
  change 2 ^ 128 = 2 ^ 64 * 2 ^ 64
  rw [show 128 = 64 + 64 by omega, pow_add]

theorem u64_ofNat_val_of_lt {value : Nat} (hvalue : value < wordBase) :
    (MacCampaign.U64.ofNat value).val = value := by
  change value % MacCampaign.u64Base = value
  apply Nat.mod_eq_of_lt
  simpa [MacCampaign.u64Base, wordBase] using hvalue

/-- A fixed-array limb in the extracted `u64` representation. -/
def limbWord (value : LimbArray) (i : Fin limbCount) : MacCampaign.U64 :=
  value.val.get ⟨i.val, by simp [limbCount, value.hlen]⟩

/-- A fixed-array limb interpreted as a natural number. -/
def limb (value : LimbArray) (i : Fin limbCount) : Nat :=
  (limbWord value i).val

/-- The little-endian value of the first `count` limbs, saturated at six. -/
def prefixToNat (value : LimbArray) : Nat → Nat
  | 0 => 0
  | count + 1 =>
      if h : count < limbCount then
        prefixToNat value count + limb value ⟨count, h⟩ * wordBase ^ count
      else
        prefixToNat value count

@[simp] theorem prefixToNat_zero (value : LimbArray) :
    prefixToNat value 0 = 0 := rfl

theorem prefixToNat_succ (value : LimbArray) {count : Nat}
    (hcount : count < limbCount) :
    prefixToNat value (count + 1) =
      prefixToNat value count +
        limb value ⟨count, hcount⟩ * wordBase ^ count := by
  simp [prefixToNat, hcount]

def limbsToNat (value : LimbArray) : Nat :=
  prefixToNat value limbCount

/-- Outer CIOS invariant for the extracted `(round index, accumulator)` state. -/
def roundInvariant (a b : LimbArray) (state : Nat × LimbArray) : Prop :=
  state.1 ≤ limbCount ∧
  limbsToNat state.2 < 2 * Ipp.Bls12377.baseModulus ∧
  Nat.ModEq Ipp.Bls12377.baseModulus
    (limbsToNat state.2 * wordBase ^ state.1)
    (prefixToNat b state.1 * limbsToNat a)

structure NatMac where
  low : Nat
  carry : Nat
deriving DecidableEq, Repr

def macModel (accumulator left right carry : Nat) : NatMac :=
  let value := accumulator + left * right + carry
  { low := value % wordBase, carry := value / wordBase }

structure MacSpec (accumulator left right carry : Nat) (output : NatMac) : Prop where
  accumulator_lt : accumulator < wordBase
  left_lt : left < wordBase
  right_lt : right < wordBase
  carry_in_lt : carry < wordBase
  low_lt : output.low < wordBase
  carry_out_lt : output.carry < wordBase
  equation : accumulator + left * right + carry =
    output.carry * wordBase + output.low

/-- The pure Nat MAC cannot overflow `u128`, and its quotient/remainder split is exact. -/
theorem macModel_spec {accumulator left right carry : Nat}
    (haccumulator : accumulator < wordBase)
    (hleft : left < wordBase) (hright : right < wordBase)
    (hcarry : carry < wordBase) :
    MacSpec accumulator left right carry
      (macModel accumulator left right carry) := by
  let value := accumulator + left * right + carry
  have hvalue : value < wordBase * wordBase := by
    dsimp [value]
    nlinarith
  refine
    { accumulator_lt := haccumulator
      left_lt := hleft
      right_lt := hright
      carry_in_lt := hcarry
      low_lt := ?_
      carry_out_lt := ?_
      equation := ?_ }
  · exact Nat.mod_lt _ wordBase_pos
  · exact (Nat.div_lt_iff_lt_mul wordBase_pos).2 hvalue
  · dsimp [macModel, value]
    calc
      accumulator + left * right + carry =
          (accumulator + left * right + carry) % wordBase +
            wordBase * ((accumulator + left * right + carry) / wordBase) :=
        (Nat.mod_add_div _ _).symm
      _ = ((accumulator + left * right + carry) / wordBase) * wordBase +
          (accumulator + left * right + carry) % wordBase := by
        ac_rfl

def extractedMacModel (accumulator left right carry : MacCampaign.U64) :
    ExtractedMac :=
  let value := accumulator.val + left.val * right.val + carry.val
  { low := MacCampaign.U64.ofNat value
    carry := MacCampaign.U64.ofNat (value / wordBase) }

/-- Executable bridge: the extracted checked-`u128` MAC returns the Nat model split. -/
theorem extracted_mac_eq_model (accumulator left right carry : MacCampaign.U64) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.mac
        accumulator left right carry =
      .ok (extractedMacModel accumulator left right carry) := by
  let value := accumulator.val + left.val * right.val + carry.val
  have haccumulator : accumulator.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using accumulator.isLt
  have hleft : left.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using left.isLt
  have hright : right.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using right.isLt
  have hcarryIn : carry.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using carry.isLt
  have hmul : left.val * right.val < MacCampaign.u128Base := by
    rw [u128Base_eq]
    nlinarith
  have haddProduct : accumulator.val + left.val * right.val <
      MacCampaign.u128Base := by
    rw [u128Base_eq]
    nlinarith
  have hvalue : value < MacCampaign.u128Base := by
    dsimp [value]
    rw [u128Base_eq]
    nlinarith
  have hcarry : value / wordBase < wordBase := by
    apply (Nat.div_lt_iff_lt_mul wordBase_pos).2
    simpa [u128Base_eq] using hvalue
  have hshift : (MacCampaign.I32.ofNat 64).val < 128 := by
    decide
  have hshiftValue : (MacCampaign.I32.ofNat 64).val = 64 := by
    decide
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.mac, lift,
    Result.bind_ok, MacCampaign.castU128]
  simp only [MacCampaign.mul128, dif_pos hmul, Result.bind_ok]
  simp only [MacCampaign.add128, dif_pos haddProduct, Result.bind_ok]
  have hvalueRaw :
      accumulator.val + left.val * right.val + carry.val <
        MacCampaign.u128Base := by simpa [value] using hvalue
  simp only [dif_pos hvalueRaw, Result.bind_ok, MacCampaign.castU64]
  simp only [MacCampaign.shr128, if_pos hshift, Result.bind_ok]
  simp [extractedMacModel, MacCampaign.U64.ofNat,
    MacCampaign.U128.ofNat, MacCampaign.u64Base, MacCampaign.u128Base,
    wordBase, hshiftValue]

/-- Nat-level specification of the result returned by the extracted MAC. -/
theorem extracted_mac_spec (accumulator left right carry : MacCampaign.U64) :
    ∃ output,
      ark_ip_proofs.s3_07_arkworks_fq_spike.mac
          accumulator left right carry = .ok output ∧
      MacSpec accumulator.val left.val right.val carry.val
        { low := output.low.val, carry := output.carry.val } := by
  refine ⟨extractedMacModel accumulator left right carry,
    extracted_mac_eq_model accumulator left right carry, ?_⟩
  have hspec := macModel_spec accumulator.isLt left.isLt right.isLt carry.isLt
  have hcarry :
      (accumulator.val + left.val * right.val + carry.val) / wordBase <
        wordBase := by
    simpa [macModel] using hspec.carry_out_lt
  let output : NatMac :=
    { low := (extractedMacModel accumulator left right carry).low.val
      carry := (extractedMacModel accumulator left right carry).carry.val }
  change MacSpec accumulator.val left.val right.val carry.val output
  have houtput : output = macModel accumulator.val left.val right.val carry.val := by
    dsimp [output, extractedMacModel, macModel, MacCampaign.U64.ofNat]
    congr 1
    change
      (accumulator.val + left.val * right.val + carry.val) / wordBase %
          wordBase =
        (accumulator.val + left.val * right.val + carry.val) / wordBase
    rw [Nat.mod_eq_of_lt hcarry]
  rw [houtput]
  exact hspec

/-- Result-specific form of `extracted_mac_spec`, convenient for composing calls. -/
theorem extracted_mac_result_spec (accumulator left right carry : MacCampaign.U64)
    (output : ExtractedMac)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.mac
      accumulator left right carry = .ok output) :
    MacSpec accumulator.val left.val right.val carry.val
      { low := output.low.val, carry := output.carry.val } := by
  rcases extracted_mac_spec accumulator left right carry with
    ⟨expected, hrun, hspec⟩
  rw [hrun] at hexec
  cases hexec
  exact hspec

/-- The extracted primitive's fourth argument is its `mac_with_carry` variant. -/
theorem extracted_mac_with_carry_spec
    (accumulator left right carry : MacCampaign.U64) (output : ExtractedMac)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.mac
      accumulator left right carry = .ok output) :
    MacSpec accumulator.val left.val right.val carry.val
      { low := output.low.val, carry := output.carry.val } :=
  extracted_mac_result_spec accumulator left right carry output hexec

/-- Little-endian value of an already produced reduction-low list. -/
def lowListToNat : List Nat → Nat
  | [] => 0
  | low :: rest => low + wordBase * lowListToNat rest

theorem lowListToNat_append_singleton (values : List Nat) (value : Nat) :
    lowListToNat (values ++ [value]) =
      lowListToNat values + value * wordBase ^ values.length := by
  induction values with
  | nil => simp [lowListToNat]
  | cons head tail ih =>
      simp [lowListToNat, ih, pow_succ]
      ring

/-- State after a prefix of the interleaved product/reduction MAC chain. -/
structure MacChainState where
  count : Nat
  productCarry : Nat
  reductionCarry : Nat
  reductionLows : List Nat
deriving Repr

/-- Exact telescoping invariant for a prefix of one extracted CIOS round. -/
def macChainInvariant (r a : LimbArray) (b k : Nat)
    (state : MacChainState) : Prop :=
  state.count ≤ limbCount ∧
  state.reductionLows.length = state.count ∧
  (∀ low ∈ state.reductionLows, low < wordBase) ∧
  state.productCarry < wordBase ∧
  state.reductionCarry < wordBase ∧
  prefixToNat r state.count + b * prefixToNat a state.count +
      k * prefixToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS state.count =
    lowListToNat state.reductionLows +
      (state.productCarry + state.reductionCarry) * wordBase ^ state.count

theorem macChainInvariant_initial (r a : LimbArray) (b k : Nat) :
    macChainInvariant r a b k
      { count := 0, productCarry := 0, reductionCarry := 0,
        reductionLows := [] } := by
  simp [macChainInvariant, lowListToNat, wordBase_pos]

/-- One full interleaved product-MAC/reduction-MAC pair preserves the chain invariant. -/
theorem macChainInvariant_step (r a : LimbArray) (b k : Nat)
    (state : MacChainState) (hcount : state.count < limbCount)
    (product reduction : NatMac)
    (hproduct : MacSpec
      (limb r ⟨state.count, hcount⟩)
      (limb a ⟨state.count, hcount⟩) b state.productCarry product)
    (hreduction : MacSpec product.low k
      (limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
        ⟨state.count, hcount⟩)
      state.reductionCarry reduction)
    (hinvariant : macChainInvariant r a b k state) :
    macChainInvariant r a b k
      { count := state.count + 1
        productCarry := product.carry
        reductionCarry := reduction.carry
        reductionLows := state.reductionLows ++ [reduction.low] } := by
  rcases hinvariant with
    ⟨hcountLe, hlowsLength, hlowsBound, hproductCarry,
      hreductionCarry, hequation⟩
  have hpair :
      limb r ⟨state.count, hcount⟩ +
          limb a ⟨state.count, hcount⟩ * b +
          k * limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
            ⟨state.count, hcount⟩ +
          state.productCarry + state.reductionCarry =
        reduction.low + (product.carry + reduction.carry) * wordBase := by
    have hproductEquation := hproduct.equation
    have hreductionEquation := hreduction.equation
    calc
      limb r ⟨state.count, hcount⟩ +
            limb a ⟨state.count, hcount⟩ * b +
            k * limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
              ⟨state.count, hcount⟩ +
            state.productCarry + state.reductionCarry =
          (limb r ⟨state.count, hcount⟩ +
              limb a ⟨state.count, hcount⟩ * b + state.productCarry) +
            k * limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
              ⟨state.count, hcount⟩ + state.reductionCarry := by ring
      _ = (product.carry * wordBase + product.low) +
            k * limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
              ⟨state.count, hcount⟩ + state.reductionCarry := by
        rw [hproductEquation]
      _ = product.carry * wordBase +
          (product.low +
            k * limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
              ⟨state.count, hcount⟩ + state.reductionCarry) := by ring
      _ = product.carry * wordBase +
          (reduction.carry * wordBase + reduction.low) := by
        rw [hreductionEquation]
      _ = reduction.low + (product.carry + reduction.carry) * wordBase := by
        ring
  refine ⟨?_, by simp [hlowsLength], ?_, hproduct.carry_out_lt,
    hreduction.carry_out_lt, ?_⟩
  · change state.count + 1 ≤ limbCount
    omega
  · intro low hlow
    simp only [List.mem_append, List.mem_singleton] at hlow
    rcases hlow with hlow | rfl
    · exact hlowsBound low hlow
    · exact hreduction.low_lt
  · rw [prefixToNat_succ r hcount, prefixToNat_succ a hcount,
      prefixToNat_succ ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS hcount]
    calc
      (prefixToNat r state.count +
            limb r ⟨state.count, hcount⟩ * wordBase ^ state.count) +
          b * (prefixToNat a state.count +
            limb a ⟨state.count, hcount⟩ * wordBase ^ state.count) +
          k * (prefixToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
              state.count +
            limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
              ⟨state.count, hcount⟩ * wordBase ^ state.count) =
        (prefixToNat r state.count + b * prefixToNat a state.count +
            k * prefixToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
              state.count) +
          (limb r ⟨state.count, hcount⟩ +
            limb a ⟨state.count, hcount⟩ * b +
            k * limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
              ⟨state.count, hcount⟩) * wordBase ^ state.count := by ring
      _ = (lowListToNat state.reductionLows +
            (state.productCarry + state.reductionCarry) *
              wordBase ^ state.count) +
          (limb r ⟨state.count, hcount⟩ +
            limb a ⟨state.count, hcount⟩ * b +
            k * limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
              ⟨state.count, hcount⟩) * wordBase ^ state.count := by
        rw [hequation]
      _ = lowListToNat state.reductionLows +
          (limb r ⟨state.count, hcount⟩ +
            limb a ⟨state.count, hcount⟩ * b +
            k * limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
              ⟨state.count, hcount⟩ +
            state.productCarry + state.reductionCarry) *
              wordBase ^ state.count := by ring
      _ = lowListToNat state.reductionLows +
          (reduction.low + (product.carry + reduction.carry) * wordBase) *
            wordBase ^ state.count := by rw [hpair]
      _ = lowListToNat (state.reductionLows ++ [reduction.low]) +
          (product.carry + reduction.carry) * wordBase ^ (state.count + 1) := by
        rw [lowListToNat_append_singleton, hlowsLength, pow_succ]
        ring

/-- Two successful extracted MAC calls preserve one interleaved chain step. -/
theorem extracted_macChainInvariant_step (r a : LimbArray)
    (b k : MacCampaign.U64) (state : MacChainState)
    (hcount : state.count < limbCount) (product reduction : ExtractedMac)
    (hproductExec : ark_ip_proofs.s3_07_arkworks_fq_spike.mac
      (limbWord r ⟨state.count, hcount⟩)
      (limbWord a ⟨state.count, hcount⟩) b
      (MacCampaign.U64.ofNat state.productCarry) = .ok product)
    (hreductionExec : ark_ip_proofs.s3_07_arkworks_fq_spike.mac
      product.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
        ⟨state.count, hcount⟩)
      (MacCampaign.U64.ofNat state.reductionCarry) = .ok reduction)
    (hinvariant : macChainInvariant r a b.val k.val state) :
    macChainInvariant r a b.val k.val
      { count := state.count + 1
        productCarry := product.carry.val
        reductionCarry := reduction.carry.val
        reductionLows := state.reductionLows ++ [reduction.low.val] } := by
  have hproductCarry : state.productCarry < wordBase :=
    hinvariant.2.2.2.1
  have hreductionCarry : state.reductionCarry < wordBase :=
    hinvariant.2.2.2.2.1
  have hproductSpec := extracted_mac_result_spec
    (limbWord r ⟨state.count, hcount⟩)
    (limbWord a ⟨state.count, hcount⟩) b
    (MacCampaign.U64.ofNat state.productCarry) product hproductExec
  have hreductionSpec := extracted_mac_result_spec product.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ⟨state.count, hcount⟩)
    (MacCampaign.U64.ofNat state.reductionCarry) reduction hreductionExec
  have hproductNat : MacSpec
      (limb r ⟨state.count, hcount⟩)
      (limb a ⟨state.count, hcount⟩) b.val state.productCarry
      { low := product.low.val, carry := product.carry.val } := by
    simpa [limb, u64_ofNat_val_of_lt hproductCarry] using hproductSpec
  have hreductionNat : MacSpec product.low.val k.val
      (limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
        ⟨state.count, hcount⟩)
      state.reductionCarry
      { low := reduction.low.val, carry := reduction.carry.val } := by
    simpa [limb, u64_ofNat_val_of_lt hreductionCarry] using hreductionSpec
  exact macChainInvariant_step r a b.val k.val state hcount
    { low := product.low.val, carry := product.carry.val }
    { low := reduction.low.val, carry := reduction.carry.val }
    hproductNat hreductionNat hinvariant

/-- The extracted modulus limbs reconstruct the canonical BLS12-377 base modulus. -/
theorem modulus_limbsToNat :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS =
      Ipp.Bls12377.baseModulus := by
  decide

/-- The pinned Montgomery inverse negates the modulus low limb modulo one word. -/
theorem inv_mul_modulus_low_add_one_mod_wordBase :
    (ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val *
        limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩ + 1) %
      wordBase = 0 := by
  decide

theorem inv_val :
    ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val =
      9586122913090633727 := by
  decide

/-- Array indexing at an in-range limb agrees with the proof-layer projection. -/
theorem array_index_limbWord (value : LimbArray) (i : Fin limbCount) :
    MacCampaign.Array.index_usize value (Usize.ofNat i.val) =
      .ok (limbWord value i) := by
  simp [MacCampaign.Array.index_usize, limbWord, Usize.ofNat,
    limbCount, value.hlen]

/-- The Montgomery factor chosen from a low word cancels that word modulo `2^64`. -/
theorem reductionFactor_modEq_zero (accumulator : Nat) :
    let k :=
      accumulator * ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val % wordBase
    Nat.ModEq wordBase
      (accumulator + k *
        limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩)
      0 := by
  dsimp only
  have hk : Nat.ModEq wordBase
      (accumulator * ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val % wordBase)
      (accumulator * ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val) :=
    Nat.mod_modEq _ _
  have hinv : Nat.ModEq wordBase
      (ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val *
        limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩ + 1)
      0 := by
    exact inv_mul_modulus_low_add_one_mod_wordBase
  calc
    accumulator +
          (accumulator * ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val % wordBase) *
            limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩
        ≡ accumulator +
          (accumulator * ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val) *
            limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩
          [MOD wordBase] := (hk.mul_right _).add_left _
    _ = accumulator *
          (ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val *
            limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩ + 1) := by
          ring
    _ ≡ accumulator * 0 [MOD wordBase] := hinv.mul_left accumulator
    _ = 0 := by simp

/-- Limb-zero form of the reduction-factor choice used by `round`. -/
theorem reductionFactor_choice (r0 x a0 : Nat) :
    let k := (r0 + x * a0) *
      ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val % wordBase
    Nat.ModEq wordBase
      (r0 + x * a0 + k *
        limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩)
      0 := by
  exact reductionFactor_modEq_zero (r0 + x * a0)

theorem two_modulus_lt_radix :
    2 * Ipp.Bls12377.baseModulus < wordBase ^ limbCount := by
  decide

/-- A legal CIOS numerator is strictly below `2q·2^64`. -/
theorem roundNumerator_lt (rValue aValue b k : Nat)
    (hr : rValue < 2 * Ipp.Bls12377.baseModulus)
    (ha : aValue < Ipp.Bls12377.baseModulus)
    (hb : b < wordBase) (hk : k < wordBase) :
    rValue + b * aValue + k * Ipp.Bls12377.baseModulus <
      2 * Ipp.Bls12377.baseModulus * wordBase := by
  have hr' : rValue + 1 ≤ 2 * Ipp.Bls12377.baseModulus := by omega
  have ha' : aValue + 1 ≤ Ipp.Bls12377.baseModulus := by omega
  have hb' : b + 1 ≤ wordBase := by omega
  have hk' : k + 1 ≤ wordBase := by omega
  have hba := Nat.mul_le_mul hb' ha'
  have hkq := Nat.mul_le_mul hk' (Nat.le_refl Ipp.Bls12377.baseModulus)
  nlinarith

/-- Multiplicative form of the round output bound; no division is used. -/
theorem roundEquation_bound (rValue aValue b k output : Nat)
    (hr : rValue < 2 * Ipp.Bls12377.baseModulus)
    (ha : aValue < Ipp.Bls12377.baseModulus)
    (hb : b < wordBase) (hk : k < wordBase)
    (hequation : output * wordBase =
      rValue + b * aValue + k * Ipp.Bls12377.baseModulus) :
    output * wordBase <
      2 * Ipp.Bls12377.baseModulus * wordBase := by
  rw [hequation]
  exact roundNumerator_lt rValue aValue b k hr ha hb hk

theorem roundEquation_output_lt (rValue aValue b k output : Nat)
    (hr : rValue < 2 * Ipp.Bls12377.baseModulus)
    (ha : aValue < Ipp.Bls12377.baseModulus)
    (hb : b < wordBase) (hk : k < wordBase)
    (hequation : output * wordBase =
      rValue + b * aValue + k * Ipp.Bls12377.baseModulus) :
    output < 2 * Ipp.Bls12377.baseModulus := by
  exact (Nat.mul_lt_mul_right wordBase_pos).mp
    (roundEquation_bound rValue aValue b k output hr ha hb hk hequation)

/-- The full chain equation forces the combined final carry to fit one word. -/
theorem macChainInvariant_topCarry_lt (r a : LimbArray) (b k : Nat)
    (state : MacChainState)
    (hinvariant : macChainInvariant r a b k state)
    (hcount : state.count = limbCount)
    (hr : limbsToNat r < 2 * Ipp.Bls12377.baseModulus)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hb : b < wordBase) (hk : k < wordBase) :
    state.productCarry + state.reductionCarry < wordBase := by
  rcases hinvariant with
    ⟨_, _, _, _, _, hequation⟩
  rw [hcount] at hequation
  change limbsToNat r + b * limbsToNat a +
      k * limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS = _
    at hequation
  rw [modulus_limbsToNat] at hequation
  have hnumerator := roundNumerator_lt
    (limbsToNat r) (limbsToNat a) b k hr ha hb hk
  have hcarryLe :
      (state.productCarry + state.reductionCarry) *
          wordBase ^ limbCount ≤
        limbsToNat r + b * limbsToNat a +
          k * Ipp.Bls12377.baseModulus := by
    omega
  have hcarryMul :
      (state.productCarry + state.reductionCarry) *
          wordBase ^ limbCount <
        wordBase * (wordBase ^ limbCount) := by
    calc
      (state.productCarry + state.reductionCarry) * wordBase ^ limbCount
          ≤ limbsToNat r + b * limbsToNat a +
              k * Ipp.Bls12377.baseModulus := hcarryLe
      _ < 2 * Ipp.Bls12377.baseModulus * wordBase := hnumerator
      _ < wordBase * (wordBase ^ limbCount) := by
        have := two_modulus_lt_radix
        nlinarith [wordBase_pos]
  exact (Nat.mul_lt_mul_right (pow_pos wordBase_pos limbCount)).mp (by
    simpa [Nat.mul_comm] using hcarryMul)

@[simp] theorem u64_ofNat_val_eq_self (value : MacCampaign.U64) :
    MacCampaign.U64.ofNat value.val = value := by
  cases value with
  | mk value hvalue =>
      simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hvalue]

/-- The first reduction MAC emits zero in its low word. -/
theorem firstReductionLow_eq_zero (product reduction : NatMac)
    (k : Nat)
    (hk : k = product.low *
      ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val % wordBase)
    (hreduction : MacSpec product.low k
      (limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩)
      0 reduction) :
    reduction.low = 0 := by
  subst k
  have hzero := reductionFactor_modEq_zero product.low
  change (product.low +
      (product.low * ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val % wordBase) *
        limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩) %
      wordBase = 0 at hzero
  rw [show product.low +
      (product.low * ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val % wordBase) *
          limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩ =
        reduction.carry * wordBase + reduction.low by
      simpa using hreduction.equation] at hzero
  simpa [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt hreduction.low_lt]
    using hzero

/-- Shifting away the zero reduction low word gives the returned six limbs. -/
theorem shiftedReductionLows_eq (low0 low1 low2 low3 low4 low5 top : MacCampaign.U64)
    (hlow0 : low0.val = 0) :
    lowListToNat [low0.val, low1.val, low2.val, low3.val, low4.val, low5.val] +
        top.val * wordBase ^ limbCount =
      limbsToNat (MacCampaign.Array.make (Usize.ofNat 6)
        [low1, low2, low3, low4, low5, top]) * wordBase := by
  simp [lowListToNat, limbsToNat, prefixToNat, limb, limbWord,
    MacCampaign.Array.make, limbCount, hlow0]
  ring

/-- A completed six-step MAC chain and its shifted lows give the exact round equation. -/
theorem macChainInvariant_roundEquation (r a output : LimbArray) (b k : Nat)
    (state : MacChainState)
    (hinvariant : macChainInvariant r a b k state)
    (hcount : state.count = limbCount)
    (houtput : lowListToNat state.reductionLows +
        (state.productCarry + state.reductionCarry) * wordBase ^ limbCount =
      limbsToNat output * wordBase) :
    limbsToNat output * wordBase =
      limbsToNat r + b * limbsToNat a + k * Ipp.Bls12377.baseModulus := by
  have hequation := hinvariant.2.2.2.2.2
  rw [hcount] at hequation
  change limbsToNat r + b * limbsToNat a +
      k * limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS =
    lowListToNat state.reductionLows +
      (state.productCarry + state.reductionCarry) * wordBase ^ limbCount
    at hequation
  rw [modulus_limbsToNat] at hequation
  exact (hequation.trans houtput).symm

theorem limb_lt_wordBase (value : LimbArray) (i : Fin limbCount) :
    limb value i < wordBase := by
  simpa [limb, MacCampaign.u64Base, wordBase] using (limbWord value i).isLt

/-- One exact CIOS round equation advances the outer invariant. -/
theorem roundInvariant_step_of_equation (a b r output : LimbArray)
    (index : Nat) (hindex : index < limbCount) (k : Nat)
    (hinvariant : roundInvariant a b (index, r))
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hk : k < wordBase)
    (hequation : limbsToNat output * wordBase =
      limbsToNat r + limb b ⟨index, hindex⟩ * limbsToNat a +
        k * Ipp.Bls12377.baseModulus) :
    roundInvariant a b (index + 1, output) := by
  rcases hinvariant with ⟨hindexLe, hr, hmod⟩
  refine ⟨by omega, ?_, ?_⟩
  · exact roundEquation_output_lt
      (limbsToNat r) (limbsToNat a) (limb b ⟨index, hindex⟩) k
      (limbsToNat output) hr ha (limb_lt_wordBase b ⟨index, hindex⟩) hk
      hequation
  · rw [prefixToNat_succ b hindex]
    calc
      limbsToNat output * wordBase ^ (index + 1) =
          (limbsToNat output * wordBase) * wordBase ^ index := by
        rw [pow_succ]
        ring
      _ = (limbsToNat r + limb b ⟨index, hindex⟩ * limbsToNat a +
          k * Ipp.Bls12377.baseModulus) * wordBase ^ index := by
        rw [hequation]
      _ = Ipp.Bls12377.baseModulus * (k * wordBase ^ index) +
          (limbsToNat r + limb b ⟨index, hindex⟩ * limbsToNat a) *
            wordBase ^ index := by
        ring
      _ ≡ (limbsToNat r + limb b ⟨index, hindex⟩ * limbsToNat a) *
          wordBase ^ index [MOD Ipp.Bls12377.baseModulus] :=
        Nat.ModEq.modulus_mul_add
      _ = limbsToNat r * wordBase ^ index +
          (limb b ⟨index, hindex⟩ * wordBase ^ index) * limbsToNat a := by
        ring
      _ ≡ prefixToNat b index * limbsToNat a +
          (limb b ⟨index, hindex⟩ * wordBase ^ index) * limbsToNat a
          [MOD Ipp.Bls12377.baseModulus] :=
        hmod.add (Nat.ModEq.refl _)
      _ = (prefixToNat b index +
          limb b ⟨index, hindex⟩ * wordBase ^ index) * limbsToNat a := by
        ring

end Ipp.Extracted.ArkworksFqMul

#print axioms Ipp.Extracted.ArkworksFqMul.macModel_spec
#print axioms Ipp.Extracted.ArkworksFqMul.extracted_mac_eq_model
#print axioms Ipp.Extracted.ArkworksFqMul.extracted_mac_spec
#print axioms Ipp.Extracted.ArkworksFqMul.macChainInvariant_step
#print axioms Ipp.Extracted.ArkworksFqMul.extracted_macChainInvariant_step
#print axioms Ipp.Extracted.ArkworksFqMul.reductionFactor_modEq_zero
#print axioms Ipp.Extracted.ArkworksFqMul.macChainInvariant_topCarry_lt
#print axioms Ipp.Extracted.ArkworksFqMul.macChainInvariant_roundEquation
#print axioms Ipp.Extracted.ArkworksFqMul.roundInvariant_step_of_equation
