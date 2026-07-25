import Ipp.Extracted.ArkworksFqBytesWord

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow

def rawAppend (low : MacCampaign.U64) (byte : UInt8)
    (bits : Nat) (next : MacCampaign.U64 → Result MacCampaign.U64) :
    Result MacCampaign.U64 := do
  let shifted ← lift (MacCampaign.castU64 byte)
  let shifted ← shifted <<< MacCampaign.I32.ofNat bits
  let combined ← lift (low ||| shifted)
  next combined

def rawPack7 (p6 : MacCampaign.U64) (b7 : UInt8) :
    Result MacCampaign.U64 := do
  let b7 ← .ok b7
  rawAppend p6 b7 56 fun p7 => .ok p7

def rawPack6 (p5 : MacCampaign.U64) (b6 b7 : UInt8) :
    Result MacCampaign.U64 := do
  let b6 ← .ok b6
  rawAppend p5 b6 48 fun p6 => rawPack7 p6 b7

def rawPack5 (p4 : MacCampaign.U64) (b5 b6 b7 : UInt8) :
    Result MacCampaign.U64 := do
  let b5 ← .ok b5
  rawAppend p4 b5 40 fun p5 => rawPack6 p5 b6 b7

def rawPack4 (p3 : MacCampaign.U64) (b4 b5 b6 b7 : UInt8) :
    Result MacCampaign.U64 := do
  let b4 ← .ok b4
  rawAppend p3 b4 32 fun p4 => rawPack5 p4 b5 b6 b7

def rawPack3 (p2 : MacCampaign.U64) (b3 b4 b5 b6 b7 : UInt8) :
    Result MacCampaign.U64 := do
  let b3 ← .ok b3
  rawAppend p2 b3 24 fun p3 => rawPack4 p3 b4 b5 b6 b7

def rawPack2 (p1 : MacCampaign.U64) (b2 b3 b4 b5 b6 b7 : UInt8) :
    Result MacCampaign.U64 := do
  let b2 ← .ok b2
  rawAppend p1 b2 16 fun p2 => rawPack3 p2 b3 b4 b5 b6 b7

def rawPack1 (p0 : MacCampaign.U64) (b1 b2 b3 b4 b5 b6 b7 : UInt8) :
    Result MacCampaign.U64 := do
  let b1 ← .ok b1
  rawAppend p0 b1 8 fun p1 => rawPack2 p1 b2 b3 b4 b5 b6 b7

def rawPackedWord
    (b0 b1 b2 b3 b4 b5 b6 b7 : UInt8) : Result MacCampaign.U64 := do
  let b0 ← .ok b0
  let p0 ← lift (MacCampaign.castU64 b0)
  rawPack1 p0 b1 b2 b3 b4 b5 b6 b7

end Ipp.Extracted.ArkworksFqSqrtBytes
