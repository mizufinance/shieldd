use anyhow::{anyhow, bail, ensure, Context, Result};
use decaf377::Fq;
use sha2::{Digest, Sha256};
use shieldd_sdk_asset::asset;

use crate::{
    ActionRef, BlockRef, OutputRef, TransferComplianceCiphertext, TransferComplianceMetadata,
    TxRef, TRANSFER_COMPLIANCE_METADATA_BYTES, TRANSFER_WIRE_BYTES,
};

pub const COMPLIANCE_EVIDENCE_VERSION: u32 = 4;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum EvidenceObjectType {
    Transfer = 1,
}

impl EvidenceObjectType {
    fn from_byte(byte: u8) -> Result<Self> {
        match byte {
            1 => Ok(Self::Transfer),
            other => bail!("unknown evidence object type {other}"),
        }
    }
}

/// Canonical scanner evidence for one accepted transfer output.
///
/// The object deliberately excludes PRE envelopes, DH shared points, and
/// standalone DLEQ proofs. Its metadata is the same minimal public statement
/// committed by the transfer proof.
#[derive(Clone, Debug)]
pub struct ComplianceEvidenceObject {
    pub version: u32,
    pub object_type: EvidenceObjectType,
    pub output_ref: OutputRef,
    pub asset_id: asset::Id,
    pub is_flagged: bool,
    pub detection_salt: Fq,
    pub transfer_ciphertext: TransferComplianceCiphertext,
    pub metadata: TransferComplianceMetadata,
    pub payload_hash: [u8; 32],
}

impl ComplianceEvidenceObject {
    pub fn new_transfer(
        output_ref: OutputRef,
        asset_id: asset::Id,
        is_flagged: bool,
        detection_salt: Fq,
        transfer_ciphertext: TransferComplianceCiphertext,
        metadata: TransferComplianceMetadata,
    ) -> Result<Self> {
        metadata.validate()?;
        let mut evidence = Self {
            version: COMPLIANCE_EVIDENCE_VERSION,
            object_type: EvidenceObjectType::Transfer,
            output_ref,
            asset_id,
            is_flagged,
            detection_salt,
            transfer_ciphertext,
            metadata,
            payload_hash: [0u8; 32],
        };
        evidence.payload_hash = evidence.compute_payload_hash();
        Ok(evidence)
    }

    pub fn object_hash(&self) -> [u8; 32] {
        Sha256::digest(self.to_bytes()).into()
    }

    pub fn validate_payload_hash(&self) -> Result<()> {
        ensure!(
            self.version == COMPLIANCE_EVIDENCE_VERSION,
            "unsupported evidence version {}",
            self.version
        );
        ensure!(
            self.object_type == EvidenceObjectType::Transfer,
            "unsupported evidence object type"
        );
        self.metadata.validate()?;
        ensure!(
            self.payload_hash == self.compute_payload_hash(),
            "evidence payload_hash mismatch"
        );
        Ok(())
    }

    pub fn to_bytes(&self) -> Vec<u8> {
        let mut out = self.payload_bytes_without_hash();
        out.extend_from_slice(&self.payload_hash);
        out
    }

    pub fn from_bytes(bytes: &[u8]) -> Result<Self> {
        let mut reader = EvidenceReader::new(bytes);
        let version = reader.read_u32()?;
        let object_type = EvidenceObjectType::from_byte(reader.read_u8()?)?;
        let height = reader.read_u64()?;
        let block_hash = reader.read_array::<32>()?;
        let parent_hash = reader.read_array::<32>()?;
        let block_time_unix = match reader.read_u8()? {
            0 => None,
            1 => Some(reader.read_i64()?),
            other => bail!("invalid block_time_unix option discriminant {other}"),
        };
        let tx_index = reader.read_u32()?;
        let tx_hash = shieldd_sdk_txhash::TransactionId(reader.read_array::<32>()?);
        let action_index = reader.read_u32()?;
        let output_index = reader.read_u32()?;
        let asset_id = asset::Id(
            Fq::from_bytes_checked(&reader.read_array::<32>()?)
                .map_err(|_| anyhow!("invalid evidence asset_id"))?,
        );
        let is_flagged = reader.read_bool("is_flagged")?;
        let detection_salt = Fq::from_bytes_checked(&reader.read_array::<32>()?)
            .map_err(|_| anyhow!("invalid evidence detection_salt"))?;
        let transfer_ciphertext =
            TransferComplianceCiphertext::from_bytes(reader.read_slice(TRANSFER_WIRE_BYTES)?)?;
        let metadata = TransferComplianceMetadata::from_bytes(
            reader.read_slice(TRANSFER_COMPLIANCE_METADATA_BYTES)?,
        )?;
        let payload_hash = reader.read_array::<32>()?;
        reader.finish()?;

        let evidence = Self {
            version,
            object_type,
            output_ref: OutputRef {
                action: ActionRef {
                    tx: TxRef {
                        block: BlockRef {
                            height,
                            block_hash,
                            parent_hash,
                            block_time_unix,
                        },
                        tx_index,
                        tx_hash,
                    },
                    action_index,
                },
                output_index,
            },
            asset_id,
            is_flagged,
            detection_salt,
            transfer_ciphertext,
            metadata,
            payload_hash,
        };
        evidence.validate_payload_hash()?;
        Ok(evidence)
    }

