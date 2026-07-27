import Ipp.Extracted.ArkworksFqOps

namespace Ipp.Extracted.ArkworksFqSquare

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksFqOps

set_option maxHeartbeats 400000

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action <;> simp_all

private theorem wideWord_update_ne (value output : WideArray) (i : Usize)
    (word : MacCampaign.U64) (hi : i.val < 12)
    (hexec : MacCampaign.Array.update value i word = .ok output)
    (j : Fin 12) (hne : i.val ≠ j.val) :
    wideWord output j = wideWord value j := by
  simp only [MacCampaign.Array.update] at hexec
  rw [dif_pos (by simpa [value.hlen] using hi)] at hexec
  simp only [Result.ok.injEq] at hexec
  subst output
  simp [wideWord, List.getElem_set_ne hne]

private theorem wideWord_update_eq (value output : WideArray) (i : Usize)
    (word : MacCampaign.U64) (hi : i.val < 12)
    (hexec : MacCampaign.Array.update value i word = .ok output) :
    wideWord output ⟨i.val, hi⟩ = word := by
  simp only [MacCampaign.Array.update] at hexec
  rw [dif_pos (by simpa [value.hlen] using hi)] at hexec
  simp only [Result.ok.injEq] at hexec
  subst output
  simp [wideWord]

private theorem wide_adc_update (value output : WideArray) (i : Usize)
    (right carry : MacCampaign.U64) (sum : Ipp.Extracted.ArkworksFqOps.ExtractedMac)
    (hi : i.val < 12)
    (hadc : ark_ip_proofs.s3_07_arkworks_fq_spike.adc
      (wideWord value ⟨i.val, hi⟩) right carry = .ok sum)
    (hupdate : MacCampaign.Array.update value i sum.low = .ok output) :
    wideToNat output + sum.carry.val * wordBase ^ (i.val + 1) =
      wideToNat value + (right.val + carry.val) * wordBase ^ i.val := by
  have hu := wideToNat_update value output i sum.low hi hupdate
  have ha := extracted_adc_general_spec
    (wideWord value ⟨i.val, hi⟩) right carry sum hadc
  have heq := ha.2
  have ihu := congrArg (fun n : Nat => (n : Int)) hu
  have iheq := congrArg (fun n : Nat =>
    (n * wordBase ^ i.val : Nat)) heq
  have iheq' := congrArg (fun n : Nat => (n : Int)) iheq
  apply Nat.cast_injective (R := Int)
  norm_num only [Nat.cast_add, Nat.cast_mul, Nat.cast_pow,
    Nat.cast_ofNat] at ihu iheq' ⊢
  linear_combination ihu - iheq'

private theorem cross_inner_result
    (iter : Aeneas.Std.core.ops.range.Range)
    (a aout : Ipp.Extracted.ArkworksFqOps.LimbArray) (r rout : WideArray)
    (carry carryout : MacCampaign.U64) (row : Usize)
    (hrow : row.val < 5) (hstart : iter.start.val ≤ 6)
    (hend : iter.«end».val = 6)
    (hres : LoopResult
      (fun (iter1, a1, r1, carry1) =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0_loop0.body
          row iter1 a1 r1 carry1)
      (iter, a, r, carry) (.ok (aout, rout, carryout))) :
    aout = a ∧
    (wideToNat rout + carryout.val * wordBase ^ (row.val + 6) =
      wideToNat r + carry.val * wordBase ^ (row.val + iter.start.val) +
        crossTail a row.val iter.start.val) ∧
    (∀ k : Fin 12,
      k.val < row.val + iter.start.val ∨ row.val + 6 ≤ k.val →
        wideWord rout k = wideWord r k) := by
  cases hres with
  | done hbody =>
      have hstop : ¬iter.start.val < iter.«end».val := by
        intro hlt
        have hs : iter.start.val < 6 := by omega
        have hpos : row.val + iter.start.val < 12 := by omega
        have hrow6 : row.val < 6 := by omega
        simp [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0_loop0.body,
          Aeneas.Std.core.iter.range.IteratorRange.next, hlt,
          wide_index r ⟨row.val + iter.start.val⟩ hpos,
          limb_index a row hrow6, limb_index a iter.start hs,
          extracted_mac_eq_model, MacCampaign.Array.update, r.hlen, hpos] at hbody
      have hsix : iter.start.val = 6 := by omega
      simp [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0_loop0.body,
        Aeneas.Std.core.iter.range.IteratorRange.next, hstop] at hbody
      obtain ⟨rfl, rfl, rfl⟩ := hbody
      refine ⟨rfl, ?_, ?_⟩
      · simp [crossTail, hsix]
      · intro k _
        rfl
  | next hbody htail =>
      have hlt : iter.start.val < iter.«end».val := by
        by_contra hnot
        simp [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0_loop0.body,
          Aeneas.Std.core.iter.range.IteratorRange.next, hnot] at hbody
      have hs : iter.start.val < 6 := by omega
      have hpos : row.val + iter.start.val < 12 := by omega
      have hrow6 : row.val < 6 := by omega
      simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0_loop0.body,
        Aeneas.Std.core.iter.range.IteratorRange.next, if_pos hlt,
        Result.bind_ok, Aeneas.Std.add_eq] at hbody
      rw [wide_index r ⟨row.val + iter.start.val⟩ hpos,
        limb_index a row hrow6, limb_index a iter.start hs] at hbody
      simp only [Result.bind_ok] at hbody
      obtain ⟨product, hmac, hrest⟩ := bind_eq_ok hbody
      obtain ⟨rnext, hupdate, hreturn⟩ := bind_eq_ok hrest
      cases hreturn
      have hstep := wide_mac_update r rnext
        ⟨row.val + iter.start.val⟩
        (limbWord a ⟨row.val, by simpa [limbCount] using hrow6⟩)
        (limbWord a ⟨iter.start.val, by simpa [limbCount] using hs⟩)
        carry product hpos hmac hupdate
      have htailStart : iter.start.val + 1 ≤ 6 := by omega
      have hi := cross_inner_result
        { start := Usize.ofNat (iter.start.val + 1), «end» := iter.«end» }
        a aout rnext rout product.carry carryout row hrow htailStart hend htail
      simp only [Usize.ofNat_val] at hi
      refine ⟨hi.1, ?_, ?_⟩
      · rw [hi.2.1, crossTail_step a row.val iter.start.val hs]
        have hrowAt : limbAt a row.val =
          (limbWord a ⟨row.val, by simpa [limbCount] using hrow6⟩).val := by
          simp [limbAt, hrow6, limb]
        have hstartAt : limbAt a iter.start.val =
          (limbWord a ⟨iter.start.val, by simpa [limbCount] using hs⟩).val := by
          simp [limbAt, hs, limb]
        rw [hrowAt, hstartAt]
        change wideToNat rnext + product.carry.val *
          wordBase ^ (row.val + iter.start.val + 1) =
        wideToNat r +
          ((limbWord a ⟨row.val, by simpa [limbCount] using hrow6⟩).val *
            (limbWord a ⟨iter.start.val, by simpa [limbCount] using hs⟩).val +
              carry.val) * wordBase ^ (row.val + iter.start.val) at hstep
        calc
          wideToNat rnext + product.carry.val *
              wordBase ^ (row.val + (iter.start.val + 1)) +
            crossTail a row.val (iter.start.val + 1) =
          (wideToNat r +
            ((limbWord a ⟨row.val, by simpa [limbCount] using hrow6⟩).val *
              (limbWord a ⟨iter.start.val, by simpa [limbCount] using hs⟩).val +
                carry.val) * wordBase ^ (row.val + iter.start.val)) +
            crossTail a row.val (iter.start.val + 1) := by
              rw [show row.val + (iter.start.val + 1) =
                row.val + iter.start.val + 1 by omega, hstep]
          _ = wideToNat r + carry.val * wordBase ^ (row.val + iter.start.val) +
            ((limbWord a ⟨row.val, by simpa [limbCount] using hrow6⟩).val *
              (limbWord a ⟨iter.start.val, by simpa [limbCount] using hs⟩).val *
                wordBase ^ (row.val + iter.start.val) +
              crossTail a row.val (iter.start.val + 1)) := by ring
      · intro k hk
        have hkNext :
            k.val < row.val + (iter.start.val + 1) ∨ row.val + 6 ≤ k.val := by
          omega
        rw [hi.2.2 k hkNext]
        apply wideWord_update_ne r rnext
          ⟨row.val + iter.start.val⟩ product.low hpos hupdate k
        change row.val + iter.start.val ≠ k.val
        omega
termination_by 6 - iter.start.val
decreasing_by
  simp only [Usize.ofNat_val]
  omega

theorem extracted_cross_inner_spec
    (iter : Aeneas.Std.core.ops.range.Range)
    (a aout : Ipp.Extracted.ArkworksFqOps.LimbArray) (r rout : WideArray)
    (carry carryout : MacCampaign.U64) (row : Usize)
    (hrow : row.val < 5) (hstart : iter.start.val ≤ 6)
    (hend : iter.«end».val = 6)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0_loop0
      iter a r carry row = .ok (aout, rout, carryout)) :
    aout = a ∧
    (wideToNat rout + carryout.val * wordBase ^ (row.val + 6) =
      wideToNat r + carry.val * wordBase ^ (row.val + iter.start.val) +
        crossTail a row.val iter.start.val) ∧
    (∀ k : Fin 12,
      k.val < row.val + iter.start.val ∨ row.val + 6 ≤ k.val →
        wideWord rout k = wideWord r k) := by
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0_loop0] at hexec
  exact cross_inner_result iter a aout r rout carry carryout row hrow hstart hend
    (loopResult_of_eq (by simp) hexec)

def crossRows (value : Ipp.Extracted.ArkworksFqOps.LimbArray) (start : Nat) : Nat :=
  ∑ row ∈ Finset.Ico start 5, crossTail value row (row + 1)

