import Ipp.Bls12377PairingAdapter
import Ipp.Extracted.AggregateAdapter

/-!
Exact semantic projection of the production aggregate-adapter input.  This
interface names every field that the extracted TIPP and PPE verifiers consume;
it does not summarize their result or assume that either verifier accepts.
-/

namespace Ipp.Extracted.AggregateAdapterProjection

open Aeneas
open ark_ip_proofs
open Ipp.Bls12377

noncomputable section

local instance : Fact scalarModulus.Prime := ⟨arithmeticFacts.scalarPrime⟩

def finVec {T : Type} {n : Nat} (values : Fin n → T) :
    Aeneas.Std.alloc.vec.Vec T :=
  ⟨List.ofFn values⟩

def inputVec {F : Type} {m n : Nat}
    (values : Fin m → Fin n → F) :
    Aeneas.Std.alloc.vec.Vec (Aeneas.Std.alloc.vec.Vec F) :=
  ⟨List.ofFn (fun i => finVec (values i))⟩

def foldedPublicInput
    {F G1 : Type} [Field F] [AddCommGroup G1] [Module F G1]
    {m n : Nat} (gammaABC : Fin (n + 1) → G1)
    (publicInputs : Fin m → Fin n → F) (r : F) : G1 :=
  ((∑ i : Fin m, r ^ (i : Nat)) • gammaABC 0) +
    ∑ j : Fin n,
      (∑ i : Fin m, r ^ (i : Nat) * publicInputs i j) •
        gammaABC (Fin.succ j)

/-- Folding the concrete public-input matrix is exactly the weighted sum of
the per-row Groth16 input commitments. -/
theorem foldedPublicInput_eq_weightedAic
    {F G1 : Type} [Field F] [AddCommGroup G1] [Module F G1]
    {m n : Nat} (gammaABC : Fin (n + 1) → G1)
    (publicInputs : Fin m → Fin n → F) (r : F)
    (aic : Fin m → G1)
    (haic : ∀ i,
      aic i = gammaABC 0 +
        ∑ j : Fin n, publicInputs i j • gammaABC (Fin.succ j)) :
    foldedPublicInput gammaABC publicInputs r =
      ∑ i : Fin m, r ^ (i : Nat) • aic i := by
  unfold foldedPublicInput
  simp_rw [haic, smul_add, Finset.smul_sum, smul_smul]
  rw [Finset.sum_add_distrib]
  simp_rw [Finset.sum_smul]
  rw [Finset.sum_comm]