    fn compute_payload_hash(&self) -> [u8; 32] {
        Sha256::digest(self.payload_bytes_without_hash()).into()
    }

    fn payload_bytes_without_hash(&self) -> Vec<u8> {
        let mut out = Vec::new();
        out.extend_from_slice(&self.version.to_le_bytes());
        out.push(self.object_type as u8);
        let tx_ref = &self.output_ref.action.tx;
        out.extend_from_slice(&tx_ref.block.height.to_le_bytes());
        out.extend_from_slice(&tx_ref.block.block_hash);
        out.extend_from_slice(&tx_ref.block.parent_hash);
        match tx_ref.block.block_time_unix {
            Some(block_time) => {
                out.push(1);
                out.extend_from_slice(&block_time.to_le_bytes());
            }
            None => out.push(0),
        }
        out.extend_from_slice(&tx_ref.tx_index.to_le_bytes());
        out.extend_from_slice(tx_ref.tx_hash.as_ref());
        out.extend_from_slice(&self.output_ref.action.action_index.to_le_bytes());
        out.extend_from_slice(&self.output_ref.output_index.to_le_bytes());
        out.extend_from_slice(&self.asset_id.0.to_bytes());
        out.push(u8::from(self.is_flagged));
        out.extend_from_slice(&self.detection_salt.to_bytes());
        out.extend_from_slice(&self.transfer_ciphertext.to_bytes());
        out.extend_from_slice(
            &self
                .metadata
                .to_bytes()
                .expect("validated evidence metadata must encode"),
        );
        out
    }
}

struct EvidenceReader<'a> {
    bytes: &'a [u8],
    offset: usize,
}

impl<'a> EvidenceReader<'a> {
    fn new(bytes: &'a [u8]) -> Self {
        Self { bytes, offset: 0 }
    }

    fn read_slice(&mut self, len: usize) -> Result<&'a [u8]> {
        let end = self
            .offset
            .checked_add(len)
            .ok_or_else(|| anyhow!("evidence object offset overflow"))?;
        let slice = self
            .bytes
            .get(self.offset..end)
            .ok_or_else(|| anyhow!("truncated evidence object"))?;
        self.offset = end;
        Ok(slice)
    }

    fn read_array<const N: usize>(&mut self) -> Result<[u8; N]> {
        self.read_slice(N)?
            .try_into()
            .context("read fixed evidence object field")
    }

    fn read_u8(&mut self) -> Result<u8> {
        Ok(self.read_slice(1)?[0])
    }

    fn read_bool(&mut self, label: &str) -> Result<bool> {
        match self.read_u8()? {
            0 => Ok(false),
            1 => Ok(true),
            other => bail!("invalid {label} boolean encoding {other}"),
        }
    }

    fn read_u32(&mut self) -> Result<u32> {
        Ok(u32::from_le_bytes(self.read_array::<4>()?))
    }

    fn read_u64(&mut self) -> Result<u64> {
        Ok(u64::from_le_bytes(self.read_array::<8>()?))
    }

    fn read_i64(&mut self) -> Result<i64> {
        Ok(i64::from_le_bytes(self.read_array::<8>()?))
    }

    fn finish(&self) -> Result<()> {
        ensure!(
            self.offset == self.bytes.len(),
            "evidence object has trailing bytes"
        );
        Ok(())
    }
}

#[cfg(test)]
pub(crate) mod tests {
    use super::*;
    use decaf377::{Element, Fr};
    use rand_core::OsRng;
    use shieldd_sdk_asset::Value;
    use shieldd_sdk_num::Amount;

    use crate::{crypto::derive_compliance_scalar, test_helpers::make_address};

    fn derive_ack(ring_pk: &Element, address: &shieldd_sdk_keys::Address) -> Element {
        let d = derive_compliance_scalar(address);
        *ring_pk * Fr::from_le_bytes_mod_order(&d.to_bytes())
    }

