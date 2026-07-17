import Ipp.Extracted.ArkworksFqSqrtBytesGenerated
import Ipp.Extracted.ArkworksFqSquare
import Ipp.Extracted.ArkworksFqInv
import Ipp.CanonicalDecode
import Mathlib.Tactic

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksFqOps
open Ipp.Extracted.ArkworksFqSquare
open Ipp.Extracted.ArkworksFqInv

set_option maxHeartbeats 1000000
set_option maxRecDepth 8192

abbrev LimbArray := ark_ip_proofs.s3_07_arkworks_fq_spike.LimbArray
abbrev SqrtState := ark_ip_proofs.s3_07_arkworks_fq_spike.SqrtState
abbrev ByteArray := ark_ip_proofs.s3_07_arkworks_fq_spike.ByteArray 48

def Canonical (value : LimbArray) : Prop :=
  limbsToNat value < Ipp.Bls12377.baseModulus

structure CanonicalSqrtState (state : SqrtState) : Prop where
  z : Canonical state.z
  x : Canonical state.x
  b : Canonical state.b

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action <;> simp_all

private theorem loopFuel_exists_of_result {A B : Type}
    {body : A → Result (ControlFlow A B)} {state : A} {result : Result B}
    (hexec : LoopResult body state result) :
    ∃ fuel, loopFuel body fuel state = result := by
  induction hexec with
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

theorem canonical_ONE : Canonical ark_ip_proofs.s3_07_arkworks_fq_spike.ONE := by
  norm_num [Canonical, limbsToNat, prefixToNat, limbCount, limb, limbWord,
    ark_ip_proofs.s3_07_arkworks_fq_spike.ONE, MacCampaign.Array.make,
    MacCampaign.U64.ofNat, MacCampaign.u64Base, wordBase,
    Ipp.Bls12377.baseModulus]

theorem canonical_root_of_unity :
    Canonical ark_ip_proofs.s3_07_arkworks_fq_spike.TWO_ADIC_ROOT_OF_UNITY := by
  norm_num [Canonical, limbsToNat, prefixToNat, limbCount, limb, limbWord,
    ark_ip_proofs.s3_07_arkworks_fq_spike.TWO_ADIC_ROOT_OF_UNITY,
    MacCampaign.Array.make, MacCampaign.U64.ofNat, MacCampaign.u64Base,
    wordBase, Ipp.Bls12377.baseModulus]

private theorem square_canonical (input output : LimbArray)
    (hinput : Canonical input)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.square input = .ok output) :
    Canonical output :=
  (extracted_square_spec input output hinput hexec).1

private theorem mul_canonical (left right output : LimbArray)
    (hleft : Canonical left) (hright : Canonical right)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.mul left right = .ok output) :
    Canonical output :=
  (extracted_mul_spec left right output hleft hright hexec).1

theorem pow_inner_body_spec (a exponent : LimbArray) (limb : Usize)
    (result : LimbArray) (bit : Usize)
    (ha : Canonical a) (hresult : Canonical result)
    {flow : ControlFlow (LimbArray × Usize) LimbArray}
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.pow_loop0_loop0.body
      a exponent limb result bit = .ok flow) :
    match flow with
    | .cont next => Canonical next.1
    | .done output => Canonical output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.pow_loop0_loop0.body at hexec
  by_cases hbit : bit > 0#usize
  · rw [if_pos hbit] at hexec
    obtain ⟨bit1, hsub, hrest⟩ := bind_eq_ok hexec
    obtain ⟨squared, hsquare, hrest⟩ := bind_eq_ok hrest
    have hsquared := square_canonical result squared hresult hsquare
    obtain ⟨word, hword, hrest⟩ := bind_eq_ok hrest
    dsimp only at hrest
    by_cases hselected : word.val / 2 ^ bit1.val % 2 = 1
    · rw [if_pos hselected] at hrest
      obtain ⟨product, hmul, hreturn⟩ := bind_eq_ok hrest
      have hproduct := mul_canonical squared a product hsquared ha hmul
      simp only [Result.ok.injEq] at hreturn
      subst flow
      exact hproduct
    · rw [if_neg hselected] at hrest
      simp only [Result.ok.injEq] at hrest
      subst flow
      exact hsquared
  · rw [if_neg hbit] at hexec
    simp only [Result.ok.injEq] at hexec
    subst flow
    exact hresult

