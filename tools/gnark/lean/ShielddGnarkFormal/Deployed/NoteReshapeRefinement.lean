import ShielddGnarkFormal.Protocol.NoteReshape.Refinement
import ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress2x1
import ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress1x8
import ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress4x1
import ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress8x1

/-!
Handwritten family dispatch from exact deployed NoteReshape rows to generated
exact-circuit facts. This module deliberately stops before protocol semantics:
that refinement must construct every semantic obligation from these facts and
must never accept those obligations back from its caller.
-/

namespace Shieldd.GnarkFormal.Deployed.NoteReshapeRefinement

open Shieldd.GnarkFormal
open Protocol.NoteReshape

/-- A satisfying assignment for one exact deployed NoteReshape relation. -/
inductive DeployedRelation : FamilyPolicy → Prop
  | reshape2x1
      (rho : Nat → Contracts.NoteReshape2x1.DeployedF)
      (rows : Contracts.NoteReshape2x1.relationAll rho) :
      DeployedRelation .reshape2x1
  | reshape1x8
      (rho : Nat → Contracts.NoteReshape1x8.DeployedF)
      (rows : Contracts.NoteReshape1x8.relationAll rho) :
      DeployedRelation .reshape1x8
  | reshape4x1
      (rho : Nat → Contracts.NoteReshape4x1.DeployedF)
      (rows : Contracts.NoteReshape4x1.relationAll rho) :
      DeployedRelation .reshape4x1
  | reshape8x1
      (rho : Nat → Contracts.NoteReshape8x1.DeployedF)
      (rows : Contracts.NoteReshape8x1.relationAll rho) :
      DeployedRelation .reshape8x1

/-- Generated typed facts recovered from an exact deployed relation. -/
inductive ExactCircuitFacts : FamilyPolicy → Prop
  | reshape2x1
      (rho : Nat → Contracts.NoteReshape2x1.DeployedF)
      (facts : Contracts.NoteReshape2x1.NoteReshape2x1CircuitFacts rho) :
      ExactCircuitFacts .reshape2x1
  | reshape1x8
      (rho : Nat → Contracts.NoteReshape1x8.DeployedF)
      (facts : Contracts.NoteReshape1x8.NoteReshape1x8CircuitFacts rho) :
      ExactCircuitFacts .reshape1x8
  | reshape4x1
      (rho : Nat → Contracts.NoteReshape4x1.DeployedF)
      (facts : Contracts.NoteReshape4x1.NoteReshape4x1CircuitFacts rho) :
      ExactCircuitFacts .reshape4x1
  | reshape8x1
      (rho : Nat → Contracts.NoteReshape8x1.DeployedF)
      (facts : Contracts.NoteReshape8x1.NoteReshape8x1CircuitFacts rho) :
      ExactCircuitFacts .reshape8x1

/-- Exact R1CS rows imply generated typed facts for the selected family. -/
theorem exactCircuitFacts_of_deployed
    {policy : FamilyPolicy}
    (deployed : DeployedRelation policy) :
    ExactCircuitFacts policy := by
  cases deployed with
  | reshape2x1 rho rows =>
      exact .reshape2x1 rho
        (Contracts.NoteReshape2x1.note_reshape2x1_circuitFacts rho rows)
  | reshape1x8 rho rows =>
      exact .reshape1x8 rho
        (Contracts.NoteReshape1x8.note_reshape1x8_circuitFacts rho rows)
  | reshape4x1 rho rows =>
      exact .reshape4x1 rho
        (Contracts.NoteReshape4x1.note_reshape4x1_circuitFacts rho rows)
  | reshape8x1 rho rows =>
      exact .reshape8x1 rho
        (Contracts.NoteReshape8x1.note_reshape8x1_circuitFacts rho rows)

/-- The canonical shared-address obligation derived from exact family facts. -/
inductive ExactCanonicalAddress : FamilyPolicy → Prop
  | reshape2x1
      (rho : Nat → Contracts.NoteReshape2x1.DeployedF)
      (canonical :
        NoteReshapeCanonical.canonicalTransmission
          (NoteReshapeCanonicalAddress2x1.authorization rho)
          (NoteReshapeCanonicalAddress2x1.shared rho)) :
      ExactCanonicalAddress .reshape2x1
  | reshape1x8
      (rho : Nat → Contracts.NoteReshape1x8.DeployedF)
      (canonical :
        NoteReshapeCanonical.canonicalTransmission
          (NoteReshapeCanonicalAddress1x8.authorization rho)
          (NoteReshapeCanonicalAddress1x8.shared rho)) :
      ExactCanonicalAddress .reshape1x8
  | reshape4x1
      (rho : Nat → Contracts.NoteReshape4x1.DeployedF)
      (canonical :
        NoteReshapeCanonical.canonicalTransmission
          (NoteReshapeCanonicalAddress4x1.authorization rho)
          (NoteReshapeCanonicalAddress4x1.shared rho)) :
      ExactCanonicalAddress .reshape4x1
  | reshape8x1
      (rho : Nat → Contracts.NoteReshape8x1.DeployedF)
      (canonical :
        NoteReshapeCanonical.canonicalTransmission
          (NoteReshapeCanonicalAddress8x1.authorization rho)
          (NoteReshapeCanonicalAddress8x1.shared rho)) :
      ExactCanonicalAddress .reshape8x1

/-- Exact circuit facts establish canonical address binding in every family. -/
theorem exactCanonicalAddress_of_circuitFacts
    {policy : FamilyPolicy}
    (facts : ExactCircuitFacts policy) :
    ExactCanonicalAddress policy := by
  cases facts with
  | reshape2x1 rho facts =>
      exact .reshape2x1 rho
        (NoteReshapeCanonicalAddress2x1.canonicalTransmission_of_exact rho facts)
  | reshape1x8 rho facts =>
      exact .reshape1x8 rho
        (NoteReshapeCanonicalAddress1x8.canonicalTransmission_of_exact rho facts)
  | reshape4x1 rho facts =>
      exact .reshape4x1 rho
        (NoteReshapeCanonicalAddress4x1.canonicalTransmission_of_exact rho facts)
  | reshape8x1 rho facts =>
      exact .reshape8x1 rho
        (NoteReshapeCanonicalAddress8x1.canonicalTransmission_of_exact rho facts)

end Shieldd.GnarkFormal.Deployed.NoteReshapeRefinement
