import Ipp.Extracted.AggregateAdapterGenerated
import Ipp.Extracted.CombinedChecks

namespace Ipp.Extracted.AggregateAdapter

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open ark_ip_proofs

abbrev U64 := MacCampaign.U64

set_option maxHeartbeats 200000
set_option maxRecDepth 2048

noncomputable section

/-- The exact combined input installed after the aggregate randomizer is
accepted. Both consumers of the randomizer receive the same field value. -/
def installRandomizer
    {F G1 G2 G2Prepared GT : Type}
    (input :
      applications.groth16_aggregation.CombinedChecksCoreInput
        F G1 G2 G2Prepared GT GT G1)
    (randomizer : F) :
    applications.groth16_aggregation.CombinedChecksCoreInput
      F G1 G2 G2Prepared GT GT G1 :=
  {
    input with
    tipp_mipp := { input.tipp_mipp with r := randomizer }
    r := randomizer
  }

/-- The extracted aggregate-input constructor preserves the exact message and
combined verifier input supplied by the production wrapper. -/
theorem aggregate_adapter_core_input_from_parts_exact
    {F G1 G2 G2Prepared GT ABT CT : Type}
    (randomizerMessage : alloc.vec.Vec UInt8)
    (combined :
      applications.groth16_aggregation.CombinedChecksCoreInput
        F G1 G2 G2Prepared GT ABT CT) :
    applications.groth16_aggregation.aggregate_adapter_core_input_from_parts
        randomizerMessage combined =
      .ok { randomizer_message := randomizerMessage, combined := combined } :=
  rfl

/-- The extracted combined-input constructor preserves every TIPP and PPE
component supplied by the production wrapper. -/
theorem combined_checks_core_input_from_parts_exact
    {F G1 G2 G2Prepared GT ABT CT : Type}
    (parts :
      applications.groth16_aggregation.CombinedChecksCoreInputParts
        F G1 G2 G2Prepared GT ABT CT) :
    applications.groth16_aggregation.combined_checks_core_input_from_parts parts =
      .ok {
        tipp_mipp := parts.tipp_mipp
        gamma_abc_g1 := parts.gamma_abc_g1
        public_inputs := parts.public_inputs
        r := parts.r
        ppe := {
          alpha_beta := parts.alpha_beta
          agg_c := parts.agg_c
          gamma_g2_neg_pc := parts.gamma_g2_neg_pc
          delta_g2_neg_pc := parts.delta_g2_neg_pc
          ip_ab := parts.ip_ab
        }
      } :=
  rfl

/-- The extracted TIPP-input constructor preserves every commitment, proof,
SRS, randomizer, and KZG-shift component supplied by production. -/
theorem tipp_mipp_core_input_from_parts_exact
    {F G1 G2 GT ABT CT : Type}
    (parts :
      applications.groth16_aggregation.TippMippCoreInputParts
        F G1 G2 GT ABT CT) :
    applications.groth16_aggregation.tipp_mipp_core_input_from_parts parts =
      .ok {
        com_a := parts.com_a
        com_b := parts.com_b
        com_t := parts.com_t
        com_c := parts.com_c
        com_z := parts.com_z
        ip_ab := parts.ip_ab
        agg_c := parts.agg_c
        proof := parts.proof
        verifier_g := parts.verifier_g
        verifier_g_beta := parts.verifier_g_beta
        verifier_h := parts.verifier_h
        verifier_h_alpha := parts.verifier_h_alpha
        r := parts.r
        kzg_g2_r_shift := parts.kzg_g2_r_shift
      } :=
  rfl