theorem pow_inner_fuel_spec (fuel : Nat) (a exponent result output : LimbArray)
    (limb bit : Usize) (ha : Canonical a) (hresult : Canonical result)
    (hexec : loopFuel
      (fun state : LimbArray × Usize =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.pow_loop0_loop0.body
          a exponent limb state.1 state.2)
      fuel (result, bit) = .ok output) :
    Canonical output := by
  induction fuel generalizing result bit with
  | zero => rw [loopFuel] at hexec; cases hexec
  | succ fuel ih =>
      cases hbody :
          ark_ip_proofs.s3_07_arkworks_fq_spike.pow_loop0_loop0.body
            a exponent limb result bit with
      | fail error => rw [loopFuel, hbody] at hexec; cases hexec
      | div => rw [loopFuel, hbody] at hexec; cases hexec
      | ok flow =>
          cases flow with
          | done value =>
              rw [loopFuel, hbody] at hexec
              cases hexec
              exact pow_inner_body_spec a exponent limb result bit ha hresult hbody
          | cont state =>
              rw [loopFuel, hbody] at hexec
              have hnext := pow_inner_body_spec a exponent limb result bit
                ha hresult hbody
              exact ih state.1 state.2 hnext hexec

theorem pow_inner_spec (a exponent result output : LimbArray) (limb bit : Usize)
    (ha : Canonical a) (hresult : Canonical result)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.pow_loop0_loop0
      a exponent result limb bit = .ok output) :
    Canonical output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.pow_loop0_loop0 at hexec
  obtain ⟨fuel, hfuel⟩ := loopFuel_exists_of_loop_eq hexec
  exact pow_inner_fuel_spec fuel a exponent result output limb bit
    ha hresult hfuel

theorem pow_outer_body_spec (a exponent result : LimbArray) (limb : Usize)
    (ha : Canonical a) (hresult : Canonical result)
    {flow : ControlFlow (LimbArray × Usize) LimbArray}
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.pow_loop0.body
      a exponent result limb = .ok flow) :
    match flow with
    | .cont next => Canonical next.1
    | .done output => Canonical output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.pow_loop0.body at hexec
  by_cases hlimb : limb > 0#usize
  · rw [if_pos hlimb] at hexec
    obtain ⟨limb1, hsub, hrest⟩ := bind_eq_ok hexec
    obtain ⟨output, hinner, hreturn⟩ := bind_eq_ok hrest
    have hcanonical := pow_inner_spec a exponent result output limb1 64#usize
      ha hresult hinner
    simp only [Result.ok.injEq] at hreturn
    subst flow
    exact hcanonical
  · rw [if_neg hlimb] at hexec
    simp only [Result.ok.injEq] at hexec
    subst flow
    exact hresult

theorem pow_outer_fuel_spec (fuel : Nat) (a exponent result output : LimbArray)
    (limb : Usize) (ha : Canonical a) (hresult : Canonical result)
    (hexec : loopFuel
      (fun state : LimbArray × Usize =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.pow_loop0.body
          a exponent state.1 state.2)
      fuel (result, limb) = .ok output) :
    Canonical output := by
  induction fuel generalizing result limb with
  | zero => rw [loopFuel] at hexec; cases hexec
  | succ fuel ih =>
      cases hbody : ark_ip_proofs.s3_07_arkworks_fq_spike.pow_loop0.body
          a exponent result limb with
      | fail error => rw [loopFuel, hbody] at hexec; cases hexec
      | div => rw [loopFuel, hbody] at hexec; cases hexec
      | ok flow =>
          cases flow with
          | done value =>
              rw [loopFuel, hbody] at hexec
              cases hexec
              exact pow_outer_body_spec a exponent result limb ha hresult hbody
          | cont state =>
              rw [loopFuel, hbody] at hexec
              have hnext := pow_outer_body_spec a exponent result limb
                ha hresult hbody
              exact ih state.1 state.2 hnext hexec

