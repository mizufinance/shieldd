use decaf377::Fr;
use decaf377_rdsa::{SigningKey, SpendAuth, VerificationKey, VerificationKeyBytes};
use ed25519_consensus::SigningKey as Ed25519SigningKey;
use ibc_proto::ics23::CommitmentProof;
use ibc_types::core::{
    channel::{msgs::MsgRecvPacket, packet::Sequence, ChannelId, Packet, PortId},
    client::Height,
    commitment::MerkleProof,
};
use ibc_types::timestamp::Timestamp;
use proptest::prelude::*;
use proptest::strategy::ValueTree;
use proptest::test_runner::TestRunner;
use rand::{rngs::StdRng, SeedableRng};
use rand_core::{CryptoRng, Error as RandError, RngCore};
use shieldd_sdk_asset::{asset::Id, Value, BASE_ASSET_DENOM};
use shieldd_sdk_fee::Fee;
use shieldd_sdk_governance::{
    Proposal, ProposalPayload, ProposalSubmit, ProposalSubmitBody, ValidatorVote,
    ValidatorVoteBody, ValidatorVoteReason, Vote,
};
use shieldd_sdk_ibc::IbcRelay;
use shieldd_sdk_keys::keys::{Bip44Path, SeedPhrase, SpendKey};
use shieldd_sdk_keys::test_keys::SEED_PHRASE;
use shieldd_sdk_keys::{Address, FullViewingKey};
use shieldd_sdk_num::Amount;
use shieldd_sdk_proto::DomainType;
use shieldd_sdk_shielded_pool::{
    Ics20Withdrawal, Note, NoteReshapeFamilyId, NoteReshapePlan, ShieldedIcs20WithdrawalFamilyId,
    ShieldedIcs20WithdrawalPlan, ShieldedInputPlan, ShieldedOutputPlan, TransferPlan,
};
use shieldd_sdk_transaction::{
    check_transaction_plan_enabled, ActionPlan, TransactionParameters, TransactionPlan,
};
use shieldd_sdk_validator::{validator, validator::Definition, GovernanceKey, IdentityKey};
use std::io::Write;
use std::str::FromStr;
use std::{fs::File, io::Read};
use tendermint;

thread_local! {
    static VECTOR_RNG: std::cell::RefCell<StdRng> = std::cell::RefCell::new(
        StdRng::seed_from_u64(0x7368_6965_6c64_645f),
    );
}

fn with_vector_rng<T>(f: impl FnOnce(&mut StdRng) -> T) -> T {
    VECTOR_RNG.with(|rng| f(&mut rng.borrow_mut()))
}

struct OsRng;

impl RngCore for OsRng {
    fn next_u32(&mut self) -> u32 {
        with_vector_rng(|rng| rng.next_u32())
    }

    fn next_u64(&mut self) -> u64 {
        with_vector_rng(|rng| rng.next_u64())
    }

    fn fill_bytes(&mut self, destination: &mut [u8]) {
        with_vector_rng(|rng| rng.fill_bytes(destination));
    }

    fn try_fill_bytes(&mut self, destination: &mut [u8]) -> Result<(), RandError> {
        self.fill_bytes(destination);
        Ok(())
    }
}

impl CryptoRng for OsRng {}

fn amount_strategy() -> impl Strategy<Value = Amount> {
    let inner_uint_range = 0u128..1_000_000_000_000_000_000u128;
    inner_uint_range.prop_map(|uint| Amount::from_le_bytes(uint.to_le_bytes()))
}

fn asset_id_strategy() -> impl Strategy<Value = Id> {
    Just(*shieldd_sdk_asset::BASE_ASSET_ID)
}

fn value_strategy() -> impl Strategy<Value = shieldd_sdk_asset::Value> {
    (asset_id_strategy(), amount_strategy())
        .prop_map(|(asset_id, amount)| shieldd_sdk_asset::Value { amount, asset_id })
}

fn address_strategy() -> impl Strategy<Value = Address> {
    // normally we would use address::dummy, but this seems to not work properly
    // for some reason (invalid key errors on computing effecthash.)
    prop::strategy::LazyJust::new(|| {
        let seed_phrase = with_vector_rng(|rng| SeedPhrase::generate(rng));
        let sk = SpendKey::from_seed_phrase_bip44(seed_phrase, &Bip44Path::new(0));
        let addr = sk.full_viewing_key().payment_address(0u32.into());

        addr
    })
}

