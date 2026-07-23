import Ipp.Bls12377PairingAdapter
import Ipp.Extracted.AggregateVerifier

/-!
S3-41 specialization of S2's aggregate capstone to the concrete BLS12-377
pairing effects. The only pairing-mathematics premise is subgroup bilinearity.
-/

namespace Ipp.Extracted.AggregateVerifier

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Bls12377

noncomputable section

local instance : Fact scalarModulus.Prime := ⟨arithmeticFacts.scalarPrime⟩

/--
S2's aggregate capstone with both pairing effects and the statement pairing
field fixed to the BLS12-377 adapter. Remaining `htipp`/`hppe` premises concern
the other commitment/orchestration inputs; no arbitrary pairing-effect law
remains.
-/
theorem verify_aggregate_proof_pairing_adapter_statement
    {E FX PE PPE AE AFX : Type}
    {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (aggregateEffects :
      applications.groth16_aggregation.AggregateVerifierEffect AFX Fr AE)
    (aggregateEffect challengeEffect finalAggregateEffect : AFX)
    (combinedResult : core.result.Result (Bool × Bool) AE)
    (randomizerTrace : RandomizerTrace aggregateEffects.derive_randomizer
      aggregateEffect 0#usize challengeEffect transcript.randomizer)
    (aggregateCombined :
      aggregateEffects.verify_combined challengeEffect transcript.randomizer =
        .ok (combinedResult, finalAggregateEffect))
    (effects : applications.groth16_aggregation.TippMippEffect
      FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup E)
    (input : applications.groth16_aggregation.CombinedChecksCoreInput
      Fr g1PrimeSubgroup g2PrimeSubgroup PreparedG2 ArkPairingOutput
        ArkPairingOutput g1PrimeSubgroup)
    (effect effect4 : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (tippOutcome : PE → Option Unit) (ppeOutcome : PPE → Option Unit)
    (expected : Usize)
    (aggregateDelegates : combinedResult = .Ok (true, true) ↔
      Ipp.Extracted.CombinedChecks.run effects
          (tippPairingEffect hbilinear tippOutcome)
          (preparedPairingEffect hbilinear ppeOutcome)
          input effect tipp_pairing ppe_pairing =
        .ok (.Ok { checks := (true, true), tipp_mipp_effect := effect4 }))
    (hnonempty : ark_ip_proofs.alloc.vec.Vec.len input.public_inputs ≠ 0#usize)
    (hpower : core.num.Usize.is_power_of_two
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok true)
    (hilog : core.num.Usize.ilog2
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok expected)
    (hrounds :
      ark_ip_proofs.alloc.vec.Vec.len input.tipp_mipp.proof.gipa_proof =
        expected)
    (htippTotal : ∃ valid nextEffect,
      Ipp.Extracted.CombinedChecks.runTipp effects
          (tippPairingEffect hbilinear tippOutcome) input.tipp_mipp
          effect tipp_pairing = .ok (.Ok valid, nextEffect))
    (hppeTotal : ∃ valid,
      Ipp.Extracted.CombinedChecks.runPpe
          (preparedPairingEffect hbilinear ppeOutcome) input ppe_pairing =
        .ok valid)
    (htipp : Ipp.Extracted.CombinedChecks.runTipp effects
          (tippPairingEffect hbilinear tippOutcome) input.tipp_mipp
          effect tipp_pairing = .ok (.Ok true, effect4) ↔
      Ipp.LeafData (statementWithExecutablePairing hbilinear baseStmt)
        proof transcript)
    (hppe : Ipp.Extracted.CombinedChecks.runPpe
          (preparedPairingEffect hbilinear ppeOutcome) input ppe_pairing =
        .ok true ↔
      ppeOutcome ppe_pairing = some () ∧
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
          proof.ipAb)
    (hx0 : transcript.x0 ≠ 0)
    (hroundChallenges : ∀ i, transcript.roundAnswer i ≠ 0)
    (hbridge : transcript.bridge ≠ 0)
    (hkzg : transcript.kzg ≠ 0)
    (hppeOutcome : ppeOutcome ppe_pairing = some ()) :
    run aggregateEffects aggregateEffect = .ok (.Ok {
        randomizer := transcript.randomizer
        checks := (true, true)
        accepted := true
        effect := finalAggregateEffect }) ↔
      Ipp.FsAccepts (statementWithExecutablePairing hbilinear baseStmt)
        proof transcript := by
  exact verify_aggregate_proof_refinement_statement
    (statementWithExecutablePairing hbilinear baseStmt) proof transcript
    aggregateEffects aggregateEffect challengeEffect finalAggregateEffect
    combinedResult randomizerTrace aggregateCombined effects
    (tippPairingEffect hbilinear tippOutcome)
    (preparedPairingEffect hbilinear ppeOutcome)
    input effect effect4 tipp_pairing ppe_pairing ppeOutcome expected
    aggregateDelegates hnonempty hpower hilog hrounds htippTotal hppeTotal
    htipp hppe hx0 hroundChallenges hbridge hkzg hppeOutcome

#print axioms verify_aggregate_proof_pairing_adapter_statement

end

end Ipp.Extracted.AggregateVerifier
