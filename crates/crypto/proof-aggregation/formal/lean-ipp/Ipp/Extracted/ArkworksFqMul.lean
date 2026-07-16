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

set_option maxRecDepth 8192

private theorem continue_of_ok {A B : Type} {action : Result A} {value : A}
    (haction : action = .ok value) (next : A → Result B) :
    action >>= next = next value := by
  rw [haction]
  rfl

private def roundTrace (r a : LimbArray) (b : MacCampaign.U64)
    (output : LimbArray) : Prop :=
  ∃ (k : MacCampaign.U64)
    (p0 d0 p1 d1 p2 d2 p3 d3 p4 d4 p5 d5 : ExtractedMac)
    (top : MacCampaign.U64),
    k = MacCampaign.wrappingMul64 p0.low
      ark_ip_proofs.s3_07_arkworks_fq_spike.INV ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mac
      (limbWord r ⟨0, by decide⟩) (limbWord a ⟨0, by decide⟩) b
      (MacCampaign.U64.ofNat 0) = .ok p0 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mac p0.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩)
      (MacCampaign.U64.ofNat 0) = .ok d0 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mac
      (limbWord r ⟨1, by decide⟩) (limbWord a ⟨1, by decide⟩) b p0.carry = .ok p1 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mac p1.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩)
      d0.carry = .ok d1 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mac
      (limbWord r ⟨2, by decide⟩) (limbWord a ⟨2, by decide⟩) b p1.carry = .ok p2 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mac p2.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩)
      d1.carry = .ok d2 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mac
      (limbWord r ⟨3, by decide⟩) (limbWord a ⟨3, by decide⟩) b p2.carry = .ok p3 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mac p3.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩)
      d2.carry = .ok d3 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mac
      (limbWord r ⟨4, by decide⟩) (limbWord a ⟨4, by decide⟩) b p3.carry = .ok p4 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mac p4.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩)
      d3.carry = .ok d4 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mac
      (limbWord r ⟨5, by decide⟩) (limbWord a ⟨5, by decide⟩) b p4.carry = .ok p5 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.mac p5.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩)
      d4.carry = .ok d5 ∧
    MacCampaign.add64 p5.carry d5.carry = .ok top ∧
    output = MacCampaign.Array.make (Usize.ofNat 6)
      [d1.low, d2.low, d3.low, d4.low, d5.low, top]

set_option maxHeartbeats 1000000 in
theorem extracted_round_trace (r a : LimbArray) (b : MacCampaign.U64)
    (output : LimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.round r a b = .ok output) :
    roundTrace r a b output := by
  obtain ⟨p0, hp0, _⟩ := extracted_mac_spec
    (limbWord r ⟨0, by decide⟩) (limbWord a ⟨0, by decide⟩) b
    (MacCampaign.U64.ofNat 0)
  let k := MacCampaign.wrappingMul64 p0.low
    ark_ip_proofs.s3_07_arkworks_fq_spike.INV
  have hkexec : lift (MacCampaign.wrappingMul64 p0.low
      ark_ip_proofs.s3_07_arkworks_fq_spike.INV) = .ok k := by rfl
  obtain ⟨d0, hd0, _⟩ := extracted_mac_spec p0.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩)
    (MacCampaign.U64.ofNat 0)
  obtain ⟨p1, hp1, _⟩ := extracted_mac_spec
    (limbWord r ⟨1, by decide⟩) (limbWord a ⟨1, by decide⟩) b p0.carry
  obtain ⟨d1, hd1, _⟩ := extracted_mac_spec p1.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩) d0.carry
  obtain ⟨p2, hp2, _⟩ := extracted_mac_spec
    (limbWord r ⟨2, by decide⟩) (limbWord a ⟨2, by decide⟩) b p1.carry
  obtain ⟨d2, hd2, _⟩ := extracted_mac_spec p2.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩) d1.carry
  obtain ⟨p3, hp3, _⟩ := extracted_mac_spec
    (limbWord r ⟨3, by decide⟩) (limbWord a ⟨3, by decide⟩) b p2.carry
  obtain ⟨d3, hd3, _⟩ := extracted_mac_spec p3.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩) d2.carry
  obtain ⟨p4, hp4, _⟩ := extracted_mac_spec
    (limbWord r ⟨4, by decide⟩) (limbWord a ⟨4, by decide⟩) b p3.carry
  obtain ⟨d4, hd4, _⟩ := extracted_mac_spec p4.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩) d3.carry
  obtain ⟨p5, hp5, _⟩ := extracted_mac_spec
    (limbWord r ⟨5, by decide⟩) (limbWord a ⟨5, by decide⟩) b p4.carry
  obtain ⟨d5, hd5, _⟩ := extracted_mac_spec p5.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩) d4.carry
  have hrun := hexec
  change (MacCampaign.Array.index_usize r (Usize.ofNat 0) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord r ⟨0, by decide⟩) _] at hrun
  change (MacCampaign.Array.index_usize a (Usize.ofNat 0) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord a ⟨0, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.mac
    (limbWord r ⟨0, by decide⟩) (limbWord a ⟨0, by decide⟩) b
    (MacCampaign.U64.ofNat 0) >>= _) = .ok output at hrun
  rw [continue_of_ok hp0 _] at hrun
  change (lift (MacCampaign.wrappingMul64 p0.low
    ark_ip_proofs.s3_07_arkworks_fq_spike.INV) >>= _) = .ok output at hrun
  rw [continue_of_ok hkexec _] at hrun
  change (MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS (Usize.ofNat 0) >>= _) =
      .ok output at hrun
  rw [continue_of_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.mac p0.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩)
    (MacCampaign.U64.ofNat 0) >>= _) = .ok output at hrun
  rw [continue_of_ok hd0 _] at hrun
  change (MacCampaign.Array.index_usize r (Usize.ofNat 1) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord r ⟨1, by decide⟩) _] at hrun
  change (MacCampaign.Array.index_usize a (Usize.ofNat 1) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord a ⟨1, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.mac
    (limbWord r ⟨1, by decide⟩) (limbWord a ⟨1, by decide⟩) b p0.carry >>= _) =
      .ok output at hrun
  rw [continue_of_ok hp1 _] at hrun
  change (MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS (Usize.ofNat 1) >>= _) =
      .ok output at hrun
  rw [continue_of_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.mac p1.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩)
    d0.carry >>= _) = .ok output at hrun
  rw [continue_of_ok hd1 _] at hrun
  change (MacCampaign.Array.index_usize r (Usize.ofNat 2) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord r ⟨2, by decide⟩) _] at hrun
  change (MacCampaign.Array.index_usize a (Usize.ofNat 2) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord a ⟨2, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.mac
    (limbWord r ⟨2, by decide⟩) (limbWord a ⟨2, by decide⟩) b p1.carry >>= _) =
      .ok output at hrun
  rw [continue_of_ok hp2 _] at hrun
  change (MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS (Usize.ofNat 2) >>= _) =
      .ok output at hrun
  rw [continue_of_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.mac p2.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩)
    d1.carry >>= _) = .ok output at hrun
  rw [continue_of_ok hd2 _] at hrun
  change (MacCampaign.Array.index_usize r (Usize.ofNat 3) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord r ⟨3, by decide⟩) _] at hrun
  change (MacCampaign.Array.index_usize a (Usize.ofNat 3) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord a ⟨3, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.mac
    (limbWord r ⟨3, by decide⟩) (limbWord a ⟨3, by decide⟩) b p2.carry >>= _) =
      .ok output at hrun
  rw [continue_of_ok hp3 _] at hrun
  change (MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS (Usize.ofNat 3) >>= _) =
      .ok output at hrun
  rw [continue_of_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.mac p3.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩)
    d2.carry >>= _) = .ok output at hrun
  rw [continue_of_ok hd3 _] at hrun
  change (MacCampaign.Array.index_usize r (Usize.ofNat 4) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord r ⟨4, by decide⟩) _] at hrun
  change (MacCampaign.Array.index_usize a (Usize.ofNat 4) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord a ⟨4, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.mac
    (limbWord r ⟨4, by decide⟩) (limbWord a ⟨4, by decide⟩) b p3.carry >>= _) =
      .ok output at hrun
  rw [continue_of_ok hp4 _] at hrun
  change (MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS (Usize.ofNat 4) >>= _) =
      .ok output at hrun
  rw [continue_of_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.mac p4.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩)
    d3.carry >>= _) = .ok output at hrun
  rw [continue_of_ok hd4 _] at hrun
  change (MacCampaign.Array.index_usize r (Usize.ofNat 5) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord r ⟨5, by decide⟩) _] at hrun
  change (MacCampaign.Array.index_usize a (Usize.ofNat 5) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord a ⟨5, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.mac
    (limbWord r ⟨5, by decide⟩) (limbWord a ⟨5, by decide⟩) b p4.carry >>= _) =
      .ok output at hrun
  rw [continue_of_ok hp5 _] at hrun
  change (MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS (Usize.ofNat 5) >>= _) =
      .ok output at hrun
  rw [continue_of_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fq_spike.mac p5.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩)
    d4.carry >>= _) = .ok output at hrun
  rw [continue_of_ok hd5 _] at hrun
  change (MacCampaign.add64 p5.carry d5.carry >>= _) = .ok output at hrun
  cases hadd : MacCampaign.add64 p5.carry d5.carry with
  | ok top =>
      rw [continue_of_ok hadd _] at hrun
      simp only [Result.ok.injEq] at hrun
      exact ⟨k, p0, d0, p1, d1, p2, d2, p3, d3, p4, d4, p5, d5,
        top, rfl, hp0, hd0, hp1, hd1, hp2, hd2, hp3, hd3, hp4, hd4,
        hp5, hd5, hadd, hrun.symm⟩
  | fail error =>
      rw [hadd] at hrun
      contradiction
  | div =>
      rw [hadd] at hrun
      contradiction