private theorem crossRows_step (value : Ipp.Extracted.ArkworksFqOps.LimbArray)
    (start : Nat) (hstart : start < 5) :
    crossRows value start =
      crossTail value start (start + 1) + crossRows value (start + 1) := by
  classical
  have hmem : start ∈ Finset.Ico start 5 := by simp [hstart]
  have hset : Finset.Ico start 5 \ {start} = Finset.Ico (start + 1) 5 := by
    ext j
    simp only [Finset.mem_sdiff, Finset.mem_Ico, Finset.mem_singleton]
    omega
  unfold crossRows
  rw [Finset.sum_eq_add_sum_diff_singleton (s := Finset.Ico start 5)
    (f := fun row => crossTail value row (row + 1))
    (i := start) (by simp [hmem])]
  rw [hset]

private theorem cross_outer_result
    (iter : Aeneas.Std.core.ops.range.Range)
    (a aout : Ipp.Extracted.ArkworksFqOps.LimbArray) (r rout : WideArray)
    (hstart : iter.start.val ≤ 5) (hend : iter.«end».val = 5)
    (hzeros : ∀ k : Fin 12, iter.start.val + 6 ≤ k.val →
      wideWord r k = MacCampaign.U64.ofNat 0)
    (hres : LoopResult
      (fun (iter1, a1, r1) =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0.body iter1 a1 r1)
      (iter, a, r) (.ok (aout, rout))) :
    aout = a ∧ wideToNat rout = wideToNat r + crossRows a iter.start.val ∧
      wideWord rout ⟨0, by decide⟩ = wideWord r ⟨0, by decide⟩ ∧
      wideWord rout ⟨11, by decide⟩ = wideWord r ⟨11, by decide⟩ := by
  cases hres with
  | done hbody =>
      have hstop : ¬iter.start.val < iter.«end».val := by
        intro hlt
        simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0.body,
          Aeneas.Std.core.iter.range.IteratorRange.next, if_pos hlt,
          Result.bind_ok, Aeneas.Std.add_eq] at hbody
        obtain ⟨inner, _, hrest⟩ := bind_eq_ok hbody
        rcases inner with ⟨a1, r1, carry⟩
        simp only [Aeneas.Std.add_eq, Result.bind_ok] at hrest
        obtain ⟨r2, _, hreturn⟩ := bind_eq_ok hrest
        simp at hreturn
      have hfive : iter.start.val = 5 := by omega
      simp [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0.body,
        Aeneas.Std.core.iter.range.IteratorRange.next, hstop] at hbody
      obtain ⟨rfl, rfl⟩ := hbody
      simp [crossRows, hfive]
  | next hbody htail =>
      have hlt : iter.start.val < iter.«end».val := by
        by_contra hnot
        simp [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0.body,
          Aeneas.Std.core.iter.range.IteratorRange.next, hnot] at hbody
      have hs : iter.start.val < 5 := by omega
      simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0.body,
        Aeneas.Std.core.iter.range.IteratorRange.next, if_pos hlt,
        Result.bind_ok, Aeneas.Std.add_eq] at hbody
      obtain ⟨inner, hinner, hrest⟩ := bind_eq_ok hbody
      rcases inner with ⟨a1, r1, carry⟩
      simp only [Aeneas.Std.add_eq, Result.bind_ok] at hrest
      obtain ⟨r2, hupdate, hreturn⟩ := bind_eq_ok hrest
      simp only [Result.ok.injEq, ControlFlow.cont.injEq] at hreturn
      cases hreturn
      have hinnerSpec := extracted_cross_inner_spec
        { start := Usize.ofNat (iter.start.val + 1), «end» := Usize.ofNat 6 }
        a a1 r r1 (MacCampaign.U64.ofNat 0) carry iter.start hs
        (by simp only [Usize.ofNat_val]; omega) (by simp) hinner
      have ha1 : a1 = a := hinnerSpec.1
      have hinnerEq := hinnerSpec.2.1
      have hinnerFrame := hinnerSpec.2.2
      subst a1
      simp [MacCampaign.U64.ofNat] at hinnerEq hinnerFrame
      have hslot : wideWord r1 ⟨6 + iter.start.val, by omega⟩ =
          MacCampaign.U64.ofNat 0 := by
        rw [hinnerFrame]
        · apply hzeros ⟨6 + iter.start.val, by omega⟩
          simp only [Fin.val_mk]
          omega
        · right
          simp only [Fin.val_mk]
          omega
      have hu := wideToNat_update r1 r2 ⟨6 + iter.start.val⟩ carry
        (by change 6 + iter.start.val < 12; omega) hupdate
      have hinnerEq' : wideToNat r1 + carry.val *
          wordBase ^ (6 + iter.start.val) =
        wideToNat r + crossTail a iter.start.val (iter.start.val + 1) := by
        simpa [Nat.add_comm] using hinnerEq
      have hr2 : wideToNat r2 = wideToNat r +
          crossTail a iter.start.val (iter.start.val + 1) := by
        rw [hslot] at hu
        simp [MacCampaign.U64.ofNat] at hu
        rw [hinnerEq'] at hu
        omega
      have hzeros2 : ∀ k : Fin 12, iter.start.val + 1 + 6 ≤ k.val →
          wideWord r2 k = MacCampaign.U64.ofNat 0 := by
        intro k hk
        rw [wideWord_update_ne r1 r2 ⟨6 + iter.start.val⟩ carry
          (by change 6 + iter.start.val < 12; omega) hupdate k (by
            change 6 + iter.start.val ≠ k.val
            omega)]
        rw [hinnerFrame k (by right; omega)]
        exact hzeros k (by omega)
      have hi := cross_outer_result
        { start := Usize.ofNat (iter.start.val + 1), «end» := iter.«end» }
        a aout r2 rout (by simp only [Usize.ofNat_val]; omega) hend hzeros2 htail
      simp only [Usize.ofNat_val] at hi
      have hr20 : wideWord r2 ⟨0, by decide⟩ = wideWord r ⟨0, by decide⟩ := by
        rw [wideWord_update_ne r1 r2 ⟨6 + iter.start.val⟩ carry
          (by change 6 + iter.start.val < 12; omega) hupdate ⟨0, by decide⟩
          (by simp)]
        exact hinnerFrame ⟨0, by decide⟩ (by left; simp)
      have hr211 : wideWord r2 ⟨11, by decide⟩ = wideWord r ⟨11, by decide⟩ := by
        rw [wideWord_update_ne r1 r2 ⟨6 + iter.start.val⟩ carry
          (by change 6 + iter.start.val < 12; omega) hupdate ⟨11, by decide⟩
          (by simp; omega)]
        exact hinnerFrame ⟨11, by decide⟩ (by right; simp; omega)
      refine ⟨hi.1, ?_, hi.2.2.1.trans hr20, hi.2.2.2.trans hr211⟩
      rw [hi.2.1, hr2, crossRows_step a iter.start.val hs]
      omega
termination_by 5 - iter.start.val
decreasing_by
  simp only [Usize.ofNat_val]
  omega

private def wideZero : WideArray :=
  MacCampaign.Array.replicate (Usize.ofNat 12) (MacCampaign.U64.ofNat 0)

private theorem wideZero_value : wideToNat wideZero = 0 := by
  unfold wideToNat
  apply Finset.sum_eq_zero
  intro k _
  fin_cases k <;>
    simp [wideWord, wideZero, MacCampaign.Array.replicate,
      MacCampaign.U64.ofNat]

private theorem wideZero_word (k : Fin 12) :
    wideWord wideZero k = MacCampaign.U64.ofNat 0 := by
  fin_cases k <;> rfl

theorem extracted_cross_spec
    (a aout : Ipp.Extracted.ArkworksFqOps.LimbArray) (output : WideArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0
      { start := Usize.ofNat 0, «end» := Usize.ofNat 5 }
      a wideZero = .ok (aout, output)) :
    aout = a ∧ wideToNat output = crossRows a 0 ∧
      wideWord output ⟨0, by decide⟩ = MacCampaign.U64.ofNat 0 ∧
      wideWord output ⟨11, by decide⟩ = MacCampaign.U64.ofNat 0 := by
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop0] at hexec
  have hs := cross_outer_result
    { start := Usize.ofNat 0, «end» := Usize.ofNat 5 }
    a aout wideZero output (by simp) (by simp)
    (by intro k _; exact wideZero_word k)
    (loopResult_of_eq (by simp) hexec)
  simpa [wideZero_value, wideZero_word] using hs

private theorem even_or_one (value : Nat) :
    (2 * value ||| 1) = 2 * value + 1 := by
  apply Nat.eq_of_testBit_eq
  intro i
  cases i with
  | zero => simp [Nat.testBit]
  | succ i =>
      rw [Nat.testBit_add_one, Nat.testBit_add_one]
      have hdiv : (2 * value + 1) / 2 = value := by omega
      simp [Nat.or_div_two, hdiv]

private theorem shift_join_value (low high : MacCampaign.U64) :
    (MacCampaign.or64
      (MacCampaign.U64.ofNat (low.val * 2))
      (MacCampaign.U64.ofNat (high.val / 2 ^ 63))).val =
      2 * (low.val % 2 ^ 63) + high.val / 2 ^ 63 := by
  have hhigh : high.val / 2 ^ 63 ≤ 1 := by
    have hh := high.isLt
    simp only [MacCampaign.u64Base] at hh
    omega
  have hlow : (low.val * 2) % 2 ^ 64 = 2 * (low.val % 2 ^ 63) := by
    omega
  rcases Nat.le_one_iff_eq_zero_or_eq_one.mp hhigh with hzero | hone
  · rw [hzero]
    simp only [MacCampaign.or64, MacCampaign.U64.ofNat,
      MacCampaign.u64Base, Nat.zero_mod, Nat.or_zero]
    change (low.val * 2 % 2 ^ 64) % 2 ^ 64 =
      2 * (low.val % 2 ^ 63)
    rw [Nat.mod_mod, hlow]
  · have hrem : low.val % 2 ^ 63 < 2 ^ 63 := Nat.mod_lt _ (by positivity)
    have hjoined : 2 * (low.val % 2 ^ 63) + 1 < 2 ^ 64 := by omega
    rw [hone]
    simp only [MacCampaign.or64, MacCampaign.U64.ofNat,
      MacCampaign.u64Base, Nat.one_mod]
    change (low.val * 2 % 2 ^ 64 ||| 1) % 2 ^ 64 =
      2 * (low.val % 2 ^ 63) + 1
    rw [hlow, even_or_one, Nat.mod_eq_of_lt hjoined]

