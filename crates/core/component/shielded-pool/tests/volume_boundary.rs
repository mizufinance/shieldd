use shieldd_sdk_crypto::Fq;
use shieldd_sdk_keys::test_keys;
use shieldd_sdk_shielded_pool::{
    TransferProofContext, VolumeAccumulatorPlan, VolumeAccumulatorState,
};

#[test]
fn manual_continuation_rejects_invalid_position_before_payload_derivation() {
    let prior = VolumeAccumulatorState {
        subject: Fq::from(3),
        day_start: 86400,
        undisclosed_volume: 9,
        blinding: Fq::from(7),
    };
    let plan = VolumeAccumulatorPlan::Continuation {
        prior_commitment: prior.commitment(),
        prior,
        prior_position: 1u64 << 48,
        successor_volume: 10,
        successor_blinding: Fq::from(11),
    };
    let fvk = &*test_keys::FULL_VIEWING_KEY;
    assert!(plan
        .selected_payload(
            fvk.nullifier_key(),
            fvk.outgoing(),
            Fq::from(13),
            TransferProofContext::Ordinary
        )
        .is_err());
}