/- The extracted bind chain needs a finite raised elaboration bound; the
one-bind continuation lemmas above keep the resulting proof term linear. -/
set_option maxHeartbeats 1000000 in
theorem extracted_round_spec (r a : LimbArray) (b : MacCampaign.U64)
    (output : LimbArray)
    (hr : limbsToNat r < 2 * Ipp.Bls12377.baseModulus)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.round r a b = .ok output) :
    ∃ k, k < wordBase ∧
      limbsToNat output * wordBase =
        limbsToNat r + b.val * limbsToNat a +
          k * Ipp.Bls12377.baseModulus ∧
      limbsToNat output * wordBase <
        2 * Ipp.Bls12377.baseModulus * wordBase := by
  obtain ⟨k, p0, d0, p1, d1, p2, d2, p3, d3, p4, d4, p5, d5,
      top, hk, hp0, hd0, hp1, hd1, hp2, hd2, hp3, hd3, hp4, hd4,
      hp5, hd5, hadd, hout⟩ := extracted_round_trace r a b output hexec
  let s0 : MacChainState :=
    { count := 0, productCarry := 0, reductionCarry := 0,
      reductionLows := [] }
  let s1 : MacChainState :=
    { count := 1, productCarry := p0.carry.val,
      reductionCarry := d0.carry.val, reductionLows := [d0.low.val] }
  let s2 : MacChainState :=
    { count := 2, productCarry := p1.carry.val,
      reductionCarry := d1.carry.val,
      reductionLows := [d0.low.val, d1.low.val] }
  let s3 : MacChainState :=
    { count := 3, productCarry := p2.carry.val,
      reductionCarry := d2.carry.val,
      reductionLows := [d0.low.val, d1.low.val, d2.low.val] }
  let s4 : MacChainState :=
    { count := 4, productCarry := p3.carry.val,
      reductionCarry := d3.carry.val,
      reductionLows := [d0.low.val, d1.low.val, d2.low.val, d3.low.val] }
  let s5 : MacChainState :=
    { count := 5, productCarry := p4.carry.val,
      reductionCarry := d4.carry.val,
      reductionLows :=
        [d0.low.val, d1.low.val, d2.low.val, d3.low.val, d4.low.val] }
  let s6 : MacChainState :=
    { count := 6, productCarry := p5.carry.val,
      reductionCarry := d5.carry.val,
      reductionLows := [d0.low.val, d1.low.val, d2.low.val,
        d3.low.val, d4.low.val, d5.low.val] }
  have hi0 : macChainInvariant r a b.val k.val s0 := by
    simpa [s0] using macChainInvariant_initial r a b.val k.val
  have hi1 : macChainInvariant r a b.val k.val s1 := by
    simpa [s0, s1] using extracted_macChainInvariant_step
      r a b k s0 (by simp [s0, limbCount]) p0 d0 hp0 hd0 hi0
  have hi2 : macChainInvariant r a b.val k.val s2 := by
    simpa [s1, s2] using extracted_macChainInvariant_step
      r a b k s1 (by simp [s1, limbCount]) p1 d1 (by
        simpa [s1] using hp1) (by simpa [s1] using hd1) hi1
  have hi3 : macChainInvariant r a b.val k.val s3 := by
    simpa [s2, s3] using extracted_macChainInvariant_step
      r a b k s2 (by simp [s2, limbCount]) p2 d2 (by
        simpa [s2] using hp2) (by simpa [s2] using hd2) hi2
  have hi4 : macChainInvariant r a b.val k.val s4 := by
    simpa [s3, s4] using extracted_macChainInvariant_step
      r a b k s3 (by simp [s3, limbCount]) p3 d3 (by
        simpa [s3] using hp3) (by simpa [s3] using hd3) hi3
  have hi5 : macChainInvariant r a b.val k.val s5 := by
    simpa [s4, s5] using extracted_macChainInvariant_step
      r a b k s4 (by simp [s4, limbCount]) p4 d4 (by
        simpa [s4] using hp4) (by simpa [s4] using hd4) hi4
  have hi6 : macChainInvariant r a b.val k.val s6 := by
    simpa [s5, s6] using extracted_macChainInvariant_step
      r a b k s5 (by simp [s5, limbCount]) p5 d5 (by
        simpa [s5] using hp5) (by simpa [s5] using hd5) hi5
  have hkval : k.val = p0.low.val *
      ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val % wordBase := by
    rw [hk]
    simp [MacCampaign.wrappingMul64, MacCampaign.U64.ofNat,
      MacCampaign.u64Base, wordBase]
  have hd0low : d0.low.val = 0 := by
    apply firstReductionLow_eq_zero
      { low := p0.low.val, carry := p0.carry.val }
      { low := d0.low.val, carry := d0.carry.val } k.val hkval
    have hspec := extracted_mac_result_spec p0.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
        ⟨0, by decide⟩) (MacCampaign.U64.ofNat 0) d0 hd0
    simpa [limb] using hspec
  have htop : p5.carry.val + d5.carry.val < wordBase :=
    macChainInvariant_topCarry_lt r a b.val k.val s6 hi6
      (by simp [s6, limbCount]) hr ha (by simpa [wordBase,
        MacCampaign.u64Base] using b.isLt) (by simpa [wordBase,
        MacCampaign.u64Base] using k.isLt)
  have hsum : p5.carry.val + d5.carry.val < MacCampaign.u64Base := by
    simpa [MacCampaign.u64Base, wordBase] using htop
  have haddVal : top.val = p5.carry.val + d5.carry.val := by
    unfold MacCampaign.add64 at hadd
    rw [dif_pos hsum] at hadd
    exact (congrArg MacCampaign.U64.val (Result.ok.inj hadd)).symm
  have hshift : lowListToNat s6.reductionLows +
      (s6.productCarry + s6.reductionCarry) * wordBase ^ limbCount =
      limbsToNat output * wordBase := by
    rw [hout]
    simpa [s6, haddVal] using shiftedReductionLows_eq
      d0.low d1.low d2.low d3.low d4.low d5.low top hd0low
  have heq : limbsToNat output * wordBase =
      limbsToNat r + b.val * limbsToNat a +
        k.val * Ipp.Bls12377.baseModulus :=
    macChainInvariant_roundEquation r a output b.val k.val s6 hi6
      (by simp [s6, limbCount]) hshift
  refine ⟨k.val, by simpa [wordBase, MacCampaign.u64Base] using k.isLt,
    heq, ?_⟩
  exact roundEquation_bound (limbsToNat r) (limbsToNat a) b.val k.val
    (limbsToNat output) hr ha (by simpa [wordBase,
      MacCampaign.u64Base] using b.isLt) (by simpa [wordBase,
      MacCampaign.u64Base] using k.isLt) heq

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