private def joinedWord (low high : MacCampaign.U64) : MacCampaign.U64 :=
  MacCampaign.or64 (MacCampaign.U64.ofNat (low.val * 2))
    (MacCampaign.U64.ofNat (high.val / 2 ^ 63))

private theorem shift_loop_result
    (iter : Aeneas.Std.core.ops.range.Range) (original r output : WideArray)
    (hstart : 2 ≤ iter.start.val) (hstartEnd : iter.start.val ≤ 11)
    (hend : iter.«end».val = 11)
    (htop : wideWord r ⟨11, by decide⟩ =
      MacCampaign.U64.ofNat ((wideWord original ⟨10, by decide⟩).val / 2 ^ 63))
    (hprocessed : ∀ k : Fin 12,
      13 - iter.start.val ≤ k.val → k.val ≤ 10 →
      wideWord r k = joinedWord (wideWord original k)
        (wideWord original ⟨k.val - 1, by omega⟩))
    (hunprocessed : ∀ k : Fin 12, k.val < 13 - iter.start.val →
      wideWord r k = wideWord original k)
    (hres : LoopResult
      (fun (iter1, r1) =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop1.body iter1 r1)
      (iter, r) (.ok output)) :
    wideWord output ⟨11, by decide⟩ =
        MacCampaign.U64.ofNat ((wideWord original ⟨10, by decide⟩).val / 2 ^ 63) ∧
      (∀ k : Fin 12, 2 ≤ k.val → k.val ≤ 10 →
        wideWord output k = joinedWord (wideWord original k)
          (wideWord original ⟨k.val - 1, by omega⟩)) ∧
      (∀ k : Fin 12, k.val < 2 → wideWord output k = wideWord original k) := by
  cases hres with
  | done hbody =>
      have hstop : ¬iter.start.val < iter.«end».val := by
        intro hlt
        have hi : 12 - iter.start.val < 12 := by omega
        have hip : 11 - iter.start.val < 12 := by omega
        simp [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop1.body,
          Aeneas.Std.core.iter.range.IteratorRange.next, hlt,
          MacCampaign.sub_eq, show iter.start.val ≤ 12 by omega,
          show iter.start.val ≤ 11 by omega,
          wide_index r ⟨12 - iter.start.val⟩ hi,
          wide_index r ⟨11 - iter.start.val⟩ hip,
          MacCampaign.shl64_one, MacCampaign.shr64_sixtyThree] at hbody
        have hor : lift
            (MacCampaign.U64.ofNat
                ((wideWord r ⟨12 - iter.start.val, hi⟩).val * 2) |||
              MacCampaign.U64.ofNat
                ((wideWord r ⟨11 - iter.start.val, hip⟩).val /
                  9223372036854775808)) =
            .ok (joinedWord (wideWord r ⟨12 - iter.start.val, hi⟩)
              (wideWord r ⟨11 - iter.start.val, hip⟩)) := by rfl
        rw [hor, Result.bind_ok] at hbody
        obtain ⟨_, _, hfalse⟩ := bind_eq_ok hbody
        simp at hfalse
      have heq : iter.start.val = 11 := by omega
      simp [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop1.body,
        Aeneas.Std.core.iter.range.IteratorRange.next, hstop] at hbody
      subst output
      refine ⟨htop, ?_, ?_⟩
      · intro k hk2 hk10
        apply hprocessed k <;> omega
      · intro k hk
        apply hunprocessed k
        omega
  | next hbody htail =>
      have hlt : iter.start.val < iter.«end».val := by
        by_contra hn
        simp [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop1.body,
          Aeneas.Std.core.iter.range.IteratorRange.next, hn] at hbody
      have hs : iter.start.val < 11 := by omega
      have hi : 12 - iter.start.val < 12 := by omega
      have hip : 11 - iter.start.val < 12 := by omega
      simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop1.body,
        Aeneas.Std.core.iter.range.IteratorRange.next, if_pos hlt,
        Result.bind_ok] at hbody
      simp [MacCampaign.sub_eq, show iter.start.val ≤ 12 by omega,
        show iter.start.val ≤ 11 by omega] at hbody
      rw [wide_index r ⟨12 - iter.start.val⟩ hi,
        wide_index r ⟨11 - iter.start.val⟩ hip] at hbody
      simp only [MacCampaign.shl64_one, MacCampaign.shr64_sixtyThree,
        Result.bind_ok] at hbody
      have hor : lift
          (MacCampaign.U64.ofNat
              ((wideWord r ⟨12 - iter.start.val, hi⟩).val * 2) |||
            MacCampaign.U64.ofNat
              ((wideWord r ⟨11 - iter.start.val, hip⟩).val /
                9223372036854775808)) =
          .ok (joinedWord (wideWord r ⟨12 - iter.start.val, hi⟩)
            (wideWord r ⟨11 - iter.start.val, hip⟩)) := by rfl
      rw [hor, Result.bind_ok] at hbody
      obtain ⟨rnext, hupdate, hreturn⟩ := bind_eq_ok hbody
      simp only [Result.ok.injEq, ControlFlow.cont.injEq] at hreturn
      cases hreturn
      have hbelow : ∀ k : Fin 12, k.val < 12 - iter.start.val →
          wideWord rnext k = wideWord original k := by
        intro k hk
        rw [wideWord_update_ne r rnext (Usize.ofNat (12 - iter.start.val))
          _ hi hupdate k (by simp only [Usize.ofNat_val]; omega)]
        apply hunprocessed k
        omega
      have hat : wideWord rnext ⟨12 - iter.start.val, hi⟩ =
          joinedWord (wideWord original ⟨12 - iter.start.val, hi⟩)
            (wideWord original ⟨11 - iter.start.val, hip⟩) := by
        have hu := wideWord_update_eq r rnext (Usize.ofNat (12 - iter.start.val))
          _ hi hupdate
        have hu' : wideWord rnext ⟨12 - iter.start.val, hi⟩ =
            joinedWord (wideWord r ⟨12 - iter.start.val, hi⟩)
              (wideWord r ⟨11 - iter.start.val, hip⟩) := by
          simpa only [Usize.ofNat_val] using hu
        rw [hu']
        unfold joinedWord
        rw [hunprocessed ⟨12 - iter.start.val, hi⟩ (by
            simp only [Fin.val_mk]
            omega),
          hunprocessed ⟨11 - iter.start.val, hip⟩ (by
            simp only [Fin.val_mk]
            omega)]
      have hprocNext : ∀ k : Fin 12,
          13 - (iter.start.val + 1) ≤ k.val → k.val ≤ 10 →
          wideWord rnext k = joinedWord (wideWord original k)
            (wideWord original ⟨k.val - 1, by omega⟩) := by
        intro k hk hk10
        by_cases he : k.val = 12 - iter.start.val
        · have hkfin : k = ⟨12 - iter.start.val, hi⟩ := Fin.ext he
          subst k
          have hprev : (⟨12 - iter.start.val - 1, by omega⟩ : Fin 12) =
              ⟨11 - iter.start.val, hip⟩ := Fin.ext (by
                simp only [Fin.val_mk]
                omega)
          rw [hprev]
          exact hat
        · rw [wideWord_update_ne r rnext (Usize.ofNat (12 - iter.start.val))
            _ hi hupdate k (by
              simp only [Usize.ofNat_val]
              exact fun h => he h.symm)]
          apply hprocessed k <;> omega
      have htopNext : wideWord rnext ⟨11, by decide⟩ =
          MacCampaign.U64.ofNat ((wideWord original ⟨10, by decide⟩).val / 2 ^ 63) := by
        rw [wideWord_update_ne r rnext (Usize.ofNat (12 - iter.start.val))
          _ hi hupdate ⟨11, by decide⟩ (by simp; omega)]
        exact htop
      exact shift_loop_result
        { start := Usize.ofNat (iter.start.val + 1), «end» := iter.«end» }
        original rnext output (by simp; omega) (by simp; omega) hend htopNext
        (by simpa only [Usize.ofNat_val] using hprocNext)
        (by
          intro k hk
          apply hbelow k
          simp only [Usize.ofNat_val] at hk
          omega) htail
termination_by 11 - iter.start.val
decreasing_by simp only [Usize.ofNat_val]; omega

private def diagonalSum (value : Ipp.Extracted.ArkworksFqOps.LimbArray) : Nat :=
  ∑ i : Fin 6, limbAt value i.val ^ 2 * wordBase ^ (2 * i.val)

private theorem limb_eq_limbAt (value : Ipp.Extracted.ArkworksFqOps.LimbArray)
    (i : Fin 6) : limb value i = limbAt value i.val := by
  simp only [limbAt, dif_pos i.isLt]
  congr

private theorem six_square_identity (b x0 x1 x2 x3 x4 x5 : Nat) :
    x0 ^ 2 + x1 ^ 2 * b ^ 2 + x2 ^ 2 * b ^ 4 + x3 ^ 2 * b ^ 6 +
        x4 ^ 2 * b ^ 8 + x5 ^ 2 * b ^ 10 +
      2 * (x0 * x1 * b + x0 * x2 * b ^ 2 + x0 * x3 * b ^ 3 +
        x0 * x4 * b ^ 4 + x0 * x5 * b ^ 5 + x1 * x2 * b ^ 3 +
        x1 * x3 * b ^ 4 + x1 * x4 * b ^ 5 + x1 * x5 * b ^ 6 +
        x2 * x3 * b ^ 5 + x2 * x4 * b ^ 6 + x2 * x5 * b ^ 7 +
        x3 * x4 * b ^ 7 + x3 * x5 * b ^ 8 + x4 * x5 * b ^ 9) =
      (x0 + x1 * b + x2 * b ^ 2 + x3 * b ^ 3 + x4 * b ^ 4 +
        x5 * b ^ 5) ^ 2 := by ring

private theorem square_decomposition
    (value : Ipp.Extracted.ArkworksFqOps.LimbArray) :
    diagonalSum value + 2 * crossRows value 0 = limbsToNat value ^ 2 := by
  let x0 := limbAt value 0
  let x1 := limbAt value 1
  let x2 := limbAt value 2
  let x3 := limbAt value 3
  let x4 := limbAt value 4
  let x5 := limbAt value 5
  have hd : diagonalSum value =
      x0 ^ 2 + x1 ^ 2 * wordBase ^ 2 + x2 ^ 2 * wordBase ^ 4 +
        x3 ^ 2 * wordBase ^ 6 + x4 ^ 2 * wordBase ^ 8 +
        x5 ^ 2 * wordBase ^ 10 := by
    simp [diagonalSum, Fin.sum_univ_succ, x0, x1, x2, x3, x4, x5]
    ring
  have hc : crossRows value 0 =
      x0 * x1 * wordBase + x0 * x2 * wordBase ^ 2 +
        x0 * x3 * wordBase ^ 3 + x0 * x4 * wordBase ^ 4 +
        x0 * x5 * wordBase ^ 5 + x1 * x2 * wordBase ^ 3 +
        x1 * x3 * wordBase ^ 4 + x1 * x4 * wordBase ^ 5 +
        x1 * x5 * wordBase ^ 6 + x2 * x3 * wordBase ^ 5 +
        x2 * x4 * wordBase ^ 6 + x2 * x5 * wordBase ^ 7 +
        x3 * x4 * wordBase ^ 7 + x3 * x5 * wordBase ^ 8 +
        x4 * x5 * wordBase ^ 9 := by
    norm_num [crossRows, crossTail, Finset.sum_range_succ,
      Finset.sum_Ico_succ_top, x0, x1, x2, x3, x4, x5]
    ring
  have hv : limbsToNat value =
      x0 + x1 * wordBase + x2 * wordBase ^ 2 + x3 * wordBase ^ 3 +
        x4 * wordBase ^ 4 + x5 * wordBase ^ 5 := by
    simp [limbsToNat, prefixToNat, limbCount, limb_eq_limbAt,
      x0, x1, x2, x3, x4, x5]
  rw [hd, hc, hv]
  exact six_square_identity wordBase x0 x1 x2 x3 x4 x5

private theorem wideToNat_twelve (value : WideArray) :
    wideToNat value =
      (wideWord value ⟨0, by decide⟩).val +
      (wideWord value ⟨1, by decide⟩).val * wordBase +
      (wideWord value ⟨2, by decide⟩).val * wordBase ^ 2 +
      (wideWord value ⟨3, by decide⟩).val * wordBase ^ 3 +
      (wideWord value ⟨4, by decide⟩).val * wordBase ^ 4 +
      (wideWord value ⟨5, by decide⟩).val * wordBase ^ 5 +
      (wideWord value ⟨6, by decide⟩).val * wordBase ^ 6 +
      (wideWord value ⟨7, by decide⟩).val * wordBase ^ 7 +
      (wideWord value ⟨8, by decide⟩).val * wordBase ^ 8 +
      (wideWord value ⟨9, by decide⟩).val * wordBase ^ 9 +
      (wideWord value ⟨10, by decide⟩).val * wordBase ^ 10 +
      (wideWord value ⟨11, by decide⟩).val * wordBase ^ 11 := by
  simp [wideToNat, Fin.sum_univ_succ]
  ring

private theorem low_double_telescope (value : MacCampaign.U64) :
    (MacCampaign.U64.ofNat (value.val * 2)).val * wordBase +
        (value.val / 2 ^ 63) * wordBase ^ 2 =
      2 * value.val * wordBase := by
  have hv := value.isLt
  have hdiv : (value.val * 2) / 2 ^ 64 = value.val / 2 ^ 63 := by omega
  have hmod := Nat.mod_add_div (value.val * 2) (2 ^ 64)
  simp only [MacCampaign.U64.ofNat, MacCampaign.u64Base, wordBase]
  rw [hdiv] at hmod
  omega

private theorem join_telescope (low high : MacCampaign.U64) (p : Nat) :
    (joinedWord high low).val * wordBase ^ p +
        (high.val / 2 ^ 63) * wordBase ^ (p + 1) =
      2 * high.val * wordBase ^ p +
        (low.val / 2 ^ 63) * wordBase ^ p := by
  have hj := shift_join_value high low
  have hd := Nat.mod_add_div high.val (2 ^ 63)
  have hcore : (joinedWord high low).val +
      (high.val / 2 ^ 63) * wordBase =
      2 * high.val + low.val / 2 ^ 63 := by
    unfold joinedWord
    rw [hj]
    simp only [wordBase]
    omega
  calc
    (joinedWord high low).val * wordBase ^ p +
        (high.val / 2 ^ 63) * wordBase ^ (p + 1) =
      ((joinedWord high low).val +
        (high.val / 2 ^ 63) * wordBase) * wordBase ^ p := by
          rw [pow_succ]
          ring
    _ = (2 * high.val + low.val / 2 ^ 63) * wordBase ^ p := by rw [hcore]
    _ = 2 * high.val * wordBase ^ p +
        (low.val / 2 ^ 63) * wordBase ^ p := by ring

set_option maxHeartbeats 50000 in
private theorem extracted_double_spec
    (original top shifted output : WideArray)
    (hzero : wideWord original ⟨0, by decide⟩ = MacCampaign.U64.ofNat 0)
    (hzeroTop : wideWord original ⟨11, by decide⟩ = MacCampaign.U64.ofNat 0)
    (htop : MacCampaign.Array.update original (Usize.ofNat 11)
      (MacCampaign.U64.ofNat
        ((wideWord original ⟨10, by decide⟩).val / 2 ^ 63)) = .ok top)
    (hloop : ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop1
      { start := Usize.ofNat 2, «end» := Usize.ofNat 11 } top = .ok shifted)
    (hlow : MacCampaign.Array.update shifted (Usize.ofNat 1)
      (MacCampaign.U64.ofNat
        ((wideWord shifted ⟨1, by decide⟩).val * 2)) = .ok output) :
    wideToNat output = 2 * wideToNat original := by
  have htopWord := wideWord_update_eq original top (Usize.ofNat 11) _
    (by decide) htop
  have htop11 : wideWord top ⟨11, by decide⟩ =
      MacCampaign.U64.ofNat
        ((wideWord original ⟨10, by decide⟩).val / 2 ^ 63) := by
    simpa only [Usize.ofNat_val] using htopWord
  have htopRest : ∀ k : Fin 12, k.val < 11 →
      wideWord top k = wideWord original k := by
    intro k hk
    rw [wideWord_update_ne original top (Usize.ofNat 11) _
      (by decide) htop k (by simp; omega)]
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop1] at hloop
  have hs := shift_loop_result
    { start := Usize.ofNat 2, «end» := Usize.ofNat 11 }
    original top shifted (by simp) (by simp) (by simp) htop11
    (by intro k hk hk10; simp at hk; omega)
    (by intro k hk; apply htopRest k; simp at hk ⊢; omega)
    (loopResult_of_eq (by simp) hloop)
  have hlowWord := wideWord_update_eq shifted output (Usize.ofNat 1) _
    (by decide) hlow
  have hout1 : wideWord output ⟨1, by decide⟩ =
      MacCampaign.U64.ofNat ((wideWord original ⟨1, by decide⟩).val * 2) := by
    have hs1 := hs.2.2 ⟨1, by decide⟩ (by decide)
    simpa only [Usize.ofNat_val] using hlowWord.trans (congrArg
      (fun w => MacCampaign.U64.ofNat (w.val * 2)) hs1)
  have houtRest : ∀ k : Fin 12, k.val ≠ 1 →
      wideWord output k = wideWord shifted k := by
    intro k hk
    rw [wideWord_update_ne shifted output (Usize.ofNat 1) _
      (by decide) hlow k (by simp; exact fun h => hk h.symm)]
  have ho0 : wideWord output ⟨0, by decide⟩ = MacCampaign.U64.ofNat 0 := by
    rw [houtRest ⟨0, by decide⟩ (by decide), hs.2.2 ⟨0, by decide⟩ (by decide)]
    exact hzero
  have ho11 := (houtRest ⟨11, by decide⟩ (by decide)).trans hs.1
  have hoj (k : Fin 12) (hk2 : 2 ≤ k.val) (hk10 : k.val ≤ 10) :
      wideWord output k = joinedWord (wideWord original k)
        (wideWord original ⟨k.val - 1, by omega⟩) :=
    (houtRest k (by omega)).trans (hs.2.1 k hk2 hk10)
  rw [wideToNat_twelve output, wideToNat_twelve original]
  rw [ho0, hout1, hoj ⟨2, by decide⟩ (by decide) (by decide),
    hoj ⟨3, by decide⟩ (by decide) (by decide),
    hoj ⟨4, by decide⟩ (by decide) (by decide),
    hoj ⟨5, by decide⟩ (by decide) (by decide),
    hoj ⟨6, by decide⟩ (by decide) (by decide),
    hoj ⟨7, by decide⟩ (by decide) (by decide),
    hoj ⟨8, by decide⟩ (by decide) (by decide),
    hoj ⟨9, by decide⟩ (by decide) (by decide),
    hoj ⟨10, by decide⟩ (by decide) (by decide), ho11, hzero, hzeroTop]
  simp only [MacCampaign.U64.ofNat, MacCampaign.u64Base, Nat.zero_mod]
  have etop : ((wideWord original ⟨10, by decide⟩).val / 2 ^ 63) %
      2 ^ 64 = (wideWord original ⟨10, by decide⟩).val / 2 ^ 63 := by
    apply Nat.mod_eq_of_lt
    have hx := (wideWord original ⟨10, by decide⟩).isLt
    simp only [MacCampaign.u64Base] at hx
    omega
  rw [etop]
  have e1 := low_double_telescope (wideWord original ⟨1, by decide⟩)
  simp only [MacCampaign.U64.ofNat, MacCampaign.u64Base] at e1
  have e2 := join_telescope (wideWord original ⟨1, by decide⟩)
    (wideWord original ⟨2, by decide⟩) 2
  have e3 := join_telescope (wideWord original ⟨2, by decide⟩)
    (wideWord original ⟨3, by decide⟩) 3
  have e4 := join_telescope (wideWord original ⟨3, by decide⟩)
    (wideWord original ⟨4, by decide⟩) 4
  have e5 := join_telescope (wideWord original ⟨4, by decide⟩)
    (wideWord original ⟨5, by decide⟩) 5
  have e6 := join_telescope (wideWord original ⟨5, by decide⟩)
    (wideWord original ⟨6, by decide⟩) 6
  have e7 := join_telescope (wideWord original ⟨6, by decide⟩)
    (wideWord original ⟨7, by decide⟩) 7
  have e8 := join_telescope (wideWord original ⟨7, by decide⟩)
    (wideWord original ⟨8, by decide⟩) 8
  have e9 := join_telescope (wideWord original ⟨8, by decide⟩)
    (wideWord original ⟨9, by decide⟩) 9
  have e10 := join_telescope (wideWord original ⟨9, by decide⟩)
    (wideWord original ⟨10, by decide⟩) 10
  have ie1 := congrArg (fun n : Nat => (n : Int)) e1
  have ie2 := congrArg (fun n : Nat => (n : Int)) e2
  have ie3 := congrArg (fun n : Nat => (n : Int)) e3
  have ie4 := congrArg (fun n : Nat => (n : Int)) e4
  have ie5 := congrArg (fun n : Nat => (n : Int)) e5
  have ie6 := congrArg (fun n : Nat => (n : Int)) e6
  have ie7 := congrArg (fun n : Nat => (n : Int)) e7
  have ie8 := congrArg (fun n : Nat => (n : Int)) e8
  have ie9 := congrArg (fun n : Nat => (n : Int)) e9
  have ie10 := congrArg (fun n : Nat => (n : Int)) e10
  apply Nat.cast_injective (R := Int)
  norm_num only [Nat.cast_add, Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat] at ie1 ie2 ie3 ie4 ie5 ie6 ie7 ie8 ie9 ie10 ⊢
  linear_combination ie1 + ie2 + ie3 + ie4 + ie5 + ie6 + ie7 + ie8 + ie9 + ie10