theorem pow_spec (a exponent output : LimbArray) (ha : Canonical a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.pow a exponent = .ok output) :
    Canonical output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.pow at hexec
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.pow_loop0 at hexec
  obtain ⟨fuel, hfuel⟩ := loopFuel_exists_of_loop_eq hexec
  exact pow_outer_fuel_spec fuel a exponent
    ark_ip_proofs.s3_07_arkworks_fq_spike.ONE output 6#usize
    ha canonical_ONE hfuel

theorem square_for_body_spec (j : Usize) (value : LimbArray) (i : Usize)
    (hvalue : Canonical value)
    {flow : ControlFlow (LimbArray × Usize) LimbArray}
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_square_for_loop.body
      j value i = .ok flow) :
    match flow with
    | .cont next => Canonical next.1
    | .done output => Canonical output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_square_for_loop.body at hexec
  by_cases hstep : i < j
  · rw [if_pos hstep] at hexec
    obtain ⟨squared, hsquare, hrest⟩ := bind_eq_ok hexec
    have hsquared := square_canonical value squared hvalue hsquare
    obtain ⟨i1, hi, hreturn⟩ := bind_eq_ok hrest
    simp only [Result.ok.injEq] at hreturn
    subst flow
    exact hsquared
  · rw [if_neg hstep] at hexec
    simp only [Result.ok.injEq] at hexec
    subst flow
    exact hvalue

theorem square_for_fuel_spec (fuel : Nat) (value output : LimbArray)
    (j i : Usize) (hvalue : Canonical value)
    (hexec : loopFuel
      (fun state : LimbArray × Usize =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_square_for_loop.body
          j state.1 state.2)
      fuel (value, i) = .ok output) : Canonical output := by
  induction fuel generalizing value i with
  | zero => rw [loopFuel] at hexec; cases hexec
  | succ fuel ih =>
      cases hbody :
          ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_square_for_loop.body
            j value i with
      | fail error => rw [loopFuel, hbody] at hexec; cases hexec
      | div => rw [loopFuel, hbody] at hexec; cases hexec
      | ok flow =>
          cases flow with
          | done result =>
              rw [loopFuel, hbody] at hexec
              cases hexec
              exact square_for_body_spec j value i hvalue hbody
          | cont state =>
              rw [loopFuel, hbody] at hexec
              have hnext := square_for_body_spec j value i hvalue hbody
              exact ih state.1 state.2 hnext hexec

theorem square_for_spec (value output : LimbArray) (j : Usize)
    (hvalue : Canonical value)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_square_for
      value j = .ok output) : Canonical output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_square_for at hexec
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_square_for_loop at hexec
  obtain ⟨fuel, hfuel⟩ := loopFuel_exists_of_loop_eq hexec
  exact square_for_fuel_spec fuel value output j 1#usize hvalue hfuel

theorem sqrt_step_some_spec (state next : SqrtState)
    (hstate : CanonicalSqrtState state)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_step state =
      .ok (some next)) : CanonicalSqrtState next := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_step at hexec
  obtain ⟨k, hk, hrest⟩ := bind_eq_ok hexec
  by_cases hterminal : k = ark_ip_proofs.s3_07_arkworks_fq_spike.TWO_ADICITY
  · rw [if_pos hterminal] at hrest
    cases hrest
  · rw [if_neg hterminal] at hrest
    obtain ⟨j, hj, hrest⟩ := bind_eq_ok hrest
    obtain ⟨w, hw, hrest⟩ := bind_eq_ok hrest
    have hwc := square_for_spec state.z w j hstate.z hw
    obtain ⟨z, hz, hrest⟩ := bind_eq_ok hrest
    have hzc := square_canonical w z hwc hz
    obtain ⟨b, hb, hrest⟩ := bind_eq_ok hrest
    have hbc := mul_canonical state.b z b hstate.b hzc hb
    obtain ⟨x, hx, hreturn⟩ := bind_eq_ok hrest
    have hxc := mul_canonical state.x w x hstate.x hwc hx
    simp only [Result.ok.injEq, Option.some.injEq] at hreturn
    subst next
    exact ⟨hzc, hxc, hbc⟩

