import Ipp.Extracted.ArkworksMultiMillerSquare
import Ipp.Extracted.ArkworksMultiMillerDoublingPass

/-! One opaque-product step of the shared 63-position chunk loop. -/

namespace Ipp.Extracted.ArkworksMultiMillerChunkStep

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksEllFq12
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerLineBoundary
open Ipp.Extracted.ArkworksMultiMillerDoublingPass
open Ipp.Extracted.ArkworksMultiMillerAdditionPass
open Ipp.Extracted.ArkworksMultiMillerChunkModel
open Ipp.Extracted.ArkworksMultiMillerChunkInvariant
open Ipp.Extracted.ArkworksMultiMillerSquare

private theorem nonzeroAteBitValue_eq_testBit (position : Nat) :
    (((9586122913090633729 / 2 ^ position) % MacCampaign.u64Base) % 2 != 0) =
      Ipp.Bls12377.ateLoopParameter.testBit position := by
  have hbase : 2 ∣ MacCampaign.u64Base := by
    norm_num [MacCampaign.u64Base]
  rw [Nat.mod_mod_of_dvd _ hbase]
  simp only [Ipp.Bls12377.ateLoopParameter, Nat.testBit,
    Nat.shiftRight_eq_div_pow]
  have hlt : (9586122913090633729 / 2 ^ position) % 2 < 2 :=
    Nat.mod_lt _ (by decide)
  interval_cases hvalue : (9586122913090633729 / 2 ^ position) % 2 <;>
    simp [hvalue]

set_option maxHeartbeats 1000000