private def diagonalTail (value : Ipp.Extracted.ArkworksFqOps.LimbArray) (start : Nat) : Nat :=
  ∑ i ∈ Finset.Ico start 6, limbAt value i ^ 2 * wordBase ^ (2 * i)

private theorem diagonalTail_step (value : Ipp.Extracted.ArkworksFqOps.LimbArray) (start : Nat)
    (hstart : start < 6) :
    diagonalTail value start = limbAt value start ^ 2 * wordBase ^ (2 * start) +
      diagonalTail value (start + 1) := by
  classical
  unfold diagonalTail
  have hset : Finset.Ico start 6 \ {start} = Finset.Ico (start + 1) 6 := by
    ext i
    simp
    omega
  rw [Finset.sum_eq_add_sum_diff_singleton (s := Finset.Ico start 6)
    (f := fun i => limbAt value i ^ 2 * wordBase ^ (2 * i))
    (i := start) (by simp [hstart])]
  rw [hset]

private theorem diagonal_loop_result
    (iter : Aeneas.Std.core.ops.range.Range)
    (a : Ipp.Extracted.ArkworksFqOps.LimbArray)
    (r output : WideArray) (carry : MacCampaign.U64)
    (hstart : iter.start.val ≤ 6) (hend : iter.«end».val = 6)
    (hcarry : carry.val ≤ 1)
    (hres : LoopResult
      (fun (iter1, a1, r1, carry1) =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop2.body
          iter1 a1 r1 carry1)
      (iter, a, r, carry) (.ok output)) :
    ∃ finalCarry : Nat, finalCarry ≤ 1 ∧
      wideToNat output + finalCarry * wordBase ^ 12 =
        wideToNat r + carry.val * wordBase ^ (2 * iter.start.val) +
          diagonalTail a iter.start.val := by
  cases hres with
  | done hbody =>
      have hstop : ¬iter.start.val < iter.«end».val := by
        intro hlt
        simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop2.body,
          Aeneas.Std.core.iter.range.IteratorRange.next, if_pos hlt,
          Result.bind_ok, MacCampaign.mul_eq, Aeneas.Std.add_eq,
          Usize.ofNat_val] at hbody
        obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
        obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
        obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
        obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
        obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
        obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
        obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
        simp at hbody
      have hsix : iter.start.val = 6 := by omega
      simp [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop2.body,
        Aeneas.Std.core.iter.range.IteratorRange.next, hstop] at hbody
      subst output
      refine ⟨carry.val, hcarry, ?_⟩
      simp [diagonalTail, hsix]
  | next hbody htail =>
      have hlt : iter.start.val < iter.«end».val := by
        by_contra hn
        simp [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop2.body,
          Aeneas.Std.core.iter.range.IteratorRange.next, hn] at hbody
      have hs : iter.start.val < 6 := by omega
      have hpos : 2 * iter.start.val < 12 := by omega
      have hnext : 2 * iter.start.val + 1 < 12 := by omega
      simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop2.body,
        Aeneas.Std.core.iter.range.IteratorRange.next, if_pos hlt,
        Result.bind_ok, MacCampaign.mul_eq, Aeneas.Std.add_eq,
        Usize.ofNat_val] at hbody
      rw [wide_index r ⟨2 * iter.start.val⟩ hpos,
        limb_index a iter.start hs] at hbody
      simp only [Result.bind_ok] at hbody
      obtain ⟨diag, hmac, hrest⟩ := bind_eq_ok hbody
      obtain ⟨r1, hu1, hrest⟩ := bind_eq_ok hrest
      rw [wide_index r1 ⟨2 * iter.start.val + 1⟩ hnext] at hrest
      simp only [Result.bind_ok] at hrest
      obtain ⟨next, hadc, hrest⟩ := bind_eq_ok hrest
      obtain ⟨r2, hu2, hreturn⟩ := bind_eq_ok hrest
      cases hreturn
      let ai : Fin limbCount := ⟨iter.start.val, by simpa [limbCount] using hs⟩
      have hm0 := wide_mac_update r r1 (Usize.ofNat (2 * iter.start.val))
        (limbWord a ai) (limbWord a ai)
        carry diag hpos hmac hu1
      have hm : wideToNat r1 + diag.carry.val *
          wordBase ^ (2 * iter.start.val + 1) =
        wideToNat r + ((limbWord a ai).val ^ 2 + carry.val) *
          wordBase ^ (2 * iter.start.val) := by
        simpa only [Usize.ofNat_val, pow_two] using hm0
      have ha := extracted_adc_general_spec
        (wideWord r1 ⟨2 * iter.start.val + 1, hnext⟩)
        (MacCampaign.U64.ofNat 0) diag.carry next hadc
      have hnextCarry : next.carry.val ≤ 1 := by
        have hl := (wideWord r1 ⟨2 * iter.start.val + 1, hnext⟩).isLt
        have hc := diag.carry.isLt
        simp only [MacCampaign.u64Base, wordBase] at hl hc
        have heq := ha.2
        simp [MacCampaign.U64.ofNat, wordBase] at heq
        have hn := ha.1
        omega
      have hu0 := wideToNat_update r1 r2
        (Usize.ofNat (2 * iter.start.val + 1)) next.low hnext hu2
      have hu : wideToNat r2 +
          (wideWord r1 ⟨2 * iter.start.val + 1, hnext⟩).val *
            wordBase ^ (2 * iter.start.val + 1) =
        wideToNat r1 + next.low.val * wordBase ^ (2 * iter.start.val + 1) := by
        simpa only [Usize.ofNat_val] using hu0
      have hstep : wideToNat r2 + next.carry.val * wordBase ^ (2 * iter.start.val + 2) =
        wideToNat r + carry.val * wordBase ^ (2 * iter.start.val) +
            (limbWord a ai).val ^ 2 * wordBase ^ (2 * iter.start.val) := by
        have heq := ha.2
        simp [limbAt, hs, limb, MacCampaign.U64.ofNat] at heq
        have hes := congrArg
          (fun n : Nat => n * wordBase ^ (2 * iter.start.val + 1)) heq
        have ihm := congrArg (fun n : Nat => (n : Int)) hm
        have ihu := congrArg (fun n : Nat => (n : Int)) hu
        have ihes := congrArg (fun n : Nat => (n : Int)) hes
        apply Nat.cast_injective (R := Int)
        norm_num only [Nat.cast_add, Nat.cast_mul, Nat.cast_pow,
          Nat.cast_ofNat] at ihm ihu ihes ⊢
        linear_combination ihm + ihu - ihes
      have ih := diagonal_loop_result
        { start := Usize.ofNat (iter.start.val + 1), «end» := iter.«end» }
        a r2 output next.carry (by simp; omega) hend hnextCarry htail
      obtain ⟨fc, hfc, hi⟩ := ih
      refine ⟨fc, hfc, ?_⟩
      simp only [Usize.ofNat_val] at hi
      simp only [show 2 * (iter.start.val + 1) = 2 * iter.start.val + 2 by omega] at hi
      have hai : limbAt a iter.start.val = (limbWord a ai).val := by
        simpa [limb] using (limb_eq_limbAt a ai).symm
      rw [hi, hstep, diagonalTail_step a iter.start.val hs, hai]
      ring
