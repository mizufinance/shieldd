import ShielddGnarkFormal.Extracted.Deployed.DecafDiversifiedTransmissionKey6329_24407a
import ShielddGnarkFormal.CompressDeployedGadgets
import ProvenZk.Gates

/-! # seg16 dtkSeg0 relational-tactic probe (throwaway validation)

Confirms the per-gate row→fact tactics for the DTK seg0 sqrt-ratio prefix
compile against the real seg16 deployed rows, before authoring the full
`dtkSeg0` assembly. Validates: the curve `eq` row, the constant-folded
wire identity `rho13087 = rho13092` (dup-AkX), the `is_zero` hint chain via
`DeployedGadgets.is_zero_of_hint`, and `is_bool` via `is_bool_of_row`. -/

namespace Shieldd.GnarkFormal.Extracted.Deployed.DecafDiversifiedTransmissionKey6329_24407a

open Shieldd.GnarkFormal.DeployedGadgets

variable [Fact (Nat.Prime Order)]

theorem seg16_seg0_probe (rho : Nat → F)
    (h0 : ((1 : F) * rho 6) * ((1 : F) * rho 6) = ((1 : F) * rho 13087))
    (h1 : ((1 : F) * rho 7) * ((1 : F) * rho 7) = ((1 : F) * rho 13088))
    (h2 : ((3021 : F) * rho 13087) * ((1 : F) * rho 13088) = ((1 : F) * rho 13089))
    (h3 : ((1 : F) * rho 0) * ((-1 : F) * rho 13087 + (1 : F) * rho 13088) =
          ((1 : F) * rho 0 + (1 : F) * rho 13089))
    (h6 : ((1 : F) * rho 6) * ((1 : F) * rho 6) = ((1 : F) * rho 13092))
    (h8 : ((1 : F) * rho 13094) * ((1 : F) * rho 0 + (-1 : F) * rho 13094) = ((0 : F) * rho 0))
    (h9 : ((-1 : F) * rho 13093) * ((1 : F) * rho 13097) = ((-1 : F) * rho 0 + (1 : F) * rho 13096))
    (h10 : ((1 : F) * rho 13093) * ((1 : F) * rho 13096) = ((0 : F) * rho 0))
    (h11 : ((1 : F) * rho 13096) * ((1 : F) * rho 0 + (-1 : F) * rho 13093) = ((1 : F) * rho 13098))
    (h12 : ((1 : F) * rho 13099) * ((1 : F) * rho 13093 + (1 : F) * rho 13098) = ((1 : F) * rho 0))
    (h18 : ((1 : F) * rho 13096) * ((1 : F) * rho 0 + (-1 : F) * rho 13096) = ((0 : F) * rho 0))
    (hrho0 : rho 0 = 1) :
    -- curve eq (g2 = g5)
    (rho 13088 - rho 13087 = 1 + rho 13089) ∧
    -- dup-AkX wire identity (constant-folded e-block)
    (rho 13087 = rho 13092) ∧
    -- is_zero gate_12(=rho13093) → out rho13096, inv hint rho13097
    GatesDef.is_zero (rho 13093) (rho 13096) ∧
    -- is_bool WasSquare(=rho13094)
    GatesDef.is_bool (rho 13094) ∧
    -- select g14 1 g12 → out is the expression rho13093 + rho13098 (g15)
    GatesDef.select (rho 13096) 1 (rho 13093) (rho 13093 + rho 13098) ∧
    -- inv g15 g16 : inv (rho13093+rho13098) rho13099
    GatesDef.inv (rho 13093 + rho 13098) (rho 13099) := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hrho0] at h3; linear_combination h3
  · linear_combination h6 - h0
  · refine is_zero_of_hint (rho 13093) (rho 13097) (rho 13096) ?_ ?_
    · rw [hrho0] at h9; linear_combination -h9
    · rw [hrho0] at h10; linear_combination h10
  · refine is_bool_of_row (rho 13094) ?_
    rw [hrho0] at h8; linear_combination h8
  · refine select_of_row (rho 13096) 1 (rho 13093) (rho 13093 + rho 13098) ?_ ?_
    · exact is_bool_of_row (rho 13096) (by rw [hrho0] at h18; linear_combination h18)
    · rw [hrho0] at h11; linear_combination -h11
  · refine inv_of_mul (rho 13093 + rho 13098) (rho 13099) ?_
    rw [hrho0] at h12; linear_combination h12

end Shieldd.GnarkFormal.Extracted.Deployed.DecafDiversifiedTransmissionKey6329_24407a