namespace Ipp.Extracted.ArkworksFqMul

open Aeneas Aeneas.Std Result

private theorem continue_after_ok {α β : Type} {action : Result α}
    {value : α} {next : α → Result β} {output : β}
    (haction : action = .ok value)
    (hexec : action >>= next = .ok output) :
    next value = .ok output := by
  rw [haction] at hexec
  exact hexec

def sbbModel (left right borrow : MacCampaign.U64) :
    MacCampaign.U64 × MacCampaign.U64 :=
  (MacCampaign.U64.ofNat (left.val + wordBase - right.val - borrow.val),
    MacCampaign.U64.ofNat (if left.val < right.val + borrow.val then 1 else 0))

private theorem sbb_u64_eq_of_val_eq (left right : MacCampaign.U64)
    (h : left.val = right.val) : left = right := by
  cases left
  cases right
  simp_all

theorem extracted_sbb_eq_model (left right borrow : MacCampaign.U64)
    (hborrow : borrow.val ≤ 1) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.sbb left right borrow =
      .ok (sbbModel left right borrow) := by
  have hadd : right.val + borrow.val < MacCampaign.u128Base := by
    have hl := left.isLt
    have hr := right.isLt
    have hb := borrow.isLt
    simp only [MacCampaign.u64Base] at hl hr hb
    simp only [MacCampaign.u128Base]
    omega
  have hshift : (MacCampaign.I32.ofNat 127).val < 128 := by decide
  have hshiftValue : (MacCampaign.I32.ofNat 127).val = 127 := by decide
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.sbb, lift,
    Result.bind_ok, MacCampaign.castU128, MacCampaign.add128, dif_pos hadd,
    MacCampaign.wrappingSub128, MacCampaign.castU64,
    MacCampaign.shr128, if_pos hshift]
  simp only [sbbModel]
  congr 1
  apply Prod.ext
  · apply sbb_u64_eq_of_val_eq
    simp only [MacCampaign.U64.ofNat]
    by_cases hunder : left.val < right.val + borrow.val
    · have hl := left.isLt
      have hr := right.isLt
      simp only [MacCampaign.u64Base] at hl hr
      simp only [MacCampaign.U128.ofNat, MacCampaign.u128Base,
        MacCampaign.u64Base, wordBase]
      omega
    · have hl := left.isLt
      have hr := right.isLt
      simp only [MacCampaign.u64Base] at hl hr
      simp only [MacCampaign.U128.ofNat, MacCampaign.u128Base,
        MacCampaign.u64Base, wordBase]
      omega
  · apply sbb_u64_eq_of_val_eq
    by_cases hunder : left.val < right.val + borrow.val
    · simp only [hunder, if_true, MacCampaign.U64.ofNat,
        MacCampaign.U128.ofNat, MacCampaign.u128Base,
        MacCampaign.u64Base, hshiftValue]
      have hl := left.isLt
      have hr := right.isLt
      simp only [MacCampaign.u64Base] at hl hr
      omega
    · simp only [hunder, if_false, MacCampaign.U64.ofNat,
        MacCampaign.U128.ofNat, MacCampaign.u128Base,
        MacCampaign.u64Base, hshiftValue]
      have hl := left.isLt
      have hr := right.isLt
      simp only [MacCampaign.u64Base] at hl hr
      omega

structure SbbSpec (left right borrow low nextBorrow : Nat) : Prop where
  borrow_le : borrow ≤ 1
  nextBorrow_le : nextBorrow ≤ 1
  equation : left + wordBase * nextBorrow = right + borrow + low

theorem extracted_sbb_spec (left right borrow : MacCampaign.U64)
    (output : MacCampaign.U64 × MacCampaign.U64)
    (hborrow : borrow.val ≤ 1)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sbb left right borrow =
      .ok output) :
    SbbSpec left.val right.val borrow.val output.1.val output.2.val := by
  rw [extracted_sbb_eq_model left right borrow hborrow] at hexec
  cases hexec
  refine ⟨hborrow, ?_, ?_⟩
  · simp only [sbbModel, MacCampaign.U64.ofNat]
    split <;> simp [MacCampaign.u64Base]
  · simp only [sbbModel, MacCampaign.U64.ofNat]
    have hl := left.isLt
    have hr := right.isLt
    simp only [MacCampaign.u64Base] at hl hr
    by_cases hunder : left.val < right.val + borrow.val
    · simp only [hunder, if_true, MacCampaign.u64Base, wordBase]
      omega
    · simp only [hunder, if_false, MacCampaign.u64Base, wordBase]
      omega