theorem sqrt_loop_body_spec (state : SqrtState) (failed : Bool)
    (hstate : CanonicalSqrtState state)
    {flow : ControlFlow (SqrtState × Bool) (SqrtState × Bool)}
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_loop.body
      state failed = .ok flow) :
    match flow with
    | .cont next => CanonicalSqrtState next.1
    | .done output => CanonicalSqrtState output.1 := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_loop.body at hexec
  by_cases hfailed : failed = true
  · subst failed
    rw [if_pos rfl] at hexec
    simp only [Result.ok.injEq] at hexec
    subst flow
    exact hstate
  · have hfalse : failed = false := Bool.eq_false_of_not_eq_true hfailed
    subst failed
    rw [if_neg (by decide)] at hexec
    obtain ⟨equal, hequal, hrest⟩ := bind_eq_ok hexec
    cases equal with
    | false =>
        simp only [Bool.not_false, if_true] at hrest
        obtain ⟨next, hnext, hreturn⟩ := bind_eq_ok hrest
        cases next with
        | none =>
            simp only [Result.ok.injEq] at hreturn
            subst flow
            exact hstate
        | some value =>
            have hvalue := sqrt_step_some_spec state value hstate hnext
            simp only [Result.ok.injEq] at hreturn
            subst flow
            exact hvalue
    | true =>
        simp only [Bool.not_true, if_false] at hrest
        have hflow := Result.ok.inj hrest
        subst flow
        exact hstate

theorem sqrt_loop_fuel_spec (fuel : Nat) (state output : SqrtState)
    (failed outputFailed : Bool) (hstate : CanonicalSqrtState state)
    (hexec : loopFuel
      (fun value : SqrtState × Bool =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_loop.body
          value.1 value.2)
      fuel (state, failed) = .ok (output, outputFailed)) :
    CanonicalSqrtState output := by
  induction fuel generalizing state failed with
  | zero => rw [loopFuel] at hexec; cases hexec
  | succ fuel ih =>
      cases hbody : ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_loop.body
          state failed with
      | fail error => rw [loopFuel, hbody] at hexec; cases hexec
      | div => rw [loopFuel, hbody] at hexec; cases hexec
      | ok flow =>
          cases flow with
          | done result =>
              rw [loopFuel, hbody] at hexec
              cases hexec
              exact sqrt_loop_body_spec state failed hstate hbody
          | cont next =>
              rw [loopFuel, hbody] at hexec
              have hnext := sqrt_loop_body_spec state failed hstate hbody
              exact ih next.1 next.2 hnext hexec

theorem sqrt_loop_spec (state output : SqrtState) (failed outputFailed : Bool)
    (hstate : CanonicalSqrtState state)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_loop state failed =
      .ok (output, outputFailed)) : CanonicalSqrtState output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt_loop at hexec
  obtain ⟨fuel, hfuel⟩ := loopFuel_exists_of_loop_eq hexec
  exact sqrt_loop_fuel_spec fuel state output failed outputFailed hstate hfuel