    pub(crate) fn valid_evidence_fixture() -> (ComplianceEvidenceObject, TransferComplianceMetadata)
    {
        let dk_pub = crate::DetectionKey::demo().public_key();
        let ring_pk = Element::GENERATOR * Fr::rand(&mut OsRng);
        let sender = make_address(9);
        let receiver = make_address(10);
        let asset_id = asset::Id(Fq::from(444u64));
        let detection_salt = Fq::from(77u64);
        let encrypted = crate::encrypt_transfer(
            &mut OsRng,
            &derive_ack(&ring_pk, &sender),
            &derive_ack(&ring_pk, &receiver),
            &dk_pub,
            &receiver,
            &sender,
            Value {
                amount: Amount::from(1234u128),
                asset_id,
            },
            false,
            detection_salt,
        )
        .expect("fixture transfer should encrypt");

        let metadata = TransferComplianceMetadata::from_identifiers(
            "ring-id",
            "policy-id",
            "document",
            "read",
            1_700_000_000,
            Fq::from(11u64),
            Fq::from(12u64),
            Fq::from(13u64),
            Fq::from(14u64),
        );
        let output_ref = OutputRef {
            action: ActionRef {
                tx: TxRef {
                    block: BlockRef {
                        height: 7,
                        block_hash: [7u8; 32],
                        parent_hash: [6u8; 32],
                        block_time_unix: Some(12345),
                    },
                    tx_index: 1,
                    tx_hash: shieldd_sdk_txhash::TransactionId([8u8; 32]),
                },
                action_index: 2,
            },
            output_index: 0,
        };
        let evidence = ComplianceEvidenceObject::new_transfer(
            output_ref,
            asset_id,
            false,
            detection_salt,
            encrypted.ciphertext,
            metadata.clone(),
        )
        .expect("fixture evidence should build");
        (evidence, metadata)
    }

    #[test]
    fn evidence_round_trip_preserves_payload_hash_and_metadata() {
        let (evidence, metadata) = valid_evidence_fixture();
        let encoded = evidence.to_bytes();
        let decoded =
            ComplianceEvidenceObject::from_bytes(&encoded).expect("evidence should decode");
        assert_eq!(decoded.object_hash(), evidence.object_hash());
        assert_eq!(decoded.output_ref, evidence.output_ref);
        assert_eq!(decoded.metadata, metadata);
    }

    #[test]
    fn evidence_rejects_trailing_bytes_and_noncanonical_boolean() {
        let (evidence, _) = valid_evidence_fixture();
        let mut trailing = evidence.to_bytes();
        trailing.push(0);
        assert!(ComplianceEvidenceObject::from_bytes(&trailing).is_err());

        let mut flagged = evidence.to_bytes();
        const BLOCK_TIME_TAG_OFFSET: usize = 4 + 1 + 8 + 32 + 32;
        const FLAGGED_OFFSET_WITH_BLOCK_TIME: usize =
            BLOCK_TIME_TAG_OFFSET + 1 + 8 + 4 + 32 + 4 + 4 + 32;
        flagged[FLAGGED_OFFSET_WITH_BLOCK_TIME] = 2;
        assert!(ComplianceEvidenceObject::from_bytes(&flagged).is_err());
    }

    #[test]
    fn evidence_rejects_previous_layout_even_with_a_valid_payload_hash() {
        let (mut evidence, _) = valid_evidence_fixture();
        evidence.version = COMPLIANCE_EVIDENCE_VERSION - 1;
        evidence.payload_hash = evidence.compute_payload_hash();

        let error = ComplianceEvidenceObject::from_bytes(&evidence.to_bytes())
            .expect_err("the previous same-length layout must not be reinterpreted");
        assert!(error.to_string().contains("unsupported evidence version"));
    }

    #[test]
    fn evidence_hash_commits_to_every_metadata_field() {
        let (evidence, _) = valid_evidence_fixture();
        let original = evidence.object_hash();

        fn increment(bytes: &mut [u8; 32]) {
            let value = Fq::from_bytes_checked(bytes).expect("fixture field is canonical");
            *bytes = (value + Fq::from(1u64)).to_bytes();
        }
        let mutations: [fn(&mut TransferComplianceMetadata); 9] = [
            |m| increment(&mut m.ring_id_hash_bytes),
            |m| increment(&mut m.policy_id_hash_bytes),
            |m| increment(&mut m.resource_hash_bytes),
            |m| increment(&mut m.permission_hash_bytes),
            |m| m.target_timestamp += 1,
            |m| increment(&mut m.sender_core_salt_bytes),
            |m| increment(&mut m.sender_ext_salt_bytes),
            |m| increment(&mut m.output_core_salt_bytes),
            |m| increment(&mut m.output_ext_salt_bytes),
        ];
        for mutate in mutations {
            let mut changed = evidence.clone();
            mutate(&mut changed.metadata);
            changed.payload_hash = changed.compute_payload_hash();
            assert_ne!(changed.object_hash(), original);
        }
    }
}