theorem prefixToNat_lt_pow (value : LimbArray) (count : Nat)
    (hcount : count ≤ limbCount) :
    prefixToNat value count < wordBase ^ count := by
  induction count with
  | zero => simp
  | succ count ih =>
      have hlt : count < limbCount := by omega
      rw [prefixToNat_succ value hlt, pow_succ]
      have hp := ih (by omega)
      have hl := limb_lt_wordBase value ⟨count, hlt⟩
      have hpow : 0 < wordBase ^ count := pow_pos wordBase_pos count
      nlinarith

theorem limbsToNat_lt_radix (value : LimbArray) :
    limbsToNat value < wordBase ^ limbCount := by
  exact prefixToNat_lt_pow value limbCount (by omega)

theorem limbsToNat_six (value : LimbArray) :
    limbsToNat value =
      limb value ⟨0, by decide⟩ +
      limb value ⟨1, by decide⟩ * wordBase +
      limb value ⟨2, by decide⟩ * wordBase ^ 2 +
      limb value ⟨3, by decide⟩ * wordBase ^ 3 +
      limb value ⟨4, by decide⟩ * wordBase ^ 4 +
      limb value ⟨5, by decide⟩ * wordBase ^ 5 := by
  simp [limbsToNat, prefixToNat, limbCount]

private theorem limbsToNat_make_six
    (x0 x1 x2 x3 x4 x5 : MacCampaign.U64) :
    limbsToNat (MacCampaign.Array.make (Usize.ofNat 6)
      [x0, x1, x2, x3, x4, x5]) =
      x0.val + x1.val * wordBase + x2.val * wordBase ^ 2 +
      x3.val * wordBase ^ 3 + x4.val * wordBase ^ 4 +
      x5.val * wordBase ^ 5 := by
  simp [limbsToNat, prefixToNat, limb, limbWord,
    MacCampaign.Array.make, limbCount]

private theorem sbb_telescope
    (x0 x1 x2 x3 x4 x5 q0 q1 q2 q3 q4 q5
      l0 l1 l2 l3 l4 l5 b1 b2 b3 b4 b5 b6 : Nat)
    (h0 : x0 + wordBase * b1 = q0 + l0)
    (h1 : x1 + wordBase * b2 = q1 + b1 + l1)
    (h2 : x2 + wordBase * b3 = q2 + b2 + l2)
    (h3 : x3 + wordBase * b4 = q3 + b3 + l3)
    (h4 : x4 + wordBase * b5 = q4 + b4 + l4)
    (h5 : x5 + wordBase * b6 = q5 + b5 + l5) :
    x0 + x1 * wordBase + x2 * wordBase ^ 2 +
        x3 * wordBase ^ 3 + x4 * wordBase ^ 4 + x5 * wordBase ^ 5 +
          b6 * wordBase ^ 6 =
      q0 + q1 * wordBase + q2 * wordBase ^ 2 +
        q3 * wordBase ^ 3 + q4 * wordBase ^ 4 + q5 * wordBase ^ 5 +
          (l0 + l1 * wordBase + l2 * wordBase ^ 2 +
            l3 * wordBase ^ 3 + l4 * wordBase ^ 4 + l5 * wordBase ^ 5) := by
  norm_num [wordBase] at h0 h1 h2 h3 h4 h5 ⊢
  omega

def geqPrefix (value modulus : LimbArray) : Nat → Bool
  | 0 => true
  | count + 1 =>
      if hcount : count < limbCount then
        let left := limbWord value ⟨count, hcount⟩
        let right := limbWord modulus ⟨count, hcount⟩
        if left > right then true
        else if left = right then geqPrefix value modulus count
        else false
      else true

theorem geqPrefix_spec (value modulus : LimbArray) (count : Nat)
    (hcount : count ≤ limbCount) :
    geqPrefix value modulus count = true ↔
      prefixToNat modulus count ≤ prefixToNat value count := by
  induction count with
  | zero => simp [geqPrefix]
  | succ count ih =>
      have hlt : count < limbCount := by omega
      rw [prefixToNat_succ value hlt, prefixToNat_succ modulus hlt]
      simp only [geqPrefix, dif_pos hlt]
      let left := limbWord value ⟨count, hlt⟩
      let right := limbWord modulus ⟨count, hlt⟩
      change (if left > right then true
        else if left = right then geqPrefix value modulus count
        else false) = true ↔ _
      by_cases hgt : left > right
      · rw [if_pos hgt]
        simp only [true_iff]
        have hvp := prefixToNat_lt_pow value count (by omega)
        have hmp := prefixToNat_lt_pow modulus count (by omega)
        have hpow : 0 < wordBase ^ count := pow_pos wordBase_pos count
        have hdigits : limb modulus ⟨count, hlt⟩ + 1 ≤
            limb value ⟨count, hlt⟩ := by
          change right.val + 1 ≤ left.val
          exact hgt
        have hmul := Nat.mul_le_mul_right (wordBase ^ count) hdigits
        nlinarith
      · rw [if_neg hgt]
        by_cases heq : left = right
        · rw [if_pos heq]
          have hdigit : limb value ⟨count, hlt⟩ =
              limb modulus ⟨count, hlt⟩ := by
            change left.val = right.val
            exact congrArg MacCampaign.U64.val heq
          rw [hdigit]
          simpa only [Nat.add_le_add_iff_right] using ih (by omega)
        · rw [if_neg heq]
          simp only [Bool.false_eq_true, false_iff, not_le]
          have hvp := prefixToNat_lt_pow value count (by omega)
          have hmp := prefixToNat_lt_pow modulus count (by omega)
          have hpow : 0 < wordBase ^ count := pow_pos wordBase_pos count
          have hne : left.val ≠ right.val := by
            intro hval
            exact heq (sbb_u64_eq_of_val_eq left right hval)
          have hdigits : limb value ⟨count, hlt⟩ + 1 ≤
              limb modulus ⟨count, hlt⟩ := by
            change left.val + 1 ≤ right.val
            change ¬right.val < left.val at hgt
            omega
          have hmul := Nat.mul_le_mul_right (wordBase ^ count) hdigits
          nlinarith

