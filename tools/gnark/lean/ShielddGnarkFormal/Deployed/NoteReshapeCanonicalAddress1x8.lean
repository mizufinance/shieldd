import ShielddGnarkFormal.NoteReshapeCanonical
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.SemanticSeams

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-!
Handwritten canonical-address refinement for the exact 1x8 deployment.
The generated layer supplies only row facts and compiler-wire seams.
-/

namespace Shieldd.GnarkFormal.Deployed.NoteReshapeCanonicalAddress1x8

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical

def authorization (rho : Nat → NoteReshapeCanonical.F) :
    AuthorizationContext NoteReshapeCanonical.F :=
  {
    authorizationKey :=
      ⟨Contracts.NoteReshape1x8.authAk0 rho,
       Contracts.NoteReshape1x8.authAk1 rho⟩
    nullifierKey := Contracts.NoteReshape1x8.authNk rho
    ivkReduced := Contracts.NoteReshape1x8.authIvkReduced rho
    ivkQuotientA := Contracts.NoteReshape1x8.authIvkQuotientA rho
  }

def transmission (rho : Nat → NoteReshapeCanonical.F) :
    Decaf377Assumptions.Point :=
  ⟨Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.inputX
      (Contracts.NoteReshape1x8.Seg6.localRho rho),
   Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.inputY
      (Contracts.NoteReshape1x8.Seg6.localRho rho)⟩

def divGenFq (rho : Nat → NoteReshapeCanonical.F) : NoteReshapeCanonical.F :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho
      (Contracts.NoteReshape1x8.Seg4.localRho rho) 912 -
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho
      (Contracts.NoteReshape1x8.Seg4.localRho rho) 572

def transmissionFq (rho : Nat → NoteReshapeCanonical.F) :
    NoteReshapeCanonical.F :=
  Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.templateRho
      (Contracts.NoteReshape1x8.Seg6.localRho rho) 912 -
    Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.templateRho
      (Contracts.NoteReshape1x8.Seg6.localRho rho) 572

def shared (rho : Nat → NoteReshapeCanonical.F) :
    SharedContext NoteReshapeCanonical.F :=
  {
    assetId := Contracts.NoteReshape1x8.sharedAssetId rho
    diversifiedGenerator :=
      ⟨Contracts.NoteReshape1x8.sharedDivGen0 rho,
       Contracts.NoteReshape1x8.sharedDivGen1 rho⟩
    diversifiedGeneratorEncoding := divGenFq rho
    transmission := NoteReshapeCanonical.toProtocolPoint (transmission rho)
    transmissionEncoding := transmissionFq rho
    clueKey := Contracts.NoteReshape1x8.sharedClueKey rho
  }

theorem sharedDivGenFq_eq_divGenFq
    (rho : Nat → Contracts.NoteReshape1x8.DeployedF) :
    Contracts.NoteReshape1x8.sharedDivGenFq rho = divGenFq rho := by
  change
    Contracts.NoteReshape1x8.sharedDivGenFq rho =
      Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho
          (Contracts.NoteReshape1x8.Seg4.localRho rho) 912 -
        Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho
          (Contracts.NoteReshape1x8.Seg4.localRho rho) 572
  exact Contracts.NoteReshape1x8.sharedDivGenFq_eq_compressOutput rho

theorem sharedTransmissionFq_eq_transmissionFq
    (rho : Nat → Contracts.NoteReshape1x8.DeployedF) :
    Contracts.NoteReshape1x8.sharedTransmissionFq rho =
      transmissionFq rho := by
  change
    Contracts.NoteReshape1x8.sharedTransmissionFq rho =
      Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.templateRho
          (Contracts.NoteReshape1x8.Seg6.localRho rho) 912 -
        Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.templateRho
          (Contracts.NoteReshape1x8.Seg6.localRho rho) 572
  exact Contracts.NoteReshape1x8.sharedTransmissionFq_eq_compressOutput rho

