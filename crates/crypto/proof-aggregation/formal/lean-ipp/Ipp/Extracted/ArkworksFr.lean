import Ipp.Extracted.ArkworksFrGenerated
import Ipp.Extracted.ArkworksFrBytesWord
import Ipp.Extracted.ArkworksFqMul
import Ipp.Extracted.ArkworksFqOps
import Ipp.Extracted.ArkworksFqSqrtBytes
import Ipp.Bls12377Core
import Ipp.Bls12377
import Ipp.CanonicalDecode
import Mathlib.Data.Nat.Bitwise
import Mathlib.Tactic

/-! Four-limb BLS12-377 Fr twins of the proven Fq machinery (S3-F05B).
The limb-count-agnostic Nat layer (`NatMac`, `macModel`, `MacSpec`,
`lowListToNat`, `MacChainState`) is reused from `ArkworksFqMul`. -/

namespace Ipp.Extracted.ArkworksFr

set_option maxRecDepth 8192
set_option exponentiation.threshold 1000

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul in
export Ipp.Extracted.ArkworksFqMul (wordBase wordBase_pos u128Base_eq
  u64_ofNat_val_of_lt u64_ofNat_val_eq_self NatMac macModel MacSpec
  macModel_spec lowListToNat lowListToNat_append_singleton MacChainState)

abbrev FrLimbArray := ark_ip_proofs.s3_07_arkworks_fr_spike.FrMont
abbrev FrMac := ark_ip_proofs.s3_07_arkworks_fr_spike.Mac

def limbCount : Nat := 4

def limbWord (value : FrLimbArray) (i : Fin limbCount) : MacCampaign.U64 :=
  value.val.get ⟨i.val, by simp [limbCount, value.hlen]⟩

def limb (value : FrLimbArray) (i : Fin limbCount) : Nat :=
  (limbWord value i).val

def prefixToNat (value : FrLimbArray) : Nat → Nat
  | 0 => 0
  | count + 1 =>
      if h : count < limbCount then
        prefixToNat value count + limb value ⟨count, h⟩ * wordBase ^ count
      else
        prefixToNat value count

@[simp] theorem prefixToNat_zero (value : FrLimbArray) :
    prefixToNat value 0 = 0 := rfl

theorem prefixToNat_succ (value : FrLimbArray) {count : Nat}
    (hcount : count < limbCount) :
    prefixToNat value (count + 1) =
      prefixToNat value count +
        limb value ⟨count, hcount⟩ * wordBase ^ count := by
  simp [prefixToNat, hcount]

def limbsToNat (value : FrLimbArray) : Nat :=
  prefixToNat value limbCount

def roundInvariant (a b : FrLimbArray) (state : Nat × FrLimbArray) : Prop :=
  state.1 ≤ limbCount ∧
  limbsToNat state.2 < 2 * Ipp.Bls12377.scalarModulus ∧
  Nat.ModEq Ipp.Bls12377.scalarModulus
    (limbsToNat state.2 * wordBase ^ state.1)
    (prefixToNat b state.1 * limbsToNat a)

def extractedMacModel (accumulator left right carry : MacCampaign.U64) :
    FrMac :=
  let value := accumulator.val + left.val * right.val + carry.val
  { low := MacCampaign.U64.ofNat value
    carry := MacCampaign.U64.ofNat (value / wordBase) }

theorem extracted_mac_eq_model (accumulator left right carry : MacCampaign.U64) :
    ark_ip_proofs.s3_07_arkworks_fr_spike.mac
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
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.mac, lift,
    Result.bind_ok, MacCampaign.castU128]
  simp only [MacCampaign.hMulU128_eq, MacCampaign.mul128, dif_pos hmul,
    Result.bind_ok]
  simp only [MacCampaign.hAddU128_eq, MacCampaign.add128,
    dif_pos haddProduct, Result.bind_ok]
  have hvalueRaw :
      accumulator.val + left.val * right.val + carry.val <
        MacCampaign.u128Base := by simpa [value] using hvalue
  simp only [dif_pos hvalueRaw, Result.bind_ok, MacCampaign.castU64]
  simp only [MacCampaign.hShiftRightU128_eq, MacCampaign.shr128,
    if_pos hshift, Result.bind_ok]
  simp [extractedMacModel, MacCampaign.U64.ofNat,
    MacCampaign.U128.ofNat, MacCampaign.u64Base, MacCampaign.u128Base,
    wordBase, hshiftValue]

theorem extracted_mac_spec (accumulator left right carry : MacCampaign.U64) :
    ∃ output,
      ark_ip_proofs.s3_07_arkworks_fr_spike.mac
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

theorem extracted_mac_result_spec (accumulator left right carry : MacCampaign.U64)
    (output : FrMac)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.mac
      accumulator left right carry = .ok output) :
    MacSpec accumulator.val left.val right.val carry.val
      { low := output.low.val, carry := output.carry.val } := by
  rcases extracted_mac_spec accumulator left right carry with
    ⟨expected, hrun, hspec⟩
  rw [hrun] at hexec
  cases hexec
  exact hspec

/-- Exact telescoping invariant for a prefix of one extracted Fr CIOS round. -/
def macChainInvariant (r a : FrLimbArray) (b k : Nat)
    (state : MacChainState) : Prop :=
  state.count ≤ limbCount ∧
  state.reductionLows.length = state.count ∧
  (∀ low ∈ state.reductionLows, low < wordBase) ∧
  state.productCarry < wordBase ∧
  state.reductionCarry < wordBase ∧
  prefixToNat r state.count + b * prefixToNat a state.count +
      k * prefixToNat ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS state.count =
    lowListToNat state.reductionLows +
      (state.productCarry + state.reductionCarry) * wordBase ^ state.count

theorem macChainInvariant_initial (r a : FrLimbArray) (b k : Nat) :
    macChainInvariant r a b k
      { count := 0, productCarry := 0, reductionCarry := 0,
        reductionLows := [] } := by
  simp [macChainInvariant, lowListToNat, wordBase_pos]

theorem macChainInvariant_step (r a : FrLimbArray) (b k : Nat)
    (state : MacChainState) (hcount : state.count < limbCount)
    (product reduction : NatMac)
    (hproduct : MacSpec
      (limb r ⟨state.count, hcount⟩)
      (limb a ⟨state.count, hcount⟩) b state.productCarry product)
    (hreduction : MacSpec product.low k
      (limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
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
          k * limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
            ⟨state.count, hcount⟩ +
          state.productCarry + state.reductionCarry =
        reduction.low + (product.carry + reduction.carry) * wordBase := by
    have hproductEquation := hproduct.equation
    have hreductionEquation := hreduction.equation
    calc
      limb r ⟨state.count, hcount⟩ +
            limb a ⟨state.count, hcount⟩ * b +
            k * limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
              ⟨state.count, hcount⟩ +
            state.productCarry + state.reductionCarry =
          (limb r ⟨state.count, hcount⟩ +
              limb a ⟨state.count, hcount⟩ * b + state.productCarry) +
            k * limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
              ⟨state.count, hcount⟩ + state.reductionCarry := by ring
      _ = (product.carry * wordBase + product.low) +
            k * limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
              ⟨state.count, hcount⟩ + state.reductionCarry := by
        rw [hproductEquation]
      _ = product.carry * wordBase +
          (product.low +
            k * limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
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
      prefixToNat_succ ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS hcount]
    calc
      (prefixToNat r state.count +
            limb r ⟨state.count, hcount⟩ * wordBase ^ state.count) +
          b * (prefixToNat a state.count +
            limb a ⟨state.count, hcount⟩ * wordBase ^ state.count) +
          k * (prefixToNat ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
              state.count +
            limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
              ⟨state.count, hcount⟩ * wordBase ^ state.count) =
        (prefixToNat r state.count + b * prefixToNat a state.count +
            k * prefixToNat ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
              state.count) +
          (limb r ⟨state.count, hcount⟩ +
            limb a ⟨state.count, hcount⟩ * b +
            k * limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
              ⟨state.count, hcount⟩) * wordBase ^ state.count := by ring
      _ = (lowListToNat state.reductionLows +
            (state.productCarry + state.reductionCarry) *
              wordBase ^ state.count) +
          (limb r ⟨state.count, hcount⟩ +
            limb a ⟨state.count, hcount⟩ * b +
            k * limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
              ⟨state.count, hcount⟩) * wordBase ^ state.count := by
        rw [hequation]
      _ = lowListToNat state.reductionLows +
          (limb r ⟨state.count, hcount⟩ +
            limb a ⟨state.count, hcount⟩ * b +
            k * limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
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

theorem extracted_macChainInvariant_step (r a : FrLimbArray)
    (b k : MacCampaign.U64) (state : MacChainState)
    (hcount : state.count < limbCount) (product reduction : FrMac)
    (hproductExec : ark_ip_proofs.s3_07_arkworks_fr_spike.mac
      (limbWord r ⟨state.count, hcount⟩)
      (limbWord a ⟨state.count, hcount⟩) b
      (MacCampaign.U64.ofNat state.productCarry) = .ok product)
    (hreductionExec : ark_ip_proofs.s3_07_arkworks_fr_spike.mac
      product.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
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
    (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
      ⟨state.count, hcount⟩)
    (MacCampaign.U64.ofNat state.reductionCarry) reduction hreductionExec
  have hproductNat : MacSpec
      (limb r ⟨state.count, hcount⟩)
      (limb a ⟨state.count, hcount⟩) b.val state.productCarry
      { low := product.low.val, carry := product.carry.val } := by
    simpa [limb, u64_ofNat_val_of_lt hproductCarry] using hproductSpec
  have hreductionNat : MacSpec product.low.val k.val
      (limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
        ⟨state.count, hcount⟩)
      state.reductionCarry
      { low := reduction.low.val, carry := reduction.carry.val } := by
    simpa [limb, u64_ofNat_val_of_lt hreductionCarry] using hreductionSpec
  exact macChainInvariant_step r a b.val k.val state hcount
    { low := product.low.val, carry := product.carry.val }
    { low := reduction.low.val, carry := reduction.carry.val }
    hproductNat hreductionNat hinvariant

/-- The extracted modulus limbs reconstruct the canonical BLS12-377 scalar modulus. -/
theorem modulus_limbsToNat :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS =
      Ipp.Bls12377.scalarModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS]
  norm_num [limbsToNat, prefixToNat, limbCount, limb, limbWord,
    MacCampaign.Array.make, MacCampaign.U64.ofNat, MacCampaign.u64Base,
    wordBase, Ipp.Bls12377.scalarModulus]

theorem inv_mul_modulus_low_add_one_mod_wordBase :
    (ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val *
        limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩ + 1) %
      wordBase = 0 := by
  rw [ark_ip_proofs.s3_07_arkworks_fr_spike.INV,
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS]
  norm_num [limb, limbWord, limbCount, MacCampaign.Array.make,
    MacCampaign.U64.ofNat, MacCampaign.u64Base, wordBase]

theorem inv_val :
    ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val =
      725501752471715839 := by
  rw [ark_ip_proofs.s3_07_arkworks_fr_spike.INV]
  rfl

theorem array_index_limbWord (value : FrLimbArray) (i : Fin limbCount) :
    MacCampaign.Array.index_usize value (Usize.ofNat i.val) =
      .ok (limbWord value i) := by
  simp [MacCampaign.Array.index_usize, limbWord, Usize.ofNat,
    limbCount, value.hlen]

theorem reductionFactor_modEq_zero (accumulator : Nat) :
    let k :=
      accumulator * ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val % wordBase
    Nat.ModEq wordBase
      (accumulator + k *
        limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩)
      0 := by
  dsimp only
  have hk : Nat.ModEq wordBase
      (accumulator * ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val % wordBase)
      (accumulator * ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val) :=
    Nat.mod_modEq _ _
  have hinv : Nat.ModEq wordBase
      (ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val *
        limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩ + 1)
      0 := by
    exact inv_mul_modulus_low_add_one_mod_wordBase
  calc
    accumulator +
          (accumulator * ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val % wordBase) *
            limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩
        ≡ accumulator +
          (accumulator * ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val) *
            limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩
          [MOD wordBase] := (hk.mul_right _).add_left _
    _ = accumulator *
          (ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val *
            limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩ + 1) := by
          ring
    _ ≡ accumulator * 0 [MOD wordBase] := hinv.mul_left accumulator
    _ = 0 := by simp

theorem two_modulus_lt_radix :
    2 * Ipp.Bls12377.scalarModulus < wordBase ^ limbCount := by
  decide

theorem roundNumerator_lt (rValue aValue b k : Nat)
    (hr : rValue < 2 * Ipp.Bls12377.scalarModulus)
    (ha : aValue < Ipp.Bls12377.scalarModulus)
    (hb : b < wordBase) (hk : k < wordBase) :
    rValue + b * aValue + k * Ipp.Bls12377.scalarModulus <
      2 * Ipp.Bls12377.scalarModulus * wordBase := by
  have hr' : rValue + 1 ≤ 2 * Ipp.Bls12377.scalarModulus := by omega
  have ha' : aValue + 1 ≤ Ipp.Bls12377.scalarModulus := by omega
  have hb' : b + 1 ≤ wordBase := by omega
  have hk' : k + 1 ≤ wordBase := by omega
  have hba := Nat.mul_le_mul hb' ha'
  have hkq := Nat.mul_le_mul hk' (Nat.le_refl Ipp.Bls12377.scalarModulus)
  nlinarith

theorem roundEquation_bound (rValue aValue b k output : Nat)
    (hr : rValue < 2 * Ipp.Bls12377.scalarModulus)
    (ha : aValue < Ipp.Bls12377.scalarModulus)
    (hb : b < wordBase) (hk : k < wordBase)
    (hequation : output * wordBase =
      rValue + b * aValue + k * Ipp.Bls12377.scalarModulus) :
    output * wordBase <
      2 * Ipp.Bls12377.scalarModulus * wordBase := by
  rw [hequation]
  exact roundNumerator_lt rValue aValue b k hr ha hb hk

theorem roundEquation_output_lt (rValue aValue b k output : Nat)
    (hr : rValue < 2 * Ipp.Bls12377.scalarModulus)
    (ha : aValue < Ipp.Bls12377.scalarModulus)
    (hb : b < wordBase) (hk : k < wordBase)
    (hequation : output * wordBase =
      rValue + b * aValue + k * Ipp.Bls12377.scalarModulus) :
    output < 2 * Ipp.Bls12377.scalarModulus := by
  exact (Nat.mul_lt_mul_right wordBase_pos).mp
    (roundEquation_bound rValue aValue b k output hr ha hb hk hequation)

theorem macChainInvariant_topCarry_lt (r a : FrLimbArray) (b k : Nat)
    (state : MacChainState)
    (hinvariant : macChainInvariant r a b k state)
    (hcount : state.count = limbCount)
    (hr : limbsToNat r < 2 * Ipp.Bls12377.scalarModulus)
    (ha : limbsToNat a < Ipp.Bls12377.scalarModulus)
    (hb : b < wordBase) (hk : k < wordBase) :
    state.productCarry + state.reductionCarry < wordBase := by
  rcases hinvariant with
    ⟨_, _, _, _, _, hequation⟩
  rw [hcount] at hequation
  change limbsToNat r + b * limbsToNat a +
      k * limbsToNat ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS = _
    at hequation
  rw [modulus_limbsToNat] at hequation
  have hnumerator := roundNumerator_lt
    (limbsToNat r) (limbsToNat a) b k hr ha hb hk
  have hcarryLe :
      (state.productCarry + state.reductionCarry) *
          wordBase ^ limbCount ≤
        limbsToNat r + b * limbsToNat a +
          k * Ipp.Bls12377.scalarModulus := by
    omega
  have hcarryMul :
      (state.productCarry + state.reductionCarry) *
          wordBase ^ limbCount <
        wordBase * (wordBase ^ limbCount) := by
    calc
      (state.productCarry + state.reductionCarry) * wordBase ^ limbCount
          ≤ limbsToNat r + b * limbsToNat a +
              k * Ipp.Bls12377.scalarModulus := hcarryLe
      _ < 2 * Ipp.Bls12377.scalarModulus * wordBase := hnumerator
      _ < wordBase * (wordBase ^ limbCount) := by
        have := two_modulus_lt_radix
        nlinarith [wordBase_pos]
  exact (Nat.mul_lt_mul_right (pow_pos wordBase_pos limbCount)).mp (by
    simpa [Nat.mul_comm] using hcarryMul)

theorem firstReductionLow_eq_zero (product reduction : NatMac)
    (k : Nat)
    (hk : k = product.low *
      ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val % wordBase)
    (hreduction : MacSpec product.low k
      (limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩)
      0 reduction) :
    reduction.low = 0 := by
  subst k
  have hzero := reductionFactor_modEq_zero product.low
  change (product.low +
      (product.low * ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val % wordBase) *
        limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩) %
      wordBase = 0 at hzero
  rw [show product.low +
      (product.low * ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val % wordBase) *
          limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩ =
        reduction.carry * wordBase + reduction.low by
      simpa using hreduction.equation] at hzero
  simpa [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt hreduction.low_lt]
    using hzero

/-- Shifting away the zero reduction low word gives the returned four limbs. -/
theorem shiftedReductionLows_eq (low0 low1 low2 low3 top : MacCampaign.U64)
    (hlow0 : low0.val = 0) :
    lowListToNat [low0.val, low1.val, low2.val, low3.val] +
        top.val * wordBase ^ limbCount =
      limbsToNat (MacCampaign.Array.make (Usize.ofNat 4)
        [low1, low2, low3, top]) * wordBase := by
  simp [lowListToNat, limbsToNat, prefixToNat, limb, limbWord,
    MacCampaign.Array.make, limbCount, hlow0]
  ring

theorem macChainInvariant_roundEquation (r a output : FrLimbArray) (b k : Nat)
    (state : MacChainState)
    (hinvariant : macChainInvariant r a b k state)
    (hcount : state.count = limbCount)
    (houtput : lowListToNat state.reductionLows +
        (state.productCarry + state.reductionCarry) * wordBase ^ limbCount =
      limbsToNat output * wordBase) :
    limbsToNat output * wordBase =
      limbsToNat r + b * limbsToNat a + k * Ipp.Bls12377.scalarModulus := by
  have hequation := hinvariant.2.2.2.2.2
  rw [hcount] at hequation
  change limbsToNat r + b * limbsToNat a +
      k * limbsToNat ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS =
    lowListToNat state.reductionLows +
      (state.productCarry + state.reductionCarry) * wordBase ^ limbCount
    at hequation
  rw [modulus_limbsToNat] at hequation
  exact (hequation.trans houtput).symm

theorem limb_lt_wordBase (value : FrLimbArray) (i : Fin limbCount) :
    limb value i < wordBase := by
  simpa [limb, MacCampaign.u64Base, wordBase] using (limbWord value i).isLt

theorem roundInvariant_step_of_equation (a b r output : FrLimbArray)
    (index : Nat) (hindex : index < limbCount) (k : Nat)
    (hinvariant : roundInvariant a b (index, r))
    (ha : limbsToNat a < Ipp.Bls12377.scalarModulus)
    (hk : k < wordBase)
    (hequation : limbsToNat output * wordBase =
      limbsToNat r + limb b ⟨index, hindex⟩ * limbsToNat a +
        k * Ipp.Bls12377.scalarModulus) :
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
          k * Ipp.Bls12377.scalarModulus) * wordBase ^ index := by
        rw [hequation]
      _ = Ipp.Bls12377.scalarModulus * (k * wordBase ^ index) +
          (limbsToNat r + limb b ⟨index, hindex⟩ * limbsToNat a) *
            wordBase ^ index := by
        ring
      _ ≡ (limbsToNat r + limb b ⟨index, hindex⟩ * limbsToNat a) *
          wordBase ^ index [MOD Ipp.Bls12377.scalarModulus] :=
        Nat.ModEq.modulus_mul_add
      _ = limbsToNat r * wordBase ^ index +
          (limb b ⟨index, hindex⟩ * wordBase ^ index) * limbsToNat a := by
        ring
      _ ≡ prefixToNat b index * limbsToNat a +
          (limb b ⟨index, hindex⟩ * wordBase ^ index) * limbsToNat a
          [MOD Ipp.Bls12377.scalarModulus] :=
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

private def roundTrace (r a : FrLimbArray) (b : MacCampaign.U64)
    (output : FrLimbArray) : Prop :=
  ∃ (k : MacCampaign.U64)
    (p0 d0 p1 d1 p2 d2 p3 d3 : FrMac)
    (top : MacCampaign.U64),
    k = MacCampaign.wrappingMul64 p0.low
      ark_ip_proofs.s3_07_arkworks_fr_spike.INV ∧
    ark_ip_proofs.s3_07_arkworks_fr_spike.mac
      (limbWord r ⟨0, by decide⟩) (limbWord a ⟨0, by decide⟩) b
      (MacCampaign.U64.ofNat 0) = .ok p0 ∧
    ark_ip_proofs.s3_07_arkworks_fr_spike.mac p0.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩)
      (MacCampaign.U64.ofNat 0) = .ok d0 ∧
    ark_ip_proofs.s3_07_arkworks_fr_spike.mac
      (limbWord r ⟨1, by decide⟩) (limbWord a ⟨1, by decide⟩) b p0.carry = .ok p1 ∧
    ark_ip_proofs.s3_07_arkworks_fr_spike.mac p1.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨1, by decide⟩)
      d0.carry = .ok d1 ∧
    ark_ip_proofs.s3_07_arkworks_fr_spike.mac
      (limbWord r ⟨2, by decide⟩) (limbWord a ⟨2, by decide⟩) b p1.carry = .ok p2 ∧
    ark_ip_proofs.s3_07_arkworks_fr_spike.mac p2.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨2, by decide⟩)
      d1.carry = .ok d2 ∧
    ark_ip_proofs.s3_07_arkworks_fr_spike.mac
      (limbWord r ⟨3, by decide⟩) (limbWord a ⟨3, by decide⟩) b p2.carry = .ok p3 ∧
    ark_ip_proofs.s3_07_arkworks_fr_spike.mac p3.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨3, by decide⟩)
      d2.carry = .ok d3 ∧
    MacCampaign.add64 p3.carry d3.carry = .ok top ∧
    output = MacCampaign.Array.make (Usize.ofNat 4)
      [d1.low, d2.low, d3.low, top]