termination_by 6 - iter.start.val
decreasing_by simp only [Usize.ofNat_val]; omega

private theorem diagonalTail_zero (value : Ipp.Extracted.ArkworksFqOps.LimbArray) :
    diagonalTail value 0 = diagonalSum value := by
  norm_num [diagonalTail, diagonalSum, Fin.sum_univ_succ,
    Finset.sum_Ico_succ_top, Finset.sum_range_succ]
  ring

theorem extracted_diagonal_spec
    (a : Ipp.Extracted.ArkworksFqOps.LimbArray) (input output : WideArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop2
      { start := Usize.ofNat 0, «end» := Usize.ofNat 6 }
      a input (MacCampaign.U64.ofNat 0) = .ok output) :
    ∃ finalCarry : Nat, finalCarry ≤ 1 ∧
      wideToNat output + finalCarry * wordBase ^ 12 =
        wideToNat input + diagonalSum a := by
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop2] at hexec
  have hs := diagonal_loop_result
    { start := Usize.ofNat 0, «end» := Usize.ofNat 6 }
    a input output (MacCampaign.U64.ofNat 0) (by decide) (by decide) (by decide)
    (loopResult_of_eq (by simp) hexec)
  simpa [diagonalTail_zero, MacCampaign.U64.ofNat] using hs