fn note_strategy(addr: Address) -> impl Strategy<Value = Note> {
    value_strategy().prop_map(move |value| with_vector_rng(|rng| Note::generate(rng, &addr, value)))
}

fn spend_plan_strategy(fvk: &FullViewingKey) -> impl Strategy<Value = ShieldedInputPlan> {
    let tct_strategy = any::<shieldd_sdk_tct::Position>();
    let note_strategy = note_strategy(fvk.incoming().payment_address(0u32.into()));

    (tct_strategy, note_strategy).prop_map(|(tct_pos, note)| {
        with_vector_rng(|rng| ShieldedInputPlan::new(rng, note, tct_pos))
    })
}

fn identity_key_strategy() -> impl Strategy<Value = IdentityKey> {
    let rand_bytes = prop::array::uniform32(any::<u8>());

    rand_bytes.prop_map(|vk_bytes| IdentityKey(VerificationKeyBytes::<SpendAuth>::from(vk_bytes)))
}

fn signing_key_strategy() -> impl Strategy<Value = SigningKey<SpendAuth>> {
    prop::strategy::LazyJust::new(|| with_vector_rng(|rng| SigningKey::<SpendAuth>::new(rng)))
}

fn consensus_secret_key_strategy() -> impl Strategy<Value = Ed25519SigningKey> {
    prop::strategy::LazyJust::new(|| with_vector_rng(|rng| Ed25519SigningKey::new(rng)))
}

fn validator_strategy() -> impl Strategy<Value = (validator::Validator, SigningKey<SpendAuth>)> {
    (signing_key_strategy(), consensus_secret_key_strategy()).prop_map(
        move |(new_validator_id_sk, new_validator_consensus_sk)| {
            let new_validator_id = IdentityKey(VerificationKey::from(&new_validator_id_sk).into());
            let new_validator_consensus = new_validator_consensus_sk.verification_key();
            (
                validator::Validator {
                    identity_key: new_validator_id.clone(),
                    consensus_key: tendermint::PublicKey::from_raw_ed25519(
                        &new_validator_consensus.to_bytes(),
                    )
                    .expect("consensus key is valid"),
                    governance_key: GovernanceKey(new_validator_id_sk.into()),
                    enabled: true,
                    sequence_number: 0,
                    name: "test validator".to_string(),
                    website: String::default(),
                    description: String::default(),
                },
                new_validator_id_sk,
            )
        },
    )
}

fn validator_definition_strategy() -> impl Strategy<Value = Definition> {
    (validator_strategy()).prop_map(|(new_validator, new_validator_id_sk)| {
        let bytes = new_validator.encode_to_vec();
        let auth_sig = new_validator_id_sk.sign(OsRng, &bytes);
        Definition {
            validator: new_validator,
            auth_sig,
        }
    })
}

fn sequence_strategy() -> impl Strategy<Value = Sequence> {
    (4001..2000000000u64).prop_map(Sequence)
}

fn ibc_action_strategy() -> impl Strategy<Value = IbcRelay> {
    (
        sequence_strategy(),
        0..1000000000u64,
        0..1000000000u64,
        address_strategy(),
    )
        .prop_map(|(sequence, revision_number, revision_height, src)| {
            IbcRelay::RecvPacket(MsgRecvPacket {
                packet: Packet {
                    sequence,
                    port_on_a: PortId::default(),
                    chan_on_a: ChannelId::default(),
                    port_on_b: PortId::default(),
                    chan_on_b: ChannelId::default(),
                    data: vec![0u8; 100],
                    timeout_height_on_b: ibc_types::core::channel::TimeoutHeight::At(
                        Height::new(revision_number, revision_height).expect("test value"),
                    ),
                    timeout_timestamp_on_b: Timestamp::now(),
                },
                // this can't be empty
                proof_commitment_on_a: MerkleProof {
                    proofs: vec![CommitmentProof::default()],
                },
                proof_height_on_a: Height::new(revision_number, revision_height)
                    .expect("test value"),
                signer: src.to_string(),
            })
        })
}

fn proposal_strategy() -> impl Strategy<Value = Proposal> {
    (
        prop::string::string_regex(r"[a-z]+-[0-9]+").unwrap(),
        prop::string::string_regex(r"[a-z]+-[0-9]+").unwrap(),
    )
        .prop_map(|(title, description)| Proposal {
            id: 0u64,
            title,
            description,
            payload: ProposalPayload::Signaling { commit: None },
        })
}

