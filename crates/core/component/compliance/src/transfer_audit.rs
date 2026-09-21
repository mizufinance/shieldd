//! Selection and local decryption of canonical Transfer compliance ciphertext.
use anyhow::{ensure, Result};
use serde::{Deserialize, Serialize};
use shieldd_sdk_crypto::{Fq, SubgroupPoint};
use shieldd_sdk_num::Amount;

use crate::{
    crypto::transfer_key_confirmation, scanning::AddressData, TransferComplianceCiphertext,
    TransferComplianceMetadata,
};

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum TransferTier {
    SenderCore,
    SenderExt,
    OutputCore,
    OutputExt,
}

/// Public fields selected from one canonical transaction, never a second encryption.
pub struct TransferTierCiphertext<'a> {
    pub epk: SubgroupPoint,
    pub c2: Fq,
    pub ciphertext: &'a [u8],
    pub salt: Fq,
    pub key_confirmation: Option<Fq>,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum TransferAuditData {
    Amount(Amount),
    Counterparty(AddressData),
}

impl TransferTier {
    pub fn select<'a>(
        self,
        ct: &'a TransferComplianceCiphertext,
        metadata: &TransferComplianceMetadata,
    ) -> Result<TransferTierCiphertext<'a>> {
        metadata.validate()?;
        let (epk, c2, ciphertext, salt, key_confirmation): (_, _, &[u8], _, _) = match self {
            Self::SenderCore => (
                ct.sender_core_epk,
                ct.sender_core_c2,
                &ct.encrypted_sender_core,
                metadata.sender_core_salt()?,
                Some(ct.sender_core_key_confirmation),
            ),
            Self::SenderExt => (
                ct.sender_ext_epk,
                ct.sender_ext_c2,
                &ct.encrypted_sender_ext,
                metadata.sender_ext_salt()?,
                None,
            ),
            Self::OutputCore => (
                ct.output_core_epk,
                ct.output_core_c2,
                &ct.encrypted_output_core,
                metadata.output_core_salt()?,
                Some(ct.output_core_key_confirmation),
            ),
            Self::OutputExt => (
                ct.output_ext_epk,
                ct.output_ext_c2,
                &ct.encrypted_output_ext,
                metadata.output_ext_salt()?,
                None,
            ),
        };
        ensure!(
            epk != SubgroupPoint::default(),
            "identity transfer ephemeral key"
        );
        Ok(TransferTierCiphertext {
            epk,
            c2,
            ciphertext,
            salt,
            key_confirmation,
        })
    }
}

