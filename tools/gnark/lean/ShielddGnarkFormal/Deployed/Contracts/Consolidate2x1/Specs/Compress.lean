import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Nb
import ShielddGnarkFormal.CompressToFieldBridge

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed `decaf.compress_to_field` endpoint: the compressed field element is
the segment's output delta, seated by absolute wire role. Wave-2 (T1-f shared
divGen): 4 instances at segments 5,17,32,48, wire content re-derived from the
fresh consolidate2x1-deployed-slice-ir.json. Seg48 compresses the NB-1
conservation commitment, whose coordinates are the unmaterialized accumulator
LCs `nbX`/`nbY` (see Specs/Nb.lean). -/
def deployedSpec5 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 17) (rho 18) (rho 912 - rho 572)

def deployedSpec17 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 12) (rho 13) (rho 18651 - rho 18311)

def deployedSpec32 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (rho 102) (rho 103) (rho 30832 - rho 30492)

def deployedSpec48 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.Relation
    (nbX rho) (nbY rho) (rho 34169 - rho 33829)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