def wideAt (value : WideArray) (i : Nat) : Nat :=
  if h : i < 12 then (wideWord value ⟨i, h⟩).val else 0

def widePrefix (value : WideArray) (count : Nat) : Nat :=
  ∑ j ∈ Finset.range count, wideAt value j * wordBase ^ j

private theorem widePrefix_succ (value : WideArray) (count : Nat) :
    widePrefix value (count + 1) =
      widePrefix value count + wideAt value count * wordBase ^ count := by
  simp [widePrefix, Finset.sum_range_succ]

private theorem widePrefix_congr (left right : WideArray) (count : Nat)
    (hwords : ∀ (j : Fin 12), j.val < count →
      wideWord left j = wideWord right j) :
    widePrefix left count = widePrefix right count := by
  apply Finset.sum_congr rfl
  intro j hj
  have hjc : j < count := Finset.mem_range.mp hj
  by_cases hj12 : j < 12
  · simp only [wideAt, dif_pos hj12]
    rw [hwords ⟨j, hj12⟩ hjc]
  · simp [wideAt, hj12]

theorem extracted_reduce_round_spec (input output : WideArray) (i : Usize)
    (carry nextCarry : MacCampaign.U64) (hi : i.val < 6)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.square_reduce_round
      input i carry = .ok (output, nextCarry)) :
    ∃ k : Nat, k < wordBase ∧ nextCarry.val ≤ 2 ∧
      wideToNat output + nextCarry.val * wordBase ^ (i.val + 7) =
        wideToNat input +
        (wideWord input ⟨i.val, by omega⟩).val * wordBase ^ i.val +
        k * Ipp.Bls12377.baseModulus * wordBase ^ i.val +
        carry.val * wordBase ^ (i.val + 6) ∧
      ∀ (j : Fin 12), j.val ≤ i.val → wideWord output j = wideWord input j := by
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_reduce_round,
    Result.bind_ok, Aeneas.Std.add_eq, Usize.ofNat_val] at hexec
  obtain ⟨wi, hwi, hrest⟩ := bind_eq_ok hexec
  rw [wide_index input i (by omega)] at hwi
  cases hwi
  obtain ⟨k, hk, hrest⟩ := bind_eq_ok hrest
  have hk' : k = MacCampaign.wrappingMul64
      (wideWord input ⟨i.val, by omega⟩)
        ark_ip_proofs.s3_07_arkworks_fq_spike.INV := by
    simpa [lift, ark_ip_proofs.core.num.U64.wrapping_mul] using hk.symm
  obtain ⟨q0, hq0, hrest⟩ := bind_eq_ok hrest
  rw [limb_index ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
    (Usize.ofNat 0) (by decide)] at hq0
  cases hq0
  obtain ⟨d0, hd0, hrest⟩ := bind_eq_ok hrest
  obtain ⟨w1, hw1, hrest⟩ := bind_eq_ok hrest
  rw [wide_index input ⟨i.val + 1⟩ (by change i.val + 1 < 12; omega)] at hw1
  cases hw1
  obtain ⟨q1, hq1, hrest⟩ := bind_eq_ok hrest
  rw [limb_index ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
    (Usize.ofNat 1) (by decide)] at hq1
  cases hq1
  obtain ⟨d1, hd1, hrest⟩ := bind_eq_ok hrest
  obtain ⟨r1, hu1, hrest⟩ := bind_eq_ok hrest
  obtain ⟨w2, hw2, hrest⟩ := bind_eq_ok hrest
  rw [wide_index r1 ⟨i.val + 2⟩ (by change i.val + 2 < 12; omega)] at hw2
  cases hw2
  obtain ⟨q2, hq2, hrest⟩ := bind_eq_ok hrest
  rw [limb_index ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
    (Usize.ofNat 2) (by decide)] at hq2
  cases hq2
  obtain ⟨d2, hd2, hrest⟩ := bind_eq_ok hrest
  obtain ⟨r2, hu2, hrest⟩ := bind_eq_ok hrest
  obtain ⟨w3, hw3, hrest⟩ := bind_eq_ok hrest
  rw [wide_index r2 ⟨i.val + 3⟩ (by change i.val + 3 < 12; omega)] at hw3
  cases hw3
  obtain ⟨q3, hq3, hrest⟩ := bind_eq_ok hrest
  rw [limb_index ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
    (Usize.ofNat 3) (by decide)] at hq3
  cases hq3
  obtain ⟨d3, hd3, hrest⟩ := bind_eq_ok hrest
  obtain ⟨r3, hu3, hrest⟩ := bind_eq_ok hrest
  obtain ⟨w4, hw4, hrest⟩ := bind_eq_ok hrest
  rw [wide_index r3 ⟨i.val + 4⟩ (by change i.val + 4 < 12; omega)] at hw4
  cases hw4
  obtain ⟨q4, hq4, hrest⟩ := bind_eq_ok hrest
  rw [limb_index ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
    (Usize.ofNat 4) (by decide)] at hq4
  cases hq4
  obtain ⟨d4, hd4, hrest⟩ := bind_eq_ok hrest
  obtain ⟨r4, hu4, hrest⟩ := bind_eq_ok hrest
  obtain ⟨w5, hw5, hrest⟩ := bind_eq_ok hrest
  rw [wide_index r4 ⟨i.val + 5⟩ (by change i.val + 5 < 12; omega)] at hw5
  cases hw5
  obtain ⟨q5, hq5, hrest⟩ := bind_eq_ok hrest
  rw [limb_index ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
    (Usize.ofNat 5) (by decide)] at hq5
  cases hq5
  obtain ⟨d5, hd5, hrest⟩ := bind_eq_ok hrest
  obtain ⟨r5, hu5, hrest⟩ := bind_eq_ok hrest
  obtain ⟨wt, hwt, hrest⟩ := bind_eq_ok hrest
  rw [wide_index r5 ⟨i.val + 6⟩ (by change i.val + 6 < 12; omega)] at hwt
  cases hwt
  obtain ⟨top, htop, hrest⟩ := bind_eq_ok hrest
  obtain ⟨r6, hu6, hreturn⟩ := bind_eq_ok hrest
  simp only [Result.ok.injEq, Prod.mk.injEq] at hreturn
  rcases hreturn with ⟨rfl, hcarryNext⟩
  have hkval : k.val =
      (wideWord input ⟨i.val, by omega⟩).val *
        ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val % wordBase := by
    rw [hk']
    change ((wideWord input ⟨i.val, by omega⟩).val *
      ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val) % MacCampaign.u64Base = _
    rfl
  have hzero : d0.low.val = 0 := by
    have hs := extracted_mac_result_spec
      (wideWord input ⟨i.val, by omega⟩) k
      (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩)
      (MacCampaign.U64.ofNat 0) d0 hd0
    apply firstReductionLow_eq_zero
      { low := (wideWord input ⟨i.val, by omega⟩).val, carry := 0 }
      { low := d0.low.val, carry := d0.carry.val } k.val hkval
    simpa [MacSpec, limb, MacCampaign.U64.ofNat] using hs
  have h0 := extracted_mac_result_spec
    (wideWord input ⟨i.val, by omega⟩) k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩)
    (MacCampaign.U64.ofNat 0) d0 hd0
  have h1 := wide_mac_update input r1 (Usize.ofNat (i.val + 1)) k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨1, by decide⟩)
    d0.carry d1 (by change i.val + 1 < 12; omega) hd1 hu1
  have h2 := wide_mac_update r1 r2 (Usize.ofNat (i.val + 2)) k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨2, by decide⟩)
    d1.carry d2 (by change i.val + 2 < 12; omega) hd2 hu2
  have h3 := wide_mac_update r2 r3 (Usize.ofNat (i.val + 3)) k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨3, by decide⟩)
    d2.carry d3 (by change i.val + 3 < 12; omega) hd3 hu3
  have h4 := wide_mac_update r3 r4 (Usize.ofNat (i.val + 4)) k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨4, by decide⟩)
    d3.carry d4 (by change i.val + 4 < 12; omega) hd4 hu4
  have h5 := wide_mac_update r4 r5 (Usize.ofNat (i.val + 5)) k
    (limbWord ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨5, by decide⟩)
    d4.carry d5 (by change i.val + 5 < 12; omega) hd5 hu5
  have ht := wide_adc_update r5 r6 (Usize.ofNat (i.val + 6))
    d5.carry carry top (by change i.val + 6 < 12; omega) htop hu6
  have htc : top.carry.val = nextCarry.val := by rw [hcarryNext]
  have htopSpec := extracted_adc_general_spec
    (wideWord r5 ⟨i.val + 6, by omega⟩) d5.carry carry top htop
  have hnextLe : nextCarry.val ≤ 2 := by rw [← htc]; exact htopSpec.1
  refine ⟨k.val, k.isLt, hnextLe, ?_, ?_⟩
  · have ih0 := congrArg (fun n : Nat => (n : Int)) h0.equation
    have ih1 := congrArg (fun n : Nat => (n : Int)) h1
    have ih2 := congrArg (fun n : Nat => (n : Int)) h2
    have ih3 := congrArg (fun n : Nat => (n : Int)) h3
    have ih4 := congrArg (fun n : Nat => (n : Int)) h4
    have ih5 := congrArg (fun n : Nat => (n : Int)) h5
    have iht := congrArg (fun n : Nat => (n : Int)) ht
    apply Nat.cast_injective (R := Int)
    simp only [Nat.cast_add, Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat,
      Usize.ofNat_val, MacCampaign.U64.ofNat, htc, hzero, Nat.cast_zero,
      Nat.zero_mod, zero_mul, zero_add] at ih0 ih1 ih2 ih3 ih4 ih5 iht ⊢
    rw [← modulus_limbsToNat]
    rw [limbsToNat_six]
    simp only [limb]
    norm_num only [Nat.cast_add, Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat] at ⊢
    linear_combination
      ih1 + ih2 + ih3 + ih4 + ih5 + iht -
        ih0 * (wordBase : Int) ^ i.val
  · intro j hj
    rw [wideWord_update_ne r5 r6 (Usize.ofNat (i.val + 6)) top.low
        (by change i.val + 6 < 12; omega) hu6 j (by simp; omega),
      wideWord_update_ne r4 r5 (Usize.ofNat (i.val + 5)) d5.low
        (by change i.val + 5 < 12; omega) hu5 j (by simp; omega),
      wideWord_update_ne r3 r4 (Usize.ofNat (i.val + 4)) d4.low
        (by change i.val + 4 < 12; omega) hu4 j (by simp; omega),
      wideWord_update_ne r2 r3 (Usize.ofNat (i.val + 3)) d3.low
        (by change i.val + 3 < 12; omega) hu3 j (by simp; omega),
      wideWord_update_ne r1 r2 (Usize.ofNat (i.val + 2)) d2.low
        (by change i.val + 2 < 12; omega) hu2 j (by simp; omega),
      wideWord_update_ne input r1 (Usize.ofNat (i.val + 1)) d1.low
        (by change i.val + 1 < 12; omega) hu1 j (by simp; omega)]