impl TransferTierCiphertext<'_> {
    /// Caller must first verify PRE against this transaction's EPK and encryption key.
    /// A successful decode alone does not authenticate a PRE result or chain acceptance.
    pub fn decrypt(&self, shared: &SubgroupPoint) -> Result<TransferAuditData> {
        ensure!(
            *shared != SubgroupPoint::default(),
            "identity transfer shared point"
        );
        let seed = self.c2 - crate::crypto::shared_secret(shared);
        self.decrypt_seed(seed)
    }

    pub(crate) fn decrypt_seed(&self, seed: Fq) -> Result<TransferAuditData> {
        let len: usize = if let Some(confirmation) = self.key_confirmation {
            ensure!(
                transfer_key_confirmation(seed, &self.epk, self.salt) == confirmation,
                "transfer key confirmation mismatch"
            );
            16
        } else {
            64
        };
        let plaintext = crate::crypto::decrypt_tier_bytes(self.ciphertext, seed, len)?;
        if len == 16 {
            return Ok(TransferAuditData::Amount(Amount::from_le_bytes(
                plaintext.try_into().expect("checked amount length"),
            )));
        }
        let diversified_generator =
            shieldd_sdk_crypto::encoding::nonidentity(plaintext[..32].try_into()?)
                .map_err(|_| anyhow::anyhow!("invalid counterparty diversified generator"))?;
        ensure!(
            diversified_generator != SubgroupPoint::default(),
            "identity counterparty diversified generator"
        );
        let transmission_key = plaintext[32..].try_into()?;
        shieldd_sdk_crypto::encoding::nonidentity(&transmission_key)?;
        Ok(TransferAuditData::Counterparty(AddressData {
            diversified_generator,
            transmission_key,
        }))
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{test_helpers::make_address, transfer::encrypt_transfer};
    use rand::{rngs::StdRng, SeedableRng};
    use shieldd_sdk_asset::{asset, Value};
    use shieldd_sdk_crypto::Fr;

    #[test]
    fn rejects_invalid_counterparty_transmission_point() {
        use group::{Group, GroupEncoding};
        let seed = Fq::from(7);
        for transmission in [SubgroupPoint::identity().to_bytes(), [255; 32]] {
            let mut plaintext = shieldd_sdk_crypto::generators::SPEND_AUTH
                .to_bytes()
                .to_vec();
            plaintext.extend_from_slice(&transmission);
            let ciphertext = crate::crypto::encrypt_tier_bytes(&plaintext, seed);
            let selected = TransferTierCiphertext {
                epk: *shieldd_sdk_crypto::generators::SPEND_AUTH,
                c2: seed,
                ciphertext: &ciphertext,
                salt: Fq::from(0),
                key_confirmation: None,
            };
            assert!(selected.decrypt_seed(seed).is_err());
        }
    }

    #[test]
    fn decrypt_original_transfer_tiers_with_selected_key() {
        let sender = make_address(31);
        let receiver = make_address(32);
        let ring_sk = Fr::from(29u64);
        let dk = Fr::from(37u64);
        let general = crate::audit_keys::test_keys();
        let amount = Amount::from(u128::MAX);
        let metadata = TransferComplianceMetadata::from_identifiers(
            "ring",
            "policy",
            "resource",
            "read",
            1,
            1,
            Fq::from(1u64),
            Fq::from(2u64),
            Fq::from(3u64),
            Fq::from(4u64),
        );
        for flagged in [false, true] {
            let encrypted = encrypt_transfer(
                StdRng::seed_from_u64(17),
                &general,
                &((*shieldd_sdk_crypto::generators::SPEND_AUTH) * dk),
                &receiver,
                &sender,
                Value {
                    amount,
                    asset_id: asset::Id(Fq::from(42u64)),
                },
                flagged,
                Fq::from(5u64),
                metadata.sender_core_salt().unwrap(),
                metadata.output_core_salt().unwrap(),
            )
            .unwrap();
            let decoded =
                TransferComplianceCiphertext::from_bytes(&encrypted.ciphertext.to_bytes()).unwrap();
            for tier in [
                TransferTier::SenderCore,
                TransferTier::SenderExt,
                TransferTier::OutputCore,
                TransferTier::OutputExt,
            ] {
                let selected = tier.select(&encrypted.ciphertext, &metadata).unwrap();
                let sender_tier =
                    matches!(tier, TransferTier::SenderCore | TransferTier::SenderExt);
                let key = if flagged {
                    dk
                } else {
                    Fr::from(match tier {
                        TransferTier::SenderCore => 201u64,
                        TransferTier::SenderExt => 203,
                        TransferTier::OutputCore => 201,
                        TransferTier::OutputExt => 202,
                    })
                };
                let result = selected.decrypt(&(selected.epk * key)).unwrap();
                let expected = match tier {
                    TransferTier::SenderCore | TransferTier::OutputCore => {
                        TransferAuditData::Amount(amount)
                    }
                    TransferTier::SenderExt | TransferTier::OutputExt => {
                        let address = if sender_tier { &receiver } else { &sender };
                        TransferAuditData::Counterparty(AddressData {
                            diversified_generator: *address.diversified_generator(),
                            transmission_key: address.transmission_key().to_bytes(),
                        })
                    }
                };
                assert_eq!(result, expected);
                let released = selected.epk * key;
                // Exercise every other payload with the actual released point, without a key label.
                for other in [
                    TransferTier::SenderCore,
                    TransferTier::SenderExt,
                    TransferTier::OutputCore,
                    TransferTier::OutputExt,
                ] {
                    if other != tier {
                        assert!(other
                            .select(&decoded, &metadata)
                            .unwrap()
                            .decrypt(&released)
                            .is_err());
                    }
                }
                if flagged {
                    for committee in [201u64, 202, 203, 204] {
                        assert!(selected
                            .decrypt(&(selected.epk * Fr::from(committee)))
                            .is_err());
                    }
                }

                if !flagged {
                    assert!(selected.decrypt(&(selected.epk * ring_sk)).is_err());
                }
                assert!(selected
                    .decrypt(&(selected.epk * (key + Fr::from(1u64))))
                    .is_err());
                assert!(selected.decrypt(&SubgroupPoint::default()).is_err());
            }
        }
    }
}