/-- The production-used extracted adapter under the same algebraic adapters
as the combined verifier refinement. -/
def run
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (randomizerEffect : RFX) (effect : FX)
    (tipp_pairing : PE) (ppe_pairing : PPE) :=
  applications.groth16_aggregation.verify_aggregate_adapter_core
    (CombinedChecks.clone F) (CombinedChecks.partialEq F)
    (CombinedChecks.fromU64 F) (CombinedChecks.one F)
    (CombinedChecks.zero F) (CombinedChecks.add F)
    (CombinedChecks.div F) (CombinedChecks.mul F)
    (CombinedChecks.sub F)
    (CombinedChecks.clone G1) (CombinedChecks.add G1)
    (CombinedChecks.smul F G1) (CombinedChecks.sub G1)
    (CombinedChecks.neg G1)
    (CombinedChecks.clone G2) (CombinedChecks.smul F G2)
    (CombinedChecks.sub G2)
    (CombinedChecks.clone G2Prepared)
    (CombinedChecks.clone GT) (CombinedChecks.default GT)
    (CombinedChecks.add GT) (CombinedChecks.smul F GT)
    (CombinedChecks.smulAssign F GT) (CombinedChecks.zero GT)
    (CombinedChecks.partialEq GT)
    (CombinedChecks.clone GT) (CombinedChecks.default GT)
    (CombinedChecks.add GT) (CombinedChecks.smulAssign F GT)
    (CombinedChecks.clone G1) (CombinedChecks.default G1)
    (CombinedChecks.add G1) (CombinedChecks.smulAssign F G1)
    randomizerEffects effects tippPairing ppeEffect input
    randomizerEffect effect tipp_pairing ppe_pairing

private def body
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (state : RFX × U64) :=
  applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
    (CombinedChecks.clone F) (CombinedChecks.partialEq F)
    (CombinedChecks.fromU64 F) (CombinedChecks.one F)
    (CombinedChecks.zero F) (CombinedChecks.add F)
    (CombinedChecks.div F) (CombinedChecks.mul F)
    (CombinedChecks.sub F)
    (CombinedChecks.clone G1) (CombinedChecks.add G1)
    (CombinedChecks.smul F G1) (CombinedChecks.sub G1)
    (CombinedChecks.neg G1)
    (CombinedChecks.clone G2) (CombinedChecks.smul F G2)
    (CombinedChecks.sub G2)
    (CombinedChecks.clone G2Prepared)
    (CombinedChecks.clone GT) (CombinedChecks.default GT)
    (CombinedChecks.add GT) (CombinedChecks.smul F GT)
    (CombinedChecks.smulAssign F GT) (CombinedChecks.zero GT)
    (CombinedChecks.partialEq GT)
    (CombinedChecks.clone GT) (CombinedChecks.default GT)
    (CombinedChecks.add GT) (CombinedChecks.smulAssign F GT)
    (CombinedChecks.clone G1) (CombinedChecks.default G1)
    (CombinedChecks.add G1) (CombinedChecks.smulAssign F G1)
    randomizerEffects effects tippPairing ppeEffect input effect
    tipp_pairing ppe_pairing state.1 state.2

private theorem body_derive_fail
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    {randomizerEffect : RFX} {nonce : U64} {error : Error}
    (hderive :
      randomizerEffects.derive_randomizer randomizerEffect nonce
          (alloc.vec.Vec.deref input.randomizer_message) = .fail error) :
    body randomizerEffects effects tippPairing ppeEffect input effect
        tipp_pairing ppe_pairing (randomizerEffect, nonce) =
      .fail error := by
  unfold body
    applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
  simp only [Prod.fst, Prod.snd]
  rw [hderive]
  rfl

private theorem body_derive_div
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    {randomizerEffect : RFX} {nonce : U64}
    (hderive :
      randomizerEffects.derive_randomizer randomizerEffect nonce
          (alloc.vec.Vec.deref input.randomizer_message) = .div) :
    body randomizerEffects effects tippPairing ppeEffect input effect
        tipp_pairing ppe_pairing (randomizerEffect, nonce) =
      .div := by
  unfold body
    applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
  simp only [Prod.fst, Prod.snd]
  rw [hderive]
  rfl

private theorem body_randomizer_error
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    {randomizerEffect next : RFX} {nonce : U64} {error : E}
    (hderive :
      randomizerEffects.derive_randomizer randomizerEffect nonce
          (alloc.vec.Vec.deref input.randomizer_message) =
        .ok (.Err error, next)) :
    body randomizerEffects effects tippPairing ppeEffect input effect
        tipp_pairing ppe_pairing (randomizerEffect, nonce) =
      .ok (.done (.Err
        (applications.groth16_aggregation.AggregateAdapterCoreError.RandomizerFailure
          error))) := by
  unfold body
    applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
  simp only [Prod.fst, Prod.snd]
  rw [hderive]
  rfl