private theorem reduction_loop_result
    (iter : Aeneas.Std.core.ops.range.Range)
    (original current output : WideArray) (carry : MacCampaign.U64) (factor : Nat)
    (hstart : iter.start.val ≤ 6) (hend : iter.«end».val = 6)
    (hcarry : carry.val ≤ 2) (hfactor : factor < wordBase ^ iter.start.val)
    (hinvariant : wideToNat current +
        carry.val * wordBase ^ (iter.start.val + 6) =
      wideToNat original + widePrefix current iter.start.val +
        factor * Ipp.Bls12377.baseModulus)
    (hres : LoopResult
      (fun (iter1, r1, carry1) =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop3.body
          iter1 r1 carry1)
      (iter, current, carry) (.ok output)) :
    ∃ finalCarry finalFactor : Nat,
      finalCarry ≤ 2 ∧ finalFactor < wordBase ^ 6 ∧
      wideToNat output + finalCarry * wordBase ^ 12 =
        wideToNat original + widePrefix output 6 +
          finalFactor * Ipp.Bls12377.baseModulus := by
  cases hres with
  | done hbody =>
      have hstop : ¬iter.start.val < iter.«end».val := by
        intro hlt
        simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop3.body,
          Aeneas.Std.core.iter.range.IteratorRange.next, if_pos hlt,
          Result.bind_ok] at hbody
        obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
        simp at hbody
      have hsix : iter.start.val = 6 := by omega
      simp [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop3.body,
        Aeneas.Std.core.iter.range.IteratorRange.next, hstop] at hbody
      subst output
      refine ⟨carry.val, factor, hcarry, by simpa [hsix] using hfactor, ?_⟩
      simpa [hsix] using hinvariant
  | next hbody htail =>
      have hlt : iter.start.val < iter.«end».val := by
        by_contra hn
        simp [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop3.body,
          Aeneas.Std.core.iter.range.IteratorRange.next, hn] at hbody
      have hs : iter.start.val < 6 := by omega
      simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop3.body,
        Aeneas.Std.core.iter.range.IteratorRange.next, if_pos hlt,
        Result.bind_ok] at hbody
      obtain ⟨pair, hround, hreturn⟩ := bind_eq_ok hbody
      rcases pair with ⟨rnext, nextCarry⟩
      cases hreturn
      obtain ⟨k, hk, hnextCarry, heq, hframe⟩ :=
        extracted_reduce_round_spec current rnext iter.start carry nextCarry hs hround
      have hp0 : widePrefix rnext iter.start.val =
          widePrefix current iter.start.val := by
        apply widePrefix_congr
        intro j hj
        exact hframe j (by omega)
      have hp : widePrefix rnext (iter.start.val + 1) =
          widePrefix current iter.start.val +
            (wideWord current ⟨iter.start.val, by omega⟩).val *
              wordBase ^ iter.start.val := by
        rw [widePrefix_succ, hp0]
        have hat : wideAt rnext iter.start.val =
            (wideWord current ⟨iter.start.val, by omega⟩).val := by
          rw [wideAt, dif_pos (by omega)]
          have hf := hframe ⟨iter.start.val, by omega⟩ (Nat.le_refl _)
          simpa only using congrArg (fun w => w.val) hf
        rw [hat]
      let nextFactor := factor + k * wordBase ^ iter.start.val
      have hnextFactor : nextFactor < wordBase ^ (iter.start.val + 1) := by
        unfold nextFactor
        rw [pow_succ]
        have hpos : 0 < wordBase ^ iter.start.val :=
          pow_pos wordBase_pos iter.start.val
        nlinarith
      have hnextInvariant : wideToNat rnext +
          nextCarry.val * wordBase ^ (iter.start.val + 1 + 6) =
        wideToNat original + widePrefix rnext (iter.start.val + 1) +
          nextFactor * Ipp.Bls12377.baseModulus := by
        unfold nextFactor
        rw [show iter.start.val + 1 + 6 = iter.start.val + 7 by omega]
        calc
          _ = (wideToNat current +
                carry.val * wordBase ^ (iter.start.val + 6)) +
              (wideWord current ⟨iter.start.val, by omega⟩).val *
                wordBase ^ iter.start.val +
              k * Ipp.Bls12377.baseModulus * wordBase ^ iter.start.val := by
                rw [heq]
                ring
          _ = (wideToNat original + widePrefix current iter.start.val +
                factor * Ipp.Bls12377.baseModulus) +
              (wideWord current ⟨iter.start.val, by omega⟩).val *
                wordBase ^ iter.start.val +
              k * Ipp.Bls12377.baseModulus * wordBase ^ iter.start.val := by
                rw [hinvariant]
          _ = _ := by rw [hp]; ring
      exact reduction_loop_result
        { start := Usize.ofNat (iter.start.val + 1), «end» := iter.«end» }
        original rnext output nextCarry nextFactor (by simp; omega) hend
        hnextCarry (by simpa only [Usize.ofNat_val] using hnextFactor)
        (by simpa only [Usize.ofNat_val] using hnextInvariant) htail
termination_by 6 - iter.start.val
decreasing_by simp only [Usize.ofNat_val]; omega

private def highLimbs (value : WideArray) : Ipp.Extracted.ArkworksFqOps.LimbArray :=
  MacCampaign.Array.make (Usize.ofNat 6)
    [wideWord value ⟨6, by decide⟩, wideWord value ⟨7, by decide⟩,
     wideWord value ⟨8, by decide⟩, wideWord value ⟨9, by decide⟩,
     wideWord value ⟨10, by decide⟩, wideWord value ⟨11, by decide⟩]

private theorem wide_decompose (value : WideArray) :
    wideToNat value = widePrefix value 6 +
      limbsToNat (highLimbs value) * wordBase ^ 6 := by
  rw [wideToNat_twelve]
  rw [limbsToNat_six]
  norm_num [widePrefix, Finset.sum_range_succ, wideAt, highLimbs,
    limb, limbWord, MacCampaign.Array.make]
  simp only [pow_succ]
  ring

set_option maxRecDepth 4096 in
theorem extracted_reduction_spec (input reduced : WideArray)
    (hinput : wideToNat input < Ipp.Bls12377.baseModulus ^ 2)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop3
      { start := Usize.ofNat 0, «end» := Usize.ofNat 6 }
      input (MacCampaign.U64.ofNat 0) = .ok reduced) :
    limbsToNat (highLimbs reduced) < 2 * Ipp.Bls12377.baseModulus ∧
      Nat.ModEq Ipp.Bls12377.baseModulus
        (limbsToNat (highLimbs reduced) * wordBase ^ 6)
        (wideToNat input) := by
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square_loop3] at hexec
  have hs := reduction_loop_result
    { start := Usize.ofNat 0, «end» := Usize.ofNat 6 }
    input input reduced (MacCampaign.U64.ofNat 0) 0 (by decide) (by decide)
    (by simp [MacCampaign.U64.ofNat]) (by simp [wordBase_pos])
    (by simp [widePrefix, MacCampaign.U64.ofNat])
    (loopResult_of_eq (by simp) hexec)
  obtain ⟨finalCarry, factor, hcarry, hfactor, heq⟩ := hs
  have hdecomp := wide_decompose reduced
  have hcore : limbsToNat (highLimbs reduced) * wordBase ^ 6 +
      finalCarry * wordBase ^ 12 =
    wideToNat input + factor * Ipp.Bls12377.baseModulus := by
    rw [hdecomp] at heq
    omega
  have hqR : Ipp.Bls12377.baseModulus < wordBase ^ 6 := by
    have htwo : 2 * Ipp.Bls12377.baseModulus < wordBase ^ 6 := by
      simpa only [limbCount] using two_modulus_lt_radix
    have hqpos : 0 < Ipp.Bls12377.baseModulus := by decide
    omega
  have hrhs : wideToNat input + factor * Ipp.Bls12377.baseModulus <
      2 * Ipp.Bls12377.baseModulus * wordBase ^ 6 := by
    have hqpos : 0 < Ipp.Bls12377.baseModulus := by decide
    have hin : wideToNat input <
        Ipp.Bls12377.baseModulus * wordBase ^ 6 := by
      exact lt_trans hinput (by
        simpa [pow_two] using (Nat.mul_lt_mul_left hqpos).2 hqR)
    have hf : factor * Ipp.Bls12377.baseModulus <
        wordBase ^ 6 * Ipp.Bls12377.baseModulus :=
      (Nat.mul_lt_mul_right hqpos).2 hfactor
    calc
      _ < Ipp.Bls12377.baseModulus * wordBase ^ 6 +
          wordBase ^ 6 * Ipp.Bls12377.baseModulus := Nat.add_lt_add hin hf
      _ = _ := by ring
  have hcombined : limbsToNat (highLimbs reduced) +
      finalCarry * wordBase ^ 6 < 2 * Ipp.Bls12377.baseModulus := by
    have hm : (limbsToNat (highLimbs reduced) +
        finalCarry * wordBase ^ 6) * wordBase ^ 6 <
        2 * Ipp.Bls12377.baseModulus * wordBase ^ 6 := by
      have hpow : wordBase ^ 12 = wordBase ^ 6 * wordBase ^ 6 := by
        rw [← pow_add]
      calc
        _ = limbsToNat (highLimbs reduced) * wordBase ^ 6 +
            finalCarry * wordBase ^ 12 := by rw [hpow]; ring
        _ < _ := by rw [hcore]; exact hrhs
    exact (Nat.mul_lt_mul_right (pow_pos wordBase_pos 6)).mp hm
  have hfinalZero : finalCarry = 0 := by
    have htwo : 2 * Ipp.Bls12377.baseModulus < wordBase ^ 6 := by
      simpa only [limbCount] using two_modulus_lt_radix
    by_contra hn
    have hfc : 1 ≤ finalCarry := by omega
    nlinarith
  refine ⟨by simpa [hfinalZero] using hcombined, ?_⟩
  rw [hfinalZero, zero_mul, Nat.add_zero] at hcore
  rw [hcore]
  simpa [Nat.add_comm, Nat.mul_comm] using
    (Nat.ModEq.modulus_mul_add (m := Ipp.Bls12377.baseModulus)
      (a := factor) (b := wideToNat input))