set_option maxHeartbeats 1000000 in
theorem extracted_geq_modulus_spec (value : LimbArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.geq_modulus value =
      .ok (geqPrefix value
        ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount) := by
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.geq_modulus,
    array_index_limbWord value ⟨5, by decide⟩,
    array_index_limbWord value ⟨4, by decide⟩,
    array_index_limbWord value ⟨3, by decide⟩,
    array_index_limbWord value ⟨2, by decide⟩,
    array_index_limbWord value ⟨1, by decide⟩,
    array_index_limbWord value ⟨0, by decide⟩,
    array_index_limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ⟨5, by decide⟩,
    array_index_limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ⟨4, by decide⟩,
    array_index_limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ⟨3, by decide⟩,
    array_index_limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ⟨2, by decide⟩,
    array_index_limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ⟨1, by decide⟩,
    array_index_limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ⟨0, by decide⟩,
    Result.bind_ok]
  simp [geqPrefix, limbCount]
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all

  let left := limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
    ⟨0, by decide⟩
  let right := limbWord value ⟨0, by decide⟩
  change decide (left ≤ right) = (decide (left < right) || decide (right = left))
  by_cases hlt : left < right
  · have hle : left ≤ right := by
      change left.val ≤ right.val
      exact Nat.le_of_lt hlt
    simp [hlt, hle]
  · by_cases heq : right = left
    · have hself : left ≤ left := by
        change left.val ≤ left.val
        omega
      simp [heq, hself]
    · have hneVal : right.val ≠ left.val := by
        intro hval
        exact heq (sbb_u64_eq_of_val_eq right left hval)
      have hnle : ¬left ≤ right := by
        change ¬left.val ≤ right.val
        change ¬left.val < right.val at hlt
        omega
      simp [hlt, heq, hnle]

set_option maxRecDepth 32768 in
private theorem subtract_output_of_geq
    (value output : LimbArray)
    (o0 o1 o2 o3 o4 o5 : MacCampaign.U64 × MacCampaign.U64)
    (hge : geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = true)
    (h0 : ark_ip_proofs.s3_07_arkworks_fq_spike.sbb
      (limbWord value ⟨0, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩)
      (MacCampaign.U64.ofNat 0) = .ok o0)
    (h1 : ark_ip_proofs.s3_07_arkworks_fq_spike.sbb
      (limbWord value ⟨1, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩)
      o0.2 = .ok o1)
    (h2 : ark_ip_proofs.s3_07_arkworks_fq_spike.sbb
      (limbWord value ⟨2, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩)
      o1.2 = .ok o2)
    (h3 : ark_ip_proofs.s3_07_arkworks_fq_spike.sbb
      (limbWord value ⟨3, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩)
      o2.2 = .ok o3)
    (h4 : ark_ip_proofs.s3_07_arkworks_fq_spike.sbb
      (limbWord value ⟨4, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩)
      o3.2 = .ok o4)
    (h5 : ark_ip_proofs.s3_07_arkworks_fq_spike.sbb
      (limbWord value ⟨5, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩)
      o4.2 = .ok o5)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.subtract_modulus value =
      .ok output) :
    output = MacCampaign.Array.make (Usize.ofNat 6)
      [o0.1, o1.1, o2.1, o3.1, o4.1, o5.1] := by
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.subtract_modulus] at hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.geq_modulus value >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok (extracted_geq_modulus_spec value) hrun
  simp only [hge, if_true] at hrun
  change MacCampaign.Array.index_usize value (Usize.ofNat 0) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord value ⟨0, by decide⟩) hrun
  change MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS (Usize.ofNat 0) >>= _ =
      .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.sbb
    (limbWord value ⟨0, by decide⟩)
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩)
    (MacCampaign.U64.ofNat 0) >>= _ = .ok output at hrun
  have hrun := continue_after_ok h0 hrun
  change MacCampaign.Array.index_usize value (Usize.ofNat 1) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord value ⟨1, by decide⟩) hrun
  change MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS (Usize.ofNat 1) >>= _ =
      .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.sbb
    (limbWord value ⟨1, by decide⟩)
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩) o0.2
      >>= _ = .ok output at hrun
  have hrun := continue_after_ok h1 hrun
  change MacCampaign.Array.index_usize value (Usize.ofNat 2) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord value ⟨2, by decide⟩) hrun
  change MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS (Usize.ofNat 2) >>= _ =
      .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.sbb
    (limbWord value ⟨2, by decide⟩)
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩) o1.2
      >>= _ = .ok output at hrun
  have hrun := continue_after_ok h2 hrun
  change MacCampaign.Array.index_usize value (Usize.ofNat 3) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord value ⟨3, by decide⟩) hrun
  change MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS (Usize.ofNat 3) >>= _ =
      .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.sbb
    (limbWord value ⟨3, by decide⟩)
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩) o2.2
      >>= _ = .ok output at hrun
  have hrun := continue_after_ok h3 hrun
  change MacCampaign.Array.index_usize value (Usize.ofNat 4) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord value ⟨4, by decide⟩) hrun
  change MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS (Usize.ofNat 4) >>= _ =
      .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.sbb
    (limbWord value ⟨4, by decide⟩)
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩) o3.2
      >>= _ = .ok output at hrun
  have hrun := continue_after_ok h4 hrun
  change MacCampaign.Array.index_usize value (Usize.ofNat 5) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord value ⟨5, by decide⟩) hrun
  change MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS (Usize.ofNat 5) >>= _ =
      .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.sbb
    (limbWord value ⟨5, by decide⟩)
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩) o4.2
      >>= _ = .ok output at hrun
  have hrun := continue_after_ok h5 hrun
  simpa only [Result.ok.injEq] using hrun.symm

private theorem subtract_output_of_lt
    (value output : LimbArray)
    (hlt : geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = false)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.subtract_modulus value =
      .ok output) :
    output = value := by
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.subtract_modulus] at hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.geq_modulus value >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok (extracted_geq_modulus_spec value) hrun
  simp only [hlt, Bool.false_eq_true, if_false, Result.ok.injEq] at hrun
  exact hrun.symm



set_option maxRecDepth 32768 in
private theorem sbb_limbs_telescope
    (value output : LimbArray)
    (o0 o1 o2 o3 o4 o5 : MacCampaign.U64 × MacCampaign.U64)
    (houtput : output = MacCampaign.Array.make (Usize.ofNat 6)
      [o0.1, o1.1, o2.1, o3.1, o4.1, o5.1])
    (he0 : limb value ⟨0, by decide⟩ + wordBase * o0.2.val =
      limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩ +
        o0.1.val)
    (he1 : limb value ⟨1, by decide⟩ + wordBase * o1.2.val =
      limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩ +
        o0.2.val + o1.1.val)
    (he2 : limb value ⟨2, by decide⟩ + wordBase * o2.2.val =
      limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩ +
        o1.2.val + o2.1.val)
    (he3 : limb value ⟨3, by decide⟩ + wordBase * o3.2.val =
      limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩ +
        o2.2.val + o3.1.val)
    (he4 : limb value ⟨4, by decide⟩ + wordBase * o4.2.val =
      limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩ +
        o3.2.val + o4.1.val)
    (he5 : limb value ⟨5, by decide⟩ + wordBase * o5.2.val =
      limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩ +
        o4.2.val + o5.1.val) :
    limbsToNat value + o5.2.val * wordBase ^ limbCount =
      Ipp.Bls12377.baseModulus + limbsToNat output := by
  have hraw : limbsToNat value + o5.2.val * wordBase ^ limbCount =
      limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS +
        limbsToNat output := by
    rw [houtput, limbsToNat_six value,
      limbsToNat_six ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS,
      limbsToNat_make_six]
    simpa only [limbCount] using sbb_telescope
      (limb value ⟨0, by decide⟩) (limb value ⟨1, by decide⟩)
      (limb value ⟨2, by decide⟩) (limb value ⟨3, by decide⟩)
      (limb value ⟨4, by decide⟩) (limb value ⟨5, by decide⟩)
      (limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩)
      (limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩)
      (limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩)
      (limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩)
      (limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩)
      (limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩)
      o0.1.val o1.1.val o2.1.val o3.1.val o4.1.val o5.1.val
      o0.2.val o1.2.val o2.2.val o3.2.val o4.2.val o5.2.val
      he0 he1 he2 he3 he4 he5
  simpa [modulus_limbsToNat] using hraw