private theorem body_retry_none
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    {randomizerEffect next : RFX} {nonce nextNonce : U64}
    (hderive :
      randomizerEffects.derive_randomizer randomizerEffect nonce
          (alloc.vec.Vec.deref input.randomizer_message) =
        .ok (.Ok none, next))
    (hnext :
      challenge.checked_next_challenge_nonce nonce = .ok (some nextNonce)) :
    body randomizerEffects effects tippPairing ppeEffect input effect
        tipp_pairing ppe_pairing (randomizerEffect, nonce) =
      .ok (.cont (next, nextNonce)) := by
  unfold body
    applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
  simp only [Prod.fst, Prod.snd]
  rw [hderive]
  rw [hnext]
  rfl

private theorem body_retry_zero
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    {randomizerEffect next : RFX} {nonce nextNonce : U64}
    (hderive :
      randomizerEffects.derive_randomizer randomizerEffect nonce
          (alloc.vec.Vec.deref input.randomizer_message) =
        .ok (.Ok (some 0), next))
    (hnext :
      challenge.checked_next_challenge_nonce nonce = .ok (some nextNonce)) :
    body randomizerEffects effects tippPairing ppeEffect input effect
        tipp_pairing ppe_pairing (randomizerEffect, nonce) =
      .ok (.cont (next, nextNonce)) := by
  unfold body
    applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
  simp only [Prod.fst, Prod.snd]
  rw [hderive]
  simp [applications.groth16_aggregation.randomizer_is_admissible,
    CombinedChecks.partialEq, CombinedChecks.zero, CombinedChecks.one,
    core.cmp.PartialEq.ne, core.cmp.impls.PartialEqShared.ne, hnext]

private theorem body_retry_one
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    {randomizerEffect next : RFX} {nonce nextNonce : U64}
    (hderive :
      randomizerEffects.derive_randomizer randomizerEffect nonce
          (alloc.vec.Vec.deref input.randomizer_message) =
        .ok (.Ok (some 1), next))
    (hnext :
      challenge.checked_next_challenge_nonce nonce = .ok (some nextNonce)) :
    body randomizerEffects effects tippPairing ppeEffect input effect
        tipp_pairing ppe_pairing (randomizerEffect, nonce) =
      .ok (.cont (next, nextNonce)) := by
  unfold body
    applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
  simp only [Prod.fst, Prod.snd]
  rw [hderive]
  simp [applications.groth16_aggregation.randomizer_is_admissible,
    CombinedChecks.partialEq, CombinedChecks.zero, CombinedChecks.one,
    core.cmp.PartialEq.ne, core.cmp.impls.PartialEqShared.ne, hnext]

private theorem body_combined
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    {randomizerEffect next : RFX} {nonce : U64} {randomizer : F}
    {combinedResult :
      core.result.Result
        (applications.groth16_aggregation.CombinedChecksCoreOutput FX)
        (applications.groth16_aggregation.CombinedChecksError E)}
    (hderive :
      randomizerEffects.derive_randomizer randomizerEffect nonce
          (alloc.vec.Vec.deref input.randomizer_message) =
        .ok (.Ok (some randomizer), next))
    (hnonzero : randomizer ≠ 0) (hnotone : randomizer ≠ 1)
    (hcombined :
      CombinedChecks.run effects tippPairing ppeEffect
          (installRandomizer input.combined randomizer)
          effect tipp_pairing ppe_pairing =
        .ok combinedResult) :
    body randomizerEffects effects tippPairing ppeEffect input effect
        tipp_pairing ppe_pairing (randomizerEffect, nonce) =
      .ok (.done (match combinedResult with
        | .Err error => .Err
            (applications.groth16_aggregation.AggregateAdapterCoreError.CombinedFailure
              error)
        | .Ok output => .Ok {
            randomizer := randomizer
            checks := output.checks
            accepted := output.checks.1 && output.checks.2
            randomizer_effect := next
            tipp_mipp_effect := output.tipp_mipp_effect
          })) := by
  unfold CombinedChecks.run at hcombined
  unfold body
    applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
  simp only [Prod.fst, Prod.snd]
  rw [hderive]
  simp [applications.groth16_aggregation.randomizer_is_admissible,
    CombinedChecks.partialEq, CombinedChecks.zero, CombinedChecks.one,
    core.cmp.PartialEq.ne, core.cmp.impls.PartialEqShared.ne,
    hnonzero, hnotone, installRandomizer] at hcombined ⊢
  simp only [CombinedChecks.clone, Result.bind_ok] at hcombined ⊢
  rw [hcombined]
  cases combinedResult with
  | Err error => rfl
  | Ok output =>
      rcases output with ⟨checks, nextEffect⟩
      rcases checks with ⟨left, right⟩
      cases left <;> cases right <;> rfl