set_option maxHeartbeats 1000000 in
theorem extracted_round_trace (r a : FrLimbArray) (b : MacCampaign.U64)
    (output : FrLimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.round r a b = .ok output) :
    roundTrace r a b output := by
  obtain ⟨p0, hp0, _⟩ := extracted_mac_spec
    (limbWord r ⟨0, by decide⟩) (limbWord a ⟨0, by decide⟩) b
    (MacCampaign.U64.ofNat 0)
  let k := MacCampaign.wrappingMul64 p0.low
    ark_ip_proofs.s3_07_arkworks_fr_spike.INV
  have hkexec : lift (MacCampaign.wrappingMul64 p0.low
      ark_ip_proofs.s3_07_arkworks_fr_spike.INV) = .ok k := by rfl
  obtain ⟨d0, hd0, _⟩ := extracted_mac_spec p0.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩)
    (MacCampaign.U64.ofNat 0)
  obtain ⟨p1, hp1, _⟩ := extracted_mac_spec
    (limbWord r ⟨1, by decide⟩) (limbWord a ⟨1, by decide⟩) b p0.carry
  obtain ⟨d1, hd1, _⟩ := extracted_mac_spec p1.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨1, by decide⟩) d0.carry
  obtain ⟨p2, hp2, _⟩ := extracted_mac_spec
    (limbWord r ⟨2, by decide⟩) (limbWord a ⟨2, by decide⟩) b p1.carry
  obtain ⟨d2, hd2, _⟩ := extracted_mac_spec p2.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨2, by decide⟩) d1.carry
  obtain ⟨p3, hp3, _⟩ := extracted_mac_spec
    (limbWord r ⟨3, by decide⟩) (limbWord a ⟨3, by decide⟩) b p2.carry
  obtain ⟨d3, hd3, _⟩ := extracted_mac_spec p3.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨3, by decide⟩) d2.carry
  have hrun := hexec
  change (MacCampaign.Array.index_usize r (Usize.ofNat 0) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord r ⟨0, by decide⟩) _] at hrun
  change (MacCampaign.Array.index_usize a (Usize.ofNat 0) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord a ⟨0, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fr_spike.mac
    (limbWord r ⟨0, by decide⟩) (limbWord a ⟨0, by decide⟩) b
    (MacCampaign.U64.ofNat 0) >>= _) = .ok output at hrun
  rw [continue_of_ok hp0 _] at hrun
  change (lift (MacCampaign.wrappingMul64 p0.low
    ark_ip_proofs.s3_07_arkworks_fr_spike.INV) >>= _) = .ok output at hrun
  rw [continue_of_ok hkexec _] at hrun
  change (MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS (Usize.ofNat 0) >>= _) =
      .ok output at hrun
  rw [continue_of_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fr_spike.mac p0.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩)
    (MacCampaign.U64.ofNat 0) >>= _) = .ok output at hrun
  rw [continue_of_ok hd0 _] at hrun
  change (MacCampaign.Array.index_usize r (Usize.ofNat 1) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord r ⟨1, by decide⟩) _] at hrun
  change (MacCampaign.Array.index_usize a (Usize.ofNat 1) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord a ⟨1, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fr_spike.mac
    (limbWord r ⟨1, by decide⟩) (limbWord a ⟨1, by decide⟩) b p0.carry >>= _) =
      .ok output at hrun
  rw [continue_of_ok hp1 _] at hrun
  change (MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS (Usize.ofNat 1) >>= _) =
      .ok output at hrun
  rw [continue_of_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨1, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fr_spike.mac p1.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨1, by decide⟩)
    d0.carry >>= _) = .ok output at hrun
  rw [continue_of_ok hd1 _] at hrun
  change (MacCampaign.Array.index_usize r (Usize.ofNat 2) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord r ⟨2, by decide⟩) _] at hrun
  change (MacCampaign.Array.index_usize a (Usize.ofNat 2) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord a ⟨2, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fr_spike.mac
    (limbWord r ⟨2, by decide⟩) (limbWord a ⟨2, by decide⟩) b p1.carry >>= _) =
      .ok output at hrun
  rw [continue_of_ok hp2 _] at hrun
  change (MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS (Usize.ofNat 2) >>= _) =
      .ok output at hrun
  rw [continue_of_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨2, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fr_spike.mac p2.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨2, by decide⟩)
    d1.carry >>= _) = .ok output at hrun
  rw [continue_of_ok hd2 _] at hrun
  change (MacCampaign.Array.index_usize r (Usize.ofNat 3) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord r ⟨3, by decide⟩) _] at hrun
  change (MacCampaign.Array.index_usize a (Usize.ofNat 3) >>= _) = .ok output at hrun
  rw [continue_of_ok (array_index_limbWord a ⟨3, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fr_spike.mac
    (limbWord r ⟨3, by decide⟩) (limbWord a ⟨3, by decide⟩) b p2.carry >>= _) =
      .ok output at hrun
  rw [continue_of_ok hp3 _] at hrun
  change (MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS (Usize.ofNat 3) >>= _) =
      .ok output at hrun
  rw [continue_of_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨3, by decide⟩) _] at hrun
  change (ark_ip_proofs.s3_07_arkworks_fr_spike.mac p3.low k
    (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨3, by decide⟩)
    d2.carry >>= _) = .ok output at hrun
  rw [continue_of_ok hd3 _] at hrun
  change (MacCampaign.add64 p3.carry d3.carry >>= _) = .ok output at hrun
  cases hadd : MacCampaign.add64 p3.carry d3.carry with
  | ok top =>
      rw [continue_of_ok hadd _] at hrun
      simp only [Result.ok.injEq] at hrun
      exact ⟨k, p0, d0, p1, d1, p2, d2, p3, d3,
        top, rfl, hp0, hd0, hp1, hd1, hp2, hd2, hp3, hd3, hadd, hrun.symm⟩
  | fail error =>
      rw [hadd] at hrun
      contradiction
  | div =>
      rw [hadd] at hrun
      contradiction

set_option maxHeartbeats 1000000 in
theorem extracted_round_spec (r a : FrLimbArray) (b : MacCampaign.U64)
    (output : FrLimbArray)
    (hr : limbsToNat r < 2 * Ipp.Bls12377.scalarModulus)
    (ha : limbsToNat a < Ipp.Bls12377.scalarModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.round r a b = .ok output) :
    ∃ k, k < wordBase ∧
      limbsToNat output * wordBase =
        limbsToNat r + b.val * limbsToNat a +
          k * Ipp.Bls12377.scalarModulus ∧
      limbsToNat output * wordBase <
        2 * Ipp.Bls12377.scalarModulus * wordBase := by
  obtain ⟨k, p0, d0, p1, d1, p2, d2, p3, d3,
      top, hk, hp0, hd0, hp1, hd1, hp2, hd2, hp3, hd3,
      hadd, hout⟩ := extracted_round_trace r a b output hexec
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
  have hkval : k.val = p0.low.val *
      ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val % wordBase := by
    rw [hk]
    simp [MacCampaign.wrappingMul64, MacCampaign.U64.ofNat,
      MacCampaign.u64Base, wordBase]
  have hd0low : d0.low.val = 0 := by
    apply firstReductionLow_eq_zero
      { low := p0.low.val, carry := p0.carry.val }
      { low := d0.low.val, carry := d0.carry.val } k.val hkval
    have hspec := extracted_mac_result_spec p0.low k
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
        ⟨0, by decide⟩) (MacCampaign.U64.ofNat 0) d0 hd0
    simpa [limb] using hspec
  have htop : p3.carry.val + d3.carry.val < wordBase :=
    macChainInvariant_topCarry_lt r a b.val k.val s4 hi4
      (by simp [s4, limbCount]) hr ha (by simpa [wordBase,
        MacCampaign.u64Base] using b.isLt) (by simpa [wordBase,
        MacCampaign.u64Base] using k.isLt)
  have hsum : p3.carry.val + d3.carry.val < MacCampaign.u64Base := by
    simpa [MacCampaign.u64Base, wordBase] using htop
  have haddVal : top.val = p3.carry.val + d3.carry.val := by
    unfold MacCampaign.add64 at hadd
    rw [dif_pos hsum] at hadd
    exact (congrArg MacCampaign.U64.val (Result.ok.inj hadd)).symm
  have hshift : lowListToNat s4.reductionLows +
      (s4.productCarry + s4.reductionCarry) * wordBase ^ limbCount =
      limbsToNat output * wordBase := by
    rw [hout]
    simpa [s4, haddVal] using shiftedReductionLows_eq
      d0.low d1.low d2.low d3.low top hd0low
  have heq : limbsToNat output * wordBase =
      limbsToNat r + b.val * limbsToNat a +
        k.val * Ipp.Bls12377.scalarModulus :=
    macChainInvariant_roundEquation r a output b.val k.val s4 hi4
      (by simp [s4, limbCount]) hshift
  refine ⟨k.val, by simpa [wordBase, MacCampaign.u64Base] using k.isLt,
    heq, ?_⟩
  exact roundEquation_bound (limbsToNat r) (limbsToNat a) b.val k.val
    (limbsToNat output) hr ha (by simpa [wordBase,
      MacCampaign.u64Base] using b.isLt) (by simpa [wordBase,
      MacCampaign.u64Base] using k.isLt) heq

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
    ark_ip_proofs.s3_07_arkworks_fr_spike.sbb left right borrow =
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
  have hbase : MacCampaign.u128Base = 2 ^ 128 := rfl
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.sbb, lift,
    Result.bind_ok, MacCampaign.castU128, MacCampaign.hAddU128_eq,
    MacCampaign.add128, dif_pos hadd,
    MacCampaign.wrappingSub128, MacCampaign.castU64,
    MacCampaign.castU64Source_u128,
    MacCampaign.hShiftRightU128_eq, MacCampaign.shr128, if_pos hshift]
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

theorem extracted_sbb_spec (left right borrow : MacCampaign.U64)
    (output : MacCampaign.U64 × MacCampaign.U64)
    (hborrow : borrow.val ≤ 1)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.sbb left right borrow =
      .ok output) :
    Ipp.Extracted.ArkworksFqMul.SbbSpec
      left.val right.val borrow.val output.1.val output.2.val := by
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

theorem prefixToNat_lt_pow (value : FrLimbArray) (count : Nat)
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

theorem limbsToNat_lt_radix (value : FrLimbArray) :
    limbsToNat value < wordBase ^ limbCount := by
  exact prefixToNat_lt_pow value limbCount (by omega)

theorem limbsToNat_four (value : FrLimbArray) :
    limbsToNat value =
      limb value ⟨0, by decide⟩ +
      limb value ⟨1, by decide⟩ * wordBase +
      limb value ⟨2, by decide⟩ * wordBase ^ 2 +
      limb value ⟨3, by decide⟩ * wordBase ^ 3 := by
  simp [limbsToNat, prefixToNat, limbCount]

private theorem limbsToNat_make_four
    (x0 x1 x2 x3 : MacCampaign.U64) :
    limbsToNat (MacCampaign.Array.make (Usize.ofNat 4)
      [x0, x1, x2, x3]) =
      x0.val + x1.val * wordBase + x2.val * wordBase ^ 2 +
      x3.val * wordBase ^ 3 := by
  simp [limbsToNat, prefixToNat, limb, limbWord,
    MacCampaign.Array.make, limbCount]

private theorem sbb_telescope
    (x0 x1 x2 x3 q0 q1 q2 q3 l0 l1 l2 l3 b1 b2 b3 b4 : Nat)
    (h0 : x0 + wordBase * b1 = q0 + l0)
    (h1 : x1 + wordBase * b2 = q1 + b1 + l1)
    (h2 : x2 + wordBase * b3 = q2 + b2 + l2)
    (h3 : x3 + wordBase * b4 = q3 + b3 + l3) :
    x0 + x1 * wordBase + x2 * wordBase ^ 2 + x3 * wordBase ^ 3 +
          b4 * wordBase ^ 4 =
      q0 + q1 * wordBase + q2 * wordBase ^ 2 + q3 * wordBase ^ 3 +
          (l0 + l1 * wordBase + l2 * wordBase ^ 2 + l3 * wordBase ^ 3) := by
  norm_num [wordBase] at h0 h1 h2 h3 ⊢
  omega

def geqPrefix (value modulus : FrLimbArray) : Nat → Bool
  | 0 => true
  | count + 1 =>
      if hcount : count < limbCount then
        let left := limbWord value ⟨count, hcount⟩
        let right := limbWord modulus ⟨count, hcount⟩
        if left > right then true
        else if left = right then geqPrefix value modulus count
        else false
      else true

theorem geqPrefix_spec (value modulus : FrLimbArray) (count : Nat)
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
theorem extracted_geq_modulus_spec (value : FrLimbArray) :
    ark_ip_proofs.s3_07_arkworks_fr_spike.geq_modulus value =
      .ok (geqPrefix value
        ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS limbCount) := by
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.geq_modulus,
    array_index_limbWord value ⟨3, by decide⟩,
    array_index_limbWord value ⟨2, by decide⟩,
    array_index_limbWord value ⟨1, by decide⟩,
    array_index_limbWord value ⟨0, by decide⟩,
    array_index_limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
      ⟨3, by decide⟩,
    array_index_limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
      ⟨2, by decide⟩,
    array_index_limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
      ⟨1, by decide⟩,
    array_index_limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
      ⟨0, by decide⟩,
    Result.bind_ok]
  simp [geqPrefix, limbCount]
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all

  let left := limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
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

private theorem continue_after_ok {α β : Type} {action : Result α}
    {value : α} {next : α → Result β} {output : β}
    (haction : action = .ok value)
    (hexec : action >>= next = .ok output) :
    next value = .ok output := by
  rw [haction] at hexec
  exact hexec

set_option maxRecDepth 32768 in
private theorem subtract_output_of_geq
    (value output : FrLimbArray)
    (o0 o1 o2 o3 : MacCampaign.U64 × MacCampaign.U64)
    (hge : geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS limbCount = true)
    (h0 : ark_ip_proofs.s3_07_arkworks_fr_spike.sbb
      (limbWord value ⟨0, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩)
      (MacCampaign.U64.ofNat 0) = .ok o0)
    (h1 : ark_ip_proofs.s3_07_arkworks_fr_spike.sbb
      (limbWord value ⟨1, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨1, by decide⟩)
      o0.2 = .ok o1)
    (h2 : ark_ip_proofs.s3_07_arkworks_fr_spike.sbb
      (limbWord value ⟨2, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨2, by decide⟩)
      o1.2 = .ok o2)
    (h3 : ark_ip_proofs.s3_07_arkworks_fr_spike.sbb
      (limbWord value ⟨3, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨3, by decide⟩)
      o2.2 = .ok o3)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.subtract_modulus value =
      .ok output) :
    output = MacCampaign.Array.make (Usize.ofNat 4)
      [o0.1, o1.1, o2.1, o3.1] := by
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.subtract_modulus] at hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.geq_modulus value >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok (extracted_geq_modulus_spec value) hrun
  simp only [hge, if_true] at hrun
  change MacCampaign.Array.index_usize value (Usize.ofNat 0) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord value ⟨0, by decide⟩) hrun
  change MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS (Usize.ofNat 0) >>= _ =
      .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.sbb
    (limbWord value ⟨0, by decide⟩)
    (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩)
    (MacCampaign.U64.ofNat 0) >>= _ = .ok output at hrun
  have hrun := continue_after_ok h0 hrun
  change MacCampaign.Array.index_usize value (Usize.ofNat 1) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord value ⟨1, by decide⟩) hrun
  change MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS (Usize.ofNat 1) >>= _ =
      .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨1, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.sbb
    (limbWord value ⟨1, by decide⟩)
    (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨1, by decide⟩) o0.2
      >>= _ = .ok output at hrun
  have hrun := continue_after_ok h1 hrun
  change MacCampaign.Array.index_usize value (Usize.ofNat 2) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord value ⟨2, by decide⟩) hrun
  change MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS (Usize.ofNat 2) >>= _ =
      .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨2, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.sbb
    (limbWord value ⟨2, by decide⟩)
    (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨2, by decide⟩) o1.2
      >>= _ = .ok output at hrun
  have hrun := continue_after_ok h2 hrun
  change MacCampaign.Array.index_usize value (Usize.ofNat 3) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord value ⟨3, by decide⟩) hrun
  change MacCampaign.Array.index_usize
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS (Usize.ofNat 3) >>= _ =
      .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨3, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.sbb
    (limbWord value ⟨3, by decide⟩)
    (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨3, by decide⟩) o2.2
      >>= _ = .ok output at hrun
  have hrun := continue_after_ok h3 hrun
  simpa only [Result.ok.injEq] using hrun.symm

private theorem subtract_output_of_lt
    (value output : FrLimbArray)
    (hlt : geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS limbCount = false)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.subtract_modulus value =
      .ok output) :
    output = value := by
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.subtract_modulus] at hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.geq_modulus value >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok (extracted_geq_modulus_spec value) hrun
  simp only [hlt, Bool.false_eq_true, if_false, Result.ok.injEq] at hrun
  exact hrun.symm

set_option maxRecDepth 32768 in
private theorem sbb_limbs_telescope
    (value output : FrLimbArray)
    (o0 o1 o2 o3 : MacCampaign.U64 × MacCampaign.U64)
    (houtput : output = MacCampaign.Array.make (Usize.ofNat 4)
      [o0.1, o1.1, o2.1, o3.1])
    (he0 : limb value ⟨0, by decide⟩ + wordBase * o0.2.val =
      limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩ +
        o0.1.val)
    (he1 : limb value ⟨1, by decide⟩ + wordBase * o1.2.val =
      limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨1, by decide⟩ +
        o0.2.val + o1.1.val)
    (he2 : limb value ⟨2, by decide⟩ + wordBase * o2.2.val =
      limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨2, by decide⟩ +
        o1.2.val + o2.1.val)
    (he3 : limb value ⟨3, by decide⟩ + wordBase * o3.2.val =
      limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨3, by decide⟩ +
        o2.2.val + o3.1.val) :
    limbsToNat value + o3.2.val * wordBase ^ limbCount =
      Ipp.Bls12377.scalarModulus + limbsToNat output := by
  have hraw : limbsToNat value + o3.2.val * wordBase ^ limbCount =
      limbsToNat ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS +
        limbsToNat output := by
    rw [houtput, limbsToNat_four value,
      limbsToNat_four ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS,
      limbsToNat_make_four]
    simpa only [limbCount] using sbb_telescope
      (limb value ⟨0, by decide⟩) (limb value ⟨1, by decide⟩)
      (limb value ⟨2, by decide⟩) (limb value ⟨3, by decide⟩)
      (limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩)
      (limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨1, by decide⟩)
      (limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨2, by decide⟩)
      (limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨3, by decide⟩)
      o0.1.val o1.1.val o2.1.val o3.1.val
      o0.2.val o1.2.val o2.2.val o3.2.val
      he0 he1 he2 he3
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
theorem extracted_subtract_modulus_spec (value output : FrLimbArray)
    (hvalue : limbsToNat value < 2 * Ipp.Bls12377.scalarModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.subtract_modulus value =
      .ok output) :
    limbsToNat output < Ipp.Bls12377.scalarModulus ∧
    Nat.ModEq Ipp.Bls12377.scalarModulus
      (limbsToNat output) (limbsToNat value) ∧
    (Ipp.Bls12377.scalarModulus ≤ limbsToNat value →
      Ipp.Bls12377.scalarModulus + limbsToNat output = limbsToNat value) ∧
    (limbsToNat value < Ipp.Bls12377.scalarModulus →
      limbsToNat output = limbsToNat value) := by
  have hcompare := geqPrefix_spec value
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS limbCount (by omega)
  change geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS limbCount = true ↔
    limbsToNat ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ≤
      limbsToNat value at hcompare
  rw [modulus_limbsToNat] at hcompare
  by_cases hge : Ipp.Bls12377.scalarModulus ≤ limbsToNat value
  · have hbool : geqPrefix value
        ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS limbCount = true :=
      hcompare.mpr hge
    let z := MacCampaign.U64.ofNat 0
    let o0 := sbbModel (limbWord value ⟨0, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩) z
    have hz : z.val ≤ 1 := by simp [z, MacCampaign.U64.ofNat]
    have ho0 := extracted_sbb_eq_model (limbWord value ⟨0, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩) z hz
    have hs0 := extracted_sbb_spec (limbWord value ⟨0, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩)
      z o0 hz (by simpa [o0] using ho0)
    let o1 := sbbModel (limbWord value ⟨1, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨1, by decide⟩) o0.2
    have ho1 := extracted_sbb_eq_model (limbWord value ⟨1, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨1, by decide⟩)
      o0.2 hs0.nextBorrow_le
    have hs1 := extracted_sbb_spec (limbWord value ⟨1, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨1, by decide⟩)
      o0.2 o1 hs0.nextBorrow_le (by simpa [o1] using ho1)
    let o2 := sbbModel (limbWord value ⟨2, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨2, by decide⟩) o1.2
    have ho2 := extracted_sbb_eq_model (limbWord value ⟨2, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨2, by decide⟩)
      o1.2 hs1.nextBorrow_le
    have hs2 := extracted_sbb_spec (limbWord value ⟨2, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨2, by decide⟩)
      o1.2 o2 hs1.nextBorrow_le (by simpa [o2] using ho2)
    let o3 := sbbModel (limbWord value ⟨3, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨3, by decide⟩) o2.2
    have ho3 := extracted_sbb_eq_model (limbWord value ⟨3, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨3, by decide⟩)
      o2.2 hs2.nextBorrow_le
    have hs3 := extracted_sbb_spec (limbWord value ⟨3, by decide⟩)
      (limbWord ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨3, by decide⟩)
      o2.2 o3 hs2.nextBorrow_le (by simpa [o3] using ho3)
    let expected := MacCampaign.Array.make (Usize.ofNat 4)
      [o0.1, o1.1, o2.1, o3.1]
    have houtput : output = expected := by
      simpa only [expected, z] using subtract_output_of_geq
        value output o0 o1 o2 o3 hbool
        (by simpa only [z] using ho0) ho1 ho2 ho3 hexec
    have he0 : limb value ⟨0, by decide⟩ + wordBase * o0.2.val =
        limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩ +
          o0.1.val := by
      simpa [limb, z, MacCampaign.U64.ofNat] using hs0.equation
    have he1 : limb value ⟨1, by decide⟩ + wordBase * o1.2.val =
        limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨1, by decide⟩ +
          o0.2.val + o1.1.val := by
      simpa only [limb] using hs1.equation
    have he2 : limb value ⟨2, by decide⟩ + wordBase * o2.2.val =
        limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨2, by decide⟩ +
          o1.2.val + o2.1.val := by
      simpa only [limb] using hs2.equation
    have he3 : limb value ⟨3, by decide⟩ + wordBase * o3.2.val =
        limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨3, by decide⟩ +
          o2.2.val + o3.1.val := by
      simpa only [limb] using hs3.equation
    have htelescope := sbb_limbs_telescope
      value output o0 o1 o2 o3
      (by simpa only [expected] using houtput) he0 he1 he2 he3
    exact subtract_spec_of_telescope (limbsToNat value)
      Ipp.Bls12377.scalarModulus (limbsToNat output)
      (wordBase ^ limbCount) o3.2.val hvalue hge htelescope
      (limbsToNat_lt_radix output) hs3.nextBorrow_le
  · have hbool : geqPrefix value
        ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS limbCount = false := by
      cases hb : geqPrefix value
        ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS limbCount with
      | false => rfl
      | true => exact False.elim (hge (hcompare.mp hb))
    have hlt : limbsToNat value < Ipp.Bls12377.scalarModulus := by omega
    have hout : output = value :=
      subtract_output_of_lt value output hbool hexec
    rw [hout]
    exact ⟨hlt, Nat.ModEq.refl _, fun h => by omega, fun _ => rfl⟩

private def zeroLimbs : FrLimbArray :=
  MacCampaign.Array.replicate (Usize.ofNat 4) (MacCampaign.U64.ofNat 0)

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value =>
      exact ⟨value, rfl, hexec⟩

private def mulTrace (a b output : FrLimbArray) : Prop :=
  ∃ r0 r1 r2 r3,
    ark_ip_proofs.s3_07_arkworks_fr_spike.round zeroLimbs a
      (limbWord b ⟨0, by decide⟩) = .ok r0 ∧
    ark_ip_proofs.s3_07_arkworks_fr_spike.round r0 a
      (limbWord b ⟨1, by decide⟩) = .ok r1 ∧
    ark_ip_proofs.s3_07_arkworks_fr_spike.round r1 a
      (limbWord b ⟨2, by decide⟩) = .ok r2 ∧
    ark_ip_proofs.s3_07_arkworks_fr_spike.round r2 a
      (limbWord b ⟨3, by decide⟩) = .ok r3 ∧
    ark_ip_proofs.s3_07_arkworks_fr_spike.subtract_modulus r3 = .ok output

set_option maxHeartbeats 1000000 in
private theorem extracted_mul_trace (a b output : FrLimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.mul a b = .ok output) :
    mulTrace a b output := by
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.mul] at hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 0) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord b ⟨0, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.round zeroLimbs a
    (limbWord b ⟨0, by decide⟩) >>= _ = .ok output at hrun
  obtain ⟨r0, hr0, hrun⟩ := bind_eq_ok hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 1) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord b ⟨1, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.round r0 a
    (limbWord b ⟨1, by decide⟩) >>= _ = .ok output at hrun
  obtain ⟨r1, hr1, hrun⟩ := bind_eq_ok hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 2) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord b ⟨2, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.round r1 a
    (limbWord b ⟨2, by decide⟩) >>= _ = .ok output at hrun
  obtain ⟨r2, hr2, hrun⟩ := bind_eq_ok hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 3) >>= _ =
    .ok output at hrun
  have hrun := continue_after_ok
    (array_index_limbWord b ⟨3, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.round r2 a
    (limbWord b ⟨3, by decide⟩) >>= _ = .ok output at hrun
  obtain ⟨r3, hr3, hrun⟩ := bind_eq_ok hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.subtract_modulus r3 >>= _ =
    .ok output at hrun
  obtain ⟨result, hsub, hreturn⟩ := bind_eq_ok hrun
  simp only [Result.ok.injEq] at hreturn
  subst result
  exact ⟨r0, r1, r2, r3, hr0, hr1, hr2, hr3, hsub⟩

private theorem zeroLimbs_value : limbsToNat zeroLimbs = 0 := by
  simp [zeroLimbs, limbsToNat, prefixToNat, limb, limbWord,
    MacCampaign.Array.replicate, limbCount, MacCampaign.U64.ofNat]

theorem extracted_mul_spec (a b output : FrLimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.scalarModulus)
    (hb : limbsToNat b < Ipp.Bls12377.scalarModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.mul a b = .ok output) :
    limbsToNat output < Ipp.Bls12377.scalarModulus ∧
    Nat.ModEq Ipp.Bls12377.scalarModulus
      (limbsToNat output * wordBase ^ limbCount)
      (limbsToNat a * limbsToNat b) := by
  obtain ⟨r0, r1, r2, r3, hr0, hr1, hr2, hr3, hsub⟩ :=
    extracted_mul_trace a b output hexec
  have hi0 : roundInvariant a b (0, zeroLimbs) := by
    refine ⟨by simp [limbCount], ?_, ?_⟩
    · rw [zeroLimbs_value]
      norm_num [Ipp.Bls12377.scalarModulus]
    · simpa [zeroLimbs_value, prefixToNat] using
        (Nat.ModEq.refl 0 : Nat.ModEq Ipp.Bls12377.scalarModulus 0 0)
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
  have hsubspec := extracted_subtract_modulus_spec r3 output hi4.2.1 hsub
  have hscaled := hsubspec.2.1.mul_right (wordBase ^ limbCount)
  have houter : Nat.ModEq Ipp.Bls12377.scalarModulus
      (limbsToNat r3 * wordBase ^ limbCount)
      (limbsToNat a * limbsToNat b) := by
    simpa [roundInvariant, limbsToNat, limbCount, Nat.mul_comm] using hi4.2.2
  exact (fun _ : limbsToNat b < Ipp.Bls12377.scalarModulus =>
    ⟨hsubspec.1, hscaled.trans houter⟩) hb

theorem wordRadix_eq_scalarMontgomeryRadix :
    wordBase ^ limbCount = Ipp.Bls12377.scalarMontgomeryRadix := by
  change (2 ^ 64) ^ 4 = 2 ^ 256
  norm_num [← pow_mul]

def decode (value : FrLimbArray) : Ipp.Bls12377.Fr :=
  Ipp.Bls12377.montgomeryDecode Ipp.Bls12377.scalarModulus
    Ipp.Bls12377.scalarMontgomeryRadix { value := limbsToNat value }

private theorem decode_mul_of_mul_radix
    (output left right radix : Ipp.Bls12377.Fr)
    (hequation : output * radix = left * right)
    (hcancel : radix * radix⁻¹ = 1) :
    output * radix⁻¹ = (left * radix⁻¹) * (right * radix⁻¹) := by
  calc
    output * radix⁻¹ = (output * radix⁻¹) * (radix * radix⁻¹) := by
      rw [hcancel, mul_one]
    _ = (output * radix) * (radix⁻¹ * radix⁻¹) := by ring
    _ = (left * right) * (radix⁻¹ * radix⁻¹) := by rw [hequation]
    _ = (left * radix⁻¹) * (right * radix⁻¹) := by ring

private theorem scalarMontgomeryRadix_coprime :
    Nat.Coprime Ipp.Bls12377.scalarMontgomeryRadix
      Ipp.Bls12377.scalarModulus := by
  rw [Ipp.Bls12377.scalarMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 256)]
  norm_num [Ipp.Bls12377.scalarModulus]

theorem decode_eq_cast_mul_inv (value : FrLimbArray) :
    decode value = (limbsToNat value : Ipp.Bls12377.Fr) *
      (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹ := rfl

set_option maxHeartbeats 1000000 in
theorem decode_extracted_mul (a b output : FrLimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.scalarModulus)
    (hb : limbsToNat b < Ipp.Bls12377.scalarModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.mul a b = .ok output) :
    decode output = decode a * decode b := by
  have hmul := (extracted_mul_spec a b output ha hb hexec).2
  have hmod : Nat.ModEq Ipp.Bls12377.scalarModulus
      (limbsToNat output * Ipp.Bls12377.scalarMontgomeryRadix)
      (limbsToNat a * limbsToNat b) := by
    simpa only [wordRadix_eq_scalarMontgomeryRadix] using hmul
  have hcastNat :
      ((limbsToNat output * Ipp.Bls12377.scalarMontgomeryRadix : Nat) :
          Ipp.Bls12377.Fr) =
        ((limbsToNat a * limbsToNat b : Nat) : Ipp.Bls12377.Fr) :=
    (ZMod.natCast_eq_natCast_iff _ _ _).2 hmod
  have hcast :
      (limbsToNat output : Ipp.Bls12377.Fr) *
          (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr) =
        (limbsToNat a : Ipp.Bls12377.Fr) *
          (limbsToNat b : Ipp.Bls12377.Fr) := by
    simpa only [Nat.cast_mul] using hcastNat
  rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv,
    decode_eq_cast_mul_inv]
  exact decode_mul_of_mul_radix
    (limbsToNat output : Ipp.Bls12377.Fr)
    (limbsToNat a : Ipp.Bls12377.Fr)
    (limbsToNat b : Ipp.Bls12377.Fr)
    (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr) hcast
    (ZMod.coe_mul_inv_eq_one Ipp.Bls12377.scalarMontgomeryRadix
      scalarMontgomeryRadix_coprime)

/-! ## Addition, subtraction, negation (decode theorems stated directly
against `ZMod scalarModulus`; the Fq files' MontgomeryFq semantic layer is
Fq-specific and unnecessary here because decode is linear). -/

def adcModel (left right carry : MacCampaign.U64) : FrMac :=
  let value := left.val + right.val + carry.val
  { low := MacCampaign.U64.ofNat value
    carry := MacCampaign.U64.ofNat (value / wordBase) }

theorem extracted_adc_eq_model (left right carry : MacCampaign.U64)
    (hcarry : carry.val ≤ 1) :
    ark_ip_proofs.s3_07_arkworks_fr_spike.adc left right carry =
      .ok (adcModel left right carry) := by
  let value := left.val + right.val + carry.val
  have hleft : left.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using left.isLt
  have hright : right.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using right.isLt
  have hsum : left.val + right.val < MacCampaign.u128Base := by
    simp only [MacCampaign.u128Base, wordBase] at *
    omega
  have hvalue : value < MacCampaign.u128Base := by
    dsimp [value]
    simp only [MacCampaign.u128Base, wordBase] at *
    omega
  have hcarryOut : value / wordBase < wordBase := by
    apply (Nat.div_lt_iff_lt_mul wordBase_pos).2
    simpa [u128Base_eq] using hvalue
  have hshift : (MacCampaign.I32.ofNat 64).val < 128 := by decide
  have hshiftValue : (MacCampaign.I32.ofNat 64).val = 64 := by decide
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.adc, lift,
    Result.bind_ok, MacCampaign.castU128, MacCampaign.hAddU128_eq,
    MacCampaign.add128,
    dif_pos hsum]
  have hvalueRaw : left.val + right.val + carry.val <
      MacCampaign.u128Base := by simpa [value] using hvalue
  simp only [dif_pos hvalueRaw, MacCampaign.castU64,
    MacCampaign.hShiftRightU128_eq, MacCampaign.shr128, if_pos hshift]
  simp [adcModel, MacCampaign.U64.ofNat, MacCampaign.U128.ofNat,
    MacCampaign.u64Base, MacCampaign.u128Base, wordBase,
    Nat.mod_eq_of_lt hcarryOut, hshiftValue]

theorem extracted_adc_spec (left right carry : MacCampaign.U64)
    (output : FrMac) (hcarry : carry.val ≤ 1)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.adc left right carry =
      .ok output) :
    Ipp.Extracted.ArkworksFqOps.AdcSpec left.val right.val carry.val
      { low := output.low.val, carry := output.carry.val } := by
  rw [extracted_adc_eq_model left right carry hcarry] at hexec
  cases hexec
  have hl : left.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using left.isLt
  have hr : right.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using right.isLt
  let value := left.val + right.val + carry.val
  have htwo : value < 2 * wordBase := by
    dsimp [value]
    omega
  have hc : value / wordBase ≤ 1 := by
    exact (Nat.div_le_iff_le_mul wordBase_pos).2 (by omega)
  have hcLt : value / wordBase < wordBase := by
    exact lt_of_le_of_lt hc (by decide)
  refine ⟨hl, hr, hcarry, ?_, ?_, ?_⟩
  · simpa [adcModel, MacCampaign.U64.ofNat, MacCampaign.u64Base,
      wordBase] using Nat.mod_lt value wordBase_pos
  · change value / wordBase % wordBase ≤ 1
    rw [Nat.mod_eq_of_lt hcLt]
    exact hc
  · change value = (value / wordBase % MacCampaign.u64Base) * wordBase +
      value % MacCampaign.u64Base
    rw [show MacCampaign.u64Base = wordBase by rfl,
      Nat.mod_eq_of_lt hcLt]
    exact (Nat.mod_add_div value wordBase).symm.trans (by ac_rfl)

