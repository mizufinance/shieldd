//! Typed audit/export records and pure audit row classification.
//!

use serde::{Deserialize, Serialize};

use crate::{
    audit_status::{AuditStatus, DecryptedVia, FlowType},
    AuthorizationId, TransferFuzzyTags,
};

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct AuditFuzzyClue {
    pub sender_epk_bytes: [u8; 32],
    pub receiver_epk_bytes: [u8; 32],
    pub tags: TransferFuzzyTags,
}

#[derive(Clone, Copy, Debug, Default, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum AuditAuthority {
    #[default]
    User,
    Master,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum TransferRole {
    Sender,
    Receiver,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum DisclosureField {
    Sender,
    Amount,
    Receiver,
}

#[derive(Clone, Debug, Default, PartialEq, Eq)]
pub struct AuditSelection {
    pub authorization_id: Option<AuthorizationId>,
    pub from_timestamp: Option<u64>,
    pub to_timestamp: Option<u64>,
}

impl AuditSelection {
    pub fn validate(&self) -> anyhow::Result<()> {
        if let (Some(from), Some(to)) = (self.from_timestamp, self.to_timestamp) {
            anyhow::ensure!(from <= to, "audit timestamp range starts after it ends");
        }
        Ok(())
    }

    pub fn is_bounded(&self) -> bool {
        self.authorization_id.is_some()
            || self.from_timestamp.is_some()
            || self.to_timestamp.is_some()
    }

    pub fn matches(&self, row: &AuditDetectedRef) -> bool {
        let (Some(row_id), Some(timestamp)) = (row.authorization_id, row.authorization_timestamp)
        else {
            return false;
        };
        self.authorization_id.is_none_or(|id| id == row_id)
            && self.from_timestamp.is_none_or(|from| timestamp >= from)
            && self.to_timestamp.is_none_or(|to| timestamp <= to)
    }
}

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct AuditDetectedRef {
    pub height: u64,
    pub tx_hash: String,
    pub action_index: u32,
    #[serde(default)]
    pub output_index: u32,
    pub asset_id: String,
    pub is_flagged: bool,
    #[serde(default = "private_transfer_flow_type")]
    pub flow_type: FlowType,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub authorization_id: Option<AuthorizationId>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub authorization_timestamp: Option<u64>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub fuzzy_clue: Option<AuditFuzzyClue>,
}

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct AuditScanExport {
    pub scan_info: serde_json::Value,
    pub detected: Vec<AuditDetectedRef>,
}

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct OrbisAuditEntry {
    pub height: u64,
    pub tx_hash: String,
    pub action_index: u32,
    #[serde(default)]
    pub output_index: u32,
    pub authorization_id: AuthorizationId,
    pub authorization_timestamp: u64,
    pub authority: AuditAuthority,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub role: Option<TransferRole>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub subject_address: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub sender_address: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub amount: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub receiver_address: Option<String>,
    pub decrypted_via: DecryptedVia,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct AuditImportRow {
    pub audit_status: AuditStatus,
    pub is_flagged: bool,
    pub authorization_id: Option<AuthorizationId>,
    pub authorization_timestamp: Option<u64>,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum OrbisImportEligibility {
    Eligible,
    Ineligible { reason: String },
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct DetectedRefRowParts {
    pub height: u64,
    pub tx_hash: Vec<u8>,
    pub action_index: u32,
    pub output_index: u32,
    pub asset_id: String,
    pub is_flagged: bool,
    pub flow_type: FlowType,
    pub authorization_id: Option<AuthorizationId>,
    pub authorization_timestamp: Option<u64>,
}

pub fn classify_orbis_import_row(
    row: Option<AuditImportRow>,
    expected_authorization_id: AuthorizationId,
    expected_authorization_timestamp: u64,
) -> OrbisImportEligibility {
    let Some(row) = row else {
        return OrbisImportEligibility::Ineligible {
            reason: "detected row not found".to_owned(),
        };
    };
    if row.is_flagged
        || !matches!(
            row.audit_status,
            AuditStatus::EvidenceValid | AuditStatus::DecryptFailed | AuditStatus::AuditComplete
        )
    {
        return OrbisImportEligibility::Ineligible {
            reason: format!(
                "row is not an evidence-valid unflagged detection: {}",
                row.audit_status
            ),
        };
    }
    let (Some(authorization_id), Some(authorization_timestamp)) =
        (row.authorization_id, row.authorization_timestamp)
    else {
        return OrbisImportEligibility::Ineligible {
            reason: "detected row is missing validated authorization metadata".to_owned(),
        };
    };
    if authorization_id != expected_authorization_id {
        return OrbisImportEligibility::Ineligible {
            reason: "audit authorization id does not match validated evidence".to_owned(),
        };
    }
    if authorization_timestamp != expected_authorization_timestamp {
        return OrbisImportEligibility::Ineligible {
            reason: "audit authorization timestamp does not match validated evidence".to_owned(),
        };
    }
    OrbisImportEligibility::Eligible
}

pub fn detected_ref_from_row_parts(row: DetectedRefRowParts) -> AuditDetectedRef {
    AuditDetectedRef {
        height: row.height,
        tx_hash: hex::encode(row.tx_hash),
        action_index: row.action_index,
        output_index: row.output_index,
        asset_id: row.asset_id,
        is_flagged: row.is_flagged,
        flow_type: row.flow_type,
        authorization_id: row.authorization_id,
        authorization_timestamp: row.authorization_timestamp,
        fuzzy_clue: None,
    }
}

fn private_transfer_flow_type() -> FlowType {
    FlowType::PrivateTransfer
}

#[cfg(test)]
mod tests {
    use super::*;
    const AUTHORIZATION_TIMESTAMP: u64 = 1_700_000_000;

    fn authorization_id() -> AuthorizationId {
        AuthorizationId::from_fq(decaf377::Fq::from(9u64))
    }

    fn row(audit_status: AuditStatus, is_flagged: bool) -> AuditImportRow {
        AuditImportRow {
            audit_status,
            is_flagged,
            authorization_id: Some(authorization_id()),
            authorization_timestamp: Some(AUTHORIZATION_TIMESTAMP),
        }
    }

    #[test]
    fn unflagged_valid_orbis_statuses_are_eligible() {
        for status in [
            AuditStatus::EvidenceValid,
            AuditStatus::DecryptFailed,
            AuditStatus::AuditComplete,
        ] {
            assert_eq!(
                classify_orbis_import_row(
                    Some(row(status, false)),
                    authorization_id(),
                    AUTHORIZATION_TIMESTAMP,
                ),
                OrbisImportEligibility::Eligible
            );
        }
    }

    #[test]
    fn flagged_or_invalid_orbis_rows_are_ineligible_with_status_reason() {
        for (status, is_flagged) in [
            (AuditStatus::EvidenceValid, true),
            (AuditStatus::Pending, false),
            (AuditStatus::EvidenceInvalid, false),
        ] {
            assert_eq!(
                classify_orbis_import_row(
                    Some(row(status, is_flagged)),
                    authorization_id(),
                    AUTHORIZATION_TIMESTAMP,
                ),
                OrbisImportEligibility::Ineligible {
                    reason: format!("row is not an evidence-valid unflagged detection: {status}")
                }
            );
        }
    }

    #[test]
    fn missing_orbis_row_is_ineligible_with_missing_reason() {
        assert_eq!(
            classify_orbis_import_row(None, authorization_id(), AUTHORIZATION_TIMESTAMP),
            OrbisImportEligibility::Ineligible {
                reason: "detected row not found".to_owned()
            }
        );
    }

    #[test]
    fn orbis_import_requires_matching_validated_authorization_metadata() {
        let mut missing = row(AuditStatus::EvidenceValid, false);
        missing.authorization_id = None;
        assert_eq!(
            classify_orbis_import_row(Some(missing), authorization_id(), AUTHORIZATION_TIMESTAMP,),
            OrbisImportEligibility::Ineligible {
                reason: "detected row is missing validated authorization metadata".to_owned()
            }
        );

        let mut wrong_id = row(AuditStatus::EvidenceValid, false);
        wrong_id.authorization_id = Some(AuthorizationId::from_fq(decaf377::Fq::from(10u64)));
        assert_eq!(
            classify_orbis_import_row(Some(wrong_id), authorization_id(), AUTHORIZATION_TIMESTAMP,),
            OrbisImportEligibility::Ineligible {
                reason: "audit authorization id does not match validated evidence".to_owned()
            }
        );

        let mut wrong_timestamp = row(AuditStatus::EvidenceValid, false);
        wrong_timestamp.authorization_timestamp = Some(AUTHORIZATION_TIMESTAMP + 1);
        assert_eq!(
            classify_orbis_import_row(
                Some(wrong_timestamp),
                authorization_id(),
                AUTHORIZATION_TIMESTAMP,
            ),
            OrbisImportEligibility::Ineligible {
                reason: "audit authorization timestamp does not match validated evidence"
                    .to_owned()
            }
        );
    }

    #[test]
    fn detected_ref_projection_preserves_fields_and_hex_encodes_tx_hash() {
        let detected = detected_ref_from_row_parts(DetectedRefRowParts {
            height: 42,
            tx_hash: vec![0xab, 0xcd, 0x01],
            action_index: 7,
            output_index: 3,
            asset_id: "asset".to_owned(),
            is_flagged: true,
            flow_type: FlowType::PrivateTransfer,
            authorization_id: Some(AuthorizationId::from_fq(decaf377::Fq::from(9u64))),
            authorization_timestamp: Some(1_700_000_000),
        });

        assert_eq!(detected.height, 42);
        assert_eq!(detected.tx_hash, "abcd01");
        assert_eq!(detected.action_index, 7);
        assert_eq!(detected.output_index, 3);
        assert_eq!(detected.asset_id, "asset");
        assert!(detected.is_flagged);
        assert_eq!(detected.flow_type, FlowType::PrivateTransfer);
        assert_eq!(detected.authorization_timestamp, Some(1_700_000_000));
    }

    #[test]
    fn orbis_audit_entries_accept_orbis_pre_decryption_label() {
        for label in ["orbis_pre"] {
            let entry: OrbisAuditEntry = serde_json::from_value(serde_json::json!({
                "height": 42,
                "tx_hash": "abcd",
                "action_index": 0,
                "output_index": 0,
                "authorization_id": AuthorizationId::from_fq(decaf377::Fq::from(9u64)),
                "authorization_timestamp": 1_700_000_000u64,
                "authority": "user",
                "role": "receiver",
                "subject_address": "receiver",
                "sender_address": "sender",
                "amount": "1234",
                "decrypted_via": label,
            }))
            .expect("orbis-audit output should parse");

            assert_eq!(entry.decrypted_via, DecryptedVia::OrbisPre);
            assert_eq!(entry.decrypted_via.as_str(), label);
        }
    }

    #[test]
    fn selection_matches_distinct_authorization_id_and_inclusive_timestamp_range() {
        let id = AuthorizationId::from_fq(decaf377::Fq::from(9u64));
        let row = AuditDetectedRef {
            height: 42,
            tx_hash: "abcd".to_owned(),
            action_index: 0,
            output_index: 0,
            asset_id: "asset".to_owned(),
            is_flagged: false,
            flow_type: FlowType::PrivateTransfer,
            authorization_id: Some(id),
            authorization_timestamp: Some(100),
            fuzzy_clue: None,
        };
        assert!(AuditSelection {
            authorization_id: Some(id),
            from_timestamp: Some(100),
            to_timestamp: Some(100),
        }
        .matches(&row));
        assert!(!AuditSelection {
            authorization_id: Some(AuthorizationId::from_fq(decaf377::Fq::from(10u64))),
            ..Default::default()
        }
        .matches(&row));
    }
}
