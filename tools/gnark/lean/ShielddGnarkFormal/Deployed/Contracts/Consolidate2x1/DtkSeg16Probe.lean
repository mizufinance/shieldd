import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarR0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Bits
set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
open Shieldd.GnarkFormal.Deployed.Dtk.Outputs
example (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, i < 3 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hi hacc hcur
  interval_cases i
  · exact seg16_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg16_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg16_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