private theorem adc_telescope
    (a0 a1 a2 a3 b0 b1 b2 b3 l0 l1 l2 l3 c1 c2 c3 c4 : Nat)
    (h0 : a0 + b0 = c1 * wordBase + l0)
    (h1 : a1 + b1 + c1 = c2 * wordBase + l1)
    (h2 : a2 + b2 + c2 = c3 * wordBase + l2)
    (h3 : a3 + b3 + c3 = c4 * wordBase + l3) :
    (l0 + l1 * wordBase + l2 * wordBase ^ 2 + l3 * wordBase ^ 3) +
        c4 * wordBase ^ 4 =
    (a0 + a1 * wordBase + a2 * wordBase ^ 2 + a3 * wordBase ^ 3) +
    (b0 + b1 * wordBase + b2 * wordBase ^ 2 + b3 * wordBase ^ 3) := by
  norm_num [wordBase] at h0 h1 h2 h3 ⊢
  omega

set_option maxRecDepth 32768 in
theorem extracted_add_raw_spec (a b output : FrLimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.add_raw a b = .ok output) :
    ∃ carry, carry ≤ 1 ∧
      limbsToNat output + carry * wordBase ^ limbCount =
        limbsToNat a + limbsToNat b := by
  let z := MacCampaign.U64.ofNat 0
  let o0 := adcModel (limbWord a ⟨0, by decide⟩)
    (limbWord b ⟨0, by decide⟩) z
  have hz : z.val ≤ 1 := by simp [z, MacCampaign.U64.ofNat]
  have h0 := extracted_adc_eq_model (limbWord a ⟨0, by decide⟩)
    (limbWord b ⟨0, by decide⟩) z hz
  have s0 := extracted_adc_spec _ _ z o0 hz (by simpa [o0] using h0)
  let o1 := adcModel (limbWord a ⟨1, by decide⟩)
    (limbWord b ⟨1, by decide⟩) o0.carry
  have h1 := extracted_adc_eq_model (limbWord a ⟨1, by decide⟩)
    (limbWord b ⟨1, by decide⟩) o0.carry s0.carry_out_le
  have s1 := extracted_adc_spec _ _ o0.carry o1 s0.carry_out_le
    (by simpa [o1] using h1)
  let o2 := adcModel (limbWord a ⟨2, by decide⟩)
    (limbWord b ⟨2, by decide⟩) o1.carry
  have h2 := extracted_adc_eq_model (limbWord a ⟨2, by decide⟩)
    (limbWord b ⟨2, by decide⟩) o1.carry s1.carry_out_le
  have s2 := extracted_adc_spec _ _ o1.carry o2 s1.carry_out_le
    (by simpa [o2] using h2)
  let o3 := adcModel (limbWord a ⟨3, by decide⟩)
    (limbWord b ⟨3, by decide⟩) o2.carry
  have h3 := extracted_adc_eq_model (limbWord a ⟨3, by decide⟩)
    (limbWord b ⟨3, by decide⟩) o2.carry s2.carry_out_le
  have s3 := extracted_adc_spec _ _ o2.carry o3 s2.carry_out_le
    (by simpa [o3] using h3)
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.add_raw] at hrun
  change MacCampaign.Array.index_usize a (Usize.ofNat 0) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord a ⟨0, by decide⟩) hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 0) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord b ⟨0, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.adc _ _ z >>= _ = .ok output at hrun
  have hrun := continue_after_ok (by simpa [z] using h0) hrun
  change MacCampaign.Array.index_usize a (Usize.ofNat 1) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord a ⟨1, by decide⟩) hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 1) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord b ⟨1, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.adc _ _ o0.carry >>= _ = .ok output at hrun
  have hrun := continue_after_ok h1 hrun
  change MacCampaign.Array.index_usize a (Usize.ofNat 2) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord a ⟨2, by decide⟩) hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 2) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord b ⟨2, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.adc _ _ o1.carry >>= _ = .ok output at hrun
  have hrun := continue_after_ok h2 hrun
  change MacCampaign.Array.index_usize a (Usize.ofNat 3) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord a ⟨3, by decide⟩) hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 3) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord b ⟨3, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.adc _ _ o2.carry >>= _ = .ok output at hrun
  have hrun := continue_after_ok h3 hrun
  simp only [Result.ok.injEq] at hrun
  subst output
  refine ⟨o3.carry.val, s3.carry_out_le, ?_⟩
  rw [limbsToNat_make_four, limbsToNat_four a, limbsToNat_four b]
  simpa [limb] using adc_telescope
    (limb a ⟨0, by decide⟩) (limb a ⟨1, by decide⟩)
    (limb a ⟨2, by decide⟩) (limb a ⟨3, by decide⟩)
    (limb b ⟨0, by decide⟩) (limb b ⟨1, by decide⟩)
    (limb b ⟨2, by decide⟩) (limb b ⟨3, by decide⟩)
    o0.low.val o1.low.val o2.low.val o3.low.val
    o0.carry.val o1.carry.val o2.carry.val o3.carry.val
    (by simpa [z, MacCampaign.U64.ofNat, limb] using s0.equation)
    (by simpa [limb] using s1.equation) (by simpa [limb] using s2.equation)
    (by simpa [limb] using s3.equation)

theorem extracted_add_spec (a b output : FrLimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.scalarModulus)
    (hb : limbsToNat b < Ipp.Bls12377.scalarModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.add a b = .ok output) :
    limbsToNat output < Ipp.Bls12377.scalarModulus ∧
    Nat.ModEq Ipp.Bls12377.scalarModulus
      (limbsToNat output) (limbsToNat a + limbsToNat b) := by
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.add] at hrun
  obtain ⟨raw, hraw, hrun⟩ := bind_eq_ok hrun
  obtain ⟨result, hsub, hreturn⟩ := bind_eq_ok hrun
  simp only [Result.ok.injEq] at hreturn
  subst result
  obtain ⟨carry, hcarry, heq⟩ := extracted_add_raw_spec a b raw hraw
  have hsum : limbsToNat a + limbsToNat b <
      2 * Ipp.Bls12377.scalarModulus := by omega
  have hsumRadix : limbsToNat a + limbsToNat b < wordBase ^ limbCount :=
    lt_trans hsum two_modulus_lt_radix
  have hcarryZero : carry = 0 := by
    by_cases hzero : carry = 0
    · exact hzero
    have hone : carry = 1 := by omega
    rw [hone, one_mul] at heq
    have := limbsToNat_lt_radix raw
    omega
  have hrawValue : limbsToNat raw = limbsToNat a + limbsToNat b := by
    simpa [hcarryZero] using heq
  have hsubspec := extracted_subtract_modulus_spec raw output (by
    rw [hrawValue]
    exact hsum) hsub
  exact ⟨hsubspec.1, by rw [← hrawValue]; exact hsubspec.2.1⟩

theorem decode_extracted_add (a b output : FrLimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.scalarModulus)
    (hb : limbsToNat b < Ipp.Bls12377.scalarModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.add a b = .ok output) :
    decode output = decode a + decode b := by
  have hs := (extracted_add_spec a b output ha hb hexec).2
  have hcast : (limbsToNat output : Ipp.Bls12377.Fr) =
      (limbsToNat a : Ipp.Bls12377.Fr) + (limbsToNat b : Ipp.Bls12377.Fr) := by
    have := (ZMod.natCast_eq_natCast_iff _ _ _).2 hs
    simpa [Nat.cast_add] using this
  rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv,
    decode_eq_cast_mul_inv, hcast]
  ring

private theorem sbb_borrow_telescope
    (x0 x1 x2 x3 y0 y1 y2 y3 l0 l1 l2 l3 b1 b2 b3 b4 : Nat)
    (h0 : x0 + wordBase * b1 = y0 + l0)
    (h1 : x1 + wordBase * b2 = y1 + b1 + l1)
    (h2 : x2 + wordBase * b3 = y2 + b2 + l2)
    (h3 : x3 + wordBase * b4 = y3 + b3 + l3) :
    (x0 + x1 * wordBase + x2 * wordBase ^ 2 + x3 * wordBase ^ 3) +
        b4 * wordBase ^ 4 =
    (y0 + y1 * wordBase + y2 * wordBase ^ 2 + y3 * wordBase ^ 3) +
    (l0 + l1 * wordBase + l2 * wordBase ^ 2 + l3 * wordBase ^ 3) := by
  norm_num [wordBase] at h0 h1 h2 h3 ⊢
  omega

set_option maxRecDepth 32768 in
theorem extracted_sub_raw_equation (left right output : FrLimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.sub_raw left right =
      .ok output) :
    ∃ borrow, borrow ≤ 1 ∧
      limbsToNat left + borrow * wordBase ^ limbCount =
        limbsToNat right + limbsToNat output := by
  let z := MacCampaign.U64.ofNat 0
  let o0 := sbbModel (limbWord left ⟨0, by decide⟩)
    (limbWord right ⟨0, by decide⟩) z
  have hz : z.val ≤ 1 := by simp [z, MacCampaign.U64.ofNat]
  have h0 := extracted_sbb_eq_model (limbWord left ⟨0, by decide⟩)
    (limbWord right ⟨0, by decide⟩) z hz
  have s0 := extracted_sbb_spec _ _ z o0 hz (by simpa [o0] using h0)
  let o1 := sbbModel (limbWord left ⟨1, by decide⟩)
    (limbWord right ⟨1, by decide⟩) o0.2
  have h1 := extracted_sbb_eq_model (limbWord left ⟨1, by decide⟩)
    (limbWord right ⟨1, by decide⟩) o0.2 s0.nextBorrow_le
  have s1 := extracted_sbb_spec _ _ o0.2 o1 s0.nextBorrow_le (by simpa [o1] using h1)
  let o2 := sbbModel (limbWord left ⟨2, by decide⟩)
    (limbWord right ⟨2, by decide⟩) o1.2
  have h2 := extracted_sbb_eq_model (limbWord left ⟨2, by decide⟩)
    (limbWord right ⟨2, by decide⟩) o1.2 s1.nextBorrow_le
  have s2 := extracted_sbb_spec _ _ o1.2 o2 s1.nextBorrow_le (by simpa [o2] using h2)
  let o3 := sbbModel (limbWord left ⟨3, by decide⟩)
    (limbWord right ⟨3, by decide⟩) o2.2
  have h3 := extracted_sbb_eq_model (limbWord left ⟨3, by decide⟩)
    (limbWord right ⟨3, by decide⟩) o2.2 s2.nextBorrow_le
  have s3 := extracted_sbb_spec _ _ o2.2 o3 s2.nextBorrow_le (by simpa [o3] using h3)
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.sub_raw,
    array_index_limbWord left ⟨0, by decide⟩,
    array_index_limbWord left ⟨1, by decide⟩,
    array_index_limbWord left ⟨2, by decide⟩,
    array_index_limbWord left ⟨3, by decide⟩,
    array_index_limbWord right ⟨0, by decide⟩,
    array_index_limbWord right ⟨1, by decide⟩,
    array_index_limbWord right ⟨2, by decide⟩,
    array_index_limbWord right ⟨3, by decide⟩,
    Result.bind_ok] at hrun
  rw [show ark_ip_proofs.s3_07_arkworks_fr_spike.sbb _ _
      (MacCampaign.U64.ofNat 0) = .ok o0 by simpa [z] using h0] at hrun
  simp only [Result.bind_ok] at hrun
  rw [h1] at hrun
  simp only [Result.bind_ok] at hrun
  rw [h2] at hrun
  simp only [Result.bind_ok] at hrun
  rw [h3] at hrun
  simp only [Result.bind_ok, Result.ok.injEq] at hrun
  subst output
  refine ⟨o3.2.val, s3.nextBorrow_le, ?_⟩
  rw [limbsToNat_four left, limbsToNat_four right, limbsToNat_make_four]
  simpa [limb, z, MacCampaign.U64.ofNat] using sbb_borrow_telescope
    (limb left ⟨0, by decide⟩) (limb left ⟨1, by decide⟩)
    (limb left ⟨2, by decide⟩) (limb left ⟨3, by decide⟩)
    (limb right ⟨0, by decide⟩) (limb right ⟨1, by decide⟩)
    (limb right ⟨2, by decide⟩) (limb right ⟨3, by decide⟩)
    o0.1.val o1.1.val o2.1.val o3.1.val
    o0.2.val o1.2.val o2.2.val o3.2.val
    (by simpa [limb, z, MacCampaign.U64.ofNat] using s0.equation)
    (by simpa [limb] using s1.equation) (by simpa [limb] using s2.equation)
    (by simpa [limb] using s3.equation)

theorem extracted_sub_raw_of_le (left right output : FrLimbArray)
    (hle : limbsToNat right ≤ limbsToNat left)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.sub_raw left right =
      .ok output) :
    limbsToNat output = limbsToNat left - limbsToNat right := by
  obtain ⟨borrow, hborrow, heq⟩ := extracted_sub_raw_equation left right output hexec
  have hout := limbsToNat_lt_radix output
  have hright := limbsToNat_lt_radix right
  have hborrowZero : borrow = 0 := by
    by_cases hzero : borrow = 0
    · exact hzero
    have hone : borrow = 1 := by omega
    rw [hone, one_mul] at heq
    omega
  rw [hborrowZero, zero_mul, Nat.add_zero] at heq
  omega

def gtPrefix (left right : FrLimbArray) : Nat → Bool
  | 0 => false
  | count + 1 =>
      if hcount : count < limbCount then
        let l := limbWord left ⟨count, hcount⟩
        let r := limbWord right ⟨count, hcount⟩
        if l > r then true else if l = r then gtPrefix left right count else false
      else false

theorem gtPrefix_spec (left right : FrLimbArray) (count : Nat)
    (hcount : count ≤ limbCount) :
    gtPrefix left right count = true ↔
      prefixToNat right count < prefixToNat left count := by
  induction count with
  | zero => simp [gtPrefix]
  | succ count ih =>
      have hlt : count < limbCount := by omega
      rw [prefixToNat_succ left hlt, prefixToNat_succ right hlt]
      simp only [gtPrefix, dif_pos hlt]
      let l := limbWord left ⟨count, hlt⟩
      let r := limbWord right ⟨count, hlt⟩
      change (if l > r then true else if l = r then gtPrefix left right count
        else false) = true ↔ _
      by_cases hgt : l > r
      · rw [if_pos hgt]
        simp only [true_iff]
        have hlp := prefixToNat_lt_pow left count (by omega)
        have hrp := prefixToNat_lt_pow right count (by omega)
        have hp : 0 < wordBase ^ count := pow_pos wordBase_pos count
        have hd : limb right ⟨count, hlt⟩ + 1 ≤ limb left ⟨count, hlt⟩ := by
          change r.val + 1 ≤ l.val
          exact hgt
        have hm := Nat.mul_le_mul_right (wordBase ^ count) hd
        nlinarith
      · rw [if_neg hgt]
        by_cases heq : l = r
        · rw [if_pos heq]
          have hd : limb left ⟨count, hlt⟩ = limb right ⟨count, hlt⟩ := by
            change l.val = r.val
            exact congrArg MacCampaign.U64.val heq
          rw [hd]
          simpa only [Nat.add_lt_add_iff_right] using ih (by omega)
        · rw [if_neg heq]
          simp only [Bool.false_eq_true, false_iff, not_lt]
          have hlp := prefixToNat_lt_pow left count (by omega)
          have hrp := prefixToNat_lt_pow right count (by omega)
          have hp : 0 < wordBase ^ count := pow_pos wordBase_pos count
          have hne : l.val ≠ r.val := by
            intro hv
            exact heq (sbb_u64_eq_of_val_eq l r hv)
          have hd : limb left ⟨count, hlt⟩ + 1 ≤ limb right ⟨count, hlt⟩ := by
            change l.val + 1 ≤ r.val
            change ¬r.val < l.val at hgt
            omega
          have hm := Nat.mul_le_mul_right (wordBase ^ count) hd
          nlinarith

set_option maxHeartbeats 1000000 in
theorem extracted_gt_prefix (left right : FrLimbArray) :
    ark_ip_proofs.s3_07_arkworks_fr_spike.gt left right =
      .ok (gtPrefix left right limbCount) := by
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.gt,
    array_index_limbWord left ⟨3, by decide⟩,
    array_index_limbWord left ⟨2, by decide⟩,
    array_index_limbWord left ⟨1, by decide⟩,
    array_index_limbWord left ⟨0, by decide⟩,
    array_index_limbWord right ⟨3, by decide⟩,
    array_index_limbWord right ⟨2, by decide⟩,
    array_index_limbWord right ⟨1, by decide⟩,
    array_index_limbWord right ⟨0, by decide⟩,
    Result.bind_ok]
  simp [gtPrefix, limbCount]
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all

theorem extracted_gt_spec (left right : FrLimbArray) :
    ark_ip_proofs.s3_07_arkworks_fr_spike.gt left right =
      .ok (decide (limbsToNat right < limbsToNat left)) := by
  rw [extracted_gt_prefix]
  congr 2
  have hs := gtPrefix_spec left right limbCount (by omega)
  cases h : gtPrefix left right limbCount with
  | false =>
      have hn : ¬limbsToNat right < limbsToNat left := by
        intro hlt
        have hp : prefixToNat right limbCount < prefixToNat left limbCount := by
          simpa [limbsToNat] using hlt
        have := hs.mpr hp
        simp [h] at this
      simp [hn]
  | true =>
      have hlt : limbsToNat right < limbsToNat left := by
        simpa [limbsToNat] using hs.mp h
      simp [hlt]

theorem extracted_sub_spec (a b output : FrLimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.scalarModulus)
    (hb : limbsToNat b < Ipp.Bls12377.scalarModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.sub a b = .ok output) :
    limbsToNat output < Ipp.Bls12377.scalarModulus ∧
    limbsToNat output + limbsToNat b =
      limbsToNat a +
        (if limbsToNat a < limbsToNat b then Ipp.Bls12377.scalarModulus else 0) := by
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.sub] at hrun
  change ark_ip_proofs.s3_07_arkworks_fr_spike.gt b a >>= _ = .ok output at hrun
  have hrun := continue_after_ok (extracted_gt_spec b a) hrun
  by_cases hlt : limbsToNat a < limbsToNat b
  · simp only [decide_eq_true_eq.mpr hlt, if_true] at hrun
    obtain ⟨raw, hraw, hrun⟩ := bind_eq_ok hrun
    change ark_ip_proofs.s3_07_arkworks_fr_spike.sub_raw raw b >>= _ =
      .ok output at hrun
    obtain ⟨result, hsub, hreturn⟩ := bind_eq_ok hrun
    simp only [Result.ok.injEq] at hreturn
    subst result
    obtain ⟨carry, hcarry, heq⟩ := extracted_add_raw_spec a
      ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS raw hraw
    have hsum : limbsToNat a + Ipp.Bls12377.scalarModulus <
        wordBase ^ limbCount := by
      calc
        _ < 2 * Ipp.Bls12377.scalarModulus := by omega
        _ < _ := two_modulus_lt_radix
    have hcarryZero : carry = 0 := by
      by_cases hzero : carry = 0
      · exact hzero
      have hone : carry = 1 := by omega
      rw [modulus_limbsToNat, hone, one_mul] at heq
      have := limbsToNat_lt_radix raw
      omega
    rw [modulus_limbsToNat, hcarryZero, zero_mul, Nat.add_zero] at heq
    have hle : limbsToNat b ≤ limbsToNat raw := by omega
    have hout := extracted_sub_raw_of_le raw b output hle hsub
    rw [if_pos hlt]
    constructor
    · rw [hout]; omega
    · rw [hout]; omega
  · have hle : limbsToNat b ≤ limbsToNat a := by omega
    simp only [decide_eq_false_iff_not.mpr (by omega : ¬limbsToNat a < limbsToNat b),
      if_false] at hrun
    change ark_ip_proofs.s3_07_arkworks_fr_spike.sub_raw a b >>= _ =
      .ok output at hrun
    obtain ⟨result, hsub, hreturn⟩ := bind_eq_ok hrun
    simp only [Result.ok.injEq] at hreturn
    subst result
    have hout := extracted_sub_raw_of_le a b output hle hsub
    rw [if_neg hlt]
    constructor
    · rw [hout]; exact lt_of_le_of_lt (Nat.sub_le _ _) ha
    · rw [hout]; omega