private theorem finalBorrow_eq_zero
    (value modulus output radix finalBorrow : Nat)
    (hge : modulus ≤ value)
    (htelescope : value + finalBorrow * radix = modulus + output)
    (houtput : output < radix)
    (hborrow : finalBorrow ≤ 1) :
    finalBorrow = 0 := by
  by_cases hzero : finalBorrow = 0
  · exact hzero
  have hone : finalBorrow = 1 := by omega
  simp only [hone, one_mul] at htelescope
  omega

private theorem output_lt_modulus
    (value modulus output : Nat)
    (hvalue : value < 2 * modulus)
    (hsubtract : modulus + output = value) :
    output < modulus := by
  omega

private theorem modEq_of_modulus_add_eq
    (modulus output value : Nat)
    (hsubtract : modulus + output = value) :
    Nat.ModEq modulus output value := by
  rw [← hsubtract]
  simpa only [Nat.mul_one] using (Nat.ModEq.modulus_mul_add
    (m := modulus) (a := 1) (b := output)).symm

private theorem subtract_spec_of_telescope
    (value modulus output radix finalBorrow : Nat)
    (hvalue : value < 2 * modulus)
    (hge : modulus ≤ value)
    (htelescope : value + finalBorrow * radix = modulus + output)
    (houtputRadix : output < radix)
    (hborrowLe : finalBorrow ≤ 1) :
    output < modulus ∧
    Nat.ModEq modulus output value ∧
    (modulus ≤ value → modulus + output = value) ∧
    (value < modulus → output = value) := by
  have hfinalBorrow : finalBorrow = 0 := finalBorrow_eq_zero
    value modulus output radix finalBorrow hge htelescope houtputRadix hborrowLe
  have hsubtract : modulus + output = value := by
    simpa only [hfinalBorrow, zero_mul, Nat.add_zero] using htelescope.symm
  have hout := output_lt_modulus value modulus output hvalue hsubtract
  have hmod := modEq_of_modulus_add_eq modulus output value hsubtract
  have habove : modulus ≤ value → modulus + output = value :=
    fun _ => hsubtract
  have hbelow : value < modulus → output = value := fun hlt =>
    False.elim (Nat.not_lt_of_ge hge hlt)
  exact ⟨hout, hmod, habove, hbelow⟩