fn proposal_id_strategy() -> impl Strategy<Value = u64> {
    0u64..1000000000u64
}

fn proposal_submit_strategy() -> impl Strategy<Value = ProposalSubmit> {
    (
        proposal_strategy(),
        identity_key_strategy(),
        signing_key_strategy(),
    )
        .prop_map(|(proposal, proposer, signing_key)| {
            let governance_key = GovernanceKey(signing_key.into());
            let body = ProposalSubmitBody {
                proposal,
                proposer,
                governance_key,
            };
            let auth_sig = signing_key.sign(OsRng, &body.encode_to_vec());
            ProposalSubmit { body, auth_sig }
        })
}

fn vote_strategy() -> impl Strategy<Value = Vote> {
    prop_oneof![Just(Vote::Yes), Just(Vote::No), Just(Vote::Abstain),]
}

fn validator_vote_strategy() -> impl Strategy<Value = ValidatorVote> {
    (
        proposal_id_strategy(),
        vote_strategy(),
        identity_key_strategy(),
        signing_key_strategy(),
        prop::string::string_regex(r"[a-zA-Z0-9]+").unwrap(),
    )
        .prop_map(|(proposal, vote, identity_key, signing_key, reason)| {
            let governance_key = GovernanceKey(signing_key.into());
            let body = ValidatorVoteBody {
                proposal,
                vote,
                identity_key,
                governance_key,
                reason: ValidatorVoteReason(reason),
            };

            let bytes = body.encode_to_vec();
            let auth_sig = signing_key.sign(OsRng, &bytes);
            ValidatorVote { body, auth_sig }
        })
}

fn shielded_ics20_withdrawal_plan_strategy(
    fvk: &FullViewingKey,
) -> impl Strategy<Value = ShieldedIcs20WithdrawalPlan> {
    let note_strategy = note_strategy(fvk.incoming().payment_address(0u32.into()));
    let position_strategy = any::<shieldd_sdk_tct::Position>();

    (
        note_strategy,
        position_strategy,
        address_strategy(),
        0..1000000000u64,
        0..1000000000u64,
    )
        .prop_map(
            |(note, position, return_address, revision_number, revision_height)| {
                let withdrawal = Ics20Withdrawal {
                    amount: note.amount(),
                    denom: BASE_ASSET_DENOM.clone(),
                    destination_chain_address: return_address.to_string(),
                    return_address: return_address.clone(),
                    timeout_height: Height::new(revision_number, revision_height)
                        .expect("test value"),
                    timeout_time: 0u64,
                    source_channel: ChannelId::default(),
                    use_compat_address: false,
                    use_transparent_address: false,
                    ics20_memo: String::default(),
                };
                ShieldedIcs20WithdrawalPlan::new(
                    ShieldedIcs20WithdrawalFamilyId::Canonical,
                    vec![ShieldedInputPlan::new(&mut OsRng, note, position)],
                    None,
                    withdrawal,
                    Fr::rand(&mut OsRng),
                )
                .expect("valid shielded ICS-20 withdrawal plan")
            },
        )
}

fn transfer_plan_strategy(fvk: &FullViewingKey) -> impl Strategy<Value = TransferPlan> {
    (
        spend_plan_strategy(fvk),
        amount_strategy(),
        address_strategy(),
    )
        .prop_map(|(spend, amount, dest_address)| {
            let mut output = ShieldedOutputPlan::new(
                &mut OsRng,
                Value {
                    amount,
                    asset_id: spend.note.asset_id(),
                },
                dest_address,
            );
            output.asset_anchor = spend.asset_anchor;
            output.asset_path = spend.asset_path.clone();
            output.asset_position = spend.asset_position;
            output.asset_indexed_leaf = spend.asset_indexed_leaf.clone();
            output.compliance_anchor = spend.compliance_anchor;
            output.compliance_path = spend.compliance_path.clone();
            output.compliance_position = spend.compliance_position;
            output.tx_blinding_nonce = spend.tx_blinding_nonce;
            output.target_timestamp = spend.target_timestamp;
            output.is_regulated = spend.is_regulated;
            output.asset_policy = spend.asset_policy.clone();

            TransferPlan::from_spend_output(spend, output, Fr::rand(&mut OsRng))
                .expect("valid transfer plan")
        })
}