theorem decode_extracted_sub (a b output : FrLimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.scalarModulus)
    (hb : limbsToNat b < Ipp.Bls12377.scalarModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.sub a b = .ok output) :
    decode output = decode a - decode b := by
  have hs := (extracted_sub_spec a b output ha hb hexec).2
  have hmod : Nat.ModEq Ipp.Bls12377.scalarModulus
      (limbsToNat output + limbsToNat b) (limbsToNat a) := by
    rw [hs]
    split
    · exact Nat.add_mod_right _ _
    · simp [Nat.ModEq]
  have hcast : (limbsToNat output : Ipp.Bls12377.Fr) +
      (limbsToNat b : Ipp.Bls12377.Fr) = (limbsToNat a : Ipp.Bls12377.Fr) := by
    have := (ZMod.natCast_eq_natCast_iff _ _ _).2 hmod
    simpa [Nat.cast_add] using this
  have hval : (limbsToNat output : Ipp.Bls12377.Fr) =
      (limbsToNat a : Ipp.Bls12377.Fr) - (limbsToNat b : Ipp.Bls12377.Fr) := by
    linear_combination hcast
  rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv,
    decode_eq_cast_mul_inv, hval]
  ring

private theorem eq_zero_limbs_of_value_zero (a : FrLimbArray)
    (hvalue : limbsToNat a = 0) :
    ∀ i : Fin limbCount, (limbWord a i).val = 0 := by
  have hfour := limbsToNat_four a
  rw [hvalue] at hfour
  have hsum := hfour.symm
  obtain ⟨hsum3, hterm3⟩ := Nat.eq_zero_of_add_eq_zero hsum
  obtain ⟨hsum2, hterm2⟩ := Nat.eq_zero_of_add_eq_zero hsum3
  obtain ⟨hterm0, hterm1⟩ := Nat.eq_zero_of_add_eq_zero hsum2
  intro i
  have h0 : limb a ⟨0, by decide⟩ = 0 := hterm0
  have h1 : limb a ⟨1, by decide⟩ = 0 :=
    (Nat.mul_eq_zero.mp hterm1).resolve_right (ne_of_gt wordBase_pos)
  have h2 : limb a ⟨2, by decide⟩ = 0 :=
    (Nat.mul_eq_zero.mp hterm2).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  have h3 : limb a ⟨3, by decide⟩ = 0 :=
    (Nat.mul_eq_zero.mp hterm3).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  fin_cases i <;> assumption

def zeroLimbs4 : FrLimbArray :=
  MacCampaign.Array.replicate (Usize.ofNat 4) (MacCampaign.U64.ofNat 0)

theorem zeroLimbs4_value : limbsToNat zeroLimbs4 = 0 := by
  simp [zeroLimbs4, limbsToNat, prefixToNat, limb, limbWord,
    MacCampaign.Array.replicate, limbCount, MacCampaign.U64.ofNat]

private theorem eq_zeroLimbs4_of_value_zero (a : FrLimbArray)
    (hvalue : limbsToNat a = 0) : a = zeroLimbs4 := by
  have hlimbs := eq_zero_limbs_of_value_zero a hvalue
  apply MacCampaign.Array.ext
  apply List.ext_get
  · simp [zeroLimbs4, MacCampaign.Array.replicate, a.hlen]
  · intro n hn hz
    have hlt : n < 4 := by simpa [a.hlen] using hn
    have hword := hlimbs ⟨n, by simpa [limbCount] using hlt⟩
    simp only [limbWord] at hword
    interval_cases n <;>
      simp [zeroLimbs4, MacCampaign.Array.replicate] <;>
      apply sbb_u64_eq_of_val_eq <;>
      simpa [MacCampaign.U64.ofNat] using hword

theorem extracted_neg_spec (a output : FrLimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.scalarModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.neg a = .ok output) :
    limbsToNat output < Ipp.Bls12377.scalarModulus ∧
    Nat.ModEq Ipp.Bls12377.scalarModulus
      (limbsToNat output + limbsToNat a) 0 := by
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.neg] at hrun
  by_cases hzero : limbsToNat a = 0
  · have harr := eq_zeroLimbs4_of_value_zero a hzero
    subst harr
    have hguard : ark_ip_proofs.core.array.equality.PartialEqArray.eq
        ark_ip_proofs.core.cmp.PartialEqU64 zeroLimbs4
        (MacCampaign.Array.replicate 4#usize (MacCampaign.U64.ofNat 0)) =
          .ok true := by
      simp [ark_ip_proofs.core.array.equality.PartialEqArray.eq,
        zeroLimbs4, MacCampaign.Array.replicate]
    rw [hguard] at hrun
    simp only [Result.bind_ok, if_true, Result.ok.injEq] at hrun
    subst hrun
    refine ⟨?_, ?_⟩
    · rw [zeroLimbs4_value]
      norm_num [Ipp.Bls12377.scalarModulus]
    · simp only [zeroLimbs4_value, Nat.add_zero]
      rfl
  · have hne : a.val ≠ zeroLimbs4.val := by
      intro hv
      have harr : a = zeroLimbs4 := by
        apply MacCampaign.Array.ext
        exact hv
      exact hzero (by rw [harr, zeroLimbs4_value])
    have hguard : ark_ip_proofs.core.array.equality.PartialEqArray.eq
        ark_ip_proofs.core.cmp.PartialEqU64 a
        (MacCampaign.Array.replicate 4#usize (MacCampaign.U64.ofNat 0)) =
          .ok false := by
      simp [ark_ip_proofs.core.array.equality.PartialEqArray.eq,
        MacCampaign.Array.replicate]
      intro hv
      exact absurd (by simpa [zeroLimbs4, MacCampaign.Array.replicate] using hv) hne
    rw [hguard] at hrun
    simp only [Result.bind_ok, Bool.false_eq_true, if_false] at hrun
    change ark_ip_proofs.s3_07_arkworks_fr_spike.sub_raw
      ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS a >>= _ = .ok output at hrun
    obtain ⟨result, hsub, hreturn⟩ := bind_eq_ok hrun
    simp only [Result.ok.injEq] at hreturn
    subst result
    have hout := extracted_sub_raw_of_le
      ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS a output
      (by rw [modulus_limbsToNat]; exact ha.le) hsub
    rw [modulus_limbsToNat] at hout
    refine ⟨by rw [hout]; omega, ?_⟩
    rw [hout]
    have : Ipp.Bls12377.scalarModulus - limbsToNat a + limbsToNat a =
        Ipp.Bls12377.scalarModulus := by omega
    rw [this]
    simpa using (Nat.modEq_zero_iff_dvd).2 dvd_rfl

theorem decode_extracted_neg (a output : FrLimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.scalarModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.neg a = .ok output) :
    decode output = -decode a := by
  have hs := (extracted_neg_spec a output ha hexec).2
  have hcast : (limbsToNat output : Ipp.Bls12377.Fr) +
      (limbsToNat a : Ipp.Bls12377.Fr) = 0 := by
    have := (ZMod.natCast_eq_natCast_iff _ _ _).2 hs
    simpa [Nat.cast_add] using this
  have hval : (limbsToNat output : Ipp.Bls12377.Fr) =
      -(limbsToNat a : Ipp.Bls12377.Fr) := by
    linear_combination hcast
  rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv, hval]
  ring

/-! ## GKP binary extended-Euclidean inversion (four-limb twin of
`ArkworksFqInv`; loopFuel/LoopResult machinery shared from AeneasRuntime). -/

def oneArray4 : FrLimbArray :=
  MacCampaign.Array.make (Usize.ofNat 4)
    [MacCampaign.U64.ofNat 1, MacCampaign.U64.ofNat 0,
     MacCampaign.U64.ofNat 0, MacCampaign.U64.ofNat 0]

theorem limbsToNat_oneArray4 : limbsToNat oneArray4 = 1 := by decide

theorem limbsToNat_R2_lt :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fr_spike.R2 <
      Ipp.Bls12377.scalarModulus := by
  norm_num [limbsToNat, prefixToNat, limbCount, limb, limbWord,
    ark_ip_proofs.s3_07_arkworks_fr_spike.R2, MacCampaign.Array.make,
    MacCampaign.U64.ofNat, MacCampaign.u64Base, wordBase,
    Ipp.Bls12377.scalarModulus]

theorem R2_modEq : Nat.ModEq Ipp.Bls12377.scalarModulus
    (limbsToNat ark_ip_proofs.s3_07_arkworks_fr_spike.R2)
    (Ipp.Bls12377.scalarMontgomeryRadix ^ 2) := by
  norm_num [Nat.ModEq, limbsToNat, prefixToNat, limbCount, limb, limbWord,
    ark_ip_proofs.s3_07_arkworks_fr_spike.R2, MacCampaign.Array.make,
    MacCampaign.U64.ofNat, MacCampaign.u64Base, wordBase,
    Ipp.Bls12377.scalarModulus,
    Ipp.Bls12377.scalarMontgomeryRadix]

private theorem lor_two_pow_eq_add {value bit : Nat} (hvalue : value < 2 ^ bit) :
    value ||| 2 ^ bit = value + 2 ^ bit := by
  induction bit generalizing value with
  | zero => simp_all
  | succ bit ih =>
      have hhalf : value / 2 < 2 ^ bit := by
        rw [Nat.div_lt_iff_lt_mul (by decide)]
        simpa [pow_succ, Nat.mul_comm] using hvalue
      calc
        value ||| 2 ^ (bit + 1) =
            Nat.bit value.bodd value.div2 ||| Nat.bit false (2 ^ bit) := by
          rw [Nat.bit_bodd_div2]
          congr 1
          simp [Nat.bit, pow_succ, Nat.mul_comm]
        _ = Nat.bit value.bodd (value.div2 ||| 2 ^ bit) := by
          simp only [Nat.lor_bit, Bool.or_false]
        _ = Nat.bit value.bodd (value.div2 + 2 ^ bit) := by
          rw [ih (by simpa [Nat.div2] using hhalf)]
        _ = value + 2 ^ (bit + 1) := by
          rw [Nat.bit_val]
          have hdecomp := Nat.bodd_add_div2 value
          simp only [pow_succ]
          omega

private theorem u64_shift_join (low high : MacCampaign.U64) :
    MacCampaign.or64
      (MacCampaign.U64.ofNat (low.val / 2))
      (MacCampaign.U64.ofNat (high.val * 2 ^ 63)) =
    MacCampaign.U64.ofNat (low.val / 2 + (high.val % 2) * 2 ^ 63) := by
  rcases low with ⟨low, hlow⟩
  rcases high with ⟨high, hhigh⟩
  simp only [MacCampaign.or64, MacCampaign.U64.ofNat, MacCampaign.U64.mk.injEq]
  have hlow' : low / 2 < 2 ^ 63 := by
    change low < 2 ^ 64 at hlow
    omega
  have hbit : high % 2 = 0 ∨ high % 2 = 1 := by omega
  have hlowMod : low / 2 % 2 ^ 64 = low / 2 :=
    Nat.mod_eq_of_lt (lt_trans hlow' (by omega))
  have hhighShift : high * 2 ^ 63 % 2 ^ 64 = (high % 2) * 2 ^ 63 := by
    omega
  rcases hbit with hbit | hbit
  · rw [show MacCampaign.u64Base = 2 ^ 64 by rfl, hlowMod, hhighShift, hbit]
    simp
  · rw [show MacCampaign.u64Base = 2 ^ 64 by rfl, hlowMod, hhighShift, hbit,
      one_mul]
    rw [lor_two_pow_eq_add hlow']

@[simp] private theorem u64_shift_join_op (low high : MacCampaign.U64) :
    (MacCampaign.U64.ofNat (low.val / 2) |||
      MacCampaign.U64.ofNat (high.val * 2 ^ 63)) =
    MacCampaign.U64.ofNat (low.val / 2 + (high.val % 2) * 2 ^ 63) :=
  u64_shift_join low high

@[simp] private theorem shr64_one (value : MacCampaign.U64) :
    (value >>> (MacCampaign.I32.ofNat 1) : Result MacCampaign.U64) =
      .ok (MacCampaign.U64.ofNat (value.val / 2)) := by
  change MacCampaign.shr64 value (MacCampaign.I32.ofNat 1) = _
  simp [MacCampaign.shr64, MacCampaign.I32.ofNat, MacCampaign.i32Base]

@[simp] private theorem shl64_sixtyThree (value : MacCampaign.U64) :
    (value <<< (MacCampaign.I32.ofNat 63) : Result MacCampaign.U64) =
      .ok (MacCampaign.U64.ofNat (value.val * 2 ^ 63)) := by
  change MacCampaign.shl64 value (MacCampaign.I32.ofNat 63) = _
  simp [MacCampaign.shl64, MacCampaign.I32.ofNat, MacCampaign.i32Base]

@[simp] theorem extracted_shr_join (low high : MacCampaign.U64) :
    ark_ip_proofs.s3_07_arkworks_fr_spike.shr_join low high =
      .ok (MacCampaign.U64.ofNat
        (low.val / 2 + (high.val % 2) * 2 ^ 63)) := by
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.shr_join, shr64_one,
    Result.bind_ok, shl64_sixtyThree]
  rw [u64_shift_join_op]

@[simp] private theorem shift_join_val (low high : MacCampaign.U64) :
    (MacCampaign.U64.ofNat
      (low.val / 2 + high.val % 2 * 2 ^ 63)).val =
      low.val / 2 + high.val % 2 * 2 ^ 63 := by
  simp only [MacCampaign.U64.ofNat]
  change (low.val / 2 + high.val % 2 * 2 ^ 63) % 2 ^ 64 = _
  apply Nat.mod_eq_of_lt
  have hlow : low.val < 2 ^ 64 := low.isLt
  have hhigh : high.val % 2 < 2 := Nat.mod_lt _ (by decide)
  omega

@[simp] private theorem half_val (value : MacCampaign.U64) :
    (MacCampaign.U64.ofNat (value.val / 2)).val = value.val / 2 := by
  simp only [MacCampaign.U64.ofNat]
  change (value.val / 2) % 2 ^ 64 = _
  apply Nat.mod_eq_of_lt
  have := value.isLt
  change value.val < 2 ^ 64 at this
  omega

private theorem div2_telescope (base half x0 x1 x2 x3 : Nat)
    (hbase : base = 2 * half) :
    x0 + x1 * base + x2 * base ^ 2 + x3 * base ^ 3 =
      2 * (x0 / 2 + x1 % 2 * half +
        (x1 / 2 + x2 % 2 * half) * base +
        (x2 / 2 + x3 % 2 * half) * base ^ 2 +
        (x3 / 2) * base ^ 3) + x0 % 2 := by
  calc
    x0 + x1 * base + x2 * base ^ 2 + x3 * base ^ 3 =
      (x0 % 2 + 2 * (x0 / 2)) +
        (x1 % 2 + 2 * (x1 / 2)) * base +
        (x2 % 2 + 2 * (x2 / 2)) * base ^ 2 +
        (x3 % 2 + 2 * (x3 / 2)) * base ^ 3 := by
          simp only [Nat.mod_add_div]
    _ = 2 * (x0 / 2 + x1 % 2 * half +
        (x1 / 2 + x2 % 2 * half) * base +
        (x2 / 2 + x3 % 2 * half) * base ^ 2 +
        (x3 / 2) * base ^ 3) + x0 % 2 := by
          subst base
          ring

private theorem two_mul_add_div (value remainder : Nat) (hrem : remainder < 2) :
    (2 * value + remainder) / 2 = value := by
  omega

set_option maxHeartbeats 400000 in
theorem extracted_div2_spec (input output : FrLimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.div2 input = .ok output) :
    limbsToNat output = limbsToNat input / 2 := by
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.div2] at hexec
  obtain ⟨w0, hw0, hexec⟩ := bind_eq_ok hexec
  rw [array_index_limbWord input ⟨0, by decide⟩] at hw0
  simp only [Result.ok.injEq] at hw0
  subst w0
  obtain ⟨w1, hw1, hexec⟩ := bind_eq_ok hexec
  rw [array_index_limbWord input ⟨1, by decide⟩] at hw1
  simp only [Result.ok.injEq] at hw1
  subst w1
  obtain ⟨y0, hy0, hexec⟩ := bind_eq_ok hexec
  rw [extracted_shr_join] at hy0
  simp only [Result.ok.injEq] at hy0
  subst y0
  obtain ⟨w2, hw2, hexec⟩ := bind_eq_ok hexec
  rw [array_index_limbWord input ⟨2, by decide⟩] at hw2
  simp only [Result.ok.injEq] at hw2
  subst w2
  obtain ⟨y1, hy1, hexec⟩ := bind_eq_ok hexec
  rw [extracted_shr_join] at hy1
  simp only [Result.ok.injEq] at hy1
  subst y1
  obtain ⟨w3, hw3, hexec⟩ := bind_eq_ok hexec
  rw [array_index_limbWord input ⟨3, by decide⟩] at hw3
  simp only [Result.ok.injEq] at hw3
  subst w3
  obtain ⟨y2, hy2, hexec⟩ := bind_eq_ok hexec
  rw [extracted_shr_join] at hy2
  simp only [Result.ok.injEq] at hy2
  subst y2
  obtain ⟨y3, hy3, hexec⟩ := bind_eq_ok hexec
  rw [shr64_one] at hy3
  simp only [Result.ok.injEq] at hy3
  subst y3
  simp only [Result.ok.injEq] at hexec
  subst output
  rw [limbsToNat_make_four, limbsToNat_four]
  simp only [shift_join_val, half_val]
  let x0 := (limbWord input ⟨0, by decide⟩).val
  let x1 := (limbWord input ⟨1, by decide⟩).val
  let x2 := (limbWord input ⟨2, by decide⟩).val
  let x3 := (limbWord input ⟨3, by decide⟩).val
  change
    x0 / 2 + x1 % 2 * 2 ^ 63 +
        (x1 / 2 + x2 % 2 * 2 ^ 63) * wordBase +
        (x2 / 2 + x3 % 2 * 2 ^ 63) * wordBase ^ 2 +
        (x3 / 2) * wordBase ^ 3 =
      (x0 + x1 * wordBase + x2 * wordBase ^ 2 + x3 * wordBase ^ 3) / 2
  have htwice :
      x0 + x1 * wordBase + x2 * wordBase ^ 2 + x3 * wordBase ^ 3 =
        2 * (x0 / 2 + x1 % 2 * 2 ^ 63 +
          (x1 / 2 + x2 % 2 * 2 ^ 63) * wordBase +
          (x2 / 2 + x3 % 2 * 2 ^ 63) * wordBase ^ 2 +
          (x3 / 2) * wordBase ^ 3) + x0 % 2 :=
    div2_telescope wordBase (2 ^ 63) x0 x1 x2 x3
      (by norm_num [wordBase])
  rw [htwice]
  exact (two_mul_add_div _ _ (Nat.mod_lt _ (by decide))).symm