theorem decode_extracted_sqrt (a output : LimbArray)
    (ha : Canonical a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt a = .ok (some output)) :
    decode output * decode output = decode a := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt at hexec
  obtain ⟨isZero, hzero, hrest⟩ := bind_eq_ok hexec
  cases isZero with
  | true =>
      rw [if_pos rfl] at hrest
      simp only [Result.ok.injEq, Option.some.injEq] at hrest
      subst output
      have haZero : a = zeroArray := by
        apply MacCampaign.Array.ext
        simpa [zeroArray, MacCampaign.Array.replicate,
          ark_ip_proofs.core.array.equality.PartialEqArray.eq] using hzero
      subst a
      rw [decode_eq_cast_mul_inv, limbsToNat_zeroArray]
      norm_num
  | false =>
      rw [if_neg (by decide)] at hrest
      obtain ⟨w, hw, hrest⟩ := bind_eq_ok hrest
      have hwc := pow_spec a
        ark_ip_proofs.s3_07_arkworks_fq_spike.TRACE_MINUS_ONE_DIV_TWO w ha hw
      obtain ⟨x, hx, hrest⟩ := bind_eq_ok hrest
      have hxc := mul_canonical w a x hwc ha hx
      obtain ⟨b, hb, hrest⟩ := bind_eq_ok hrest
      have hbc := mul_canonical x w b hxc hwc hb
      obtain ⟨pair, hloop, hrest⟩ := bind_eq_ok hrest
      rcases pair with ⟨state, failed⟩
      have hstate := sqrt_loop_spec
        { z := ark_ip_proofs.s3_07_arkworks_fq_spike.TWO_ADIC_ROOT_OF_UNITY,
          x, b, v := ark_ip_proofs.s3_07_arkworks_fq_spike.TWO_ADICITY }
        state false failed ⟨canonical_root_of_unity, hxc, hbc⟩ hloop
      cases failed with
      | true => simp only [if_true] at hrest; cases hrest
      | false =>
          simp only [Bool.false_eq, if_false] at hrest
          obtain ⟨candidate, hsquare, hrest⟩ := bind_eq_ok hrest
          obtain ⟨equal, hequal, hreturn⟩ := bind_eq_ok hrest
          cases equal with
          | false => rw [if_neg (by decide)] at hreturn; cases hreturn
          | true =>
              rw [if_pos rfl] at hreturn
              simp only [Result.ok.injEq, Option.some.injEq] at hreturn
              subst output
              have hcandidate : candidate = a := by
                apply MacCampaign.Array.ext
                simpa [ark_ip_proofs.core.array.equality.PartialEqArray.eq] using hequal
              have hdecode := decode_extracted_square state.x candidate hstate.x hsquare
              rw [hcandidate] at hdecode
              exact hdecode.symm

theorem extracted_sqrt_zero :
    ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt zeroArray =
      .ok (some zeroArray) := by
  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt, zeroArray,
    ark_ip_proofs.core.array.equality.PartialEqArray.eq,
    MacCampaign.Array.replicate]

def bytesValue (bytes : ByteArray) : Nat :=
  Ipp.CanonicalWire.decodeLE bytes.val

def byteFn (bytes : ByteArray) : Fin 48 → UInt8 := fun i =>
  bytes.val.get ⟨i.val, by simpa [bytes.hlen] using i.isLt⟩

/-- GAP-01's fixed-width view of an extracted byte array. -/
def asFqWire (bytes : ByteArray) : Ipp.CanonicalWire.FqWire :=
  ⟨byteFn bytes⟩

private theorem byteArray_eq_ofFn (bytes : ByteArray) :
    bytes = ⟨List.ofFn (byteFn bytes), by simp⟩ := by
  apply MacCampaign.Array.ext
  apply List.ext_get
  · simp [bytes.hlen]
  · intro n hnLeft hnRight
    have hn : n < 48 := by simpa [bytes.hlen] using hnLeft
    interval_cases n <;> rfl

theorem asFqWire_value (bytes : ByteArray) :
    (asFqWire bytes).value = bytesValue bytes := by
  have hval : bytes.val = List.ofFn (byteFn bytes) :=
    congrArg MacCampaign.Array.val (byteArray_eq_ofFn bytes)
  exact congrArg Ipp.CanonicalWire.decodeLE hval.symm

def byteFn8 (bytes : ark_ip_proofs.s3_07_arkworks_fq_spike.ByteArray 8) :
    Fin 8 → UInt8 := fun i =>
  bytes.val.get ⟨i.val, by simpa [bytes.hlen] using i.isLt⟩

private theorem byteArray8_eq_ofFn
    (bytes : ark_ip_proofs.s3_07_arkworks_fq_spike.ByteArray 8) :
    bytes = ⟨List.ofFn (byteFn8 bytes), by simp⟩ := by
  apply MacCampaign.Array.ext
  apply List.ext_get
  · simp [bytes.hlen]
  · intro n hnLeft hnRight
    have hn : n < 8 := by simpa [bytes.hlen] using hnLeft
    interval_cases n <;> rfl