fn note_reshape_two_to_one_plan_strategy(
    fvk: &FullViewingKey,
) -> impl Strategy<Value = NoteReshapePlan> {
    let addr = fvk.incoming().payment_address(0u32.into());
    (
        note_strategy(addr.clone()),
        any::<shieldd_sdk_tct::Position>(),
        note_strategy(addr.clone()),
        any::<shieldd_sdk_tct::Position>(),
    )
        .prop_map(move |(note_1, pos_1, note_2, pos_2)| {
            let total_amount = note_1.amount() + note_2.amount();
            let output = ShieldedOutputPlan::new(
                &mut OsRng,
                shieldd_sdk_asset::Value {
                    amount: total_amount,
                    asset_id: note_1.asset_id(),
                },
                addr.clone(),
            );
            NoteReshapePlan::new(
                NoteReshapeFamilyId::TwoByOne,
                vec![
                    ShieldedInputPlan::new(&mut OsRng, note_1, pos_1).into(),
                    ShieldedInputPlan::new(&mut OsRng, note_2, pos_2).into(),
                ],
                vec![output.into()],
                Fr::rand(&mut OsRng),
            )
            .expect("valid note reshape plan")
        })
}

fn note_reshape_one_to_eight_plan_strategy(
    fvk: &FullViewingKey,
) -> impl Strategy<Value = NoteReshapePlan> {
    let addr = fvk.incoming().payment_address(0u32.into());
    (
        note_strategy(addr.clone()),
        any::<shieldd_sdk_tct::Position>(),
    )
        .prop_map(move |(note, position)| {
            let eighth = note.amount() / Amount::from(8u64);
            let mut outputs: Vec<ShieldedOutputPlan> = (0..7)
                .map(|_| {
                    ShieldedOutputPlan::new(
                        &mut OsRng,
                        shieldd_sdk_asset::Value {
                            amount: eighth,
                            asset_id: note.asset_id(),
                        },
                        addr.clone(),
                    )
                })
                .collect();
            outputs.push(ShieldedOutputPlan::new(
                &mut OsRng,
                shieldd_sdk_asset::Value {
                    amount: note.amount() - eighth * Amount::from(7u64),
                    asset_id: note.asset_id(),
                },
                addr.clone(),
            ));

            NoteReshapePlan::new(
                NoteReshapeFamilyId::OneByEight,
                vec![ShieldedInputPlan::new(&mut OsRng, note, position).into()],
                outputs,
                Fr::rand(&mut OsRng),
            )
            .expect("valid note reshape plan")
        })
}

fn action_plan_strategy(fvk: &FullViewingKey) -> impl Strategy<Value = ActionPlan> {
    prop_oneof![
        transfer_plan_strategy(fvk).prop_map(ActionPlan::Transfer),
        note_reshape_two_to_one_plan_strategy(fvk).prop_map(ActionPlan::NoteReshape),
        note_reshape_one_to_eight_plan_strategy(fvk).prop_map(ActionPlan::NoteReshape),
        validator_definition_strategy().prop_map(ActionPlan::ValidatorDefinition),
        proposal_submit_strategy().prop_map(ActionPlan::ProposalSubmit),
        ibc_action_strategy().prop_map(ActionPlan::IbcAction),
        validator_vote_strategy().prop_map(ActionPlan::ValidatorVote),
        shielded_ics20_withdrawal_plan_strategy(fvk).prop_map(ActionPlan::ShieldedIcs20Withdrawal),
    ]
}

fn actions_vec_strategy(fvk: &FullViewingKey) -> impl Strategy<Value = Vec<ActionPlan>> {
    prop::collection::vec(action_plan_strategy(fvk), 2..5)
}

fn transaction_parameters_strategy() -> impl Strategy<Value = TransactionParameters> {
    let expiry_height = 0u64..10000000000u64;
    let chain_id = prop::string::string_regex(r"[a-z]+-[0-9]+").unwrap();
    let fee = value_strategy().prop_map(|fee_value| Fee(fee_value));

    (expiry_height, chain_id, fee).prop_map(|(expiry_height, chain_id, fee)| {
        TransactionParameters {
            expiry_height,
            chain_id,
            fee,
        }
    })
}

fn transaction_plan_strategy(fvk: &FullViewingKey) -> impl Strategy<Value = TransactionPlan> {
    (actions_vec_strategy(fvk), transaction_parameters_strategy()).prop_map(|(actions, params)| {
        TransactionPlan {
            actions,
            transaction_parameters: params,
            fee_funding: None,
            memo: None,
        }
    })
}