private theorem body_combined_fail
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    {randomizerEffect next : RFX} {nonce : U64} {randomizer : F}
    {error : Error}
    (hderive :
      randomizerEffects.derive_randomizer randomizerEffect nonce
          (alloc.vec.Vec.deref input.randomizer_message) =
        .ok (.Ok (some randomizer), next))
    (hnonzero : randomizer ≠ 0) (hnotone : randomizer ≠ 1)
    (hcombined :
      CombinedChecks.run effects tippPairing ppeEffect
          (installRandomizer input.combined randomizer)
          effect tipp_pairing ppe_pairing = .fail error) :
    body randomizerEffects effects tippPairing ppeEffect input effect
        tipp_pairing ppe_pairing (randomizerEffect, nonce) =
      .fail error := by
  unfold CombinedChecks.run at hcombined
  unfold body
    applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
  simp only [Prod.fst, Prod.snd]
  rw [hderive]
  simp [applications.groth16_aggregation.randomizer_is_admissible,
    CombinedChecks.partialEq, CombinedChecks.zero, CombinedChecks.one,
    core.cmp.PartialEq.ne, core.cmp.impls.PartialEqShared.ne,
    hnonzero, hnotone, installRandomizer] at hcombined ⊢
  simp only [CombinedChecks.clone, Result.bind_ok] at hcombined ⊢
  rw [hcombined]
  rfl

private theorem body_combined_div
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    {randomizerEffect next : RFX} {nonce : U64} {randomizer : F}
    (hderive :
      randomizerEffects.derive_randomizer randomizerEffect nonce
          (alloc.vec.Vec.deref input.randomizer_message) =
        .ok (.Ok (some randomizer), next))
    (hnonzero : randomizer ≠ 0) (hnotone : randomizer ≠ 1)
    (hcombined :
      CombinedChecks.run effects tippPairing ppeEffect
          (installRandomizer input.combined randomizer)
          effect tipp_pairing ppe_pairing = .div) :
    body randomizerEffects effects tippPairing ppeEffect input effect
        tipp_pairing ppe_pairing (randomizerEffect, nonce) =
      .div := by
  unfold CombinedChecks.run at hcombined
  unfold body
    applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
  simp only [Prod.fst, Prod.snd]
  rw [hderive]
  simp [applications.groth16_aggregation.randomizer_is_admissible,
    CombinedChecks.partialEq, CombinedChecks.zero, CombinedChecks.one,
    core.cmp.PartialEq.ne, core.cmp.impls.PartialEqShared.ne,
    hnonzero, hnotone, installRandomizer] at hcombined ⊢
  simp only [CombinedChecks.clone, Result.bind_ok] at hcombined ⊢
  rw [hcombined]
  rfl