theorem bytes_to_word_spec
    (bytes : ark_ip_proofs.s3_07_arkworks_fq_spike.ByteArray 8)
    (output : MacCampaign.U64)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_word bytes =
      .ok output) :
    output.val = Ipp.CanonicalWire.decodeLE bytes.val := by
  rw [byteArray8_eq_ofFn bytes] at hexec ⊢
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_word at hexec
  simp [MacCampaign.Array.index_usize, MacCampaign.Array.make,
    MacCampaign.U64.ofNat, MacCampaign.u64Base,
    Ipp.CanonicalWire.decodeLE] at hexec ⊢
  rw [← hexec]
  change (_ % 18446744073709551616) = _
  rw [Nat.mod_eq_of_lt (by
    have h0 : (byteFn8 bytes 0).toNat < 256 := (byteFn8 bytes 0).toNat_lt
    have h1 : (byteFn8 bytes 1).toNat < 256 := (byteFn8 bytes 1).toNat_lt
    have h2 : (byteFn8 bytes 2).toNat < 256 := (byteFn8 bytes 2).toNat_lt
    have h3 : (byteFn8 bytes 3).toNat < 256 := (byteFn8 bytes 3).toNat_lt
    have h4 : (byteFn8 bytes 4).toNat < 256 := (byteFn8 bytes 4).toNat_lt
    have h5 : (byteFn8 bytes 5).toNat < 256 := (byteFn8 bytes 5).toNat_lt
    have h6 : (byteFn8 bytes 6).toNat < 256 := (byteFn8 bytes 6).toNat_lt
    have h7 : (byteFn8 bytes 7).toNat < 256 := (byteFn8 bytes 7).toNat_lt
    norm_num at h0 h1 h2 h3 h4 h5 h6 h7 ⊢
    omega)]
  ring

/-- The extracted reader rejects whenever its reconstructed integer is not below `q`. -/
theorem extracted_from_bytes_rejects_noncanonical
    (bytes : ark_ip_proofs.s3_07_arkworks_fq_spike.ByteArray 48)
    (value : LimbArray)
    (hparse : ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_limbs bytes =
      .ok value)
    (hge : Ipp.Bls12377.baseModulus ≤ limbsToNat value) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes bytes = .ok none := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes
  rw [hparse]
  simp only [Result.bind_ok]
  rw [extracted_geq_modulus_spec]
  simp only [Result.bind_ok]
  have hcompare : geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = true := by
    apply (geqPrefix_spec value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount (by omega)).2
    simpa [limbsToNat, modulus_limbsToNat] using hge
  rw [hcompare, if_pos rfl]

/-- A canonical reconstructed integer takes the reader's conversion branch. -/
theorem extracted_from_bytes_accepts_canonical
    (bytes : ark_ip_proofs.s3_07_arkworks_fq_spike.ByteArray 48)
    (value output : LimbArray)
    (hparse : ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_limbs bytes =
      .ok value)
    (hvalue : limbsToNat value < Ipp.Bls12377.baseModulus)
    (hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.mul value
      ark_ip_proofs.s3_07_arkworks_fq_spike.R2 = .ok output) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes bytes =
      .ok (some output) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes
  rw [hparse]
  simp only [Result.bind_ok]
  rw [extracted_geq_modulus_spec]
  simp only [Result.bind_ok]
  have hcompare : geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = false := by
    apply Bool.eq_false_iff.mpr
    intro htrue
    have := (geqPrefix_spec value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount (by omega)).1 htrue
    change limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ≤
      limbsToNat value at this
    rw [modulus_limbsToNat] at this
    omega
  rw [hcompare, if_neg (by decide), hmul]
  simp only [Result.bind_ok]

