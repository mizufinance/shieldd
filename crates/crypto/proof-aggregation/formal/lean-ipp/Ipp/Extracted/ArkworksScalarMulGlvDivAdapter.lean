import Ipp.Extracted.ArkworksScalarMulGlvGenerated
import Ipp.Extracted.ArkworksScalarMulGlvDivLoopCore
import Ipp.Extracted.ArkworksScalarMulGlvWideBitCore
import Ipp.Extracted.ArkworksScalarMulGlvArithmetic
import Ipp.Extracted.ArkworksFqByteRuntime

/-! Adapter from the extracted checked-primitive division graph to the Nat model. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDivAdapter

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

theorem extracted_shl_eq_core (value : ScalarArray) (bit : Bool) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.shl_4_add_bit value bit =
      Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit value bit := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.shl_4_add_bit
    Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit
  rw [Ipp.Extracted.ArkworksFr.array_index_limbWord value ⟨0, by decide⟩,
    Ipp.Extracted.ArkworksFr.array_index_limbWord value ⟨1, by decide⟩,
    Ipp.Extracted.ArkworksFr.array_index_limbWord value ⟨2, by decide⟩,
    Ipp.Extracted.ArkworksFr.array_index_limbWord value ⟨3, by decide⟩]
  cases bit <;> rfl