private theorem acceptedCall_of_loopResult
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    {state : RFX × U64} {randomizer : F}
    {finalRandomizerEffect : RFX} {finalEffect : FX}
    (execution :
      LoopResult
        (body randomizerEffects effects tippPairing ppeEffect input effect
          tipp_pairing ppe_pairing)
        state
        (.ok (.Ok {
          randomizer := randomizer
          checks := (true, true)
          accepted := true
          randomizer_effect := finalRandomizerEffect
          tipp_mipp_effect := finalEffect
        }))) :
    randomizer ≠ 0 ∧ randomizer ≠ 1 ∧
      ∃ challengeEffect nonce,
        randomizerEffects.derive_randomizer challengeEffect nonce
            (alloc.vec.Vec.deref input.randomizer_message) =
          .ok (.Ok (some randomizer), finalRandomizerEffect) ∧
        CombinedChecks.run effects tippPairing ppeEffect
            (installRandomizer input.combined randomizer)
            effect tipp_pairing ppe_pairing =
          .ok (.Ok {
            checks := (true, true)
            tipp_mipp_effect := finalEffect
          }) := by
  classical
  letI := Classical.decEq F
  generalize hresult :
      (.ok (.Ok {
        randomizer := randomizer
        checks := (true, true)
        accepted := true
        randomizer_effect := finalRandomizerEffect
        tipp_mipp_effect := finalEffect
      }) :
        Result (core.result.Result
          (applications.groth16_aggregation.AggregateAdapterCoreOutput
            F RFX FX)
          (applications.groth16_aggregation.AggregateAdapterCoreError E))) =
        result at execution
  revert hresult
  induction execution with
  | @done currentState value hbody =>
      intro hresult
      injection hresult with hvalue
      subst hvalue
      cases hderive :
          randomizerEffects.derive_randomizer currentState.1 currentState.2
            (alloc.vec.Vec.deref input.randomizer_message) with
      | fail error =>
          rw [body_derive_fail randomizerEffects effects tippPairing ppeEffect
            input effect tipp_pairing ppe_pairing hderive] at hbody
          simp at hbody
      | div =>
          rw [body_derive_div randomizerEffects effects tippPairing ppeEffect
            input effect tipp_pairing ppe_pairing hderive] at hbody
          simp at hbody
      | ok derived =>
          rcases derived with ⟨candidateResult, challengeEffect⟩
          cases candidateResult with
          | Err error =>
              rw [body_randomizer_error randomizerEffects effects tippPairing
                ppeEffect input effect tipp_pairing ppe_pairing hderive] at hbody
              simp at hbody
          | Ok candidate =>
              cases candidate with
              | none =>
                  cases hnext :
                      challenge.checked_next_challenge_nonce currentState.2 with
                  | fail error =>
                      unfold body
                        applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
                        at hbody
                      simp only [Prod.fst, Prod.snd] at hbody
                      rw [hderive] at hbody
                      simp [hnext] at hbody
                  | div =>
                      unfold body
                        applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
                        at hbody
                      simp only [Prod.fst, Prod.snd] at hbody
                      rw [hderive] at hbody
                      simp [hnext] at hbody
                  | ok next =>
                      cases next with
                      | none =>
                          unfold body
                            applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
                            at hbody
                          simp only [Prod.fst, Prod.snd] at hbody
                          rw [hderive] at hbody
                          simp [hnext] at hbody
                      | some nextNonce =>
                          rw [body_retry_none randomizerEffects effects
                            tippPairing ppeEffect input effect tipp_pairing
                            ppe_pairing hderive hnext] at hbody
                          simp at hbody
              | some candidate =>
                  by_cases hzero : candidate = 0
                  · subst candidate
                    cases hnext :
                        challenge.checked_next_challenge_nonce currentState.2 with
                    | fail error =>
                        unfold body
                          applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
                          at hbody
                        simp only [Prod.fst, Prod.snd] at hbody
                        rw [hderive] at hbody
                        simp [
                          applications.groth16_aggregation.randomizer_is_admissible,
                          CombinedChecks.partialEq, CombinedChecks.zero,
                          CombinedChecks.one, core.cmp.PartialEq.ne,
                          core.cmp.impls.PartialEqShared.ne, hnext]
                          at hbody
                    | div =>
                        unfold body
                          applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
                          at hbody
                        simp only [Prod.fst, Prod.snd] at hbody
                        rw [hderive] at hbody
                        simp [
                          applications.groth16_aggregation.randomizer_is_admissible,
                          CombinedChecks.partialEq, CombinedChecks.zero,
                          CombinedChecks.one, core.cmp.PartialEq.ne,
                          core.cmp.impls.PartialEqShared.ne, hnext]
                          at hbody
                    | ok next =>
                        cases next with
                        | none =>
                            unfold body
                              applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
                              at hbody
                            simp only [Prod.fst, Prod.snd] at hbody
                            rw [hderive] at hbody
                            simp [
                              applications.groth16_aggregation.randomizer_is_admissible,
                              CombinedChecks.partialEq, CombinedChecks.zero,
                              CombinedChecks.one, core.cmp.PartialEq.ne,
                              core.cmp.impls.PartialEqShared.ne, hnext]
                              at hbody
                        | some nextNonce =>
                            rw [body_retry_zero randomizerEffects effects
                              tippPairing ppeEffect input effect tipp_pairing
                              ppe_pairing hderive hnext] at hbody
                            simp at hbody
                  · by_cases hone : candidate = 1
                    · subst candidate
                      cases hnext :
                          challenge.checked_next_challenge_nonce currentState.2 with
                      | fail error =>
                          unfold body
                            applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
                            at hbody
                          simp only [Prod.fst, Prod.snd] at hbody
                          rw [hderive] at hbody
                          simp [
                            applications.groth16_aggregation.randomizer_is_admissible,
                            CombinedChecks.partialEq, CombinedChecks.zero,
                            CombinedChecks.one, core.cmp.PartialEq.ne,
                            core.cmp.impls.PartialEqShared.ne, hnext]
                            at hbody
                      | div =>
                          unfold body
                            applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
                            at hbody
                          simp only [Prod.fst, Prod.snd] at hbody
                          rw [hderive] at hbody
                          simp [
                            applications.groth16_aggregation.randomizer_is_admissible,
                            CombinedChecks.partialEq, CombinedChecks.zero,
                            CombinedChecks.one, core.cmp.PartialEq.ne,
                            core.cmp.impls.PartialEqShared.ne, hnext]
                            at hbody
                      | ok next =>
                          cases next with
                          | none =>
                              unfold body
                                applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop.body
                                at hbody
                              simp only [Prod.fst, Prod.snd] at hbody
                              rw [hderive] at hbody
                              simp [
                                applications.groth16_aggregation.randomizer_is_admissible,
                                CombinedChecks.partialEq, CombinedChecks.zero,
                                CombinedChecks.one, core.cmp.PartialEq.ne,
                                core.cmp.impls.PartialEqShared.ne, hnext]
                                at hbody
                          | some nextNonce =>
                              rw [body_retry_one randomizerEffects effects
                                tippPairing ppeEffect input effect tipp_pairing
                                ppe_pairing hderive hnext] at hbody
                              simp at hbody
                    · cases hcombined :
                        CombinedChecks.run effects tippPairing ppeEffect
                          (installRandomizer input.combined candidate)
                          effect tipp_pairing ppe_pairing with
                      | fail error =>
                          rw [body_combined_fail randomizerEffects effects
                            tippPairing ppeEffect input effect tipp_pairing
                            ppe_pairing hderive hzero hone hcombined] at hbody
                          simp at hbody
                      | div =>
                          rw [body_combined_div randomizerEffects effects
                            tippPairing ppeEffect input effect tipp_pairing
                            ppe_pairing hderive hzero hone hcombined] at hbody
                          simp at hbody
                      | ok combinedResult =>
                          rw [body_combined randomizerEffects effects tippPairing
                            ppeEffect input effect tipp_pairing ppe_pairing
                            hderive hzero hone hcombined] at hbody
                          cases combinedResult with
                          | Err error => simp at hbody
                          | Ok output =>
                              rcases output with ⟨checks, nextEffect⟩
                              rcases checks with ⟨left, right⟩
                              cases left with
                              | false => simp at hbody
                              | true =>
                                  cases right with
                                  | false => simp at hbody
                                  | true =>
                                      rcases hbody with ⟨rfl, rfl, rfl⟩
                                      exact ⟨hzero, hone,
                                        ⟨currentState.1, currentState.2,
                                          hderive, hcombined⟩⟩
  | next _ _ ih =>
      intro hresult
      exact ih hresult
  | fail h =>
      intro hresult
      simp at hresult
  | div h =>
      intro hresult
      simp at hresult

