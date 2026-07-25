import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.StructuredLC

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Computed net-balance-commitment x-coordinate (NB-1). The conservation
blinding ladder never materializes its accumulator into a wire: gnark keeps it
as a linear combination of the seed term (`rho 31661`) and the per-rung select
outputs (stride-5 rungs 31915‥32655, stride-8 rungs 32663‥33463). Every
consumer (Seg47 equivalence, Seg48 compress) evaluates this LC, so it is the
canonical coordinate. -/
def nbX (rho : Nat → DeployedF) : DeployedF :=
  (4661681602708190761543544705274244814260880986867766715334030151044279151219 : DeployedF) * rho 31661 +
    Shieldd.GnarkFormal.StrideRun.sumAux rho 31915 5 149 +
    Shieldd.GnarkFormal.StrideRun.sumAux rho 32663 8 101

/-- Computed net-balance-commitment y-coordinate; see `nbX`. -/
def nbY (rho : Nat → DeployedF) : DeployedF :=
  (1 : DeployedF) +
    (4337336842509898676347982752646772244181661588533917621717979456142867120377 : DeployedF) * rho 31661 +
    Shieldd.GnarkFormal.StrideRun.sumAux rho 31916 5 149 +
    Shieldd.GnarkFormal.StrideRun.sumAux rho 32664 8 101

/-- Deployed conservation net-balance-commitment endpoint (NB-1). The blinding
ladder runs over the fixed `blindGen`, so unlike the DTK endpoints no on-curve
antecedent is needed. Output point = `⟨nbX, nbY⟩`, the unmaterialized
accumulator LC shared verbatim with Seg47/Seg48. -/
def deployedSpec46 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Decaf377Assumptions.ConservationNetBalanceCommitmentSpec
    (rho 15) (rho 105) (rho 193) (rho 5)
    ⟨nbX rho, nbY rho⟩

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
