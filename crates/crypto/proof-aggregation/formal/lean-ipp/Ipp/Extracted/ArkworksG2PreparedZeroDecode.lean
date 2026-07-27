import Ipp.Extracted.ArkworksFqInv

namespace Ipp.Extracted.ArkworksG2PreparedZeroDecode

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul

theorem decode_zeroArray :
    decode Ipp.Extracted.ArkworksFqInv.zeroArray = 0 := by
  rw [decode_eq_cast_mul_inv,
    Ipp.Extracted.ArkworksFqInv.limbsToNat_zeroArray]
  simp

end Ipp.Extracted.ArkworksG2PreparedZeroDecode