/-- Acceptance by the extracted production adapter derives the exact accepted
randomizer execution and the exact combined-core execution. No delegation,
preflight, or operational premise is supplied by the caller. -/
theorem accepted_path
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (randomizerEffect finalRandomizerEffect : RFX)
    (effect finalEffect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (randomizer : F)
    (haccept :
      run randomizerEffects effects tippPairing ppeEffect input
          randomizerEffect effect tipp_pairing ppe_pairing =
        .ok (.Ok {
          randomizer := randomizer
          checks := (true, true)
          accepted := true
          randomizer_effect := finalRandomizerEffect
          tipp_mipp_effect := finalEffect
        })) :
    randomizer ≠ 0 ∧ randomizer ≠ 1 ∧
      ∃ challengeEffect nonce,
        randomizerEffects.derive_randomizer challengeEffect nonce
            (alloc.vec.Vec.deref input.randomizer_message) =
          .ok (.Ok (some randomizer), finalRandomizerEffect) ∧
        CombinedChecks.run effects tippPairing ppeEffect
            (installRandomizer input.combined randomizer)
            effect tipp_pairing ppe_pairing =
          .ok (.Ok {
            checks := (true, true)
            tipp_mipp_effect := finalEffect
          }) := by
  unfold run
    applications.groth16_aggregation.verify_aggregate_adapter_core
    applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce
    applications.groth16_aggregation.verify_aggregate_adapter_core_from_nonce_loop
    at haccept
  exact acceptedCall_of_loopResult randomizerEffects effects tippPairing
    ppeEffect input effect tipp_pairing ppe_pairing
    (loopResult_of_eq (by simp) haccept)

/-- The concrete randomizer call retained by an accepted extracted adapter
run. Unlike a transcript-only contract, this record exposes the actual effect
state, Rust `u64` nonce, message slice, decoded candidate, and final effect
returned by `AggregateRandomizerEffect.derive_randomizer`. -/
structure AcceptedRandomizerCall
    {F E RFX : Type}
    [Zero F] [One F]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (message : Slice UInt8) (randomizer : F)
    (finalRandomizerEffect : RFX) : Type where
  challengeEffect : RFX
  nonce : U64
  randomizer_nonzero : randomizer ≠ 0
  randomizer_not_one : randomizer ≠ 1
  derive :
    randomizerEffects.derive_randomizer challengeEffect nonce message =
      .ok (.Ok (some randomizer), finalRandomizerEffect)

/-- Acceptance projects the successful randomizer call, including its exact
nonce, directly from the extracted nonce-loop execution. The combined-check
call is returned separately so neither result is smuggled into the primitive
postcondition. -/
theorem accepted_randomizer_call
    {F G1 G2 G2Prepared GT E RFX FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E)
    (effects : applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : applications.groth16_aggregation.AggregateAdapterCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (randomizerEffect finalRandomizerEffect : RFX)
    (effect finalEffect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (randomizer : F)
    (haccept :
      run randomizerEffects effects tippPairing ppeEffect input
          randomizerEffect effect tipp_pairing ppe_pairing =
        .ok (.Ok {
          randomizer := randomizer
          checks := (true, true)
          accepted := true
          randomizer_effect := finalRandomizerEffect
          tipp_mipp_effect := finalEffect
        })) :
    ∃ call : AcceptedRandomizerCall randomizerEffects
        (alloc.vec.Vec.deref input.randomizer_message)
        randomizer finalRandomizerEffect,
      CombinedChecks.run effects tippPairing ppeEffect
          (installRandomizer input.combined randomizer)
          effect tipp_pairing ppe_pairing =
        .ok (.Ok {
          checks := (true, true)
          tipp_mipp_effect := finalEffect
        }) := by
  rcases accepted_path randomizerEffects effects tippPairing ppeEffect input
      randomizerEffect finalRandomizerEffect effect finalEffect tipp_pairing
      ppe_pairing randomizer haccept with
    ⟨hnonzero, hnotone, challengeEffect, nonce, hderive, hcombined⟩
  exact ⟨{
    challengeEffect := challengeEffect
    nonce := nonce
    randomizer_nonzero := hnonzero
    randomizer_not_one := hnotone
    derive := hderive
  }, hcombined⟩

/-- Every nonce exposed by the extracted adapter is inside the exact Rust
`u64` domain. The `u64::MAX` value itself remains eligible for the successful
call; only attempting to advance past it is exhaustion. -/
theorem AcceptedRandomizerCall.nonce_lt_u64Base
    {F E RFX : Type}
    [Zero F] [One F]
    {randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect RFX F E}
    {message : Slice UInt8} {randomizer : F}
    {finalRandomizerEffect : RFX}
    (call : AcceptedRandomizerCall randomizerEffects message randomizer
      finalRandomizerEffect) :
    call.nonce.val < MacCampaign.u64Base :=
  call.nonce.isLt

#print axioms accepted_path
#print axioms accepted_randomizer_call
#print axioms AcceptedRandomizerCall.nonce_lt_u64Base
#print axioms aggregate_adapter_core_input_from_parts_exact
#print axioms combined_checks_core_input_from_parts_exact
#print axioms tipp_mipp_core_input_from_parts_exact

end

end Ipp.Extracted.AggregateAdapter
