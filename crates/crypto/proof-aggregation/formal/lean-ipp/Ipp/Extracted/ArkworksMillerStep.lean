import Ipp.Extracted.ArkworksMillerInvariant
import Mathlib.Tactic

/-! One extracted Miller body step preserves the bundled loop invariant. -/

namespace Ipp.Extracted.ArkworksMillerStep

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMillerInvariant

private theorem nonzeroAteBitValue_eq_testBit (position : Nat) :
    (((9586122913090633729 / 2 ^ position) % MacCampaign.u64Base) % 2 != 0) =
      ateLoopParameter.testBit position := by
  have hbase : 2 ∣ MacCampaign.u64Base := by
    norm_num [MacCampaign.u64Base]
  rw [Nat.mod_mod_of_dvd _ hbase]
  simp only [ateLoopParameter, Nat.testBit, Nat.shiftRight_eq_div_pow]
  have hlt : (9586122913090633729 / 2 ^ position) % 2 < 2 :=
    Nat.mod_lt _ (by decide)
  interval_cases hvalue : (9586122913090633729 / 2 ^ position) % 2 <;>
    simp [hvalue]

set_option maxHeartbeats 1000000

/-- A successful positive extracted body has the exact countdown shape and
preserves canonicality, the pure prefix value, and coefficient consumption. -/
theorem millerLoopInv_step
    (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb)
    (remaining coeffIdx : Nat) (f : Fq12Mont)
    (flow : ControlFlow (Fq12Mont × Usize × Usize) Fq12Mont)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hc : ∀ coeff ∈ coeffs, CanonicalEllCoeff coeff)
    (hp : CanonicalFiniteG1 p)
    (hinv : MillerLoopInv (coeffs.map decodeEllCoeff)
      (decode p.x) (decode p.y) remaining coeffIdx f)
    (hbody : ark_ip_proofs.s3_07_arkworks_fq_spike.miller_schedule_loop.body
      ⟨coeffs⟩ p f ⟨coeffIdx⟩ ⟨remaining⟩ = .ok flow) :
    ∃ f' coeffIdx',
      flow = .cont (f', ⟨coeffIdx'⟩, ⟨remaining - 1⟩) ∧
      MillerLoopInv (coeffs.map decodeEllCoeff) (decode p.x) (decode p.y)
        (remaining - 1) coeffIdx' f' := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.miller_schedule_loop.body at hbody
  rw [if_pos (show (⟨remaining⟩ : Usize) > 0#usize by exact hpos)] at hbody
  simp only [MacCampaign.sub_eq (⟨remaining⟩ : Usize) 1#usize
      (by omega : 1 ≤ remaining), Result.bind_ok, Usize.ofNat_val,
    Aeneas.Std.add_eq] at hbody
  cases hsquare : ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_square f with
  | fail error => rw [hsquare] at hbody; cases hbody
  | div => rw [hsquare] at hbody; cases hbody
  | ok squared =>
      rw [hsquare] at hbody
      simp only [Result.bind_ok] at hbody
      cases hdoubleGet : coeffs[coeffIdx]? with
      | none =>
          simp [ark_ip_proofs.alloc.vec.Vec.index, hdoubleGet] at hbody
      | some doubleCoeff =>
          simp only [ark_ip_proofs.alloc.vec.Vec.index, hdoubleGet,
            Result.bind_ok] at hbody
          cases hdoubleEll : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_ell
              squared doubleCoeff p with
          | fail error => rw [hdoubleEll] at hbody; cases hbody
          | div => rw [hdoubleEll] at hbody; cases hbody
          | ok doubleResult =>
              rcases doubleResult with ⟨scaled0, scaled1, scaled2, doubled⟩
              rw [hdoubleEll] at hbody
              simp only [Result.bind_ok] at hbody
              have hposition : remaining - 1 < 64 := by omega
              have hshift :
                  (9586122913090633729#u64 >>>
                    ({ val := remaining - 1 } : Usize) :
                    Result MacCampaign.U64) =
                    .ok (MacCampaign.U64.ofNat
                      (9586122913090633729 / 2 ^ (remaining - 1))) := by
                change MacCampaign.shr64ByUsize
                  (MacCampaign.U64.ofNat 9586122913090633729)
                  ({ val := remaining - 1 } : Usize) = _
                unfold MacCampaign.shr64ByUsize
                rw [show (({ val := remaining - 1 } : Usize)).val =
                      remaining - 1 by rfl, if_pos hposition]
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
                    ateLoopParameter.testBit (remaining - 1) := by
                rw [← nonzeroAteBitValue_eq_testBit (remaining - 1)]
                have hmodLt :
                    9586122913090633729 / 2 ^ (remaining - 1) % 2 < 2 :=
                  Nat.mod_lt _ (by decide)
                interval_cases hmod :
                    9586122913090633729 / 2 ^ (remaining - 1) % 2 <;>
                  simp [MacCampaign.U64.ofNat, MacCampaign.u64Base,
                    hmod]
              rw [hbitEq] at hbody
              have hdoubleMem : doubleCoeff ∈ coeffs :=
                List.mem_of_getElem? hdoubleGet
              rcases g1_ell_spec squared doubleCoeff p
                  scaled0 scaled1 scaled2 doubled
                  (canonical12_square f squared hinv.canonical hsquare)
                  (hc doubleCoeff hdoubleMem) hp hdoubleEll with
                ⟨_, _, _, hdoubledCan, _, _, _, hdoubledDecode⟩
              cases hbit : ateLoopParameter.testBit (remaining - 1) with
              | false =>
                  simp only [hbit, Bool.false_eq_true, if_false,
                    Result.ok.injEq] at hbody
                  subst flow
                  refine ⟨doubled, coeffIdx + 1, rfl,
                    ⟨hdoubledCan, ?_, ?_⟩⟩
                  · rw [millerPrefix_next _ _ _ remaining hpos hbound,
                      hinv.modelPrefix]
                    simp [millerModelStep, List.getElem?_map, hdoubleGet,
                      decodeEllCoeff, decode_fq12_square f squared
                        hinv.canonical hsquare,
                      hdoubledDecode, hbit]
                  · have hcount : 63 - (remaining - 1) =
                        (63 - remaining) + 1 := by omega
                    rw [hcount, millerCoeffCount, hinv.coeffIndex,
                      millerScheduleBit_eq remaining hpos hbound, hbit]
                    simp
              | true =>
                  simp only [hbit, if_true] at hbody
                  cases haddGet : coeffs[coeffIdx + 1]? with
                  | none =>
                      simp [haddGet] at hbody
                  | some addCoeff =>
                      simp only [haddGet, Result.bind_ok] at hbody
                      cases haddEll : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_ell
                          doubled addCoeff p with
                      | fail error => rw [haddEll] at hbody; cases hbody
                      | div => rw [haddEll] at hbody; cases hbody
                      | ok addResult =>
                          rcases addResult with ⟨add0, add1, add2, added⟩
                          rw [haddEll] at hbody
                          simp only [Result.bind_ok, Result.ok.injEq] at hbody
                          subst flow
                          have haddMem : addCoeff ∈ coeffs :=
                            List.mem_of_getElem? haddGet
                          rcases g1_ell_spec doubled addCoeff p
                              add0 add1 add2 added
                              hdoubledCan (hc addCoeff haddMem) hp haddEll with
                            ⟨_, _, _, haddedCan, _, _, _, haddedDecode⟩
                          refine ⟨added, coeffIdx + 2, rfl,
                            ⟨haddedCan, ?_, ?_⟩⟩
                          · rw [millerPrefix_next _ _ _ remaining hpos hbound,
                              hinv.modelPrefix]
                            simp [millerModelStep, List.getElem?_map,
                              hdoubleGet, haddGet, decodeEllCoeff,
                              decode_fq12_square f squared hinv.canonical hsquare,
                              hdoubledDecode, haddedDecode, hbit]
                          · have hcount : 63 - (remaining - 1) =
                                (63 - remaining) + 1 := by omega
                            rw [hcount, millerCoeffCount, hinv.coeffIndex,
                              millerScheduleBit_eq remaining hpos hbound, hbit]
                            simp

#print axioms millerLoopInv_step

end Ipp.Extracted.ArkworksMillerStep
