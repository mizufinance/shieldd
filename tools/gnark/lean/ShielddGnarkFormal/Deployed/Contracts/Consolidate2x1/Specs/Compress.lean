import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.CompressToFieldBridge

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed `decaf.compress_to_field` endpoint: the compressed field element is
the segment's output delta, seated by absolute wire role. -/
def deployedSpec6 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 17) (rho 18) (rho 912 - rho 572)

def deployedSpec15 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 12) (rho 13) (rho 13086 - rho 12746)

def deployedSpec24 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 107) (rho 108) (rho 19612 - rho 19272)

def deployedSpec33 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 102) (rho 103) (rho 31786 - rho 31446)

def deployedSpec42 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 195) (rho 196) (rho 38312 - rho 37972)

def deployedSpec54 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 52347) (rho 52348) (rho 53053 - rho 52713)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