@[simp] private theorem shl64_one (value : MacCampaign.U64) :
    (value <<< (MacCampaign.I32.ofNat 1) : Result MacCampaign.U64) =
      .ok (MacCampaign.U64.ofNat (value.val * 2)) := by
  change MacCampaign.shl64 value (MacCampaign.I32.ofNat 1) = _
  simp [MacCampaign.shl64, MacCampaign.I32.ofNat, MacCampaign.i32Base]

private theorem limbsToNat_mod_two (value : FrLimbArray) :
    limbsToNat value % 2 = (limbWord value ⟨0, by decide⟩).val % 2 := by
  rw [limbsToNat_four]
  simp [limb, wordBase, Nat.add_mod, Nat.mul_mod]

private theorem shifted_half_eq_iff_even (value : MacCampaign.U64) :
    MacCampaign.U64.ofNat
        ((MacCampaign.U64.ofNat (value.val / 2)).val * 2) = value ↔
      Even value.val := by
  constructor
  · intro h
    have hv := congrArg MacCampaign.U64.val h
    simp only [MacCampaign.U64.ofNat] at hv
    change ((value.val / 2 % 2 ^ 64) * 2) % 2 ^ 64 = value.val at hv
    have hlt : value.val < 2 ^ 64 := value.isLt
    rw [Nat.even_iff]
    omega
  · intro heven
    rcases value with ⟨value, hvalue⟩
    apply sbb_u64_eq_of_val_eq
    simp only [MacCampaign.U64.ofNat]
    change ((value / 2 % 2 ^ 64) * 2) % 2 ^ 64 = value
    change value < 2 ^ 64 at hvalue
    change Even value at heven
    have hlt : value < 2 ^ 64 := hvalue
    rw [Nat.even_iff] at heven
    have hhalf : value / 2 < 2 ^ 64 := by omega
    rw [Nat.mod_eq_of_lt hhalf]
    have hdouble : value / 2 * 2 = value := by omega
    rw [hdouble, Nat.mod_eq_of_lt hlt]

theorem extracted_is_even_spec (input : FrLimbArray) :
    ark_ip_proofs.s3_07_arkworks_fr_spike.is_even input =
      .ok (decide (Even (limbsToNat input))) := by
  simp only [ark_ip_proofs.s3_07_arkworks_fr_spike.is_even,
    array_index_limbWord input ⟨0, by decide⟩, Result.bind_ok,
    shr64_one, shl64_one]
  simp only [shifted_half_eq_iff_even, Nat.even_iff, limbsToNat_mod_two]

private theorem twice_div_two_of_even {value half : Nat}
    (heven : value = half + half) : 2 * (value / 2) = value := by
  omega

private theorem add_raw_modulus_exact (input sum : FrLimbArray)
    (hinput : limbsToNat input < Ipp.Bls12377.scalarModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.add_modulus_raw input =
      .ok sum) :
    limbsToNat sum = limbsToNat input + Ipp.Bls12377.scalarModulus := by
  have hgenerated : ark_ip_proofs.s3_07_arkworks_fr_spike.add_raw input
      ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS = .ok sum := by
    simpa only [ark_ip_proofs.s3_07_arkworks_fr_spike.add_modulus_raw]
      using hexec
  obtain ⟨carry, hcarry, heq⟩ := extracted_add_raw_spec input
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS sum hgenerated
  rw [modulus_limbsToNat] at heq
  have hsumLt : limbsToNat input + Ipp.Bls12377.scalarModulus <
      wordBase ^ limbCount := by
    apply lt_trans _ two_modulus_lt_radix
    simpa [two_mul] using
      Nat.add_lt_add_right hinput Ipp.Bls12377.scalarModulus
  have hcarryZero : carry = 0 := by
    by_cases hz : carry = 0
    · exact hz
    have hc : carry = 1 := by omega
    rw [hc, one_mul] at heq
    exfalso
    have hradixLe : wordBase ^ limbCount ≤
        limbsToNat input + Ipp.Bls12377.scalarModulus := by
      rw [← heq]
      exact Nat.le_add_left _ _
    exact (Nat.not_le_of_lt hsumLt) hradixLe
  simpa [hcarryZero] using heq

private theorem half_coefficient_odd_spec (input sum output : FrLimbArray)
    (hinput : limbsToNat input < Ipp.Bls12377.scalarModulus)
    (hnotEven : ¬Even (limbsToNat input))
    (hsumExec : ark_ip_proofs.s3_07_arkworks_fr_spike.add_modulus_raw input =
      .ok sum)
    (hdivExec : ark_ip_proofs.s3_07_arkworks_fr_spike.div2 sum = .ok output) :
    limbsToNat output < Ipp.Bls12377.scalarModulus ∧
      ∃ k ≤ 1, 2 * limbsToNat output =
        limbsToNat input + k * Ipp.Bls12377.scalarModulus := by
  have hsum := add_raw_modulus_exact input sum hinput hsumExec
  have hout := extracted_div2_spec sum output hdivExec
  have hinputOdd : limbsToNat input % 2 = 1 := by
    rw [Nat.even_iff] at hnotEven
    omega
  have hmodulusOdd : Ipp.Bls12377.scalarModulus % 2 = 1 := by
    norm_num [Ipp.Bls12377.scalarModulus]
  have hsumEven :
      (limbsToNat input + Ipp.Bls12377.scalarModulus) % 2 = 0 := by
    rw [Nat.add_mod, hinputOdd, hmodulusOdd]
  have heq : 2 * ((limbsToNat input + Ipp.Bls12377.scalarModulus) / 2) =
      limbsToNat input + Ipp.Bls12377.scalarModulus := by
    rcases Nat.even_iff.mpr hsumEven with ⟨half, hhalf⟩
    exact twice_div_two_of_even hhalf
  rw [hout, hsum]
  refine ⟨by omega, 1, by decide, by simpa using heq⟩

private theorem half_coefficient_odd_exec_spec (input output : FrLimbArray)
    (hinput : limbsToNat input < Ipp.Bls12377.scalarModulus)
    (hnotEven : ¬Even (limbsToNat input))
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.half_coefficient_odd input =
      .ok output) :
    limbsToNat output < Ipp.Bls12377.scalarModulus ∧
      ∃ k ≤ 1, 2 * limbsToNat output =
        limbsToNat input + k * Ipp.Bls12377.scalarModulus := by
  unfold ark_ip_proofs.s3_07_arkworks_fr_spike.half_coefficient_odd at hexec
  obtain ⟨sum, hsum, hrest⟩ := bind_eq_ok hexec
  exact half_coefficient_odd_spec input sum output hinput hnotEven hsum hrest

theorem extracted_half_coefficient_spec (input output : FrLimbArray)
    (hinput : limbsToNat input < Ipp.Bls12377.scalarModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.half_coefficient input =
      .ok output) :
    limbsToNat output < Ipp.Bls12377.scalarModulus ∧
      ∃ k ≤ 1, 2 * limbsToNat output =
        limbsToNat input + k * Ipp.Bls12377.scalarModulus := by
  unfold ark_ip_proofs.s3_07_arkworks_fr_spike.half_coefficient at hexec
  obtain ⟨even, hev, hrest⟩ := bind_eq_ok hexec
  rw [extracted_is_even_spec] at hev
  by_cases heven : Even (limbsToNat input)
  · have heq : even = true := by
      rw [decide_eq_true_eq.mpr heven] at hev
      exact (Result.ok.inj hev).symm
    subst heq
    rw [if_pos rfl] at hrest
    have hout := extracted_div2_spec input output hrest
    rcases heven with ⟨half, hhalf⟩
    refine ⟨?_, 0, Nat.zero_le 1, ?_⟩
    · rw [hout]
      exact lt_of_le_of_lt (Nat.div_le_self (limbsToNat input) 2) hinput
    · rw [Nat.zero_mul, Nat.add_zero, hout]
      exact twice_div_two_of_even hhalf
  · have heq : even = false := by
      rw [decide_eq_false_iff_not.mpr heven] at hev
      exact (Result.ok.inj hev).symm
    subst heq
    rw [if_neg (by simp)] at hrest
    exact half_coefficient_odd_exec_spec input output hinput heven hrest

private abbrev frModulus : Nat := Ipp.Bls12377.scalarModulus

private abbrev frRadixSquared : Nat :=
  Ipp.Bls12377.scalarMontgomeryRadix ^ 2

/-- Facts preserved while one binary-GCD lane strips factors of two. -/
structure CoefficientInvariant (a0 value coefficient : FrLimbArray) : Prop where
  congruent : Nat.ModEq frModulus
    (limbsToNat coefficient * limbsToNat a0)
    (limbsToNat value * frRadixSquared)
  coefficient_lt : limbsToNat coefficient < frModulus
  value_pos : 0 < limbsToNat value

/-- The extended binary-GCD state, entirely in canonical limb integers. -/
structure InvInvariant (a0 u v b c : FrLimbArray) : Prop where
  u_lane : CoefficientInvariant a0 u b
  v_lane : CoefficientInvariant a0 v c
  coprime : Nat.Coprime (limbsToNat u) (limbsToNat v)

private theorem modulus_coprime_two : Nat.gcd frModulus 2 = 1 := by
  norm_num [frModulus, Ipp.Bls12377.scalarModulus]

theorem inv_loop0_loop0_body_spec (a0 u b : FrLimbArray)
    (hinvariant : CoefficientInvariant a0 u b)
    {flow : ControlFlow (FrLimbArray × FrLimbArray) (FrLimbArray × FrLimbArray)}
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0_loop0.body u b =
      .ok flow) :
    match flow with
    | .done state => state = (u, b) ∧ ¬Even (limbsToNat u)
    | .cont state =>
        CoefficientInvariant a0 state.1 state.2 ∧
        limbsToNat state.1 < limbsToNat u ∧
        limbsToNat state.1 ∣ limbsToNat u ∧
        Even (limbsToNat u) := by
  unfold ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0_loop0.body at hexec
  obtain ⟨even, hevenExec, hrest⟩ := bind_eq_ok hexec
  rw [extracted_is_even_spec] at hevenExec
  by_cases heven : Even (limbsToNat u)
  · have heq : even = true := by
      rw [decide_eq_true_eq.mpr heven] at hevenExec
      exact (Result.ok.inj hevenExec).symm
    subst even
    rw [if_pos rfl] at hrest
    obtain ⟨u1, hu1, hrest⟩ := bind_eq_ok hrest
    obtain ⟨b1, hb1, hreturn⟩ := bind_eq_ok hrest
    simp only [Result.ok.injEq] at hreturn
    subst flow
    have hvalue := extracted_div2_spec u u1 hu1
    have hcoefficient := extracted_half_coefficient_spec b b1
      hinvariant.coefficient_lt hb1
    refine ⟨?_, ?_, ?_, heven⟩
    · refine ⟨?_, hcoefficient.1, ?_⟩
      · rw [hvalue]
        obtain ⟨k, _, hk⟩ := hcoefficient.2
        have hdouble : 2 * (limbsToNat u / 2) = limbsToNat u := by
          rcases heven with ⟨half, hhalfValue⟩
          exact twice_div_two_of_even hhalfValue
        apply Nat.ModEq.cancel_left_of_coprime modulus_coprime_two
        calc
          2 * (limbsToNat b1 * limbsToNat a0) =
              (limbsToNat b + k * frModulus) * limbsToNat a0 := by
            rw [← hk]
            ring
          _ = frModulus * (k * limbsToNat a0) +
              limbsToNat b * limbsToNat a0 := by ring
          _ ≡ limbsToNat b * limbsToNat a0 [MOD frModulus] :=
            Nat.ModEq.modulus_mul_add
          _ ≡ limbsToNat u * frRadixSquared [MOD frModulus] :=
            hinvariant.congruent
          _ = (2 * (limbsToNat u / 2)) * frRadixSquared := by
            rw [hdouble]
          _ = 2 * ((limbsToNat u / 2) * frRadixSquared) := by ring
      · rw [hvalue]
        clear hcoefficient
        have hpos : 0 < limbsToNat u := hinvariant.value_pos
        have htwoLe : 2 ≤ limbsToNat u := by
          rcases heven with ⟨half, hhalfValue⟩
          omega
        omega
    · rw [hvalue]
      clear hcoefficient
      have hpos : 0 < limbsToNat u := hinvariant.value_pos
      have htwoLe : 2 ≤ limbsToNat u := by
        rcases heven with ⟨half, hhalfValue⟩
        omega
      omega
    · rw [hvalue]
      exact Nat.div_dvd_of_dvd (by
        rcases heven with ⟨half, hhalfValue⟩
        use half
        omega)
  · have heq : even = false := by
      rw [decide_eq_false_iff_not.mpr heven] at hevenExec
      exact (Result.ok.inj hevenExec).symm
    subst even
    rw [if_neg (by simp)] at hrest
    simp only [Result.ok.injEq] at hrest
    subst flow
    exact ⟨rfl, heven⟩

theorem inv_loop0_loop1_body_spec (a0 v c : FrLimbArray)
    (hinvariant : CoefficientInvariant a0 v c)
    {flow : ControlFlow (FrLimbArray × FrLimbArray) (FrLimbArray × FrLimbArray)}
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0_loop1.body v c =
      .ok flow) :
    match flow with
    | .done state => state = (v, c) ∧ ¬Even (limbsToNat v)
    | .cont state =>
        CoefficientInvariant a0 state.1 state.2 ∧
        limbsToNat state.1 < limbsToNat v ∧
        limbsToNat state.1 ∣ limbsToNat v ∧
        Even (limbsToNat v) := by
  unfold ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0_loop1.body at hexec
  obtain ⟨even, hevenExec, hrest⟩ := bind_eq_ok hexec
  rw [extracted_is_even_spec] at hevenExec
  by_cases heven : Even (limbsToNat v)
  · have heq : even = true := by
      rw [decide_eq_true_eq.mpr heven] at hevenExec
      exact (Result.ok.inj hevenExec).symm
    subst even
    rw [if_pos rfl] at hrest
    obtain ⟨v1, hv1, hrest⟩ := bind_eq_ok hrest
    obtain ⟨c1, hc1, hreturn⟩ := bind_eq_ok hrest
    simp only [Result.ok.injEq] at hreturn
    subst flow
    have hvalue := extracted_div2_spec v v1 hv1
    have hcoefficient := extracted_half_coefficient_spec c c1
      hinvariant.coefficient_lt hc1
    refine ⟨?_, ?_, ?_, heven⟩
    · refine ⟨?_, hcoefficient.1, ?_⟩
      · rw [hvalue]
        obtain ⟨k, _, hk⟩ := hcoefficient.2
        have hdouble : 2 * (limbsToNat v / 2) = limbsToNat v := by
          rcases heven with ⟨half, hhalfValue⟩
          exact twice_div_two_of_even hhalfValue
        apply Nat.ModEq.cancel_left_of_coprime modulus_coprime_two
        calc
          2 * (limbsToNat c1 * limbsToNat a0) =
              (limbsToNat c + k * frModulus) * limbsToNat a0 := by
            rw [← hk]
            ring
          _ = frModulus * (k * limbsToNat a0) +
              limbsToNat c * limbsToNat a0 := by ring
          _ ≡ limbsToNat c * limbsToNat a0 [MOD frModulus] :=
            Nat.ModEq.modulus_mul_add
          _ ≡ limbsToNat v * frRadixSquared [MOD frModulus] :=
            hinvariant.congruent
          _ = (2 * (limbsToNat v / 2)) * frRadixSquared := by
            rw [hdouble]
          _ = 2 * ((limbsToNat v / 2) * frRadixSquared) := by ring
      · rw [hvalue]
        clear hcoefficient
        have hpos : 0 < limbsToNat v := hinvariant.value_pos
        have htwoLe : 2 ≤ limbsToNat v := by
          rcases heven with ⟨half, hhalfValue⟩
          omega
        omega
    · rw [hvalue]
      clear hcoefficient
      have hpos : 0 < limbsToNat v := hinvariant.value_pos
      have htwoLe : 2 ≤ limbsToNat v := by
        rcases heven with ⟨half, hhalfValue⟩
        omega
      omega
    · rw [hvalue]
      exact Nat.div_dvd_of_dvd (by
        rcases heven with ⟨half, hhalfValue⟩
        use half
        omega)
  · have heq : even = false := by
      rw [decide_eq_false_iff_not.mpr heven] at hevenExec
      exact (Result.ok.inj hevenExec).symm
    subst even
    rw [if_neg (by simp)] at hrest
    simp only [Result.ok.injEq] at hrest
    subst flow
    exact ⟨rfl, heven⟩

private theorem loopFuel_exists_of_result {A B : Type}
    {body : A → Result (ControlFlow A B)} {state : A} {result : Result B}
    (hresult : LoopResult body state result) :
    ∃ fuel, loopFuel body fuel state = result := by
  induction hresult with
  | done hbody => exact ⟨1, by rw [loopFuel, hbody]⟩
  | next hbody _ ih =>
      obtain ⟨fuel, hfuel⟩ := ih
      exact ⟨fuel + 1, by rw [loopFuel, hbody]; exact hfuel⟩
  | fail hbody => exact ⟨1, by rw [loopFuel, hbody]⟩
  | div hbody => exact ⟨1, by rw [loopFuel, hbody]⟩

private theorem loopFuel_exists_of_loop_eq {A B : Type}
    {body : A → Result (ControlFlow A B)} {state : A} {output : B}
    (hexec : loop body state = .ok output) :
    ∃ fuel, loopFuel body fuel state = .ok output := by
  exact loopFuel_exists_of_result (loopResult_of_eq (by simp) hexec)

theorem inv_loop0_loop0_fuel_spec (fuel : Nat) (a0 u b uOut bOut : FrLimbArray)
    (hinvariant : CoefficientInvariant a0 u b)
    (hexec : loopFuel
      (fun state : FrLimbArray × FrLimbArray =>
        ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0_loop0.body
          state.1 state.2)
      fuel (u, b) = .ok (uOut, bOut)) :
    CoefficientInvariant a0 uOut bOut ∧
      ¬Even (limbsToNat uOut) ∧
      limbsToNat uOut ∣ limbsToNat u ∧
      (¬Even (limbsToNat u) → uOut = u) := by
  induction fuel generalizing u b with
  | zero => rw [loopFuel] at hexec; cases hexec
  | succ fuel ih =>
      cases hbody :
          ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0_loop0.body u b with
      | fail error => rw [loopFuel, hbody] at hexec; cases hexec
      | div => rw [loopFuel, hbody] at hexec; cases hexec
      | ok flow =>
          cases flow with
          | done state =>
              rw [loopFuel, hbody] at hexec
              have hspec := inv_loop0_loop0_body_spec a0 u b hinvariant hbody
              rcases hspec with ⟨hstate, hodd⟩
              rw [hstate] at hexec
              cases hexec
              exact ⟨hinvariant, hodd, dvd_rfl, fun _ => rfl⟩
          | cont state =>
              rw [loopFuel, hbody] at hexec
              have hspec := inv_loop0_loop0_body_spec a0 u b hinvariant hbody
              rcases hspec with ⟨hnext, _, hdivides, heven⟩
              have hfinal := ih state.1 state.2 hnext hexec
              exact ⟨hfinal.1, hfinal.2.1, hfinal.2.2.1.trans hdivides,
                fun hodd => (hodd heven).elim⟩

