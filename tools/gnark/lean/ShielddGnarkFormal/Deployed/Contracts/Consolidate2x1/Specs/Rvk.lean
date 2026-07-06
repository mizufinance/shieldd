import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed RVK fixed-base multiplication endpoint.

The segment computes `rvk = ak ⊕ (bits · Basepoint)` and proves the output is on the
Edwards curve. On-curve-ness of `rvk` requires on-curve-ness of the `ak` input
(`(rho 6, rho 7)`), which this segment does **not** assert internally — `ak` is
constrained on-curve by a separate deployed segment. The faithful per-segment endpoint
is therefore the implication: if the `ak` input is on-curve, the `rvk` output is. -/
def deployedSpec13 (rho : Nat → DeployedF) : Prop :=
  onCurveAt (rho 6) (rho 7) → onCurveAt (rho 12380) (rho 12381)

def deployedSpec31 (rho : Nat → DeployedF) : Prop :=
  onCurveAt (rho 6) (rho 7) → onCurveAt (rho 31080) (rho 31081)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