/-- Canonical concrete input consumed by the combined TIPP/PPE verifier for
one formal statement, proof, transcript, and ordered public-input matrix. -/
def formalCombinedInput
    {n arity : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (publicInputs : Fin (2 ^ n) → Fin arity → Fr) :
    applications.groth16_aggregation.CombinedChecksCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup :=
  {
    tipp_mipp := VerifyTippMipp.coreInput
      (statementWithExecutablePairing hbilinear baseStmt)
      proof transcript g gBeta h hAlpha
    gamma_abc_g1 := finVec gammaABC
    public_inputs := inputVec publicInputs
    r := transcript.randomizer
    ppe := {
      alpha_beta := (statementWithExecutablePairing hbilinear baseStmt).e
        (statementWithExecutablePairing hbilinear baseStmt).alpha
        (statementWithExecutablePairing hbilinear baseStmt).beta
      agg_c := proof.aggC
      gamma_g2_neg_pc := prepareNegative
        (statementWithExecutablePairing hbilinear baseStmt).gamma
      delta_g2_neg_pc := prepareNegative
        (statementWithExecutablePairing hbilinear baseStmt).delta
      ip_ab := proof.ipAb
    }
  }

/-- Canonical aggregate-adapter wrapper around `formalCombinedInput`. -/
def formalAdapterInput
    {n arity : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (publicInputs : Fin (2 ^ n) → Fin arity → Fr)
    (randomizerMessage : List UInt8) :
    applications.groth16_aggregation.AggregateAdapterCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup :=
  {
    randomizer_message := ⟨randomizerMessage⟩
    combined := formalCombinedInput hbilinear baseStmt proof transcript
      g gBeta h hAlpha gammaABC publicInputs
  }

private theorem combinedChecksPpeInput_ext
    {G1 G2Prepared GT : Type}
    {left right :
      applications.groth16_aggregation.CombinedChecksPpeInput
        G1 G2Prepared GT}
    (alphaBeta : left.alpha_beta = right.alpha_beta)
    (aggC : left.agg_c = right.agg_c)
    (gamma : left.gamma_g2_neg_pc = right.gamma_g2_neg_pc)
    (delta : left.delta_g2_neg_pc = right.delta_g2_neg_pc)
    (ipAb : left.ip_ab = right.ip_ab) :
    left = right := by
  cases left
  cases right
  simp_all

/-- Every concrete field consumed by the shipping TIPP/MIPP and PPE calls is
the corresponding field of one formal statement, proof, and transcript. -/
structure AdapterInputProjection
    {n arity : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (gammaABC : Fin (arity + 1) → g1PrimeSubgroup)
    (publicInputs : Fin (2 ^ n) → Fin arity → Fr)
    (randomizerMessage : List UInt8) where
  randomizer_message :
    input.randomizer_message = ⟨randomizerMessage⟩
  tipp :
    (AggregateAdapter.installRandomizer
      input.combined transcript.randomizer).tipp_mipp =
      VerifyTippMipp.coreInput
        (statementWithExecutablePairing hbilinear baseStmt)
        proof transcript g gBeta h hAlpha
  gamma_abc :
    (AggregateAdapter.installRandomizer
      input.combined transcript.randomizer).gamma_abc_g1 =
      finVec gammaABC
  public_inputs :
    (AggregateAdapter.installRandomizer
      input.combined transcript.randomizer).public_inputs =
      inputVec publicInputs
  randomizer :
    (AggregateAdapter.installRandomizer
      input.combined transcript.randomizer).r = transcript.randomizer
  alpha_beta :
    (AggregateAdapter.installRandomizer
      input.combined transcript.randomizer).ppe.alpha_beta =
      (statementWithExecutablePairing hbilinear baseStmt).e
        (statementWithExecutablePairing hbilinear baseStmt).alpha
        (statementWithExecutablePairing hbilinear baseStmt).beta
  agg_c :
    (AggregateAdapter.installRandomizer
      input.combined transcript.randomizer).ppe.agg_c = proof.aggC
  gamma_negative :
    (AggregateAdapter.installRandomizer
      input.combined transcript.randomizer).ppe.gamma_g2_neg_pc =
      prepareNegative
        (statementWithExecutablePairing hbilinear baseStmt).gamma
  delta_negative :
    (AggregateAdapter.installRandomizer
      input.combined transcript.randomizer).ppe.delta_g2_neg_pc =
      prepareNegative
        (statementWithExecutablePairing hbilinear baseStmt).delta
  ip_ab :
    (AggregateAdapter.installRandomizer
      input.combined transcript.randomizer).ppe.ip_ab = proof.ipAb
  folded_aic :
    foldedPublicInput gammaABC publicInputs transcript.randomizer =
      ∑ i : Fin (2 ^ n), transcript.randomizer ^ (i : Nat) •
        (statementWithExecutablePairing hbilinear baseStmt).Aic i
  batch_size_fits_u64 : 2 ^ n < Aeneas.Std.MacCampaign.u64Base

/-- The canonical adapter input satisfies every projection field
definitionally; only the statement-level IC fold and machine-size bound are
mathematical side conditions. -/
theorem formalAdapterInput_projection
    {n arity : Nat}
    {hbilinear : PublishedPairingBilinear}
    {baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput}
    {transcript : Ipp.FsTranscript n Fr}
    {g gBeta : g1PrimeSubgroup} {h hAlpha : g2PrimeSubgroup}
    {gammaABC : Fin (arity + 1) → g1PrimeSubgroup}
    {publicInputs : Fin (2 ^ n) → Fin arity → Fr}
    {randomizerMessage : List UInt8}
    (hfold :
      foldedPublicInput gammaABC publicInputs transcript.randomizer =
        ∑ i : Fin (2 ^ n), transcript.randomizer ^ (i : Nat) •
          (statementWithExecutablePairing hbilinear baseStmt).Aic i)
    (hsize : 2 ^ n < Aeneas.Std.MacCampaign.u64Base) :
    AdapterInputProjection hbilinear baseStmt proof transcript
      (formalAdapterInput hbilinear baseStmt proof transcript
        g gBeta h hAlpha gammaABC publicInputs randomizerMessage)
      g gBeta h hAlpha gammaABC publicInputs randomizerMessage where
  randomizer_message := rfl
  tipp := rfl
  gamma_abc := rfl
  public_inputs := rfl
  randomizer := rfl
  alpha_beta := rfl
  agg_c := rfl
  gamma_negative := rfl
  delta_negative := rfl
  ip_ab := rfl
  folded_aic := hfold
  batch_size_fits_u64 := hsize

/-- Canonical projection with the fold equality derived from the exact
per-row Groth16 IC construction. -/
theorem formalAdapterInput_projection_from_aic
    {n arity : Nat}
    {hbilinear : PublishedPairingBilinear}
    {baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput}
    {transcript : Ipp.FsTranscript n Fr}
    {g gBeta : g1PrimeSubgroup} {h hAlpha : g2PrimeSubgroup}
    {gammaABC : Fin (arity + 1) → g1PrimeSubgroup}
    {publicInputs : Fin (2 ^ n) → Fin arity → Fr}
    {randomizerMessage : List UInt8}
    (haic : ∀ i,
      (statementWithExecutablePairing hbilinear baseStmt).Aic i =
        gammaABC 0 +
          ∑ j : Fin arity,
            publicInputs i j • gammaABC (Fin.succ j))
    (hsize : 2 ^ n < Aeneas.Std.MacCampaign.u64Base) :
    AdapterInputProjection hbilinear baseStmt proof transcript
      (formalAdapterInput hbilinear baseStmt proof transcript
        g gBeta h hAlpha gammaABC publicInputs randomizerMessage)
      g gBeta h hAlpha gammaABC publicInputs randomizerMessage :=
  formalAdapterInput_projection
    (foldedPublicInput_eq_weightedAic gammaABC publicInputs
      transcript.randomizer
      (statementWithExecutablePairing hbilinear baseStmt).Aic haic)
    hsize

theorem installed_tipp_eq_coreInput
    {n arity : Nat}
    {hbilinear : PublishedPairingBilinear}
    {baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput}
    {transcript : Ipp.FsTranscript n Fr}
    {input : applications.groth16_aggregation.AggregateAdapterCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup}
    {g gBeta : g1PrimeSubgroup} {h hAlpha : g2PrimeSubgroup}
    {gammaABC : Fin (arity + 1) → g1PrimeSubgroup}
    {publicInputs : Fin (2 ^ n) → Fin arity → Fr}
    {randomizerMessage : List UInt8}
    (projection : AdapterInputProjection hbilinear baseStmt proof transcript
      input g gBeta h hAlpha gammaABC publicInputs randomizerMessage) :
    (AggregateAdapter.installRandomizer
      input.combined transcript.randomizer).tipp_mipp =
      VerifyTippMipp.coreInput
        (statementWithExecutablePairing hbilinear baseStmt)
        proof transcript g gBeta h hAlpha :=
  projection.tipp

/-- The prepared-PPE result is no longer a semantic adapter assumption: exact
input projection plus the extracted fold/PPE refinements derives the canonical
positive-sign aggregate equation. -/
theorem installed_ppe_true_iff
    {PPE : Type} {n arity : Nat}
    {hbilinear : PublishedPairingBilinear}
    {baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput}
    {proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput}
    {transcript : Ipp.FsTranscript n Fr}
    {input : applications.groth16_aggregation.AggregateAdapterCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup}
    {g gBeta : g1PrimeSubgroup} {h hAlpha : g2PrimeSubgroup}
    {gammaABC : Fin (arity + 1) → g1PrimeSubgroup}
    {publicInputs : Fin (2 ^ n) → Fin arity → Fr}
    {randomizerMessage : List UInt8}
    (ppeOutcome : PPE → Option Unit) (ppePairing : PPE)
    (projection : AdapterInputProjection hbilinear baseStmt proof transcript
      input g gBeta h hAlpha gammaABC publicInputs randomizerMessage) :
    Ipp.Extracted.CombinedChecks.runPpe
        (preparedPairingEffect hbilinear ppeOutcome)
        (AggregateAdapter.installRandomizer
          input.combined transcript.randomizer)
        ppePairing = .ok true ↔
      ppeOutcome ppePairing = some () ∧
        (statementWithExecutablePairing hbilinear baseStmt).e
            ((∑ i : Fin (2 ^ n), transcript.randomizer ^ (i : Nat)) •
              (statementWithExecutablePairing hbilinear baseStmt).alpha)
            (statementWithExecutablePairing hbilinear baseStmt).beta +
          (statementWithExecutablePairing hbilinear baseStmt).e
            (∑ i : Fin (2 ^ n),
              transcript.randomizer ^ (i : Nat) •
                (statementWithExecutablePairing hbilinear baseStmt).Aic i)
            (statementWithExecutablePairing hbilinear baseStmt).gamma +
          (statementWithExecutablePairing hbilinear baseStmt).e proof.aggC
            (statementWithExecutablePairing hbilinear baseStmt).delta =
        proof.ipAb := by
  let stmt := statementWithExecutablePairing hbilinear baseStmt
  let folded :=
    foldedPublicInput gammaABC publicInputs transcript.randomizer
  have laws := ppePairingAdapterLaws hbilinear ppeOutcome ppePairing
    folded proof.aggC stmt.gamma stmt.delta
  have hcore :=
    Ipp.Extracted.verify_combined_ppe_refinement_statement
      (m := 2 ^ n) (n := arity)
      gammaABC publicInputs transcript.randomizer
      (by positivity) projection.batch_size_fits_u64
      stmt.e id PreparedG2.value ppeOutcome
      (preparedPairingEffect hbilinear ppeOutcome) ppePairing
      stmt.alpha stmt.beta stmt.gamma stmt.delta proof.aggC
      (prepareNegative stmt.gamma) (prepareNegative stmt.delta) proof.ipAb
      (by simpa [folded, foldedPublicInput] using laws.1)
      laws.2.1
      (by
        simpa only [folded, foldedPublicInput, stmt,
          statementWithExecutablePairing_e] using laws.2.2)
  have hppe :
      (AggregateAdapter.installRandomizer
        input.combined transcript.randomizer).ppe =
        {
          alpha_beta := stmt.e stmt.alpha stmt.beta
          agg_c := proof.aggC
          gamma_g2_neg_pc := prepareNegative stmt.gamma
          delta_g2_neg_pc := prepareNegative stmt.delta
          ip_ab := proof.ipAb
        } := by
    apply combinedChecksPpeInput_ext
    · simpa [stmt] using projection.alpha_beta
    · exact projection.agg_c
    · simpa [stmt] using projection.gamma_negative
    · simpa [stmt] using projection.delta_negative
    · exact projection.ip_ab
  unfold Ipp.Extracted.CombinedChecks.runPpe
  rw [projection.gamma_abc, projection.public_inputs,
    projection.randomizer, hppe]
  rw [← projection.folded_aic]
  simpa [finVec, inputVec, stmt, foldedPublicInput,
    Ipp.Extracted.Groth16AdapterModel.finSlice,
    Ipp.Extracted.Groth16AdapterModel.inputSlice,
    Ipp.Extracted.Groth16AdapterModel.clone,
    Ipp.Extracted.Groth16AdapterModel.partialEq,
    Ipp.Extracted.Groth16AdapterModel.fromU64,
    Ipp.Extracted.Groth16AdapterModel.one,
    Ipp.Extracted.Groth16AdapterModel.zero,
    Ipp.Extracted.Groth16AdapterModel.add,
    Ipp.Extracted.Groth16AdapterModel.div,
    Ipp.Extracted.Groth16AdapterModel.mul,
    Ipp.Extracted.Groth16AdapterModel.sub,
    Ipp.Extracted.Groth16AdapterModel.smul,
    Ipp.Extracted.Groth16AdapterModel.neg,
    Ipp.Extracted.CombinedChecks.clone,
    Ipp.Extracted.CombinedChecks.partialEq,
    Ipp.Extracted.CombinedChecks.fromU64,
    Ipp.Extracted.CombinedChecks.one,
    Ipp.Extracted.CombinedChecks.zero,
    Ipp.Extracted.CombinedChecks.add,
    Ipp.Extracted.CombinedChecks.div,
    Ipp.Extracted.CombinedChecks.mul,
    Ipp.Extracted.CombinedChecks.sub,
    Ipp.Extracted.CombinedChecks.smul,
    Ipp.Extracted.CombinedChecks.neg] using hcore

#print axioms installed_tipp_eq_coreInput
#print axioms formalAdapterInput_projection
#print axioms formalAdapterInput_projection_from_aic
#print axioms foldedPublicInput_eq_weightedAic
#print axioms installed_ppe_true_iff

end

end Ipp.Extracted.AggregateAdapterProjection