theorem inv_loop0_loop1_fuel_spec (fuel : Nat) (a0 v c vOut cOut : FrLimbArray)
    (hinvariant : CoefficientInvariant a0 v c)
    (hexec : loopFuel
      (fun state : FrLimbArray × FrLimbArray =>
        ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0_loop1.body
          state.1 state.2)
      fuel (v, c) = .ok (vOut, cOut)) :
    CoefficientInvariant a0 vOut cOut ∧
      ¬Even (limbsToNat vOut) ∧
      limbsToNat vOut ∣ limbsToNat v ∧
      (¬Even (limbsToNat v) → vOut = v) := by
  induction fuel generalizing v c with
  | zero => rw [loopFuel] at hexec; cases hexec
  | succ fuel ih =>
      cases hbody :
          ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0_loop1.body v c with
      | fail error => rw [loopFuel, hbody] at hexec; cases hexec
      | div => rw [loopFuel, hbody] at hexec; cases hexec
      | ok flow =>
          cases flow with
          | done state =>
              rw [loopFuel, hbody] at hexec
              have hspec := inv_loop0_loop1_body_spec a0 v c hinvariant hbody
              rcases hspec with ⟨hstate, hodd⟩
              rw [hstate] at hexec
              cases hexec
              exact ⟨hinvariant, hodd, dvd_rfl, fun _ => rfl⟩
          | cont state =>
              rw [loopFuel, hbody] at hexec
              have hspec := inv_loop0_loop1_body_spec a0 v c hinvariant hbody
              rcases hspec with ⟨hnext, _, hdivides, heven⟩
              have hfinal := ih state.1 state.2 hnext hexec
              exact ⟨hfinal.1, hfinal.2.1, hfinal.2.2.1.trans hdivides,
                fun hodd => (hodd heven).elim⟩

theorem inv_loop0_loop0_spec (a0 u b uOut bOut : FrLimbArray)
    (hinvariant : CoefficientInvariant a0 u b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0_loop0 u b =
      .ok (uOut, bOut)) :
    CoefficientInvariant a0 uOut bOut ∧
      ¬Even (limbsToNat uOut) ∧
      limbsToNat uOut ∣ limbsToNat u ∧
      (¬Even (limbsToNat u) → uOut = u) := by
  unfold ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0_loop0 at hexec
  obtain ⟨fuel, hfuel⟩ := loopFuel_exists_of_loop_eq hexec
  exact inv_loop0_loop0_fuel_spec fuel a0 u b uOut bOut hinvariant hfuel

theorem inv_loop0_loop1_spec (a0 v c vOut cOut : FrLimbArray)
    (hinvariant : CoefficientInvariant a0 v c)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0_loop1 v c =
      .ok (vOut, cOut)) :
    CoefficientInvariant a0 vOut cOut ∧
      ¬Even (limbsToNat vOut) ∧
      limbsToNat vOut ∣ limbsToNat v ∧
      (¬Even (limbsToNat v) → vOut = v) := by
  unfold ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0_loop1 at hexec
  obtain ⟨fuel, hfuel⟩ := loopFuel_exists_of_loop_eq hexec
  exact inv_loop0_loop1_fuel_spec fuel a0 v c vOut cOut hinvariant hfuel

private theorem extracted_array_eq (left right : FrLimbArray) :
    ark_ip_proofs.core.array.equality.PartialEqArray.eq
      ark_ip_proofs.core.cmp.PartialEqU64 left right =
      .ok (decide (left.val = right.val)) := by
  simp [ark_ip_proofs.core.array.equality.PartialEqArray.eq]

private theorem extracted_array_ne (left right : FrLimbArray) :
    ark_ip_proofs.core.array.equality.PartialEqArray.ne
      ark_ip_proofs.core.cmp.PartialEqU64 left right =
      .ok (decide (left.val ≠ right.val)) := by
  simp [ark_ip_proofs.core.array.equality.PartialEqArray.ne,
    ark_ip_proofs.core.array.equality.PartialEqArray.eq]

private theorem eq_oneArray4_of_value_one (value : FrLimbArray)
    (hvalue : limbsToNat value = 1) : value = oneArray4 := by
  have hfour := limbsToNat_four value
  have h0 : (limbWord value ⟨0, by decide⟩).val = 1 := by
    have hlowLe : (limbWord value ⟨0, by decide⟩).val ≤ 1 := by
      rw [limbsToNat_four] at hvalue
      change
        (limbWord value ⟨0, by decide⟩).val +
          (limbWord value ⟨1, by decide⟩).val * wordBase +
          (limbWord value ⟨2, by decide⟩).val * wordBase ^ 2 +
          (limbWord value ⟨3, by decide⟩).val * wordBase ^ 3 = 1 at hvalue
      omega
    have hparity := limbsToNat_mod_two value
    rw [hvalue] at hparity
    omega
  have hsum :
      (limbWord value ⟨1, by decide⟩).val * wordBase +
        (limbWord value ⟨2, by decide⟩).val * wordBase ^ 2 +
        (limbWord value ⟨3, by decide⟩).val * wordBase ^ 3 = 0 := by
    rw [hvalue] at hfour
    change
      1 = (limbWord value ⟨0, by decide⟩).val +
        (limbWord value ⟨1, by decide⟩).val * wordBase +
        (limbWord value ⟨2, by decide⟩).val * wordBase ^ 2 +
        (limbWord value ⟨3, by decide⟩).val * wordBase ^ 3 at hfour
    omega
  obtain ⟨hsum2, hterm3⟩ := Nat.eq_zero_of_add_eq_zero hsum
  obtain ⟨hterm1, hterm2⟩ := Nat.eq_zero_of_add_eq_zero hsum2
  have h1 : (limbWord value ⟨1, by decide⟩).val = 0 := by
    exact (Nat.mul_eq_zero.mp hterm1).resolve_right
      (ne_of_gt wordBase_pos)
  have h2 : (limbWord value ⟨2, by decide⟩).val = 0 := by
    exact (Nat.mul_eq_zero.mp hterm2).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  have h3 : (limbWord value ⟨3, by decide⟩).val = 0 := by
    exact (Nat.mul_eq_zero.mp hterm3).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  apply MacCampaign.Array.ext
  apply List.ext_get
  · simp [oneArray4, MacCampaign.Array.make, value.hlen]
  · intro n hv ho
    have hn : n < 4 := by simpa [value.hlen] using hv
    interval_cases n <;>
      simp [oneArray4, MacCampaign.Array.make, limbWord] at ho ⊢ <;>
      apply sbb_u64_eq_of_val_eq
    all_goals first
      | simpa [limbWord, MacCampaign.U64.ofNat] using h0
      | simpa [limbWord, MacCampaign.U64.ofNat] using h1
      | simpa [limbWord, MacCampaign.U64.ofNat] using h2
      | simpa [limbWord, MacCampaign.U64.ofNat] using h3

private theorem extracted_sub_add_modEq (left right output : FrLimbArray)
    (hleft : limbsToNat left < frModulus)
    (hright : limbsToNat right < frModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.sub left right =
      .ok output) :
    Nat.ModEq frModulus
      (limbsToNat output + limbsToNat right) (limbsToNat left) := by
  have hs := (extracted_sub_spec left right output hleft hright hexec).2
  rw [hs]
  split
  · exact Nat.add_mod_right _ _
  · simp [Nat.ModEq]

private theorem coefficient_sub_spec (a0 leftValue rightValue
    leftCoefficient rightCoefficient valueOut coefficientOut : FrLimbArray)
    (hleft : CoefficientInvariant a0 leftValue leftCoefficient)
    (hright : CoefficientInvariant a0 rightValue rightCoefficient)
    (hvalueLe : limbsToNat rightValue ≤ limbsToNat leftValue)
    (hvalueLt : limbsToNat rightValue < limbsToNat leftValue)
    (hvalueExec : ark_ip_proofs.s3_07_arkworks_fr_spike.sub_raw
      leftValue rightValue = .ok valueOut)
    (hcoefficientExec : ark_ip_proofs.s3_07_arkworks_fr_spike.sub
      leftCoefficient rightCoefficient = .ok coefficientOut) :
    CoefficientInvariant a0 valueOut coefficientOut := by
  have hvalue := extracted_sub_raw_of_le leftValue rightValue valueOut
    hvalueLe hvalueExec
  have hcoefficient := extracted_sub_spec leftCoefficient rightCoefficient
    coefficientOut hleft.coefficient_lt hright.coefficient_lt hcoefficientExec
  have hadd := extracted_sub_add_modEq leftCoefficient rightCoefficient
    coefficientOut hleft.coefficient_lt hright.coefficient_lt hcoefficientExec
  refine ⟨?_, hcoefficient.1, ?_⟩
  · rw [hvalue]
    apply Nat.ModEq.add_right_cancel'
      (limbsToNat rightValue * frRadixSquared)
    calc
      limbsToNat coefficientOut * limbsToNat a0 +
          limbsToNat rightValue * frRadixSquared
          ≡ limbsToNat coefficientOut * limbsToNat a0 +
            limbsToNat rightCoefficient * limbsToNat a0 [MOD frModulus] :=
        (Nat.ModEq.refl _).add hright.congruent.symm
      _ = (limbsToNat coefficientOut + limbsToNat rightCoefficient) *
          limbsToNat a0 := by ring
      _ ≡ limbsToNat leftCoefficient * limbsToNat a0 [MOD frModulus] :=
        hadd.mul_right (limbsToNat a0)
      _ ≡ limbsToNat leftValue * frRadixSquared [MOD frModulus] :=
        hleft.congruent
      _ = (limbsToNat leftValue - limbsToNat rightValue) * frRadixSquared +
          limbsToNat rightValue * frRadixSquared := by
        rw [← Nat.add_mul, Nat.sub_add_cancel hvalueLe]
  · rw [hvalue]
    omega

/-- A terminal outer-loop state identifies the coefficient selected by `inv`. -/
def InvExit (a0 u b c : FrLimbArray) : Prop :=
  (u = oneArray4 ∧ CoefficientInvariant a0 oneArray4 b) ∨
  (u ≠ oneArray4 ∧ CoefficientInvariant a0 oneArray4 c)

theorem inv_loop0_body_spec (a0 u v b c : FrLimbArray)
    (hinvariant : InvInvariant a0 u v b c)
    {flow : ControlFlow
      (FrLimbArray × FrLimbArray × FrLimbArray × FrLimbArray)
      (FrLimbArray × FrLimbArray × FrLimbArray)}
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0.body
      oneArray4 u v b c = .ok flow) :
    match flow with
    | .done state => InvExit a0 state.1 state.2.1 state.2.2
    | .cont state =>
        InvInvariant a0 state.1 state.2.1 state.2.2.1 state.2.2.2 ∧
        limbsToNat state.1 + limbsToNat state.2.1 <
          limbsToNat u + limbsToNat v := by
  unfold ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0.body at hexec
  obtain ⟨ueq, hueq, hrest⟩ := bind_eq_ok hexec
  rw [extracted_array_ne] at hueq
  by_cases hu : u.val = oneArray4.val
  · have hueqValue : ueq = false := by
      rw [decide_eq_false_iff_not.mpr (not_not_intro hu)] at hueq
      exact (Result.ok.inj hueq).symm
    subst ueq
    rw [if_neg (by simp)] at hrest
    simp only [Result.ok.injEq] at hrest
    subst flow
    left
    have huArray : u = oneArray4 := by
      apply MacCampaign.Array.ext
      exact hu
    exact ⟨huArray, by simpa [huArray] using hinvariant.u_lane⟩
  · have hueqValue : ueq = true := by
      rw [decide_eq_true_eq.mpr hu] at hueq
      exact (Result.ok.inj hueq).symm
    subst ueq
    rw [if_pos (by simp)] at hrest
    obtain ⟨veq, hveq, hrest⟩ := bind_eq_ok hrest
    rw [extracted_array_ne] at hveq
    by_cases hv : v.val = oneArray4.val
    · have hveqValue : veq = false := by
        rw [decide_eq_false_iff_not.mpr (not_not_intro hv)] at hveq
        exact (Result.ok.inj hveq).symm
      subst veq
      rw [if_neg (by simp)] at hrest
      simp only [Result.ok.injEq] at hrest
      subst flow
      right
      have hvArray : v = oneArray4 := by
        apply MacCampaign.Array.ext
        exact hv
      refine ⟨?_, by simpa [hvArray] using hinvariant.v_lane⟩
      intro huArray
      exact hu (congrArg MacCampaign.Array.val huArray)
    · have hveqValue : veq = true := by
        rw [decide_eq_true_eq.mpr hv] at hveq
        exact (Result.ok.inj hveq).symm
      subst veq
      rw [if_pos (by simp)] at hrest
      obtain ⟨ub, hub, hrest⟩ := bind_eq_ok hrest
      rcases ub with ⟨u1, b1⟩
      obtain ⟨vc, hvc, hrest⟩ := bind_eq_ok hrest
      rcases vc with ⟨v1, c1⟩
      have huStrip := inv_loop0_loop0_spec a0 u b u1 b1
        hinvariant.u_lane hub
      have hvStrip := inv_loop0_loop1_spec a0 v c v1 c1
        hinvariant.v_lane hvc
      have hcoprimeU : Nat.Coprime (limbsToNat u1) (limbsToNat v) :=
        hinvariant.coprime.coprime_dvd_left huStrip.2.2.1
      have hcoprime : Nat.Coprime (limbsToNat u1) (limbsToNat v1) :=
        hcoprimeU.coprime_dvd_right hvStrip.2.2.1
      have hnotBothEven : ¬(Even (limbsToNat u) ∧ Even (limbsToNat v)) := by
        rintro ⟨huEven, hvEven⟩
        have huDvd : 2 ∣ limbsToNat u := by
          rcases huEven with ⟨half, hhalf⟩
          use half
          omega
        have hvDvd : 2 ∣ limbsToNat v := by
          rcases hvEven with ⟨half, hhalf⟩
          use half
          omega
        have hgcd : 2 ∣ Nat.gcd (limbsToNat u) (limbsToNat v) :=
          Nat.dvd_gcd huDvd hvDvd
        have hcopInitial := hinvariant.coprime
        rw [Nat.coprime_iff_gcd_eq_one] at hcopInitial
        rw [hcopInitial] at hgcd
        norm_num at hgcd
      have hne : limbsToNat u1 ≠ limbsToNat v1 := by
        intro heq
        have hself : Nat.Coprime (limbsToNat u1) (limbsToNat u1) := by
          simpa [heq] using hcoprime
        rw [Nat.coprime_iff_gcd_eq_one, Nat.gcd_self] at hself
        have huOne := eq_oneArray4_of_value_one u1 hself
        have hvOne := eq_oneArray4_of_value_one v1 (by omega)
        by_cases huEven : Even (limbsToNat u)
        · have hvOdd : ¬Even (limbsToNat v) := by
            intro hvEven
            exact hnotBothEven ⟨huEven, hvEven⟩
          have hvUnchanged := hvStrip.2.2.2 hvOdd
          have hvArray : v = oneArray4 := hvUnchanged.symm.trans hvOne
          exact hv (congrArg MacCampaign.Array.val hvArray)
        · have huUnchanged := huStrip.2.2.2 huEven
          have huArray : u = oneArray4 := huUnchanged.symm.trans huOne
          exact hu (congrArg MacCampaign.Array.val huArray)
      have hu1Le : limbsToNat u1 ≤ limbsToNat u :=
        Nat.le_of_dvd hinvariant.u_lane.value_pos huStrip.2.2.1
      have hv1Le : limbsToNat v1 ≤ limbsToNat v :=
        Nat.le_of_dvd hinvariant.v_lane.value_pos hvStrip.2.2.1
      obtain ⟨ugt, hugt, hrest⟩ := bind_eq_ok hrest
      rw [extracted_gt_spec] at hugt
      by_cases hgt : limbsToNat v1 < limbsToNat u1
      · have hugtValue : ugt = true := by
          rw [decide_eq_true_eq.mpr hgt] at hugt
          exact (Result.ok.inj hugt).symm
        subst ugt
        rw [if_pos rfl] at hrest
        obtain ⟨u2, hu2, hrest⟩ := bind_eq_ok hrest
        obtain ⟨b2, hb2, hreturn⟩ := bind_eq_ok hrest
        simp only [Result.ok.injEq] at hreturn
        subst flow
        have hvalue := extracted_sub_raw_of_le u1 v1 u2 hgt.le hu2
        have huLane := coefficient_sub_spec a0 u1 v1 b1 c1 u2 b2
          huStrip.1 hvStrip.1 hgt.le hgt hu2 hb2
        have hcoprimeNext : Nat.Coprime (limbsToNat u2) (limbsToNat v1) := by
          rw [hvalue]
          exact (Nat.coprime_sub_self_left hgt.le).2 hcoprime
        refine ⟨⟨huLane, hvStrip.1, hcoprimeNext⟩, ?_⟩
        rw [hvalue, Nat.sub_add_cancel hgt.le]
        have hvPos := hinvariant.v_lane.value_pos
        omega
      · have hlt : limbsToNat u1 < limbsToNat v1 := by omega
        have hugtValue : ugt = false := by
          rw [decide_eq_false_iff_not.mpr hgt] at hugt
          exact (Result.ok.inj hugt).symm
        subst ugt
        rw [if_neg (by simp)] at hrest
        obtain ⟨v2, hv2, hrest⟩ := bind_eq_ok hrest
        obtain ⟨c2, hc2, hreturn⟩ := bind_eq_ok hrest
        simp only [Result.ok.injEq] at hreturn
        subst flow
        have hvalue := extracted_sub_raw_of_le v1 u1 v2 hlt.le hv2
        have hvLane := coefficient_sub_spec a0 v1 u1 c1 b1 v2 c2
          hvStrip.1 huStrip.1 hlt.le hlt hv2 hc2
        have hcoprimeNext : Nat.Coprime (limbsToNat u1) (limbsToNat v2) := by
          rw [hvalue]
          exact (Nat.coprime_sub_self_right hlt.le).2 hcoprime
        refine ⟨⟨huStrip.1, hvLane, hcoprimeNext⟩, ?_⟩
        change limbsToNat u1 + limbsToNat v2 < limbsToNat u + limbsToNat v
        rw [hvalue]
        have huPos := hinvariant.u_lane.value_pos
        omega

theorem inv_loop0_fuel_spec (fuel : Nat)
    (a0 u v b c uOut bOut cOut : FrLimbArray)
    (hinvariant : InvInvariant a0 u v b c)
    (hexec : loopFuel
      (fun state : FrLimbArray × FrLimbArray × FrLimbArray × FrLimbArray =>
        ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0.body oneArray4
          state.1 state.2.1 state.2.2.1 state.2.2.2)
      fuel (u, v, b, c) = .ok (uOut, bOut, cOut)) :
    InvExit a0 uOut bOut cOut := by
  induction fuel generalizing u v b c with
  | zero => rw [loopFuel] at hexec; cases hexec
  | succ fuel ih =>
      cases hbody : ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0.body
          oneArray4 u v b c with
      | fail error => rw [loopFuel, hbody] at hexec; cases hexec
      | div => rw [loopFuel, hbody] at hexec; cases hexec
      | ok flow =>
          cases flow with
          | done state =>
              rw [loopFuel, hbody] at hexec
              have hspec := inv_loop0_body_spec a0 u v b c hinvariant hbody
              cases hexec
              exact hspec
          | cont state =>
              rw [loopFuel, hbody] at hexec
              have hspec := inv_loop0_body_spec a0 u v b c hinvariant hbody
              exact ih state.1 state.2.1 state.2.2.1 state.2.2.2
                hspec.1 hexec