private theorem baseMontgomeryRadix_coprime :
    Nat.Coprime Ipp.Bls12377.baseMontgomeryRadix
      Ipp.Bls12377.baseModulus := by
  rw [Ipp.Bls12377.baseMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [Ipp.Bls12377.baseModulus]

/-- The conversion branch returns the ordinary field value of the input integer. -/
theorem decode_from_bytes_conversion
    (value output : LimbArray)
    (hvalue : limbsToNat value < Ipp.Bls12377.baseModulus)
    (hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.mul value
      ark_ip_proofs.s3_07_arkworks_fq_spike.R2 = .ok output) :
    decode output = (limbsToNat value : Ipp.Bls12377.Fq) := by
  rw [decode_extracted_mul value
    ark_ip_proofs.s3_07_arkworks_fq_spike.R2 output hvalue
    limbsToNat_R2_lt hmul]
  rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv]
  have hR2 :
      (limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.R2 :
          Ipp.Bls12377.Fq) =
        (Ipp.Bls12377.baseMontgomeryRadix ^ 2 : Nat) :=
    (ZMod.natCast_eq_natCast_iff _ _ _).2 R2_modEq
  rw [hR2]
  push_cast
  have hcancel :
      (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) *
        (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ = 1 :=
    ZMod.coe_mul_inv_eq_one Ipp.Bls12377.baseMontgomeryRadix
      baseMontgomeryRadix_coprime
  calc
    (limbsToNat value : Ipp.Bls12377.Fq) *
        (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ *
        ((Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) ^ 2 *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) =
      (limbsToNat value : Ipp.Bls12377.Fq) *
        ((Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) ^ 2 := by
            ring
    _ = (limbsToNat value : Ipp.Bls12377.Fq) := by rw [hcancel]; ring

/-- GAP-08 bridge once the fixed 48-byte reconstruction equality is supplied. -/
theorem from_bytes_decodeFqCanonical_bridge_of_value
    (bytes : ByteArray) (value output : LimbArray)
    (hparse : ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_limbs bytes =
      .ok value)
    (hbytes : limbsToNat value = bytesValue bytes)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes bytes =
      .ok (some output)) :
    ∃ canonicalValue : Ipp.CanonicalWire.FqValue,
      Ipp.CanonicalWire.decodeFqCanonical (asFqWire bytes) =
        some canonicalValue ∧
      decode output = (canonicalValue.1 : Ipp.Bls12377.Fq) := by
  have hvalue : limbsToNat value < Ipp.Bls12377.baseModulus := by
    by_contra hnot
    have hreject := extracted_from_bytes_rejects_noncanonical bytes value hparse
      (Nat.le_of_not_gt hnot)
    rw [hreject] at hexec
    cases hexec
  let canonicalValue : Ipp.CanonicalWire.FqValue :=
    ⟨bytesValue bytes, by
      rw [Ipp.CanonicalWire.fqModulus, ← hbytes]
      exact hvalue⟩
  have hcanonical :
      Ipp.CanonicalWire.decodeFqCanonical (asFqWire bytes) =
        some canonicalValue := by
    apply (Ipp.CanonicalWire.decodeFqCanonical_eq_some_iff
      (asFqWire bytes) canonicalValue).2
    exact asFqWire_value bytes
  have hcompare : geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = false := by
    apply Bool.eq_false_iff.mpr
    intro htrue
    have hge := (geqPrefix_spec value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount (by omega)).1 htrue
    change limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ≤
      limbsToNat value at hge
    rw [modulus_limbsToNat] at hge
    omega
  have hreturn := hexec
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes at hreturn
  rw [hparse] at hreturn
  simp only [Result.bind_ok] at hreturn
  rw [extracted_geq_modulus_spec] at hreturn
  simp only [Result.bind_ok] at hreturn
  rw [hcompare, if_neg (by decide)] at hreturn
  obtain ⟨converted, hmul, hconverted⟩ := bind_eq_ok hreturn
  have heq : converted = output := by
    exact Option.some.inj (Result.ok.inj hconverted)
  subst converted
  refine ⟨canonicalValue, hcanonical, ?_⟩
  change decode output = (bytesValue bytes : Ipp.Bls12377.Fq)
  rw [← hbytes]
  exact decode_from_bytes_conversion value output hvalue hmul

end Ipp.Extracted.ArkworksFqSqrtBytes

#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.decode_extracted_sqrt
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.extracted_from_bytes_rejects_noncanonical
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.decode_from_bytes_conversion
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.from_bytes_decodeFqCanonical_bridge_of_value
