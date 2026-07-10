import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.CompressToFieldBridge

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed `decaf.compress_to_field` endpoint: the compressed field element is
the segment's output delta, seated by absolute wire role. Post-T1-d: segments
renumbered 6,15,24,33,42,54 -> 8,17,24,33,40,50; wire content re-derived from
the fresh consolidate2x1-deployed-slice-ir.json internal-wire offsets (24 and
33 keep their old wire content since their offsets are unchanged). -/
def deployedSpec8 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 17) (rho 18) (rho 6728 - rho 6388)

def deployedSpec17 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 12) (rho 13) (rho 18902 - rho 18562)

def deployedSpec24 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 107) (rho 108) (rho 19612 - rho 19272)

def deployedSpec33 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 102) (rho 103) (rho 31786 - rho 31446)

def deployedSpec40 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 195) (rho 196) (rho 32496 - rho 32156)

def deployedSpec50 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 40715) (rho 40716) (rho 41421 - rho 41081)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
