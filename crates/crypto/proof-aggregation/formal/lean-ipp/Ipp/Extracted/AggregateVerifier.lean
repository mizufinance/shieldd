import Ipp.Extracted.AggregateAdapter
import Ipp.Extracted.CombinedChecks
import Ipp.SnarkPackV1

/-!
The production aggregate-verifier refinement.

The outer accepted path is the extracted `AggregateAdapter` core. This module
contains only the semantic contract for its already-executed TIPP/MIPP and PPE
sub-verifiers and the composition into the import-isolated SnarkPack-v1 model.
-/

namespace Ipp.Extracted.AggregateVerifier

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open ark_ip_proofs

set_option maxHeartbeats 20000
set_option maxRecDepth 2048

noncomputable section

/-- Semantic postconditions of the concrete production adapter's two
sub-verifiers. Randomizer sampling, installation, combined delegation,
preflight, and failure behavior are derived from the extracted adapter core. -/
structure AcceptedAdapterContract
    {F G1 G2 G2Prepared GT E FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {n : Nat} (stmt : Ipp.FsStatement n F G1 G2 GT)
    (proof : Ipp.Proof n F G1 G2 GT) (transcript : Ipp.FsTranscript n F)
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (tipp_pairing : PE) (ppe_pairing : PPE) where
  tipp : ∀ effect finalEffect,
    Ipp.Extracted.CombinedChecks.runTipp effects tippPairing
        (Ipp.Extracted.AggregateAdapter.installRandomizer
          input.combined transcript.randomizer).tipp_mipp
        effect tipp_pairing =
      .ok (.Ok true, finalEffect) →
    transcript.x0 ≠ 0 ∧
      (∀ i, transcript.roundAnswer i ≠ 0) ∧
      transcript.bridge ≠ 0 ∧ transcript.kzg ≠ 0 ∧
      Ipp.LeafData stmt proof transcript
  ppe :
    Ipp.Extracted.CombinedChecks.runPpe ppeEffect
        (Ipp.Extracted.AggregateAdapter.installRandomizer
          input.combined transcript.randomizer)
        ppe_pairing = .ok true →
      stmt.e ((∑ i : Fin (2 ^ n),
          transcript.randomizer ^ (i : Nat)) • stmt.alpha) stmt.beta +
        stmt.e (∑ i : Fin (2 ^ n),
          transcript.randomizer ^ (i : Nat) • stmt.Aic i) stmt.gamma +
        stmt.e proof.aggC stmt.delta = proof.ipAb

/-- Acceptance by the extracted production adapter refines the independent
SnarkPack-v1 relation. The only remaining adapter boundary is the semantic
meaning of the already-executed TIPP/MIPP and PPE calls. -/
theorem adapter_core_acceptance_implies_snarkPackV1
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {n : Nat} (stmt : Ipp.FsStatement n F G1 G2 GT)
    (proof : Ipp.Proof n F G1 G2 GT) (transcript : Ipp.FsTranscript n F)
    (randomizerEffects :
      ark_ip_proofs.applications.groth16_aggregation.AggregateRandomizerEffect
        RFX F E)
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (randomizerEffect finalRandomizerEffect : RFX)
    (effect finalEffect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (contract : AcceptedAdapterContract stmt proof transcript effects
      tippPairing ppeEffect input tipp_pairing ppe_pairing)
    (haccept :
      Ipp.Extracted.AggregateAdapter.run randomizerEffects effects tippPairing
          ppeEffect input randomizerEffect effect tipp_pairing ppe_pairing =
        .ok (.Ok {
          randomizer := transcript.randomizer
          checks := (true, true)
          accepted := true
          randomizer_effect := finalRandomizerEffect
          tipp_mipp_effect := finalEffect
        })) :
    Ipp.SnarkPackV1.Accepts stmt proof transcript := by
  rcases Ipp.Extracted.AggregateAdapter.accepted_path
      randomizerEffects effects tippPairing ppeEffect input
      randomizerEffect finalRandomizerEffect effect finalEffect
      tipp_pairing ppe_pairing transcript.randomizer haccept with
    ⟨hrandomizer, hnotone, _, _, _, hcombined⟩
  have hsemantics :=
    Ipp.Extracted.CombinedChecks.accepted_implies_semantics
      effects tippPairing ppeEffect
      (Ipp.Extracted.AggregateAdapter.installRandomizer
        input.combined transcript.randomizer)
      effect finalEffect tipp_pairing ppe_pairing
      (transcript.x0 ≠ 0 ∧
        (∀ i, transcript.roundAnswer i ≠ 0) ∧
        transcript.bridge ≠ 0 ∧ transcript.kzg ≠ 0 ∧
        Ipp.LeafData stmt proof transcript)
      (stmt.e ((∑ i : Fin (2 ^ n),
          transcript.randomizer ^ (i : Nat)) • stmt.alpha) stmt.beta +
        stmt.e (∑ i : Fin (2 ^ n),
          transcript.randomizer ^ (i : Nat) • stmt.Aic i) stmt.gamma +
        stmt.e proof.aggC stmt.delta = proof.ipAb)
      hcombined (contract.tipp effect finalEffect) contract.ppe
  rcases hsemantics.1 with
    ⟨hx0, hrounds, hbridge, hkzg, hleaf⟩
  exact ⟨hrandomizer, hnotone, hx0, hrounds, hbridge, hkzg, hleaf,
    hsemantics.2⟩

#print axioms adapter_core_acceptance_implies_snarkPackV1

end
end Ipp.Extracted.AggregateVerifier
