//! Canonical selection vectors with synthetic acceptance and local checking keys, never live PET.
use ark_serialize::CanonicalSerialize;
use decaf377::{Element, Fq, Fr};
use rand::{rngs::StdRng, SeedableRng};
use shieldd_sdk_asset::{asset, Balance, Value};
use shieldd_sdk_compliance::{encrypt_transfer, ownership, AuditKeys, TransferComplianceMetadata};
use shieldd_sdk_disclosure::*;
use shieldd_sdk_keys::{
    keys::{SpendKey, SpendKeyBytes},
    symmetric::{OvkWrappedKey, WrappedMemoKey},
};
use shieldd_sdk_proto::DomainType;
use shieldd_sdk_shielded_pool as pool;
use shieldd_sdk_transaction::Transaction;

fn address(seed: u8) -> shieldd_sdk_keys::Address {
    SpendKey::try_from(SpendKeyBytes([seed; 32]))
        .unwrap()
        .full_viewing_key()
        .payment_address(0u32.into())
}

fn transaction(flagged: bool, self_transfer: bool, epoch: u64) -> Transaction {
    let metadata = TransferComplianceMetadata::from_identifiers(
        "ring",
        "policy",
        "transaction",
        "read",
        10,
        epoch,
        Fq::from(1u64),
        Fq::from(2u64),
        Fq::from(3u64),
        Fq::from(4u64),
    );
    let keys = AuditKeys {
        epoch: 7,
        amount: Element::GENERATOR * Fr::from(101u64),
        sender: Element::GENERATOR * Fr::from(102u64),
        receiver: Element::GENERATOR * Fr::from(103u64),
        checking: Element::GENERATOR * Fr::from(104u64),
    };
    let encrypted = encrypt_transfer(
        StdRng::seed_from_u64(17),
        &keys,
        &(Element::GENERATOR * Fr::from(37u64)),
        &address(if self_transfer { 7 } else { 8 }),
        &address(7),
        Value {
            amount: 500u64.into(),
            asset_id: asset::Id(Fq::from(42u64)),
        },
        flagged,
        Fq::from(5u64),
        metadata.sender_core_salt().unwrap(),
        metadata.output_core_salt().unwrap(),
    )
    .unwrap();
    let output = pool::TransferOutputBody {
        note_payload: pool::NotePayload {
            note_commitment: shieldd_sdk_tct::StateCommitment(Fq::from(5u64)),
            ephemeral_key: decaf377_ka::Public(Element::GENERATOR.vartime_compress().0),
            encrypted_note: pool::NoteCiphertext([7; pool::note::NOTE_CIPHERTEXT_BYTES]),
            recovery_capsule: Some(pool::RecoveryCapsule {
                epk: Element::GENERATOR,
                c2: Fq::from(2u64),
                salt: Fq::from(3u64),
                key_confirmation: Fq::from(4u64),
                encrypted_amount: Fq::from(5u64),
                encrypted_note_blinding: Fq::from(6u64),
            }),
        },
        wrapped_memo_key: WrappedMemoKey([8; 48]),
        ovk_wrapped_key: OvkWrappedKey([9; 48]),
        compliance_ciphertext: encrypted.ciphertext.to_bytes().to_vec(),
        compliance_metadata: metadata.to_bytes().unwrap(),
    };
    let input = pool::TransferInputBody {
        nullifier: shieldd_sdk_sct::Nullifier(Fq::from(3u64)),
        rk: decaf377_rdsa::VerificationKey::from(decaf377_rdsa::SigningKey::<
            decaf377_rdsa::SpendAuth,
        >::from(Fr::from(4u64))),
        encrypted_backref: pool::EncryptedBackref::try_from([1; 48]).unwrap(),
        compliance_ciphertext: vec![],
        history_required: false,
    };
    let mut proof = Vec::new();
    ark_groth16::Proof::<decaf377::Bls12_377>::default()
        .serialize_compressed(&mut proof)
        .unwrap();
    let transfer = pool::Transfer {
        body: pool::TransferBody {
            anchor: shieldd_sdk_tct::Tree::default().root(),
            balance_commitment: Balance::default().commit(Fr::from(2u64)),
            inputs: vec![input.clone(), input],
            outputs: vec![output.clone(), output],
            target_timestamp: 10,
            compliance_anchor: shieldd_sdk_tct::StateCommitment(Fq::from(11u64)),
            asset_anchor: shieldd_sdk_tct::StateCommitment(Fq::from(12u64)),
            routing: Default::default(),
            routing_parameter_set_id: Fq::from(0u64),
            volume_accumulator: pool::VolumeAccumulatorPayload::canonical_fee_funding(),
            proof_context: pool::TransferProofContext::Ordinary,
        },
        auth_sigs: vec![[17; 64].into(), [0; 64].into()],
        proof: pool::TransferProof { inner: proof },
    };
    Transaction {
        transaction_body: shieldd_sdk_transaction::TransactionBody {
            actions: vec![shieldd_sdk_transaction::Action::Transfer(transfer)],
            transaction_parameters: shieldd_sdk_transaction::TransactionParameters {
                chain_id: "handoff-fixture".into(),
                ..Default::default()
            },
            nullifier_window: Some(shieldd_sdk_sct::nullifier_generation::NullifierWindow {
                protocol_version: shieldd_sdk_sct::nullifier_generation::PROTOCOL_VERSION,
                current_generation: 0,
                recent_position_floor: 0,
                archived_generation_count: 0,
                archived_history_head: shieldd_sdk_sct::nullifier_generation::empty_history_head(),
            }),
            ..Default::default()
        },
        ..Default::default()
    }
}

#[test]
fn canonical_handoff_vectors() {
    let mut vectors = Vec::new();
    for (name, flagged, self_transfer) in [
        ("payment", false, false),
        ("self-transfer", false, true),
        ("flagged", true, false),
    ] {
        let tx = transaction(flagged, self_transfer, 7);
        let block = AcceptedBlock {
            height: 9,
            transactions: vec![tx.clone()],
        };
        for tier in [
            TransferTier::SenderCore,
            TransferTier::SenderExt,
            TransferTier::OutputCore,
            TransferTier::OutputExt,
        ] {
            let sender = matches!(tier, TransferTier::SenderCore | TransferTier::SenderExt);
            for seed in [7, 8, 9] {
                let owner = address(seed);
                let selection = AuditSelection {
                    version: 3,
                    chain_id: "handoff-fixture".into(),
                    reference: OutputRef {
                        transaction_id: tx.id().to_string(),
                        height: 9,
                        action: ActionRef::Body(0),
                        output: 0,
                    },
                    access: AuditAccess::NamedPerson {
                        tier,
                        address: owner.to_string(),
                    },
                    policy: AuditPolicy {
                        ring_id: "ring".into(),
                        policy_id: "policy".into(),
                        resource: "transaction".into(),
                        permission: "read".into(),
                    },
                };
                let accepted =
                    accepted_audit_ciphertext(selection.clone(), "handoff-fixture", &block)
                        .unwrap();
                verify_audit_candidate(&selection, &block, &tx.encode_to_vec()).unwrap();
                let ownership =
                    ownership::OwnershipCiphertext::from_bytes(&accepted.ownership_ciphertext)
                        .unwrap();
                let matches =
                    ownership.c - ownership.r * Fr::from(104u64) == ownership::fingerprint(&owner);
                assert_eq!(matches, seed == if sender || self_transfer { 7 } else { 8 });
                assert_eq!(accepted.identity.field, selection.access.key_field());
                assert_eq!(accepted.identity.epoch, 7);
                for altered in [
                    "ring",
                    "policy",
                    "resource",
                    "permission",
                    "chain",
                    "height",
                    "output",
                ] {
                    let mut invalid = selection.clone();
                    match altered {
                        "ring" => invalid.policy.ring_id.push('x'),
                        "policy" => invalid.policy.policy_id.push('x'),
                        "resource" => invalid.policy.resource.push('x'),
                        "permission" => invalid.policy.permission.push('x'),
                        "chain" => invalid.chain_id.push('x'),
                        "height" => invalid.reference.height += 1,
                        _ => invalid.reference.output = 1,
                    }
                    assert!(accepted_audit_ciphertext(invalid, "handoff-fixture", &block).is_err());
                }
                vectors.push(serde_json::json!({ "name": name, "synthetic_acceptance": true, "live_pet": false,
                    "transaction": hex::encode(tx.encode_to_vec()), "accepted": accepted,
                    "generator": hex::encode(owner.diversified_generator().vartime_compress_to_field().to_bytes()),
                    "transmission": hex::encode(owner.transmission_key().0),
                    "fingerprint": hex::encode(ownership::fingerprint(&owner).vartime_compress_to_field().to_bytes()),
                    "ownership_r": hex::encode(ownership.r.vartime_compress().0), "ownership_c": hex::encode(ownership.c.vartime_compress().0),
                    "synthetic_checking_secret": hex::encode(Fr::from(104u64).to_bytes()), "local_key_match": matches,
                    "issuer_only": flagged, "rejected_changes": ["chain", "height", "output", "ring", "policy", "resource", "permission"],
                }));
            }
        }
    }
    let unregulated = transaction(false, false, 0);
    let mut selection: AuditSelection =
        serde_json::from_value(vectors[0]["accepted"]["selection"].clone()).unwrap();
    selection.reference.transaction_id = unregulated.id().to_string();
    assert!(accepted_audit_ciphertext(
        selection,
        "handoff-fixture",
        &AcceptedBlock {
            height: 9,
            transactions: vec![unregulated]
        }
    )
    .is_err());
    // A changed epoch changes the canonical transaction ID and selected key identity.
    assert_ne!(
        transaction(false, false, 7).id(),
        transaction(false, false, 8).id()
    );
    let path = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
        .join("../../tools/gnark/internal/compliance/handoff_vectors.json");
    let bytes = serde_json::to_vec_pretty(&vectors).unwrap();
    if std::env::var_os("UPDATE_HANDOFF_VECTORS").is_some() {
        std::fs::write(&path, &bytes).unwrap();
    }
    assert_eq!(
        std::fs::read(path).unwrap(),
        bytes,
        "canonical handoff vectors drifted"
    );
}