set_option maxRecDepth 32768 in
set_option maxHeartbeats 1000000 in
theorem extracted_square_spec (a output : Ipp.Extracted.ArkworksFqOps.LimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.square a = .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
      Nat.ModEq Ipp.Bls12377.baseModulus
        (limbsToNat output * wordBase ^ 6) (limbsToNat a ^ 2) := by
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.square,
    Result.bind_ok] at hexec
  obtain ⟨pair, hcross, hrest⟩ := bind_eq_ok hexec
  rcases pair with ⟨crossA, crossWide⟩
  obtain ⟨w10, hw10, hrest⟩ := bind_eq_ok hrest
  rw [wide_index crossWide (Usize.ofNat 10) (by decide)] at hw10
  cases hw10
  obtain ⟨topWord, htopWord, hrest⟩ := bind_eq_ok hrest
  rw [MacCampaign.shr64_sixtyThree] at htopWord
  simp only [Result.ok.injEq] at htopWord
  subst topWord
  obtain ⟨topWide, htopUpdate, hrest⟩ := bind_eq_ok hrest
  obtain ⟨shifted, hshift, hrest⟩ := bind_eq_ok hrest
  obtain ⟨w1, hw1, hrest⟩ := bind_eq_ok hrest
  rw [wide_index shifted (Usize.ofNat 1) (by decide)] at hw1
  cases hw1
  obtain ⟨lowWord, hlowWord, hrest⟩ := bind_eq_ok hrest
  rw [MacCampaign.shl64_one] at hlowWord
  simp only [Result.ok.injEq] at hlowWord
  subst lowWord
  obtain ⟨doubled, hlowUpdate, hrest⟩ := bind_eq_ok hrest
  obtain ⟨squaredWide, hdiag, hrest⟩ := bind_eq_ok hrest
  obtain ⟨reducedWide, hreduce, hrest⟩ := bind_eq_ok hrest
  obtain ⟨o0, ho0, hrest⟩ := bind_eq_ok hrest
  rw [wide_index reducedWide (Usize.ofNat 6) (by decide)] at ho0
  cases ho0
  obtain ⟨o1, ho1, hrest⟩ := bind_eq_ok hrest
  rw [wide_index reducedWide (Usize.ofNat 7) (by decide)] at ho1
  cases ho1
  obtain ⟨o2, ho2, hrest⟩ := bind_eq_ok hrest
  rw [wide_index reducedWide (Usize.ofNat 8) (by decide)] at ho2
  cases ho2
  obtain ⟨o3, ho3, hrest⟩ := bind_eq_ok hrest
  rw [wide_index reducedWide (Usize.ofNat 9) (by decide)] at ho3
  cases ho3
  obtain ⟨o4, ho4, hrest⟩ := bind_eq_ok hrest
  rw [wide_index reducedWide (Usize.ofNat 10) (by decide)] at ho4
  cases ho4
  obtain ⟨o5, ho5, hrest⟩ := bind_eq_ok hrest
  rw [wide_index reducedWide (Usize.ofNat 11) (by decide)] at ho5
  cases ho5
  obtain ⟨final, hsub, hreturn⟩ := bind_eq_ok hrest
  cases hreturn
  have hc := extracted_cross_spec a crossA crossWide (by
    simpa [wideZero, MacCampaign.Array.replicate] using hcross)
  rcases hc with ⟨hcrossA, hcrossValue, hcrossZero, hcrossTop⟩
  subst crossA
  have hdoubled := extracted_double_spec crossWide topWide shifted doubled
    hcrossZero hcrossTop htopUpdate hshift hlowUpdate
  have hdiagSpec := extracted_diagonal_spec a doubled squaredWide hdiag
  obtain ⟨diagonalCarry, hdiagonalCarry, hsquareEq⟩ := hdiagSpec
  have hsquareValue : wideToNat squaredWide = limbsToNat a ^ 2 := by
    have hdecomp := square_decomposition a
    rw [hdoubled, hcrossValue] at hsquareEq
    have hradix : limbsToNat a ^ 2 < wordBase ^ 12 := by
      have hqR : Ipp.Bls12377.baseModulus < wordBase ^ 6 := by
        have htwo : 2 * Ipp.Bls12377.baseModulus < wordBase ^ 6 := by
          simpa only [limbCount] using two_modulus_lt_radix
        omega
      have hp : limbsToNat a ^ 2 < (wordBase ^ 6) ^ 2 :=
        Nat.pow_lt_pow_left (lt_trans ha hqR) (by decide)
      calc
        _ < (wordBase ^ 6) ^ 2 := hp
        _ = _ := by rw [← pow_mul]
    have hall : wideToNat squaredWide + diagonalCarry * wordBase ^ 12 =
        limbsToNat a ^ 2 := by omega
    have hcarryZero : diagonalCarry = 0 := by
      by_contra hn
      have hone : diagonalCarry = 1 := by omega
      rw [hone, one_mul] at hall
      omega
    rw [hcarryZero, zero_mul, Nat.add_zero] at hsquareEq
    omega
  have hred := extracted_reduction_spec squaredWide reducedWide (by
    rw [hsquareValue]
    exact Nat.pow_lt_pow_left ha (by decide)) hreduce
  have hsub' : ark_ip_proofs.s3_07_arkworks_fq_spike.subtract_modulus
      (highLimbs reducedWide) = .ok output := by
    simpa [highLimbs] using hsub
  have hsubspec := extracted_subtract_modulus_spec
    (highLimbs reducedWide) output hred.1 hsub'
  refine ⟨hsubspec.1, ?_⟩
  exact hsubspec.2.1.mul_right (wordBase ^ 6) |>.trans
    (hred.2.trans (by simpa [hsquareValue] using Nat.ModEq.refl (limbsToNat a ^ 2)))

private theorem decode_square_of_square_radix
    (output input radix : Ipp.Bls12377.Fq)
    (hequation : output * radix = input * input)
    (hcancel : radix * radix⁻¹ = 1) :
    output * radix⁻¹ = (input * radix⁻¹) * (input * radix⁻¹) := by
  calc
    output * radix⁻¹ = (output * radix⁻¹) * (radix * radix⁻¹) := by
      rw [hcancel, mul_one]
    _ = (output * radix) * (radix⁻¹ * radix⁻¹) := by ring
    _ = (input * input) * (radix⁻¹ * radix⁻¹) := by rw [hequation]
    _ = (input * radix⁻¹) * (input * radix⁻¹) := by ring

private theorem squareRadix_coprime :
    Nat.Coprime Ipp.Bls12377.baseMontgomeryRadix
      Ipp.Bls12377.baseModulus := by
  rw [Ipp.Bls12377.baseMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [Ipp.Bls12377.baseModulus]

set_option maxHeartbeats 1000000 in
theorem decode_extracted_square (a output : Ipp.Extracted.ArkworksFqOps.LimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.square a = .ok output) :
    Ipp.Extracted.ArkworksFqMul.decode output =
      Ipp.Extracted.ArkworksFqMul.decode a *
        Ipp.Extracted.ArkworksFqMul.decode a := by
  have hsquare := (extracted_square_spec a output ha hexec).2
  have hmod : Nat.ModEq Ipp.Bls12377.baseModulus
      (limbsToNat output * Ipp.Bls12377.baseMontgomeryRadix)
      (limbsToNat a * limbsToNat a) := by
    simpa only [limbCount, wordRadix_eq_baseMontgomeryRadix, pow_two] using hsquare
  have hcastNat :
      ((limbsToNat output * Ipp.Bls12377.baseMontgomeryRadix : Nat) :
          Ipp.Bls12377.Fq) =
        ((limbsToNat a * limbsToNat a : Nat) : Ipp.Bls12377.Fq) :=
    (ZMod.natCast_eq_natCast_iff _ _ _).2 hmod
  have hcast :
      (limbsToNat output : Ipp.Bls12377.Fq) *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) =
        (limbsToNat a : Ipp.Bls12377.Fq) *
          (limbsToNat a : Ipp.Bls12377.Fq) := by
    simpa only [Nat.cast_mul] using hcastNat
  rw [Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv,
    Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv]
  exact decode_square_of_square_radix
    (limbsToNat output : Ipp.Bls12377.Fq)
    (limbsToNat a : Ipp.Bls12377.Fq)
    (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) hcast
    (ZMod.coe_mul_inv_eq_one Ipp.Bls12377.baseMontgomeryRadix
      squareRadix_coprime)

#print axioms Ipp.Extracted.ArkworksFqSquare.extracted_reduce_round_spec
#print axioms Ipp.Extracted.ArkworksFqSquare.extracted_reduction_spec
#print axioms Ipp.Extracted.ArkworksFqSquare.extracted_square_spec
#print axioms Ipp.Extracted.ArkworksFqSquare.decode_extracted_square

end Ipp.Extracted.ArkworksFqSquare