set_option maxRecDepth 32768 in
set_option maxHeartbeats 1000000 in
theorem extracted_subtract_modulus_spec (value output : LimbArray)
    (hvalue : limbsToNat value < 2 * Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.subtract_modulus value =
      .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
    Nat.ModEq Ipp.Bls12377.baseModulus
      (limbsToNat output) (limbsToNat value) ∧
    (Ipp.Bls12377.baseModulus ≤ limbsToNat value →
      Ipp.Bls12377.baseModulus + limbsToNat output = limbsToNat value) ∧
    (limbsToNat value < Ipp.Bls12377.baseModulus →
      limbsToNat output = limbsToNat value) := by
  have hcompare := geqPrefix_spec value
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount (by omega)
  change geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = true ↔
    limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ≤
      limbsToNat value at hcompare
  rw [modulus_limbsToNat] at hcompare
  by_cases hge : Ipp.Bls12377.baseModulus ≤ limbsToNat value
  · have hbool : geqPrefix value
        ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = true :=
      hcompare.mpr hge
    let z := MacCampaign.U64.ofNat 0
    let o0 := sbbModel (limbWord value ⟨0, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩) z
    have hz : z.val ≤ 1 := by simp [z, MacCampaign.U64.ofNat]
    have ho0 := extracted_sbb_eq_model (limbWord value ⟨0, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩) z hz
    have hs0 := extracted_sbb_spec (limbWord value ⟨0, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩)
      z o0 hz (by simpa [o0] using ho0)
    let o1 := sbbModel (limbWord value ⟨1, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩) o0.2
    have ho1 := extracted_sbb_eq_model (limbWord value ⟨1, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩)
      o0.2 hs0.nextBorrow_le
    have hs1 := extracted_sbb_spec (limbWord value ⟨1, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩)
      o0.2 o1 hs0.nextBorrow_le (by simpa [o1] using ho1)
    let o2 := sbbModel (limbWord value ⟨2, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩) o1.2
    have ho2 := extracted_sbb_eq_model (limbWord value ⟨2, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩)
      o1.2 hs1.nextBorrow_le
    have hs2 := extracted_sbb_spec (limbWord value ⟨2, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩)
      o1.2 o2 hs1.nextBorrow_le (by simpa [o2] using ho2)
    let o3 := sbbModel (limbWord value ⟨3, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩) o2.2
    have ho3 := extracted_sbb_eq_model (limbWord value ⟨3, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩)
      o2.2 hs2.nextBorrow_le
    have hs3 := extracted_sbb_spec (limbWord value ⟨3, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩)
      o2.2 o3 hs2.nextBorrow_le (by simpa [o3] using ho3)
    let o4 := sbbModel (limbWord value ⟨4, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩) o3.2
    have ho4 := extracted_sbb_eq_model (limbWord value ⟨4, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩)
      o3.2 hs3.nextBorrow_le
    have hs4 := extracted_sbb_spec (limbWord value ⟨4, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩)
      o3.2 o4 hs3.nextBorrow_le (by simpa [o4] using ho4)
    let o5 := sbbModel (limbWord value ⟨5, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩) o4.2
    have ho5 := extracted_sbb_eq_model (limbWord value ⟨5, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩)
      o4.2 hs4.nextBorrow_le
    have hs5 := extracted_sbb_spec (limbWord value ⟨5, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩)
      o4.2 o5 hs4.nextBorrow_le (by simpa [o5] using ho5)
    let expected := MacCampaign.Array.make (Usize.ofNat 6)
      [o0.1, o1.1, o2.1, o3.1, o4.1, o5.1]

    have houtput : output = expected := by
      simpa only [expected, z] using subtract_output_of_geq
        value output o0 o1 o2 o3 o4 o5 hbool
        (by simpa only [z] using ho0) ho1 ho2 ho3 ho4 ho5 hexec
    have he0 : limb value ⟨0, by decide⟩ + wordBase * o0.2.val =
        limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩ +
          o0.1.val := by
      simpa [limb, z, MacCampaign.U64.ofNat] using hs0.equation
    have he1 : limb value ⟨1, by decide⟩ + wordBase * o1.2.val =
        limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩ +
          o0.2.val + o1.1.val := by
      simpa only [limb] using hs1.equation
    have he2 : limb value ⟨2, by decide⟩ + wordBase * o2.2.val =
        limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩ +
          o1.2.val + o2.1.val := by
      simpa only [limb] using hs2.equation
    have he3 : limb value ⟨3, by decide⟩ + wordBase * o3.2.val =
        limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩ +
          o2.2.val + o3.1.val := by
      simpa only [limb] using hs3.equation
    have he4 : limb value ⟨4, by decide⟩ + wordBase * o4.2.val =
        limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩ +
          o3.2.val + o4.1.val := by
      simpa only [limb] using hs4.equation
    have he5 : limb value ⟨5, by decide⟩ + wordBase * o5.2.val =
        limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩ +
          o4.2.val + o5.1.val := by
      simpa only [limb] using hs5.equation
    have htelescope := sbb_limbs_telescope
      value output o0 o1 o2 o3 o4 o5
      (by simpa only [expected] using houtput) he0 he1 he2 he3 he4 he5
    exact subtract_spec_of_telescope (limbsToNat value)
      Ipp.Bls12377.baseModulus (limbsToNat output)
      (wordBase ^ limbCount) o5.2.val hvalue hge htelescope
      (limbsToNat_lt_radix output) hs5.nextBorrow_le

  · have hbool : geqPrefix value
        ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = false := by
      cases hb : geqPrefix value
        ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount with
      | false => rfl
      | true => exact False.elim (hge (hcompare.mp hb))
    have hlt : limbsToNat value < Ipp.Bls12377.baseModulus := by omega
    have hout : output = value :=
      subtract_output_of_lt value output hbool hexec
    rw [hout]
    exact ⟨hlt, Nat.ModEq.refl _, fun h => by omega, fun _ => rfl⟩

end Ipp.Extracted.ArkworksFqMul

#print axioms Ipp.Extracted.ArkworksFqMul.extracted_sbb_spec
#print axioms Ipp.Extracted.ArkworksFqMul.extracted_geq_modulus_spec
#print axioms Ipp.Extracted.ArkworksFqMul.extracted_subtract_modulus_spec


namespace Ipp.Extracted.ArkworksFqMul

open Aeneas Aeneas.Std Result

private def zeroLimbs : LimbArray :=
  MacCampaign.Array.replicate (Usize.ofNat 6) (MacCampaign.U64.ofNat 0)

private theorem mul_continue_after_ok {α β : Type} {action : Result α}
    {value : α} {next : α → Result β} {output : β}
    (haction : action = .ok value)
    (hexec : action >>= next = .ok output) :
    next value = .ok output := by
  rw [haction] at hexec
  exact hexec

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value =>
      exact ⟨value, rfl, hexec⟩

private def mulTrace (a b output : LimbArray) : Prop :=
  ∃ r0 r1 r2 r3 r4 r5,
    ark_ip_proofs.s3_07_arkworks_fq_spike.round zeroLimbs a
      (limbWord b ⟨0, by decide⟩) = .ok r0 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.round r0 a
      (limbWord b ⟨1, by decide⟩) = .ok r1 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.round r1 a
      (limbWord b ⟨2, by decide⟩) = .ok r2 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.round r2 a
      (limbWord b ⟨3, by decide⟩) = .ok r3 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.round r3 a
      (limbWord b ⟨4, by decide⟩) = .ok r4 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.round r4 a
      (limbWord b ⟨5, by decide⟩) = .ok r5 ∧
    ark_ip_proofs.s3_07_arkworks_fq_spike.subtract_modulus r5 = .ok output

set_option maxHeartbeats 1000000 in
private theorem extracted_mul_trace (a b output : LimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.mul a b = .ok output) :
    mulTrace a b output := by
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.mul] at hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 0) >>= _ =
    .ok output at hrun
  have hrun := mul_continue_after_ok
    (array_index_limbWord b ⟨0, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.round zeroLimbs a
    (limbWord b ⟨0, by decide⟩) >>= _ = .ok output at hrun
  obtain ⟨r0, hr0, hrun⟩ := bind_eq_ok hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 1) >>= _ =
    .ok output at hrun
  have hrun := mul_continue_after_ok
    (array_index_limbWord b ⟨1, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.round r0 a
    (limbWord b ⟨1, by decide⟩) >>= _ = .ok output at hrun
  obtain ⟨r1, hr1, hrun⟩ := bind_eq_ok hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 2) >>= _ =
    .ok output at hrun
  have hrun := mul_continue_after_ok
    (array_index_limbWord b ⟨2, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.round r1 a
    (limbWord b ⟨2, by decide⟩) >>= _ = .ok output at hrun
  obtain ⟨r2, hr2, hrun⟩ := bind_eq_ok hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 3) >>= _ =
    .ok output at hrun
  have hrun := mul_continue_after_ok
    (array_index_limbWord b ⟨3, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.round r2 a
    (limbWord b ⟨3, by decide⟩) >>= _ = .ok output at hrun
  obtain ⟨r3, hr3, hrun⟩ := bind_eq_ok hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 4) >>= _ =
    .ok output at hrun
  have hrun := mul_continue_after_ok
    (array_index_limbWord b ⟨4, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.round r3 a
    (limbWord b ⟨4, by decide⟩) >>= _ = .ok output at hrun
  obtain ⟨r4, hr4, hrun⟩ := bind_eq_ok hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 5) >>= _ =
    .ok output at hrun
  have hrun := mul_continue_after_ok
    (array_index_limbWord b ⟨5, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.round r4 a
    (limbWord b ⟨5, by decide⟩) >>= _ = .ok output at hrun
  obtain ⟨r5, hr5, hrun⟩ := bind_eq_ok hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.subtract_modulus r5 >>= _ =
    .ok output at hrun
  obtain ⟨result, hsub, hreturn⟩ := bind_eq_ok hrun
  simp only [Result.ok.injEq] at hreturn
  subst result
  exact ⟨r0, r1, r2, r3, r4, r5, hr0, hr1, hr2, hr3, hr4, hr5, hsub⟩

private theorem zeroLimbs_value : limbsToNat zeroLimbs = 0 := by
  simp [zeroLimbs, limbsToNat, prefixToNat, limb, limbWord,
    MacCampaign.Array.replicate, limbCount, MacCampaign.U64.ofNat]

theorem extracted_mul_spec (a b output : LimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hb : limbsToNat b < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.mul a b = .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
    Nat.ModEq Ipp.Bls12377.baseModulus
      (limbsToNat output * wordBase ^ limbCount)
      (limbsToNat a * limbsToNat b) := by
  obtain ⟨r0, r1, r2, r3, r4, r5, hr0, hr1, hr2, hr3, hr4, hr5, hsub⟩ :=
    extracted_mul_trace a b output hexec
  have hi0 : roundInvariant a b (0, zeroLimbs) := by
    refine ⟨by simp [limbCount], ?_, ?_⟩
    · rw [zeroLimbs_value]
      norm_num [Ipp.Bls12377.baseModulus]
    · simpa [zeroLimbs_value, prefixToNat] using
        (Nat.ModEq.refl 0 : Nat.ModEq Ipp.Bls12377.baseModulus 0 0)
  obtain ⟨k0, hk0, heq0, _⟩ := extracted_round_spec zeroLimbs a
    (limbWord b ⟨0, by decide⟩) r0 hi0.2.1 ha hr0
  have hi1 : roundInvariant a b (1, r0) := by
    simpa only using roundInvariant_step_of_equation a b zeroLimbs r0
      0 (by decide) k0 hi0 ha hk0 (by simpa only [limb] using heq0)
  obtain ⟨k1, hk1, heq1, _⟩ := extracted_round_spec r0 a
    (limbWord b ⟨1, by decide⟩) r1 hi1.2.1 ha hr1
  have hi2 : roundInvariant a b (2, r1) := by
    simpa only using roundInvariant_step_of_equation a b r0 r1
      1 (by decide) k1 hi1 ha hk1 (by simpa only [limb] using heq1)
  obtain ⟨k2, hk2, heq2, _⟩ := extracted_round_spec r1 a
    (limbWord b ⟨2, by decide⟩) r2 hi2.2.1 ha hr2
  have hi3 : roundInvariant a b (3, r2) := by
    simpa only using roundInvariant_step_of_equation a b r1 r2
      2 (by decide) k2 hi2 ha hk2 (by simpa only [limb] using heq2)
  obtain ⟨k3, hk3, heq3, _⟩ := extracted_round_spec r2 a
    (limbWord b ⟨3, by decide⟩) r3 hi3.2.1 ha hr3
  have hi4 : roundInvariant a b (4, r3) := by
    simpa only using roundInvariant_step_of_equation a b r2 r3
      3 (by decide) k3 hi3 ha hk3 (by simpa only [limb] using heq3)
  obtain ⟨k4, hk4, heq4, _⟩ := extracted_round_spec r3 a
    (limbWord b ⟨4, by decide⟩) r4 hi4.2.1 ha hr4
  have hi5 : roundInvariant a b (5, r4) := by
    simpa only using roundInvariant_step_of_equation a b r3 r4
      4 (by decide) k4 hi4 ha hk4 (by simpa only [limb] using heq4)
  obtain ⟨k5, hk5, heq5, _⟩ := extracted_round_spec r4 a
    (limbWord b ⟨5, by decide⟩) r5 hi5.2.1 ha hr5
  have hi6 : roundInvariant a b (6, r5) := by
    simpa only using roundInvariant_step_of_equation a b r4 r5
      5 (by decide) k5 hi5 ha hk5 (by simpa only [limb] using heq5)
  have hsubspec := extracted_subtract_modulus_spec r5 output hi6.2.1 hsub
  have hscaled := hsubspec.2.1.mul_right (wordBase ^ limbCount)
  have houter : Nat.ModEq Ipp.Bls12377.baseModulus
      (limbsToNat r5 * wordBase ^ limbCount)
      (limbsToNat a * limbsToNat b) := by
    simpa [roundInvariant, limbsToNat, limbCount, Nat.mul_comm] using hi6.2.2
  exact (fun _ : limbsToNat b < Ipp.Bls12377.baseModulus =>
    ⟨hsubspec.1, hscaled.trans houter⟩) hb

theorem wordRadix_eq_baseMontgomeryRadix :
    wordBase ^ limbCount = Ipp.Bls12377.baseMontgomeryRadix := by
  change (2 ^ 64) ^ 6 = 2 ^ (64 * 6)
  exact pow_mul 2 64 6

def decode (value : LimbArray) : Ipp.Bls12377.Fq :=
  Ipp.Bls12377.montgomeryDecode Ipp.Bls12377.baseModulus
    Ipp.Bls12377.baseMontgomeryRadix { value := limbsToNat value }

private theorem decode_mul_of_mul_radix
    (output left right radix : Ipp.Bls12377.Fq)
    (hequation : output * radix = left * right)
    (hcancel : radix * radix⁻¹ = 1) :
    output * radix⁻¹ = (left * radix⁻¹) * (right * radix⁻¹) := by
  calc
    output * radix⁻¹ = (output * radix⁻¹) * (radix * radix⁻¹) := by
      rw [hcancel, mul_one]
    _ = (output * radix) * (radix⁻¹ * radix⁻¹) := by ring
    _ = (left * right) * (radix⁻¹ * radix⁻¹) := by rw [hequation]
    _ = (left * radix⁻¹) * (right * radix⁻¹) := by ring

private theorem baseMontgomeryRadix_coprime :
    Nat.Coprime Ipp.Bls12377.baseMontgomeryRadix
      Ipp.Bls12377.baseModulus := by
  rw [Ipp.Bls12377.baseMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [Ipp.Bls12377.baseModulus]

theorem decode_eq_cast_mul_inv (value : LimbArray) :
    decode value = (limbsToNat value : Ipp.Bls12377.Fq) *
      (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ := rfl

set_option maxHeartbeats 1000000 in
theorem decode_extracted_mul (a b output : LimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hb : limbsToNat b < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.mul a b = .ok output) :
    decode output = decode a * decode b := by
  have hmul := (extracted_mul_spec a b output ha hb hexec).2
  have hmod : Nat.ModEq Ipp.Bls12377.baseModulus
      (limbsToNat output * Ipp.Bls12377.baseMontgomeryRadix)
      (limbsToNat a * limbsToNat b) := by
    simpa only [wordRadix_eq_baseMontgomeryRadix] using hmul
  have hcastNat :
      ((limbsToNat output * Ipp.Bls12377.baseMontgomeryRadix : Nat) :
          Ipp.Bls12377.Fq) =
        ((limbsToNat a * limbsToNat b : Nat) : Ipp.Bls12377.Fq) :=
    (ZMod.natCast_eq_natCast_iff _ _ _).2 hmod
  have hcast :
      (limbsToNat output : Ipp.Bls12377.Fq) *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) =
        (limbsToNat a : Ipp.Bls12377.Fq) *
          (limbsToNat b : Ipp.Bls12377.Fq) := by
    simpa only [Nat.cast_mul] using hcastNat
  rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv,
    decode_eq_cast_mul_inv]
  exact decode_mul_of_mul_radix
    (limbsToNat output : Ipp.Bls12377.Fq)
    (limbsToNat a : Ipp.Bls12377.Fq)
    (limbsToNat b : Ipp.Bls12377.Fq)
    (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) hcast
    (ZMod.coe_mul_inv_eq_one Ipp.Bls12377.baseMontgomeryRadix
      baseMontgomeryRadix_coprime)

end Ipp.Extracted.ArkworksFqMul

#print axioms Ipp.Extracted.ArkworksFqMul.extracted_round_spec
#print axioms Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
#print axioms Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