#[test]
#[ignore]
fn generate_transaction_signing_test_vectors() {
    // Run this to regenerate the `EffectHash` test vectors. Ignored by default.
    let mut runner = TestRunner::deterministic();
    let test_vectors_dir = "tests/signing_test_vectors";
    std::fs::create_dir_all(test_vectors_dir).expect("failed to create test vectors dir");

    let mut i = 0;
    while i < 100 {
        let seed_phrase = SeedPhrase::from_str(SEED_PHRASE).expect("test seed phrase is valid");
        let sk = SpendKey::from_seed_phrase_bip44(seed_phrase, &Bip44Path::new(0));
        let fvk = sk.full_viewing_key();
        let value_tree = transaction_plan_strategy(fvk)
            .new_tree(&mut runner)
            .expect("Failed to create new tree");
        let transaction_plan = value_tree.current();

        if check_transaction_plan_enabled(&transaction_plan).is_err() {
            continue;
        }

        let json_plan = serde_json::to_string_pretty(&transaction_plan)
            .expect("should be able to json tx plan");

        let transaction_plan_encoded = transaction_plan.encode_to_vec();
        let effect_hash_hex = hex::encode(
            transaction_plan
                .effect_hash(fvk)
                .expect("should be able to compute effect hash")
                .0,
        );

        let json_file_path = format!("{}/transaction_plan_{}.json", test_vectors_dir, i);
        let proto_file_path = format!("{}/transaction_plan_{}.proto", test_vectors_dir, i);
        let hash_file_path = format!("{}/effect_hash_{}.txt", test_vectors_dir, i);

        let mut json_file = File::create(&json_file_path).expect("Failed to create JSON file");
        json_file
            .write_all(json_plan.as_bytes())
            .expect("Failed to write JSON file");
        let mut proto_file =
            File::create(&proto_file_path).expect("Failed to create Protobuf file");
        proto_file
            .write_all(&transaction_plan_encoded)
            .expect("Failed to write Protobuf file");

        // Write effect hash
        let mut hash_file = File::create(&hash_file_path).expect("Failed to create hash file");
        hash_file
            .write_all(effect_hash_hex.as_bytes())
            .expect("Failed to write hash file");

        i += 1;
    }
}

#[test]
fn effect_hash_test_vectors() {
    // This parses the transaction plan, computes the effect hash, and verifies that it
    // matches the expected effect hash.
    let test_vectors_dir = "tests/signing_test_vectors";
    let seed_phrase = SeedPhrase::from_str(SEED_PHRASE).expect("test seed phrase is valid");
    let sk = SpendKey::from_seed_phrase_bip44(seed_phrase, &Bip44Path::new(0));
    let fvk = sk.full_viewing_key();

    let mut supported_vectors = 0;
    for i in 0..100 {
        let json_file_path = format!("{}/transaction_plan_{}.json", test_vectors_dir, i);
        let json_plan: TransactionPlan = serde_json::from_str(
            &std::fs::read_to_string(&json_file_path)
                .expect("should be able to read JSON transaction plan"),
        )
        .expect("JSON transaction plan should match the current action schema");
        let proto_file_path = format!("{}/transaction_plan_{}.proto", test_vectors_dir, i);
        let mut proto_file = File::open(&proto_file_path).expect("Failed to open Protobuf file");
        let mut transaction_plan_encoded = Vec::<u8>::new();
        proto_file
            .read_to_end(&mut transaction_plan_encoded)
            .expect("Failed to read Protobuf file");
        let Ok(transaction_plan) = TransactionPlan::decode(&transaction_plan_encoded[..]) else {
            continue;
        };
        assert_eq!(
            json_plan.encode_to_vec(),
            transaction_plan_encoded,
            "JSON/protobuf vector {i} drifted"
        );

        if check_transaction_plan_enabled(&transaction_plan).is_err() {
            continue;
        }

        let effect_hash_hex = hex::encode(
            transaction_plan
                .effect_hash(fvk)
                .expect("should be able to compute effect hash")
                .0,
        );

        let hash_file_path = format!("{}/effect_hash_{}.txt", test_vectors_dir, i);
        let expected_effect_hash = std::fs::read_to_string(&hash_file_path)
            .expect("should be able to read expected effect hash")
            .trim()
            .to_owned();
        assert_eq!(effect_hash_hex, expected_effect_hash, "vector {i}");
        supported_vectors += 1;
    }

    assert!(
        supported_vectors > 0,
        "expected at least one enabled signing test vector"
    );
}
