//! Pure target-balance projection over the authenticated audit-effect log.

use anyhow::{ensure, Result};
use shieldd_sdk_asset::asset;
use shieldd_sdk_keys::Address;

use crate::{AuditEffect, AuditEffectRecord, UserAssetStatus};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CiphertextClassification {
    Transfer {
        asset_id: asset::Id,
        amount: u128,
        sender_matches: bool,
        receiver_matches: bool,
    },
    Withdrawal {
        sender_matches: bool,
    },
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum TargetLifecycle {
    Absent,
    Active,
    Frozen,
    Seized,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct SeizureProjection {
    pub target_address: Address,
    pub target_asset_id: asset::Id,
    pub next_log_index: u64,
    pub last_height: u64,
    pub lifecycle: TargetLifecycle,
    pub registered_at_height: Option<u64>,
    pub freeze_generation: u64,
    pub frozen_since_height: Option<u64>,
    pub credits: u128,
    pub debits: u128,
    pub ciphertext_count: u64,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct SeizureProjectionResult {
    pub registered_at_height: u64,
    pub frozen_since_height: u64,
    pub freeze_generation: u64,
    pub amount: u128,
    pub audited_log_length: u64,
    pub audited_ciphertext_count: u64,
}

impl SeizureProjection {
    pub fn new(
        target_address: Address,
        target_asset_id: asset::Id,
        starting_log_index: u64,
        starting_height: u64,
    ) -> Self {
        Self {
            target_address,
            target_asset_id,
            next_log_index: starting_log_index,
            last_height: starting_height,
            lifecycle: TargetLifecycle::Absent,
            registered_at_height: None,
            freeze_generation: 0,
            frozen_since_height: None,
            credits: 0,
            debits: 0,
            ciphertext_count: 0,
        }
    }

    pub fn apply(
        &mut self,
        log_index: u64,
        record: &AuditEffectRecord,
        classification: Option<CiphertextClassification>,
    ) -> Result<()> {
        ensure!(
            log_index == self.next_log_index,
            "seizure projection audit-log index is not contiguous"
        );
        let height = record.source.height();
        ensure!(
            height >= self.last_height,
            "seizure projection source height moved backwards"
        );

        match &record.effect {
            AuditEffect::TransferOutput { .. } => {
                let Some(CiphertextClassification::Transfer {
                    asset_id,
                    amount,
                    sender_matches,
                    receiver_matches,
                }) = classification
                else {
                    anyhow::bail!(
                        "every transfer output ciphertext requires a transfer classification"
                    );
                };
                self.bump_ciphertext_count()?;
                if asset_id == self.target_asset_id {
                    if sender_matches || receiver_matches {
                        self.ensure_active("classified transfer")?;
                    }
                    if sender_matches && !receiver_matches {
                        self.debits = self
                            .debits
                            .checked_add(amount)
                            .ok_or_else(|| anyhow::anyhow!("seizure debit overflow"))?;
                    } else if receiver_matches && !sender_matches {
                        self.credits = self
                            .credits
                            .checked_add(amount)
                            .ok_or_else(|| anyhow::anyhow!("seizure credit overflow"))?;
                    }
                }
            }
            AuditEffect::Withdrawal {
                asset_id, amount, ..
            } => {
                let sender_matches = if *asset_id != self.target_asset_id {
                    ensure!(
                        classification.is_none(),
                        "non-target withdrawal cannot carry a classification"
                    );
                    false
                } else if let Some(CiphertextClassification::Withdrawal { sender_matches }) =
                    classification
                {
                    sender_matches
                } else {
                    anyhow::bail!("target-asset withdrawal requires a classification");
                };
                let next_debits = if sender_matches {
                    self.ensure_active("classified withdrawal")?;
                    self.debits
                        .checked_add(*amount)
                        .ok_or_else(|| anyhow::anyhow!("seizure debit overflow"))?
                } else {
                    self.debits
                };
                self.bump_ciphertext_count()?;
                self.debits = next_debits;
            }
            AuditEffect::PublicDeposit {
                asset_id,
                amount,
                recipient,
            } if *asset_id == self.target_asset_id && recipient == &self.target_address => {
                ensure!(
                    classification.is_none(),
                    "public effect cannot be classified"
                );
                self.ensure_active("public deposit")?;
                self.credits = self
                    .credits
                    .checked_add(*amount)
                    .ok_or_else(|| anyhow::anyhow!("seizure credit overflow"))?;
            }
            AuditEffect::UserRegistered { asset_id, address }
                if *asset_id == self.target_asset_id && address == &self.target_address =>
            {
                ensure!(
                    classification.is_none(),
                    "public effect cannot be classified"
                );
                ensure!(
                    self.lifecycle == TargetLifecycle::Absent,
                    "target address-asset pair was registered more than once"
                );
                self.lifecycle = TargetLifecycle::Active;
                self.registered_at_height = Some(height);
            }
            AuditEffect::UserStatusChanged {
                asset_id,
                address,
                status,
                freeze_generation,
                frozen_since_height,
            } if *asset_id == self.target_asset_id && address == &self.target_address => {
                ensure!(
                    classification.is_none(),
                    "public effect cannot be classified"
                );
                match (self.lifecycle, status) {
                    (TargetLifecycle::Active, UserAssetStatus::Frozen) => {
                        ensure!(
                            *freeze_generation == self.freeze_generation + 1,
                            "target freeze generation is not monotonic"
                        );
                        ensure!(
                            *frozen_since_height == height,
                            "target frozen-since height differs from its canonical source"
                        );
                        self.lifecycle = TargetLifecycle::Frozen;
                        self.freeze_generation = *freeze_generation;
                        self.frozen_since_height = Some(*frozen_since_height);
                    }
                    (TargetLifecycle::Frozen, UserAssetStatus::Active) => {
                        ensure!(
                            *freeze_generation == self.freeze_generation,
                            "unfreeze changed the target freeze generation"
                        );
                        ensure!(
                            *frozen_since_height == 0,
                            "unfreeze retained a frozen-since height"
                        );
                        self.lifecycle = TargetLifecycle::Active;
                        self.frozen_since_height = None;
                    }
                    (TargetLifecycle::Frozen, UserAssetStatus::Seized) => {
                        ensure!(
                            *freeze_generation == self.freeze_generation
                                && Some(*frozen_since_height) == self.frozen_since_height,
                            "seizure changed the target freeze provenance"
                        );
                        self.lifecycle = TargetLifecycle::Seized;
                    }
                    _ => anyhow::bail!("illegal target lifecycle transition in audit log"),
                }
            }
            _ => ensure!(
                classification.is_none(),
                "non-ciphertext audit effect carried a classification"
            ),
        }

        self.next_log_index = self
            .next_log_index
            .checked_add(1)
            .ok_or_else(|| anyhow::anyhow!("seizure audit-log cursor overflow"))?;
        self.last_height = height;
        Ok(())
    }

    pub fn finalize(
        &self,
        expected_log_length: u64,
        expected_freeze_generation: u64,
        expected_frozen_since_height: u64,
    ) -> Result<SeizureProjectionResult> {
        ensure!(
            self.next_log_index == expected_log_length,
            "seizure projection did not consume the complete audit log"
        );
        ensure!(
            self.lifecycle == TargetLifecycle::Frozen,
            "seizure projection does not end in a frozen target"
        );
        ensure!(
            self.freeze_generation == expected_freeze_generation
                && self.frozen_since_height == Some(expected_frozen_since_height),
            "seizure projection ends at a different freeze generation"
        );
        let amount = self
            .credits
            .checked_sub(self.debits)
            .ok_or_else(|| anyhow::anyhow!("seizure projection has a negative balance"))?;
        Ok(SeizureProjectionResult {
            registered_at_height: self
                .registered_at_height
                .ok_or_else(|| anyhow::anyhow!("target was never registered"))?,
            frozen_since_height: expected_frozen_since_height,
            freeze_generation: expected_freeze_generation,
            amount,
            audited_log_length: expected_log_length,
            audited_ciphertext_count: self.ciphertext_count,
        })
    }

    fn ensure_active(&self, effect: &str) -> Result<()> {
        ensure!(
            self.lifecycle == TargetLifecycle::Active,
            "target {effect} occurred outside its active lifecycle"
        );
        Ok(())
    }

    fn bump_ciphertext_count(&mut self) -> Result<()> {
        self.ciphertext_count = self
            .ciphertext_count
            .checked_add(1)
            .ok_or_else(|| anyhow::anyhow!("seizure ciphertext count overflow"))?;
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{AuditSource, WithdrawalKind};
    use decaf377::Fq;
    use rand_core::OsRng;

    fn source(height: u64, effect_index: u32) -> AuditSource {
        AuditSource::ShielddTransaction {
            height,
            transaction_id: [height as u8; 32],
            action_index: 0,
            effect_index,
        }
    }

    #[test]
    fn complete_projection_starts_at_registration_and_has_no_opening_balance() {
        let address = Address::dummy(&mut OsRng);
        let asset_id = asset::Id(Fq::from(9u64));
        let mut projection = SeizureProjection::new(address.clone(), asset_id, 0, 0);
        let records = [
            AuditEffectRecord {
                source: source(10, 0),
                effect: AuditEffect::UserRegistered {
                    asset_id,
                    address: address.clone(),
                },
            },
            AuditEffectRecord {
                source: source(11, 0),
                effect: AuditEffect::PublicDeposit {
                    asset_id,
                    amount: 100,
                    recipient: address.clone(),
                },
            },
            AuditEffectRecord {
                source: source(12, 0),
                effect: AuditEffect::TransferOutput {
                    asset_anchor: shieldd_sdk_tct::StateCommitment(Fq::from(21u64)),
                    compliance_ciphertext: vec![1],
                    compliance_metadata: vec![],
                },
            },
            AuditEffectRecord {
                source: source(20, 0),
                effect: AuditEffect::UserStatusChanged {
                    asset_id,
                    address,
                    status: UserAssetStatus::Frozen,
                    freeze_generation: 1,
                    frozen_since_height: 20,
                },
            },
        ];
        projection.apply(0, &records[0], None).unwrap();
        projection.apply(1, &records[1], None).unwrap();
        projection
            .apply(
                2,
                &records[2],
                Some(CiphertextClassification::Transfer {
                    asset_id,
                    amount: 30,
                    sender_matches: true,
                    receiver_matches: false,
                }),
            )
            .unwrap();
        projection.apply(3, &records[3], None).unwrap();
        let result = projection.finalize(4, 1, 20).unwrap();
        assert_eq!(result.amount, 70);
        assert_eq!(result.registered_at_height, 10);
        assert_eq!(result.audited_ciphertext_count, 1);
    }

    #[test]
    fn projection_rejects_missing_classification_and_post_freeze_debit() {
        let address = Address::dummy(&mut OsRng);
        let asset_id = asset::Id(Fq::from(9u64));
        let mut projection = SeizureProjection::new(address.clone(), asset_id, 0, 0);
        projection
            .apply(
                0,
                &AuditEffectRecord {
                    source: source(10, 0),
                    effect: AuditEffect::UserRegistered {
                        asset_id,
                        address: address.clone(),
                    },
                },
                None,
            )
            .unwrap();
        let ciphertext = AuditEffectRecord {
            source: source(11, 0),
            effect: AuditEffect::Withdrawal {
                kind: WithdrawalKind::Host,
                asset_id,
                amount: 1,
                asset_anchor: shieldd_sdk_tct::StateCommitment(Fq::from(21u64)),
                compliance_ciphertext: vec![1],
            },
        };
        assert!(projection.apply(1, &ciphertext, None).is_err());
    }

    #[test]
    fn non_target_withdrawal_needs_no_private_classification() {
        let address = Address::dummy(&mut OsRng);
        let target_asset_id = asset::Id(Fq::from(9u64));
        let other_asset_id = asset::Id(Fq::from(10u64));
        let mut projection = SeizureProjection::new(address.clone(), target_asset_id, 0, 0);
        projection
            .apply(
                0,
                &AuditEffectRecord {
                    source: source(10, 0),
                    effect: AuditEffect::UserRegistered {
                        asset_id: target_asset_id,
                        address,
                    },
                },
                None,
            )
            .unwrap();
        projection
            .apply(
                1,
                &AuditEffectRecord {
                    source: source(11, 0),
                    effect: AuditEffect::Withdrawal {
                        kind: WithdrawalKind::Host,
                        asset_id: other_asset_id,
                        amount: 50,
                        asset_anchor: shieldd_sdk_tct::StateCommitment(Fq::from(21u64)),
                        compliance_ciphertext: vec![1],
                    },
                },
                None,
            )
            .unwrap();
        assert_eq!(projection.debits, 0);
        assert_eq!(projection.next_log_index, 2);
    }
}
