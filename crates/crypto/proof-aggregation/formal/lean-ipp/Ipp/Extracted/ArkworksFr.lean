import Ipp.Extracted.ArkworksFrGenerated
import Ipp.Extracted.ArkworksFqMul
import Ipp.Bls12377Core
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
  decide

theorem inv_mul_modulus_low_add_one_mod_wordBase :
    (ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val *
        limb ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ⟨0, by decide⟩ + 1) %
      wordBase = 0 := by
  decide

theorem inv_val :
    ark_ip_proofs.s3_07_arkworks_fr_spike.INV.val =
      725501752471715839 := by
  decide

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

end Ipp.Extracted.ArkworksFr
