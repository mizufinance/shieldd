import ShielddGnarkFormal.AckBridge
import ShielddGnarkFormal.Protocol.Common

/-! Protocol interpretation of the exact Decaf377 compression circuit. -/

namespace Shieldd.GnarkFormal.DecafCompressionBridge

abbrev F := Protocol.Common.F
abbrev CircuitPoint := Decaf377Assumptions.Point

variable [Fact (Nat.Prime Extracted.DecafCompressToField.Order)]

theorem compressesTo_of_spec
    (point : CircuitPoint) (output : F)
    (h : Decaf377Assumptions.CompressToFieldSpec point output) :
    Protocol.Common.Decaf.compressesTo
      (AckBridge.toProtocolPoint point) output := by
  rcases h with ⟨hcurve, sqrtRatio, hsqrt, houtput⟩
  refine ⟨?_, sqrtRatio, ?_, ?_⟩
  · simpa only [
      Extracted.DecafCompressToField.OnCurve,
      Protocol.Common.Decaf.onCurve,
      Protocol.Common.Decaf.curveD,
      AckBridge.toProtocolPoint
    ] using hcurve
  · simpa only [
      Extracted.DecafCompressToField.SqrtCase,
      Extracted.DecafCompressToField.den,
      Extracted.DecafCompressToField.u1,
      Extracted.DecafCompressToField.aMinusD,
      Extracted.DecafCompressToField.zeta,
      Extracted.DecafCompressToField.zetaNat,
      Protocol.Common.Decaf.sqrtCase,
      Protocol.Common.Decaf.compressDenominator,
      Protocol.Common.Decaf.compressU1,
      Protocol.Common.Decaf.aMinusD,
      Protocol.Common.Decaf.zeta,
      AckBridge.toProtocolPoint
    ] using hsqrt
  · simpa only [
      Extracted.DecafCompressToField.outOf,
      Extracted.DecafCompressToField.absF,
      Extracted.DecafCompressToField.aMinusD,
      Protocol.Common.Decaf.compressedOutput,
      Protocol.Common.Decaf.absF,
      Protocol.Common.Decaf.compressU1,
      Protocol.Common.Decaf.aMinusD,
      AckBridge.toProtocolPoint
    ] using houtput

theorem compressesTo_of_circuit
    (point : CircuitPoint) (output : F)
    (h : Decaf377Assumptions.CompressToFieldCircuit point output) :
    Protocol.Common.Decaf.compressesTo
      (AckBridge.toProtocolPoint point) output := by
  apply compressesTo_of_spec point output
  exact Decaf377Assumptions.decaf377_compressToField_sound
    point output h

end Shieldd.GnarkFormal.DecafCompressionBridge