theorem extracted_set_bit_eq_core (value : WideArray) (bit : Nat)
    (hbit : bit < 384) :
    (show Result WideArray from do
      let limb <- Usize.ofNat bit / 64#usize
      let offset <- Usize.ofNat bit % 64#usize
      let mask <- 1#u64 <<< offset
      let old <- MacCampaign.Array.index_usize value limb
      let updated <- lift (old ||| mask)
      MacCampaign.Array.update value limb updated) =
      Ipp.Extracted.ArkworksScalarMul.GlvSetBitCore.setBit value bit := by
  have hlimb : bit / 64 < 6 := by omega
  have hoffset : bit % 64 < 64 := Nat.mod_lt _ (by decide)
  have hdiv : (Usize.ofNat bit / 64#usize : Result Usize) =
      .ok (Usize.ofNat (bit / 64)) := by rfl
  have hrem : (Usize.ofNat bit % 64#usize : Result Usize) =
      .ok (Usize.ofNat (bit % 64)) := by rfl
  rw [hdiv]
  simp only [Result.bind_ok]
  rw [hrem]
  simp only [Result.bind_ok]
  unfold Ipp.Extracted.ArkworksScalarMul.GlvSetBitCore.setBit
  rfl

theorem extracted_wide_bit (value : WideArray) (bit : Nat) (hbit : bit < 384) :
    (show Result Bool from do
      let limb <- Usize.ofNat bit / 64#usize
      let word <- MacCampaign.Array.index_usize value limb
      let offset <- Usize.ofNat bit % 64#usize
      let shifted <- word >>> offset
      let low <- lift (shifted &&& 1#u64)
      .ok (low = 1#u64)) =
      .ok (Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.wideBit value bit) := by
  have hlimb : bit / 64 < 6 := by omega
  have hoffset : bit % 64 < 64 := Nat.mod_lt _ (by decide)
  have hdiv : (Usize.ofNat bit / 64#usize : Result Usize) =
      .ok (Usize.ofNat (bit / 64)) := by rfl
  have hrem : (Usize.ofNat bit % 64#usize : Result Usize) =
      .ok (Usize.ofNat (bit % 64)) := by rfl
  rw [hdiv]
  simp only [Result.bind_ok]
  rw [Ipp.Extracted.ArkworksFqMul.array_index_limbWord value
    ⟨bit / 64, hlimb⟩]
  simp only [Result.bind_ok]
  rw [hrem]
  simp only [Result.bind_ok]
  change MacCampaign.shr64ByUsize
      (Ipp.Extracted.ArkworksFqMul.limbWord value ⟨bit / 64, hlimb⟩)
      (Usize.ofNat (bit % 64)) >>= _ = _
  have hword :
      (Ipp.Extracted.ArkworksFqMul.limbWord value ⟨bit / 64, hlimb⟩).val =
        Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt value
          (bit / 64) := by
    simp [Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt,
      hlimb, Ipp.Extracted.ArkworksFqMul.limb]
  rw [show MacCampaign.shr64ByUsize
      (Ipp.Extracted.ArkworksFqMul.limbWord value ⟨bit / 64, hlimb⟩)
      (Usize.ofNat (bit % 64)) =
      .ok (MacCampaign.U64.ofNat
        (Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt value
          (bit / 64) / 2 ^ (bit % 64))) by
    simp [MacCampaign.shr64ByUsize, Usize.ofNat, hoffset, hword]]
  simp only [Result.bind_ok]
  have hquot :
      Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt value
        (bit / 64) / 2 ^ (bit % 64) <
      MacCampaign.u64Base := by
    apply lt_of_le_of_lt (Nat.div_le_self _ _)
    have := Ipp.Extracted.ArkworksFqMul.limb_lt_wordBase value
      ⟨bit / 64, hlimb⟩
    rw [← hword]
    simpa [MacCampaign.u64Base,
      Ipp.Extracted.ArkworksFqMul.wordBase] using this
  have hlow :
      Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt value
        (bit / 64) / 2 ^ (bit % 64) % 2 <
      MacCampaign.u64Base := lt_trans (Nat.mod_lt _ (by decide)) (by decide)
  have hbits := Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.bit_spec
    value bit hbit
  have hbits' :
      Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.wideToNat value /
          2 ^ bit % 2 =
        Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt value
          (bit / 64) / 2 ^ (bit % 64) % 2 := by
    simpa [Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.wideToNat,
      Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideToNat,
      Ipp.Extracted.ArkworksScalarMul.GlvWideUpdateCore.wideToNat] using hbits
  unfold Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.wideBit
  change (do
      let low <- lift
        (MacCampaign.U64.ofNat
            (Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt value
              (bit / 64) / 2 ^ (bit % 64)) &&& 1#u64)
      .ok (decide (low = 1#u64))) = _
  simp only [Aeneas.lift, Result.bind_ok, Result.ok.injEq]
  apply Bool.eq_iff_iff.mpr
  simp only [decide_eq_true_eq]
  rw [Ipp.Extracted.ArkworksFqByteRuntime.u64_and_one_eq_one]
  simp only [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hquot]
  change (Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt value
      (bit / 64) / 2 ^ (bit % 64) % 2 = 1) ↔
    (Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.wideToNat value /
      2 ^ bit % 2 = 1)
  rw [hbits']

theorem wide_bit_bool (value : WideArray) (bit : Nat) (hbit : bit < 384) :
    decide (Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt value
      (bit / 64) / 2 ^ (bit % 64) % 2 = 1) =
      Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.wideBit value bit := by
  unfold Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.wideBit
  have hbits := Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.bit_spec
    value bit hbit
  simpa [Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.wideToNat,
    Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideToNat,
    Ipp.Extracted.ArkworksScalarMul.GlvWideUpdateCore.wideToNat] using
      congrArg (fun n => decide (n = 1)) hbits.symm

def adaptState
    (state : Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.State) :
    WideArray × ScalarArray × Usize :=
  (state.1, state.2.1, Usize.ofNat state.2.2)

def adaptFlow :
    ControlFlow Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.State
      (WideArray × ScalarArray) →
    ControlFlow (WideArray × ScalarArray × Usize)
      (WideArray × ScalarArray)
  | .cont state => .cont (adaptState state)
  | .done output => .done output

private theorem extracted_reduce_once_eq_core (value : ScalarArray) :
    (show Result (ControlFlow ScalarArray ScalarArray) from do
      let geq <- ark_ip_proofs.s3_07_arkworks_fq_spike.geq_4 value
        ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS
      if geq then
        let next <- ark_ip_proofs.s3_07_arkworks_fq_spike.sub_4 value
          ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS
        .ok (.cont next)
      else .ok (.done value)) =
      Ipp.Extracted.ArkworksScalarMul.GlvReduceCore.body value := by
  unfold Ipp.Extracted.ArkworksScalarMul.GlvReduceCore.body
  rw [Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.fr_modulus_eq]
  rfl

theorem extracted_body_eq_core (numerator quotient : WideArray)
    (remainder : ScalarArray) (remaining : Nat) (hremaining : remaining ≤ 384) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr_loop.body
        numerator quotient remainder (Usize.ofNat remaining) = (do
      let flow <- Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.body numerator
        (quotient, remainder, remaining)
      .ok (adaptFlow flow)) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr_loop.body
    Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.body
  by_cases hpos : 0 < remaining
  · rw [if_pos (show Usize.ofNat remaining > 0#usize by exact hpos),
      if_pos hpos]
    rw [MacCampaign.sub_eq (Usize.ofNat remaining) 1#usize (by simp; omega)]
    simp only [Result.bind_ok, Usize.ofNat_val]
    have hbit : remaining - 1 < 384 := by omega
    have hnext : ({ val := remaining - 1 } : Usize) =
        Usize.ofNat (remaining - 1) := rfl
    rw [hnext]
    have hlimb : (remaining - 1) / 64 < 6 := by omega
    have hoffset : (remaining - 1) % 64 < 64 := Nat.mod_lt _ (by decide)
    have hdiv : (Usize.ofNat (remaining - 1) / 64#usize : Result Usize) =
        .ok (Usize.ofNat ((remaining - 1) / 64)) := by rfl
    have hrem : (Usize.ofNat (remaining - 1) % 64#usize : Result Usize) =
        .ok (Usize.ofNat ((remaining - 1) % 64)) := by rfl
    rw [hdiv]
    simp only [Result.bind_ok]
    rw [Ipp.Extracted.ArkworksFqMul.array_index_limbWord numerator
      ⟨(remaining - 1) / 64, hlimb⟩]
    simp only [Result.bind_ok]
    rw [hrem]
    simp only [Result.bind_ok]
    have hword :
        (Ipp.Extracted.ArkworksFqMul.limbWord numerator
          ⟨(remaining - 1) / 64, hlimb⟩).val =
        Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt numerator
          ((remaining - 1) / 64) := by
      simp [Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt,
        hlimb, Ipp.Extracted.ArkworksFqMul.limb]
    have hshr : MacCampaign.shr64ByUsize
        (Ipp.Extracted.ArkworksFqMul.limbWord numerator
          ⟨(remaining - 1) / 64, hlimb⟩)
        (Usize.ofNat ((remaining - 1) % 64)) =
        .ok (MacCampaign.U64.ofNat
          (Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt numerator
            ((remaining - 1) / 64) / 2 ^ ((remaining - 1) % 64))) := by
      simp [MacCampaign.shr64ByUsize, Usize.ofNat, hoffset, hword]
    change MacCampaign.shr64ByUsize _ _ >>= _ = _
    rw [hshr]
    simp only [Result.bind_ok]
    have hquot :
        Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt numerator
          ((remaining - 1) / 64) / 2 ^ ((remaining - 1) % 64) <
          MacCampaign.u64Base := by
      apply lt_of_le_of_lt (Nat.div_le_self _ _)
      rw [← hword]
      exact (Ipp.Extracted.ArkworksFqMul.limbWord numerator
        ⟨(remaining - 1) / 64, hlimb⟩).isLt
    have hlow :
        Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt numerator
          ((remaining - 1) / 64) / 2 ^ ((remaining - 1) % 64) % 2 <
          MacCampaign.u64Base := lt_trans (Nat.mod_lt _ (by decide)) (by decide)
    have hand : decide
        ((MacCampaign.U64.ofNat
            (Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt numerator
              ((remaining - 1) / 64) / 2 ^ ((remaining - 1) % 64)) &&& 1#u64) =
          1#u64) =
        decide
          (Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore.wideWordAt numerator
            ((remaining - 1) / 64) / 2 ^ ((remaining - 1) % 64) % 2 = 1) := by
      apply Bool.eq_iff_iff.mpr
      simp only [decide_eq_true_eq]
      rw [Ipp.Extracted.ArkworksFqByteRuntime.u64_and_one_eq_one]
      simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hquot]
    simp only [Aeneas.lift, Result.bind_ok]
    rw [hand]
    rw [wide_bit_bool numerator (remaining - 1) hbit]
    rw [extracted_shl_eq_core]
    cases hshift :
        Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit remainder
          (Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.wideBit numerator
            (remaining - 1)) with
    | ok shifted =>
        simp only [Result.bind_ok]
        unfold Ipp.Extracted.ArkworksScalarMul.GlvReduceCore.body
        rw [show ark_ip_proofs.s3_07_arkworks_fq_spike.geq_4 shifted
          ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS =
          ark_ip_proofs.s3_07_arkworks_fr_spike.geq_modulus shifted by
            rw [Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.fr_modulus_eq]
            rfl]
        cases hgeq : ark_ip_proofs.s3_07_arkworks_fr_spike.geq_modulus shifted with
        | ok geq =>
            simp only [Result.bind_ok]
            cases geq with
            | false => rfl
            | true =>
                rw [show ark_ip_proofs.s3_07_arkworks_fq_spike.sub_4 shifted
                  ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS =
                  ark_ip_proofs.s3_07_arkworks_fr_spike.sub_raw shifted
                    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS by
                      rw [Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.fr_modulus_eq]
                      rfl]
                cases hsub : ark_ip_proofs.s3_07_arkworks_fr_spike.sub_raw shifted
                    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS with
                | ok nextRemainder =>
                    simp only [Result.bind_ok]
                    simp only [if_true, Result.bind_ok]
                    rw [← extracted_set_bit_eq_core quotient (remaining - 1) hbit]
                    rw [hdiv]
                    simp only [Result.bind_ok]
                    rw [hrem]
                    simp only [Result.bind_ok]
                    simp only [Aeneas.lift, Result.bind_ok]
                    cases hmask : (1#u64 <<<
                        Usize.ofNat ((remaining - 1) % 64) : Result MacCampaign.U64) with
                    | ok mask =>
                        simp only [Result.bind_ok]
                        cases hindex : MacCampaign.Array.index_usize quotient
                            (Usize.ofNat ((remaining - 1) / 64)) with
                        | ok old =>
                            simp only [Result.bind_ok]
                            cases hupdate : MacCampaign.Array.update quotient
                                (Usize.ofNat ((remaining - 1) / 64)) (old ||| mask) with
                            | ok nextQuotient =>
                                simp only [Result.bind_ok]
                                rfl
                            | fail error =>
                                simp only [Result.bind_fail]
                            | div =>
                                simp only [Result.bind_div]
                        | fail error =>
                            simp only [Result.bind_fail]
                        | div =>
                            simp only [Result.bind_div]
                    | fail error =>
                        simp only [Result.bind_fail]
                    | div =>
                        simp only [Result.bind_div]
                | fail error => rfl
                | div => rfl
        | fail error => rfl
        | div => rfl
    | fail error => rfl
    | div => rfl
  · rw [if_neg (show ¬Usize.ofNat remaining > 0#usize by exact hpos),
      if_neg hpos]
    rfl

#print axioms extracted_shl_eq_core
#print axioms extracted_set_bit_eq_core
#print axioms extracted_wide_bit
#print axioms extracted_body_eq_core

end Ipp.Extracted.ArkworksScalarMul.GlvDivAdapter