theorem inv_loop0_spec (a0 u v b c uOut bOut cOut : FrLimbArray)
    (hinvariant : InvInvariant a0 u v b c)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0
      oneArray4 u v b c = .ok (uOut, bOut, cOut)) :
    InvExit a0 uOut bOut cOut := by
  unfold ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0 at hexec
  obtain ⟨fuel, hfuel⟩ := loopFuel_exists_of_loop_eq hexec
  exact inv_loop0_fuel_spec fuel a0 u v b c uOut bOut cOut
    hinvariant hfuel

private theorem initial_inv_invariant (a : FrLimbArray)
    (ha : limbsToNat a < frModulus) (hne : a ≠ zeroLimbs4) :
    InvInvariant a a ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
      ark_ip_proofs.s3_07_arkworks_fr_spike.R2 zeroLimbs4 := by
  have haPos : 0 < limbsToNat a := by
    by_contra hzero
    have haZero : limbsToNat a = 0 := by omega
    exact hne (eq_zeroLimbs4_of_value_zero a haZero)
  have hprime := Ipp.Bls12377.arithmeticFacts.scalarPrime
  have hcoprime : Nat.Coprime (limbsToNat a) frModulus := by
    apply Nat.Coprime.symm
    rw [hprime.coprime_iff_not_dvd]
    intro hdvd
    have hle := Nat.le_of_dvd haPos hdvd
    exact (Nat.not_le_of_lt ha) hle
  apply InvInvariant.mk
  · apply CoefficientInvariant.mk
    · simpa only [Nat.mul_comm] using R2_modEq.mul_right (limbsToNat a)
    · exact limbsToNat_R2_lt
    · exact haPos
  · apply CoefficientInvariant.mk
    · rw [zeroLimbs4_value, modulus_limbsToNat]
      simpa only [Nat.zero_mul, Nat.add_zero] using
        (Nat.ModEq.modulus_mul_add (m := frModulus)
          (a := frRadixSquared) (b := 0)).symm
    · rw [zeroLimbs4_value]
      norm_num [frModulus, Ipp.Bls12377.scalarModulus]
    · rw [modulus_limbsToNat]
      norm_num [frModulus, Ipp.Bls12377.scalarModulus]
  · rw [modulus_limbsToNat]
    exact hcoprime

theorem extracted_inv_spec (a output : FrLimbArray)
    (ha : limbsToNat a < frModulus) (hne : a ≠ zeroLimbs4)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.inv a =
      .ok (some output)) :
    CoefficientInvariant a oneArray4 output := by
  have hinitial := initial_inv_invariant a ha hne
  unfold ark_ip_proofs.s3_07_arkworks_fr_spike.inv at hexec
  obtain ⟨isZero, hzero, hrest⟩ := bind_eq_ok hexec
  rw [show MacCampaign.Array.replicate 4#usize (MacCampaign.U64.ofNat 0) =
    zeroLimbs4 from rfl] at hzero
  rw [extracted_array_eq] at hzero
  have hzeroVal : a.val ≠ zeroLimbs4.val := by
    intro hval
    apply hne
    apply MacCampaign.Array.ext
    exact hval
  have hisZero : isZero = false := by
    rw [decide_eq_false_iff_not.mpr hzeroVal] at hzero
    exact (Result.ok.inj hzero).symm
  subst isZero
  rw [if_neg (by simp)] at hrest
  obtain ⟨state, hloop, hrest⟩ := bind_eq_ok hrest
  rcases state with ⟨uOut, bOut, cOut⟩
  have hloop' : ark_ip_proofs.s3_07_arkworks_fr_spike.inv_loop0
      oneArray4 a ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
      ark_ip_proofs.s3_07_arkworks_fr_spike.R2 zeroLimbs4 =
        .ok (uOut, bOut, cOut) := by
    simpa [oneArray4, zeroLimbs4] using hloop
  have hexit := inv_loop0_spec a a
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
    ark_ip_proofs.s3_07_arkworks_fr_spike.R2 zeroLimbs4
    uOut bOut cOut hinitial hloop'
  obtain ⟨uIsOne, huIsOne, hreturn⟩ := bind_eq_ok hrest
  rw [show MacCampaign.Array.make 4#usize
      [MacCampaign.U64.ofNat 1, MacCampaign.U64.ofNat 0,
       MacCampaign.U64.ofNat 0, MacCampaign.U64.ofNat 0] = oneArray4
    from rfl] at huIsOne
  rw [extracted_array_eq] at huIsOne
  rcases hexit with hexit | hexit
  · have huVal : uOut.val = oneArray4.val :=
      congrArg MacCampaign.Array.val hexit.1
    have huIsOneValue : uIsOne = true := by
      rw [decide_eq_true_eq.mpr huVal] at huIsOne
      exact (Result.ok.inj huIsOne).symm
    subst uIsOne
    rw [if_pos rfl] at hreturn
    simp only [Result.ok.injEq, Option.some.injEq] at hreturn
    subst output
    exact hexit.2
  · have huVal : uOut.val ≠ oneArray4.val := by
      intro hval
      apply hexit.1
      apply MacCampaign.Array.ext
      exact hval
    have huIsOneValue : uIsOne = false := by
      rw [decide_eq_false_iff_not.mpr huVal] at huIsOne
      exact (Result.ok.inj huIsOne).symm
    subst uIsOne
    rw [if_neg (by simp)] at hreturn
    simp only [Result.ok.injEq, Option.some.injEq] at hreturn
    subst output
    exact hexit.2

theorem decode_extracted_inv (a output : FrLimbArray)
    (ha : limbsToNat a < frModulus) (hne : a ≠ zeroLimbs4)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.inv a =
      .ok (some output)) :
    decode output * decode a = 1 := by
  have hspec := extracted_inv_spec a output ha hne hexec
  have hmod : Nat.ModEq frModulus
      (limbsToNat output * limbsToNat a) frRadixSquared := by
    simpa only [limbsToNat_oneArray4, Nat.one_mul] using hspec.congruent
  have hcastNat :
      ((limbsToNat output * limbsToNat a : Nat) : Ipp.Bls12377.Fr) =
        ((Ipp.Bls12377.scalarMontgomeryRadix ^ 2 : Nat) :
          Ipp.Bls12377.Fr) :=
    (ZMod.natCast_eq_natCast_iff _ _ _).2 hmod
  have hcast :
      (limbsToNat output : Ipp.Bls12377.Fr) *
          (limbsToNat a : Ipp.Bls12377.Fr) =
        (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr) ^ 2 := by
    simpa only [Nat.cast_mul, Nat.cast_pow] using hcastNat
  have hcancel :
      (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr) *
        (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹ = 1 :=
    ZMod.coe_mul_inv_eq_one Ipp.Bls12377.scalarMontgomeryRadix
      scalarMontgomeryRadix_coprime
  rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv]
  calc
    ((limbsToNat output : Ipp.Bls12377.Fr) *
        (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹) *
        ((limbsToNat a : Ipp.Bls12377.Fr) *
          (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹) =
      ((limbsToNat output : Ipp.Bls12377.Fr) *
        (limbsToNat a : Ipp.Bls12377.Fr)) *
        ((Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹ *
          (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹) := by
            ring
    _ = (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr) ^ 2 *
        ((Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹ *
          (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹) := by
            rw [hcast]
    _ = ((Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr) *
          (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹) *
        ((Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr) *
          (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹) := by
            ring
    _ = 1 := by rw [hcancel]; norm_num

theorem extracted_inv_zero :
    ark_ip_proofs.s3_07_arkworks_fr_spike.inv zeroLimbs4 = .ok none := by
  simp [ark_ip_proofs.s3_07_arkworks_fr_spike.inv, zeroLimbs4,
    ark_ip_proofs.core.array.equality.PartialEqArray.eq,
    MacCampaign.Array.replicate]

/-! ## Canonical 32-byte wire (`from_bytes`); the value theorems target the
generic GAP-01 little-endian decoder directly — no Fr-specific wire records
exist in GAP-01, and challenge-stage consumers (GAP-11) compose from
`decodeLE`. `to_bytes` remains pinned by the Rust parity tests. -/

abbrev FrByteArray := MacCampaign.Array UInt8 32#usize

def bytesValue (bytes : FrByteArray) : Nat :=
  Ipp.CanonicalWire.decodeLE bytes.val

def byteFn (bytes : FrByteArray) : Fin 32 → UInt8 := fun i =>
  bytes.val.get ⟨i.val, by simpa [bytes.hlen] using i.isLt⟩

private theorem byteArray_eq_ofFn (bytes : FrByteArray) :
    bytes = ⟨List.ofFn (byteFn bytes), by simp⟩ := by
  apply MacCampaign.Array.ext
  apply List.ext_get
  · simp [bytes.hlen]
  · intro n hnLeft hnRight
    have hn : n < 32 := by simpa [bytes.hlen] using hnLeft
    interval_cases n <;> rfl

private def byteChunkList (bytes : FrByteArray) (offset : Fin 25) : List UInt8 :=
  List.ofFn fun i : Fin 8 =>
    byteFn bytes ⟨offset.val + i.val, by
      have ho := offset.isLt
      have hi := i.isLt
      omega⟩

private def byteChunk (bytes : FrByteArray) (offset : Fin 25) :
    MacCampaign.Array UInt8 8#usize :=
  ⟨byteChunkList bytes offset, by simp [byteChunkList]⟩

private theorem bytes_to_limbs_eq (bytes : FrByteArray) :
    ark_ip_proofs.s3_07_arkworks_fr_spike.bytes_to_limbs bytes = (do
      let w0 ← ark_ip_proofs.s3_07_arkworks_fr_spike.bytes_to_word
        (byteChunk bytes 0)
      let w1 ← ark_ip_proofs.s3_07_arkworks_fr_spike.bytes_to_word
        (byteChunk bytes 8)
      let w2 ← ark_ip_proofs.s3_07_arkworks_fr_spike.bytes_to_word
        (byteChunk bytes 16)
      let w3 ← ark_ip_proofs.s3_07_arkworks_fr_spike.bytes_to_word
        (byteChunk bytes 24)
      ok (MacCampaign.Array.make 4#usize [w0, w1, w2, w3])) := by
  rw [byteArray_eq_ofFn bytes]
  rfl

private theorem decodeLE_append (xs ys : List UInt8) :
    Ipp.CanonicalWire.decodeLE (xs ++ ys) =
      Ipp.CanonicalWire.decodeLE xs +
        256 ^ xs.length * Ipp.CanonicalWire.decodeLE ys := by
  induction xs with
  | nil => simp [Ipp.CanonicalWire.decodeLE]
  | cons x xs ih =>
      simp only [List.cons_append, Ipp.CanonicalWire.decodeLE, List.length_cons,
        Nat.pow_succ, ih]
      ring

private theorem byteChunks_eq (bytes : FrByteArray) :
    List.ofFn (byteFn bytes) =
      (byteChunk bytes 0).val ++ (byteChunk bytes 8).val ++
      (byteChunk bytes 16).val ++ (byteChunk bytes 24).val := by
  apply List.ext_get
  · simp [byteChunk, byteChunkList]
  · intro n hnLeft hnRight
    have hn : n < 32 := by simpa using hnLeft
    interval_cases n <;> rfl

private theorem four_word_values_spec (bytes : FrByteArray)
    (w0 w1 w2 w3 : MacCampaign.U64)
    (h0 : w0.val = Ipp.CanonicalWire.decodeLE (byteChunk bytes 0).val)
    (h1 : w1.val = Ipp.CanonicalWire.decodeLE (byteChunk bytes 8).val)
    (h2 : w2.val = Ipp.CanonicalWire.decodeLE (byteChunk bytes 16).val)
    (h3 : w3.val = Ipp.CanonicalWire.decodeLE (byteChunk bytes 24).val) :
    limbsToNat (MacCampaign.Array.make 4#usize [w0, w1, w2, w3]) =
      Ipp.CanonicalWire.decodeLE (List.ofFn (byteFn bytes)) := by
  rw [byteChunks_eq, decodeLE_append, decodeLE_append, decodeLE_append]
  rw [limbsToNat_four]
  simp only [limb, limbWord, limbCount, MacCampaign.Array.make,
    List.get_eq_getElem, List.getElem_cons_zero, List.getElem_cons_succ]
  rw [h0, h1, h2, h3]
  simp [byteChunk, byteChunkList, wordBase]
  ring

/-- Reconstructing four little-endian words preserves the 32-byte value. -/
theorem bytes_to_limbs_value_spec
    (bytes : FrByteArray) (value : FrLimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.bytes_to_limbs bytes =
      .ok value) :
    limbsToNat value = Ipp.CanonicalWire.decodeLE bytes.val := by
  rw [bytes_to_limbs_eq] at hexec
  obtain ⟨w0, hw0, hrest⟩ := bind_eq_ok hexec
  obtain ⟨w1, hw1, hrest⟩ := bind_eq_ok hrest
  obtain ⟨w2, hw2, hrest⟩ := bind_eq_ok hrest
  obtain ⟨w3, hw3, hreturn⟩ := bind_eq_ok hrest
  simp only [Result.ok.injEq] at hreturn
  subst value
  rw [byteArray_eq_ofFn bytes]
  apply four_word_values_spec bytes w0 w1 w2 w3
  · exact Ipp.Extracted.ArkworksFrBytesWord.bytes_to_word_spec _ w0 hw0
  · exact Ipp.Extracted.ArkworksFrBytesWord.bytes_to_word_spec _ w1 hw1
  · exact Ipp.Extracted.ArkworksFrBytesWord.bytes_to_word_spec _ w2 hw2
  · exact Ipp.Extracted.ArkworksFrBytesWord.bytes_to_word_spec _ w3 hw3

/-- The extracted reader rejects whenever its reconstructed integer is not below `r`. -/
theorem extracted_from_bytes_rejects_noncanonical
    (bytes : FrByteArray) (value : FrLimbArray)
    (hparse : ark_ip_proofs.s3_07_arkworks_fr_spike.bytes_to_limbs bytes =
      .ok value)
    (hge : Ipp.Bls12377.scalarModulus ≤ limbsToNat value) :
    ark_ip_proofs.s3_07_arkworks_fr_spike.from_bytes bytes = .ok none := by
  unfold ark_ip_proofs.s3_07_arkworks_fr_spike.from_bytes
  rw [hparse]
  simp only [Result.bind_ok]
  rw [extracted_geq_modulus_spec]
  simp only [Result.bind_ok]
  have hcompare : geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS limbCount = true := by
    apply (geqPrefix_spec value
      ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS limbCount (by omega)).2
    change limbsToNat ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ≤
      limbsToNat value
    rw [modulus_limbsToNat]
    exact hge
  rw [hcompare, if_pos rfl]

theorem decode_from_bytes_conversion
    (value output : FrLimbArray)
    (hvalue : limbsToNat value < Ipp.Bls12377.scalarModulus)
    (hmul : ark_ip_proofs.s3_07_arkworks_fr_spike.mul value
      ark_ip_proofs.s3_07_arkworks_fr_spike.R2 = .ok output) :
    decode output = (limbsToNat value : Ipp.Bls12377.Fr) := by
  rw [decode_extracted_mul value
    ark_ip_proofs.s3_07_arkworks_fr_spike.R2 output hvalue
    limbsToNat_R2_lt hmul]
  rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv]
  have hR2 :
      (limbsToNat ark_ip_proofs.s3_07_arkworks_fr_spike.R2 :
          Ipp.Bls12377.Fr) =
        (Ipp.Bls12377.scalarMontgomeryRadix ^ 2 : Nat) :=
    (ZMod.natCast_eq_natCast_iff _ _ _).2 R2_modEq
  rw [hR2]
  push_cast
  have hcancel :
      (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr) *
        (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹ = 1 :=
    ZMod.coe_mul_inv_eq_one Ipp.Bls12377.scalarMontgomeryRadix
      scalarMontgomeryRadix_coprime
  calc
    (limbsToNat value : Ipp.Bls12377.Fr) *
        (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹ *
        ((Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr) ^ 2 *
          (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹) =
      (limbsToNat value : Ipp.Bls12377.Fr) *
        ((Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr) *
          (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr)⁻¹) ^ 2 := by
            ring
    _ = (limbsToNat value : Ipp.Bls12377.Fr) := by rw [hcancel]; ring

/-- Successful extracted Fr wire decoding is exactly the canonical
little-endian value, converted to the field. -/
theorem from_bytes_value_spec
    (bytes : FrByteArray) (output : FrLimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.from_bytes bytes =
      .ok (some output)) :
    bytesValue bytes < Ipp.Bls12377.scalarModulus ∧
    decode output = (bytesValue bytes : Ipp.Bls12377.Fr) := by
  unfold ark_ip_proofs.s3_07_arkworks_fr_spike.from_bytes at hexec
  obtain ⟨value, hparse, hrest⟩ := bind_eq_ok hexec
  have hbytes := bytes_to_limbs_value_spec bytes value hparse
  have hvalue : limbsToNat value < Ipp.Bls12377.scalarModulus := by
    by_contra hnot
    have hreject := extracted_from_bytes_rejects_noncanonical bytes value hparse
      (Nat.le_of_not_gt hnot)
    unfold ark_ip_proofs.s3_07_arkworks_fr_spike.from_bytes at hreject
    rw [hparse] at hreject
    simp only [Result.bind_ok] at hreject
    rw [hreject] at hrest
    cases hrest
  have hcompare : geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS limbCount = false := by
    apply Bool.eq_false_iff.mpr
    intro htrue
    have hge := (geqPrefix_spec value
      ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS limbCount (by omega)).1 htrue
    change limbsToNat ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ≤
      limbsToNat value at hge
    rw [modulus_limbsToNat] at hge
    omega
  rw [extracted_geq_modulus_spec] at hrest
  simp only [Result.bind_ok] at hrest
  rw [hcompare, if_neg (by decide)] at hrest
  obtain ⟨converted, hmul, hconverted⟩ := bind_eq_ok hrest
  have heq : converted = output :=
    Option.some.inj (Result.ok.inj hconverted)
  subst converted
  simp only [bytesValue]
  refine ⟨by rw [← hbytes]; exact hvalue, ?_⟩
  rw [← hbytes]
  exact decode_from_bytes_conversion value output hvalue hmul

end Ipp.Extracted.ArkworksFr

#print axioms Ipp.Extracted.ArkworksFr.bytes_to_limbs_value_spec
#print axioms Ipp.Extracted.ArkworksFr.from_bytes_value_spec
#print axioms Ipp.Extracted.ArkworksFr.decode_extracted_inv
#print axioms Ipp.Extracted.ArkworksFr.extracted_inv_zero

#print axioms Ipp.Extracted.ArkworksFr.decode_extracted_add
#print axioms Ipp.Extracted.ArkworksFr.decode_extracted_sub
#print axioms Ipp.Extracted.ArkworksFr.decode_extracted_neg

namespace Ipp.Extracted.ArkworksFr

open Aeneas Aeneas.Std Result

end Ipp.Extracted.ArkworksFr

#print axioms Ipp.Extracted.ArkworksFr.extracted_round_spec
#print axioms Ipp.Extracted.ArkworksFr.extracted_subtract_modulus_spec
#print axioms Ipp.Extracted.ArkworksFr.extracted_mul_spec
#print axioms Ipp.Extracted.ArkworksFr.decode_extracted_mul
