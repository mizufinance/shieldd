import Ipp.Extracted.ArkworksG2PreparedTwo
import Ipp.Extracted.ArkworksFqInv
import Ipp.Extracted.ArkworksG2PreparedModel

namespace Ipp.Extracted.ArkworksG2PreparedTwoInvDecode

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedTwo

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩

set_option maxHeartbeats 1000000 in
theorem two_inv_decode (two twoInvMont : LimbArray)
    (hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.double
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = .ok two)
    (hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.inv two =
      .ok (some twoInvMont)) :
    decode twoInvMont = twoInv := by
  obtain ⟨htwoCanonical, htwoNe, htwoDecode⟩ := two_facts two hdouble
  have hinvDecode := Ipp.Extracted.ArkworksFqInv.decode_extracted_inv
    two twoInvMont htwoCanonical htwoNe hinv
  have htwo : (2 : Fq) ≠ 0 := by
    change ((2 : Nat) : Fq) ≠ 0
    intro h
    have hnat := (fq_natCast_eq_zero_iff 2).mp h
    norm_num [baseModulus] at hnat
  apply mul_right_cancel₀ htwo
  calc
    decode twoInvMont * 2 = 1 := by simpa [htwoDecode] using hinvDecode
    _ = twoInv * 2 := by rw [← ate_twoInv_add_self]; ring

end Ipp.Extracted.ArkworksG2PreparedTwoInvDecode