/-- The exact witnesses behind the canonical transmission relation. -/
theorem canonicalTransmissionFacts_of_exact
    (rho : Nat → Contracts.NoteReshape1x8.DeployedF)
    (facts : Contracts.NoteReshape1x8.NoteReshape1x8CircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
        (NoteReshapeCanonical.toDecafPoint (shared rho).diversifiedGenerator)
        (divGenFq rho) ∧
      Decaf377Assumptions.DiversifiedTransmissionKeySpec
        (authorization rho).nullifierKey
        (NoteReshapeCanonical.toDecafPoint (authorization rho).authorizationKey)
        (NoteReshapeCanonical.toDecafPoint (shared rho).diversifiedGenerator)
        (authorization rho).ivkReduced
        (authorization rho).ivkQuotientA
        (transmission rho) ∧
      Decaf377Assumptions.CompressToFieldSpec
        (transmission rho) (transmissionFq rho) := by
  have hseamX :=
    Contracts.NoteReshape1x8.dtkOutX_eq_transmissionCompressInputX rho
  have hseamY :=
    Contracts.NoteReshape1x8.dtkOutY_eq_transmissionCompressInputY rho
  refine ⟨?_, ?_, ?_⟩
  · simpa [NoteReshapeCanonical.toDecafPoint, shared, divGenFq,
      Contracts.NoteReshape1x8.sharedDivGen0,
      Contracts.NoteReshape1x8.sharedDivGen0LC,
      Contracts.NoteReshape1x8.sharedDivGen1,
      Contracts.NoteReshape1x8.sharedDivGen1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Contracts.NoteReshape1x8.Seg4.spec,
      Deployed.Templates.Generated.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec,
      Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec,
      Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputX,
      Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputY,
      Contracts.NoteReshape1x8.Seg4.localRho,
      Contracts.NoteReshape1x8.Seg4.wireSeating,
      Deployed.Templates.seated] using
        facts.shared.DecafCompressToFieldSeg4
  · have hdiv := facts.shared.DecafAssertOnCurveSeg3
    have hdtk := facts.shared.DecafDiversifiedTransmissionKeySeg5
    have hdiv' :
        Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.onCurveAt
          (Contracts.NoteReshape1x8.Seg5.localRho rho 2211)
          (Contracts.NoteReshape1x8.Seg5.localRho rho 2213) := by
      simpa [Contracts.NoteReshape1x8.Seg3.spec,
      Deployed.Templates.Generated.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.spec,
      Deployed.Templates.Semantics.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.spec,
      Contracts.NoteReshape1x8.Seg3.localRho,
      Contracts.NoteReshape1x8.Seg3.wireSeating,
      Deployed.Templates.seated] using hdiv
    have hdtk' := (hdtk hdiv').1
    rw [hseamX, hseamY] at hdtk'
    simpa [transmission, authorization, shared, NoteReshapeCanonical.toDecafPoint,
      Contracts.NoteReshape1x8.authAk0,
      Contracts.NoteReshape1x8.authAk0LC,
      Contracts.NoteReshape1x8.authAk1,
      Contracts.NoteReshape1x8.authAk1LC,
      Contracts.NoteReshape1x8.authNk,
      Contracts.NoteReshape1x8.authNkLC,
      Contracts.NoteReshape1x8.authIvkReduced,
      Contracts.NoteReshape1x8.authIvkReducedLC,
      Contracts.NoteReshape1x8.authIvkQuotientA,
      Contracts.NoteReshape1x8.authIvkQuotientALC,
      Contracts.NoteReshape1x8.sharedDivGen0,
      Contracts.NoteReshape1x8.sharedDivGen0LC,
      Contracts.NoteReshape1x8.sharedDivGen1,
      Contracts.NoteReshape1x8.sharedDivGen1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Contracts.NoteReshape1x8.Seg5.localRho,
      Contracts.NoteReshape1x8.Seg5.wireSeating,
      Deployed.Templates.seated] using hdtk'
  · simpa [transmission, transmissionFq,
      Contracts.NoteReshape1x8.Seg6.spec,
      Deployed.Templates.Generated.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.spec,
      Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.spec,
      Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.inputX,
      Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.inputY,
      Contracts.NoteReshape1x8.Seg6.localRho,
      Contracts.NoteReshape1x8.Seg6.wireSeating,
      Deployed.Templates.seated, ← hseamX, ← hseamY] using
        facts.shared.DecafCompressToFieldSeg6

theorem canonicalTransmission_of_exact
    (rho : Nat → Contracts.NoteReshape1x8.DeployedF)
    (facts : Contracts.NoteReshape1x8.NoteReshape1x8CircuitFacts rho) :
    NoteReshapeCanonical.canonicalTransmission (authorization rho) (shared rho) := by
  rcases canonicalTransmissionFacts_of_exact rho facts with
    ⟨hdiv, hdtk, htransmission⟩
  exact ⟨hdiv, hdtk, htransmission⟩

end Shieldd.GnarkFormal.Deployed.NoteReshapeCanonicalAddress1x8