/-- One successful positive chunk body squares once and advances every pair. -/
theorem chunkLoopInv_step
    (filtered : List ExecPair) (chunkStart width remaining : Nat)
    (cursors : alloc.vec.Vec Usize)
    (f : ArkworksMultiMillerModel.Fq12Limb)
    (flow : ControlFlow
      (alloc.vec.Vec Usize × ArkworksMultiMillerModel.Fq12Limb × Usize)
      ArkworksMultiMillerModel.Fq12Limb)
    (hvalid : ValidExecPairs filtered)
    (hchunk : chunkStart + width ≤ filtered.length)
    (hpos : 0 < remaining)
    (hinv : ChunkLoopInv filtered chunkStart width remaining cursors f)
    (hbody :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1.body
        ⟨filtered⟩ ⟨chunkStart⟩ cursors f ⟨remaining⟩ = .ok flow) :
    ∃ nextCursors nextF,
      flow = .cont (nextCursors, nextF, ⟨remaining - 1⟩) ∧
      ChunkLoopInv filtered chunkStart width (remaining - 1)
        nextCursors nextF := by
  have hremainingBound := hinv.remainingBound
  have hstep : 63 - remaining < 63 := by omega
  have hcursorBound :
      millerCoeffCount (63 - remaining) < 69 := by
    exact lt_of_lt_of_le (millerCoeffCount_lt_succ (63 - remaining))
      (millerCoeffCount_next_le (63 - remaining) hstep)
  have hcurrentDecode := hinv.accumulator
  generalize hcurrentValue :
    decodeFq12 f = currentValue at hcurrentDecode
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1.body
    at hbody
  rw [if_pos (show (⟨remaining⟩ : Usize) > 0#usize by exact hpos)] at hbody
  simp only [MacCampaign.sub_eq (⟨remaining⟩ : Usize) 1#usize
      (by omega : 1 ≤ remaining), Result.bind_ok, Usize.ofNat_val] at hbody
  cases hsquare :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_square f with
  | fail error =>
      rw [hsquare] at hbody
      cases hbody
  | div =>
      rw [hsquare] at hbody
      cases hbody
  | ok squared =>
      rw [hsquare] at hbody
      simp only [Result.bind_ok] at hbody
      cases hdouble :
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop0
            ⟨filtered⟩ ⟨chunkStart⟩ cursors squared 0#usize with
      | fail error =>
          rw [hdouble] at hbody
          cases hbody
      | div =>
          rw [hdouble] at hbody
          cases hbody
      | ok doubleResult =>
          rcases doubleResult with ⟨doubleCursors, doubled⟩
          rw [hdouble] at hbody
          simp only [Result.bind_ok] at hbody
          obtain ⟨squaredValue, hsquaredValue⟩ :
              ∃ value : Ipp.Bls12377.Fq12Model,
                decodeFq12 squared = value := ⟨_, rfl⟩
          have hsquareSemantics := square_semantics f squared currentValue
            squaredValue hcurrentValue hsquaredValue hinv.canonical hsquare
          have hsquareProduct :
              squaredValue =
                (chunkSquareValues filtered chunkStart width
                  (63 - remaining)).prod := by
            rw [hsquareSemantics.2, hcurrentDecode, fq12Prod_square]
            rfl
          have hsquareDecode :
              decodeFq12 squared =
                (chunkSquareValues filtered chunkStart width
                  (63 - remaining)).prod := by
            rw [hsquaredValue]
            exact hsquareProduct
          have hdoubleStart := linePassInv_initial filtered chunkStart width
            (millerCoeffCount (63 - remaining))
            (chunkSquareValues filtered chunkStart width (63 - remaining))
            cursors squared hinv.cursorsState hsquareSemantics.1 hsquareDecode
          have hdoubleInv := doubling_line_pass filtered chunkStart width
            (millerCoeffCount (63 - remaining))
            (chunkSquareValues filtered chunkStart width (63 - remaining))
            cursors doubleCursors squared doubled hvalid hchunk hcursorBound
            (chunkSquareValues_length filtered chunkStart width
              (63 - remaining)) hdoubleStart hdouble
          have hdoubleEnd := linePassInv_complete filtered chunkStart width
            (millerCoeffCount (63 - remaining))
            (chunkSquareValues filtered chunkStart width (63 - remaining))
            doubleCursors doubled
            (chunkSquareValues_length filtered chunkStart width
              (63 - remaining)) hdoubleInv
          have hdoubleDecode := hdoubleEnd.2.2
          rw [square_lineValues_eq_double filtered chunkStart width
            (63 - remaining) hvalid hchunk hstep] at hdoubleDecode
          have hposition : remaining - 1 < 64 := by omega
          have hshift :
              (9586122913090633729#u64 >>>
                (⟨remaining - 1⟩ : Usize) :
                Result MacCampaign.U64) =
                .ok (MacCampaign.U64.ofNat
                  (9586122913090633729 / 2 ^ (remaining - 1))) := by
            change MacCampaign.shr64ByUsize
              (MacCampaign.U64.ofNat 9586122913090633729)
              (⟨remaining - 1⟩ : Usize) = _
            unfold MacCampaign.shr64ByUsize
            rw [if_pos hposition]
            norm_num [MacCampaign.U64.ofNat, MacCampaign.u64Base]
          rw [hshift] at hbody
          simp only [Result.bind_ok] at hbody
          have hquot :
              9586122913090633729 / 2 ^ (remaining - 1) <
                MacCampaign.u64Base := by
            apply lt_of_le_of_lt (Nat.div_le_self _ _)
            norm_num [MacCampaign.u64Base]
          have hlowBound :
              9586122913090633729 / 2 ^ (remaining - 1) % 2 <
                MacCampaign.u64Base :=
            lt_trans (Nat.mod_lt _ (by decide)) (by decide)
          have hlow :
              MacCampaign.U64.ofNat
                    (9586122913090633729 / 2 ^ (remaining - 1)) &&&
                  1#u64 =
                MacCampaign.U64.ofNat
                  (9586122913090633729 / 2 ^ (remaining - 1) % 2) := by
            apply Ipp.Extracted.ArkworksFqByteRuntime.u64_eq_of_val_eq
            rw [Ipp.Extracted.ArkworksFqByteRuntime.u64_and_one_val]
            simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hquot,
              Nat.mod_eq_of_lt hlowBound]
          rw [hlow] at hbody
          simp only [Aeneas.lift, Result.bind_ok] at hbody
          have hbitEq :
              (MacCampaign.U64.ofNat
                  (9586122913090633729 / 2 ^ (remaining - 1) % 2) !=
                0#u64) =
                Ipp.Bls12377.ateLoopParameter.testBit (remaining - 1) := by
            rw [← nonzeroAteBitValue_eq_testBit (remaining - 1)]
            have hmodLt :
                9586122913090633729 / 2 ^ (remaining - 1) % 2 < 2 :=
              Nat.mod_lt _ (by decide)
            interval_cases hmod :
                9586122913090633729 / 2 ^ (remaining - 1) % 2 <;>
              simp [MacCampaign.U64.ofNat, MacCampaign.u64Base, hmod]
          rw [hbitEq,
            ← millerScheduleBit_eq remaining hpos hremainingBound] at hbody
          have hnextStep :
              63 - (remaining - 1) = (63 - remaining) + 1 := by omega
          cases hbit : millerScheduleBit (63 - remaining) with
          | false =>
              simp only [hbit, Bool.false_eq_true, if_false,
                Result.ok.injEq] at hbody
              subst flow
              refine ⟨doubleCursors, doubled, rfl,
                ⟨by omega, ?_, hdoubleEnd.2.1, ?_⟩⟩
              · simpa [hnextStep, millerCoeffCount, hbit] using hdoubleEnd.1
              · rw [← chunkStepValues_of_false filtered chunkStart width
                    (63 - remaining) hbit,
                  chunkStepValues_next filtered chunkStart width
                    (63 - remaining) hvalid hchunk hstep] at hdoubleDecode
                simpa [hnextStep] using hdoubleDecode
          | true =>
              simp only [hbit, if_true] at hbody
              cases hadd :
                  ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop1
                    ⟨filtered⟩ ⟨chunkStart⟩ doubleCursors doubled 0#usize with
              | fail error =>
                  rw [hadd] at hbody
                  cases hbody
              | div =>
                  rw [hadd] at hbody
                  cases hbody
              | ok addResult =>
                  rcases addResult with ⟨addCursors, added⟩
                  rw [hadd] at hbody
                  simp only [Result.bind_ok, Result.ok.injEq] at hbody
                  subst flow
                  have haddCursorBound :
                      millerCoeffCount (63 - remaining) + 1 < 69 := by
                    have hnextCount := millerCoeffCount_next_le
                      (63 - remaining) hstep
                    simp only [millerCoeffCount, hbit, if_true] at hnextCount
                    omega
                  have haddStart := linePassInv_initial filtered chunkStart
                    width (millerCoeffCount (63 - remaining) + 1)
                    (chunkDoubleValues filtered chunkStart width
                      (63 - remaining))
                    doubleCursors doubled hdoubleEnd.1 hdoubleEnd.2.1
                    hdoubleDecode
                  have haddInv := addition_line_pass filtered chunkStart width
                    (millerCoeffCount (63 - remaining) + 1)
                    (chunkDoubleValues filtered chunkStart width
                      (63 - remaining))
                    doubleCursors addCursors doubled added hvalid hchunk
                    haddCursorBound
                    (chunkDoubleValues_length filtered chunkStart width
                      (63 - remaining))
                    haddStart hadd
                  have haddEnd := linePassInv_complete filtered chunkStart
                    width (millerCoeffCount (63 - remaining) + 1)
                    (chunkDoubleValues filtered chunkStart width
                      (63 - remaining))
                    addCursors added
                    (chunkDoubleValues_length filtered chunkStart width
                      (63 - remaining))
                    haddInv
                  have haddDecode := haddEnd.2.2
                  rw [double_lineValues_eq_step filtered chunkStart width
                    (63 - remaining) hvalid hchunk hstep hbit,
                    chunkStepValues_next filtered chunkStart width
                      (63 - remaining) hvalid hchunk hstep] at haddDecode
                  refine ⟨addCursors, added, rfl,
                    ⟨by omega, ?_, haddEnd.2.1, ?_⟩⟩
                  · simpa [hnextStep, millerCoeffCount, hbit] using haddEnd.1
                  · simpa [hnextStep] using haddDecode

end Ipp.Extracted.ArkworksMultiMillerChunkStep
