import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Core
import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.StructuredLC

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs

/-- Computed net-balance-commitment x-coordinate (NB-1). The conservation
blinding ladder never materializes its accumulator into a wire: gnark keeps it
as a linear combination of the seed term (`rho 31655`) and the per-rung select
outputs (stride-5 rungs 31909‥32649, stride-8 rungs 32657‥33457). Every
consumer (Seg47 equivalence, Seg48 compress) evaluates this LC, so it is the
canonical coordinate. -/
def nbX (rho : Nat → DeployedF) : DeployedF :=
  (4661681602708190761543544705274244814260880986867766715334030151044279151219 : DeployedF) * rho 31655 +
    Shieldd.GnarkFormal.StrideRun.sumAux rho 31909 5 149 +
    Shieldd.GnarkFormal.StrideRun.sumAux rho 32657 8 101

/-- Computed net-balance-commitment y-coordinate; see `nbX`. -/
def nbY (rho : Nat → DeployedF) : DeployedF :=
  (1 : DeployedF) +
    (4337336842509898676347982752646772244181661588533917621717979456142867120377 : DeployedF) * rho 31655 +
    Shieldd.GnarkFormal.StrideRun.sumAux rho 31910 5 149 +
    Shieldd.GnarkFormal.StrideRun.sumAux rho 32658 8 101

/-- Deployed conservation net-balance-commitment endpoint (NB-1). The blinding
ladder runs over the fixed `blindGen`, so unlike the DTK endpoints no on-curve
antecedent is needed. Output point = `⟨nbX, nbY⟩`, the unmaterialized
accumulator LC shared verbatim with Seg47/Seg48. -/
def deployedSpec46 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Decaf377Assumptions.ConservationNetBalanceCommitmentSpec
    (rho 15) (rho 102) (rho 187) (rho 5)
    ⟨nbX rho, nbY rho⟩

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs
