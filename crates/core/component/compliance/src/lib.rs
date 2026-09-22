pub mod enrichment;
pub mod registration;
pub use enrichment::{AssetProofData, BatchComplianceData, ComplianceQuery, UserProofData};

pub mod event;

pub mod audit_log;
pub use audit_log::{
    audit_bytes_commitment, AuditEffect, AuditEffectRecord, AuditLogState, AuditSource,
    WithdrawalKind, AUDIT_LOG_VERSION, MAX_AUDIT_RECORD_BYTES,
};
#[cfg(feature = "component")]
pub use audit_log::{AuditLogRead, AuditLogWrite};

pub mod issuer_keys;
pub use event::{
    EventAssetRegistered, EventComplianceAnchor, EventUserAssetStatusChanged, EventUserRegistered,
};
pub use issuer_keys::{DetectionKey, DETECTION_TIER_BYTES};

pub mod structs;
pub use structs::{
    compliance_nullifier_key_commitment,
    derive_regulated_nullifier_key,
    effective_nullifier_key,
    AssetParams,
    AssetPolicy,
    ComplianceLeaf,
    IbcAssetOrigin,
    IbcRoute,
    MerklePath,
    MerklePathLayer,
    MsgRegisterAsset,
    MsgRegisterUser,
    RingData,
    UserAssetStatus,
    UserAssetStatusAction,
    ADDRESS_BYTES,
    // Wire format constants
    AMOUNT_BYTES,
    ASSET_ID_BYTES,
    C2_BYTES,
    DETECTION_TAG_BYTES,
    EPK_BYTES,
    FQ_BYTES,
    GENERATOR_BYTES,
    KEY_BYTES,
};

pub mod audit_field;
pub mod transfer;
pub use transfer::{
    derive_transfer_salt, encrypt_transfer, TransferComplianceCiphertext,
    TransferCompliancePublicInputs, TransferEncryptionResult, TRANSFER_CIPHERTEXT_FQS,
    TRANSFER_CORE_CIPHERTEXT_FQS, TRANSFER_DETECTION_FQS, TRANSFER_EXT_CIPHERTEXT_FQS,
    TRANSFER_WIRE_BYTES,
};

pub mod dleq_evidence;
pub use dleq_evidence::{fq_to_challenge_scalar, verify_dleq, DleqProof, IssuerDhEvidence};

pub mod withdrawal;
pub use withdrawal::{
    address_components, classify_withdrawal_with_issuer, derive_withdrawal_encryption_material,
    encrypt_withdrawal, encrypt_withdrawal_with_material, withdrawal_encryption_key,
    withdrawal_key_confirmation, WithdrawalComplianceCiphertext, WithdrawalEncryptionResult,
    WITHDRAWAL_ADDRESS_BYTES, WITHDRAWAL_ADDRESS_CIPHERTEXT_FQS, WITHDRAWAL_COMPLIANCE_WIRE_BYTES,
};

pub mod tree;
pub use tree::{QuadTree, DEFAULT_DEPTH, ZERO_HASHES};

pub mod indexed_tree;
pub use indexed_tree::{recompute_root, IndexedLeaf, IndexedMerkleTree, IMT_ZERO_HASHES};

pub mod state_key;

pub mod params;
pub use params::ComplianceParameters;

// Registry requires cnidarium for state access
#[cfg(feature = "component")]
pub mod registry;
#[cfg(feature = "component")]
pub use registry::{
    AssetGrantAdmission, ComplianceRegistryRead, ComplianceRegistryWrite, GenesisAssetAdmission,
    NoteSeizureLifecycle, UserGrantAdmission, UserLeafRecord,
};

#[cfg(feature = "component")]
pub mod component;
#[cfg(feature = "component")]
pub use component::Compliance;

pub mod genesis;
pub use genesis::Content as GenesisContent;

pub mod crypto;
pub use crypto::{
    decrypt_detection_tier, decrypt_tier_bytes, encrypt_tier_bytes, transfer_key_confirmation,
    UNREGULATED_DETECTION, UNREGULATED_RING,
};

pub mod scanning;
pub use scanning::{
    decrypt_core_amount_if_key_matches, decrypt_flagged_withdrawal_sender, decrypt_full_flagged,
    AddressData, FullComplianceData, WithdrawalComplianceData,
};

pub mod refs;
pub use refs::{ActionRef, BlockRef, ComplianceRecordRef, OutputRef, TxRef};

pub mod evidence;
pub use evidence::{
    ComplianceEvidenceCiphertext, ComplianceEvidenceMetadata, ComplianceEvidenceObject,
    EvidenceObjectType, WithdrawalEvidencePublicData,
};

pub mod audit_validation;
pub use audit_validation::{validate_audit_evidence, AuditValidationInput, AuditValidationStatus};

pub mod audit_status;
pub use audit_status::{AuditStatus, DecryptedVia, FlowType};

pub mod audit_records;
pub use audit_records::{
    filter_subject_candidates, AuditDetectedRef, AuditRoutingSelector, AuditScanExport,
    AuditSubjectCandidate, AuditSubjectRegistration, AuditSubjectRole,
};

#[cfg(feature = "scanner")]
pub mod audit;
#[cfg(feature = "scanner")]
pub use audit::{
    decrypt_flagged_rows, export_detected_refs, export_ledger_rows, export_ledger_rows_json,
    export_scan_json, mark_row_audited, record_address_alias, record_evidence_failure,
    scanner_health_json, validate_and_save_evidence_object,
};

mod tx_id;
pub use tx_id::scanner_transaction_id_from_proto;

// Scanner requires tokio and rusqlite for async storage
#[cfg(feature = "scanner")]
pub mod scanner;
#[cfg(feature = "scanner")]
pub use scanner::{
    extract_compliance_ciphertexts, AuditLedgerRow, AuditRowKey, BlockIdentityProvider,
    CandidateEvidence, ComplianceScreener, DetectionEvent, ExtractedComplianceCiphertext,
    InvalidCiphertext, IssuerComplianceWorker, OutputOutcome, ScannedBlock, ScannedOutput,
    ScannerSource, ScannerStore, ScreeningResult, SqliteScannerStore, WorkerHandle,
    MAX_INVALID_CIPHERTEXTS_PER_BLOCK,
};

pub mod decode_object;
pub mod transfer_audit;
pub use decode_object::{TransferComplianceMetadata, TRANSFER_COMPLIANCE_METADATA_BYTES};

/// Create valid IMT non-membership proof for an unregulated asset.
///
/// Returns (asset_anchor, indexed_leaf, merkle_path, position) that satisfy circuit constraints.
/// The asset is proven to be unregulated via non-membership (falls in a gap).
pub fn create_default_imt_proof(
    asset_id: shieldd_sdk_crypto::Fq,
) -> (
    shieldd_sdk_tct::StateCommitment,
    IndexedLeaf,
    MerklePath,
    u64,
) {
    let tree = IndexedMerkleTree::new();
    let (position, indexed_leaf, auth_path) = tree
        .non_membership_proof(asset_id)
        .expect("can generate non-membership proof for any asset");
    let merkle_path = MerklePath::from_auth_path(auth_path);
    let anchor = shieldd_sdk_tct::StateCommitment(tree.root().0);
    (anchor, indexed_leaf, merkle_path, position)
}

/// Create valid user tree (QuadTree) proof for a compliance leaf.
///
/// Returns (compliance_anchor, merkle_path, position) that satisfy circuit constraints.
pub fn default_user_proof(
    user_leaf: &ComplianceLeaf,
) -> (shieldd_sdk_tct::StateCommitment, MerklePath, u64) {
    let mut tree = QuadTree::new();
    let leaf_commitment = user_leaf.commit();
    let position = 0u64;
    tree.update(position, leaf_commitment)
        .expect("can insert leaf");
    let auth_path = tree
        .auth_path(position)
        .expect("can get auth path for inserted leaf");
    let merkle_path = MerklePath::from_auth_path(auth_path);
    let anchor = shieldd_sdk_tct::StateCommitment(tree.root().0);
    (anchor, merkle_path, position)
}

/// Test helpers for compliance tests. Re-exported for use in other crates' tests.
#[cfg(any(test, feature = "test-helpers"))]
pub mod test_helpers {
    use rand_core::OsRng;
    use shieldd_sdk_crypto::{Fq, Fr};
    use shieldd_sdk_keys::keys::Diversifier;
    use shieldd_sdk_keys::Address;

    use crate::indexed_tree::{IndexedLeaf, FQ_MAX};

    /// Create an address with a specific diversifier byte pattern.
    pub fn make_address(div_byte: u8) -> Address {
        use ff::Field;
        use group::GroupEncoding;
        let mut rng = OsRng;
        let diversifier = Diversifier([div_byte; 16]);
        let scalar = Fr::random(&mut rng);
        let point = (*shieldd_sdk_crypto::generators::SPEND_AUTH) * scalar;
        let pk_d = shieldd_sdk_crypto::ka::Public::try_from(point.to_bytes()).unwrap();
        Address::from_components(diversifier, pk_d).unwrap()
    }

    /// Create a test IndexedLeaf with default (unregulated) policy.
    pub fn make_test_leaf(value: u64) -> IndexedLeaf {
        IndexedLeaf::with_default_policy(Fq::from(value), 0, *FQ_MAX)
    }
}

// Integration tests require cnidarium, tokio, and scanner
#[cfg(all(test, feature = "scanner"))]
mod tests {
    use super::*;
    use shieldd_sdk_asset::asset;
    use shieldd_sdk_crypto::Fq;

    #[tokio::test]
    async fn test_end_to_end_detection_and_decryption() {
        use crate::issuer_keys::DetectionKey;
        use crate::transfer::encrypt_transfer;
        use rand_core::OsRng;
        use shieldd_sdk_asset::Value;
        use shieldd_sdk_num::Amount;
        use shieldd_sdk_proto::core::component::shielded_pool::v1::{
            Transfer, TransferBody, TransferOutputBody,
        };
        use shieldd_sdk_proto::core::transaction::v1::{
            action::Action, Action as ActionProto, Transaction as ProtoTransaction, TransactionBody,
        };

        let issuer_dk = DetectionKey::demo();
        let issuer_dk_pub = issuer_dk.public_key();
        let sender_address = test_helpers::make_address(1);
        let receiver_address = test_helpers::make_address(2);
        let asset_id = asset::Id(shieldd_sdk_crypto::Fq::from(999999u64));
        let amount = Amount::from(1_000_000u128);

        let ciphertext = encrypt_transfer(
            &mut OsRng,
            &crate::audit_keys::test_keys(),
            &issuer_dk_pub,
            &receiver_address,
            &sender_address,
            Value { amount, asset_id },
            true,
            Fq::from(7u64),
            Fq::from(8u64),
            Fq::from(9u64),
        )
        .unwrap()
        .ciphertext;
        let metadata = TransferComplianceMetadata::from_identifiers(
            "ring",
            "policy",
            "resource",
            "permission",
            1,
            1,
            Fq::from(8u64),
            Fq::from(10u64),
            Fq::from(9u64),
            Fq::from(11u64),
        );

        let tx = ProtoTransaction {
            body: Some(TransactionBody {
                actions: vec![ActionProto {
                    action: Some(Action::Transfer(Transfer {
                        body: Some(TransferBody {
                            routing: Some(
                                shieldd_sdk_proto::core::component::shielded_pool::v1::TransferRouting {
                                    tags: vec![
                                        shieldd_sdk_proto::core::component::shielded_pool::v1::RoutingTag { value: 11 },
                                        shieldd_sdk_proto::core::component::shielded_pool::v1::RoutingTag { value: 22 },
                                    ],
                                },
                            ),
                            outputs: vec![TransferOutputBody {
                                compliance_ciphertext: ciphertext.to_bytes(),
                                compliance_metadata: metadata.to_bytes().unwrap(),
                                ..Default::default()
                            }],
                            ..Default::default()
                        }),
                        ..Default::default()
                    })),
                }],
                ..Default::default()
            }),
            ..Default::default()
        };

        let tx_ref = scanner::TxRef {
            block: scanner::BlockRef {
                height: 100,
                block_hash: [1u8; 32],
                parent_hash: [0u8; 32],
                block_time_unix: None,
            },
            tx_index: 0,
            tx_hash: scanner_transaction_id_from_proto(&tx),
        };
        let extracted = scanner::extract_compliance_ciphertexts(&tx_ref, &tx);
        let screener = scanner::ComplianceScreener::new(issuer_dk.clone(), asset_id);
        let mut detected_ciphertexts = Vec::new();
        for extracted in extracted {
            if let scanner::ScreeningResult::Detected(d) = screener.screen(extracted) {
                detected_ciphertexts.push(d.ciphertext);
            }
        }
        assert_eq!(detected_ciphertexts.len(), 1);

        let wrong_dk = DetectionKey::from_seed(&[99u8; 32]);
        let wrong_screener = scanner::ComplianceScreener::new(wrong_dk, asset_id);
        let wrong_detected = scanner::extract_compliance_ciphertexts(&tx_ref, &tx)
            .into_iter()
            .filter(|extracted| {
                matches!(
                    wrong_screener.screen(extracted.clone()),
                    scanner::ScreeningResult::Detected(_)
                )
            })
            .count();
        assert_eq!(wrong_detected, 0);

        let scanner::types::ComplianceCiphertext::Transfer(ciphertext) = &detected_ciphertexts[0]
        else {
            panic!("transfer action must yield transfer compliance ciphertext");
        };
        let decrypted = decrypt_full_flagged(issuer_dk.inner(), ciphertext, &metadata, asset_id)
            .unwrap()
            .expect("flagged transfer should decrypt");
        assert_eq!(decrypted.amount, amount);
        assert_eq!(
            decrypted.sender_address.transmission_key,
            sender_address.transmission_key().to_bytes()
        );
        assert_eq!(
            decrypted.receiver_address.transmission_key,
            receiver_address.transmission_key().to_bytes()
        );
    }
}

pub mod audit_keys;
pub use audit_keys::AuditKeys;

pub mod ownership;
