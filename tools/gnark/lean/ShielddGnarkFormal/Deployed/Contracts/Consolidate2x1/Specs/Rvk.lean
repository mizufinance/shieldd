import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed RVK fixed-base multiplication endpoint.

The segment computes `rvk = ak ⊕ (bits · Basepoint)` and proves the output is on the
Edwards curve. On-curve-ness of `rvk` requires on-curve-ness of the `ak` input
(`(rho 6, rho 7)`), which this segment does **not** assert internally — `ak` is
constrained on-curve by a separate deployed segment. The faithful per-segment endpoint
is therefore the implication: if the `ak` input is on-curve, the `rvk` output is.

Post-T1-d: old seg13 -> new seg15 (output wires shifted from 12380/12381 to
18196/18197 per the fresh ir.json; the following assert_equivalent segment's
input confirms this). seg31 is unchanged. -/
def deployedSpec15 (rho : Nat → DeployedF) : Prop :=
  onCurveAt (rho 6) (rho 7) → onCurveAt (rho 18196) (rho 18197)

def deployedSpec31 (rho : Nat → DeployedF) : Prop :=
  onCurveAt (rho 6) (rho 7) → onCurveAt (rho 31080) (rho 31081)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
