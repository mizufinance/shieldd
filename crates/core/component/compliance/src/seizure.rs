//! Typed state for staged asset-seizure proof admission and settlement.
//!
//! Proof verification happens before these transitions. This module binds the
//! admitted public inputs to one immutable job and keeps consensus state fixed
//! size regardless of the number of accepted chunks.

use anyhow::{bail, ensure, Result};
use ark_ff::{BigInteger, PrimeField};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use shieldd_sdk_asset::asset;
use shieldd_sdk_keys::Address;

use crate::pre_evidence::derive_orbis_scalar;

#[cfg(feature = "component")]
use async_trait::async_trait;
#[cfg(feature = "component")]
use cnidarium::{StateRead, StateWrite};

#[cfg(feature = "component")]
use crate::{
    registry::{seize_frozen_leaf, ComplianceRegistryRead},
    state_key, UserAssetStatus,
};

pub const MAX_SEIZURE_CHAIN_ID_BYTES: usize = 128;
pub const MAX_SEIZURE_PROJECTION_VERSION_BYTES: usize = 128;
pub const MAX_SEIZURE_DENOM_BYTES: usize = 256;
pub const MAX_SEIZURE_DESTINATION_BYTES: usize = 256;
pub const MAX_SEIZURE_JOB_BYTES: usize = 4096;
pub const MAX_FREEZE_RECORD_BYTES: usize = 512;
pub const SEIZURE_GROTH16_PROOF_BYTES: usize = 192;
pub const MAX_SEIZURE_CHUNKS_PER_PHASE: u64 = 1_000;

pub type SeizureId = [u8; 32];
pub type SeizureCommitment = [u8; 32];
pub type SeizureAuthority = [u8; 32];

/// Latest freeze generation for one address and asset.
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct FreezeRecord {
    #[serde(with = "address_serde")]
    pub address: Address,
    #[serde(with = "asset_id_serde")]
    pub asset_id: asset::Id,
    pub generation: u64,
    pub freeze_height: u64,
    pub anchor: Option<FreezeResultAnchor>,
}

/// Immutable one-block-later consensus anchor attached by the host.
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct FreezeResultAnchor {
    pub terminal_header_hash: [u8; 32],
    pub terminal_shieldd_root: [u8; 32],
}

impl FreezeRecord {
    pub fn next(
        previous: Option<&Self>,
        address: Address,
        asset_id: asset::Id,
        freeze_height: u64,
    ) -> Result<Self> {
        ensure!(freeze_height > 0, "freeze height must be nonzero");
        if let Some(previous) = previous {
            ensure!(
                previous.address == address && previous.asset_id == asset_id,
                "freeze record identity mismatch"
            );
        }
        let generation = previous.map_or(Ok(1), |record| {
            record
                .generation
                .checked_add(1)
                .ok_or_else(|| anyhow::anyhow!("freeze generation overflow"))
        })?;
        Ok(Self {
            address,
            asset_id,
            generation,
            freeze_height,
            anchor: None,
        })
    }

    pub fn attach_anchor(&mut self, generation: u64, anchor: FreezeResultAnchor) -> Result<()> {
        ensure!(
            generation == self.generation,
            "freeze result anchor generation mismatch"
        );
        ensure!(
            anchor.terminal_header_hash != [0; 32],
            "freeze terminal header hash must be nonzero"
        );
        ensure!(
            anchor.terminal_shieldd_root != [0; 32],
            "freeze terminal Shieldd root must be nonzero"
        );
        if let Some(existing) = &self.anchor {
            ensure!(existing == &anchor, "conflicting freeze result anchor");
            return Ok(());
        }
        self.anchor = Some(anchor);
        Ok(())
    }

    pub fn frozen_target<'a>(
        &self,
        address: &'a Address,
        is_frozen: bool,
    ) -> Result<FrozenSeizureTarget<'a>> {
        ensure!(address == &self.address, "freeze target address mismatch");
        let anchor = self
            .anchor
            .as_ref()
            .ok_or_else(|| anyhow::anyhow!("freeze result anchor is not attached"))?;
        Ok(FrozenSeizureTarget {
            address,
            asset_id: self.asset_id,
            freeze_generation: self.generation,
            freeze_height: self.freeze_height,
            terminal_header_hash: anchor.terminal_header_hash,
            terminal_shieldd_root: anchor.terminal_shieldd_root,
            is_frozen,
        })
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub enum SeizureProofFamily {
    Scan,
    Classify,
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct SeizureChunkPublicInputs {
    pub job_id: SeizureId,
    pub family: SeizureProofFamily,
    pub sequence: u64,
    pub immutable_statement_commitment: SeizureCommitment,
    pub start_state_commitment: SeizureCommitment,
    pub end_state_commitment: SeizureCommitment,
    pub classifier_context: Option<SeizureClassifierPublicContext>,
}

/// Target values intentionally revealed by classification proofs.
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct SeizureClassifierPublicContext {
    #[serde(with = "asset_id_serde")]
    pub target_asset_id: asset::Id,
    #[serde(with = "address_serde")]
    pub target_address: Address,
    /// Canonical little-endian Decaf scalar derived from the full address.
    pub target_derivation: [u8; 32],
}

impl SeizureClassifierPublicContext {
    pub fn for_target(target_asset_id: asset::Id, target_address: Address) -> Self {
        let scalar = derive_orbis_scalar(&target_address.to_vec());
        let mut target_derivation = [0u8; 32];
        let encoded = scalar.into_bigint().to_bytes_le();
        target_derivation[..encoded.len()].copy_from_slice(&encoded);
        Self {
            target_asset_id,
            target_address,
            target_derivation,
        }
    }

    pub fn validate(&self) -> Result<()> {
        let expected = Self::for_target(self.target_asset_id, self.target_address.clone());
        ensure!(
            self.target_derivation == expected.target_derivation,
            "seizure classifier derivation does not match the target address"
        );
        ensure!(
            decaf377::Fr::from_le_bytes_mod_order(&self.target_derivation)
                != decaf377::Fr::from(0u64),
            "seizure classifier derivation must be nonzero"
        );
        Ok(())
    }
}

impl SeizureChunkPublicInputs {
    pub fn validate(&self) -> Result<()> {
        ensure!(
            self.job_id != [0; 32],
            "seizure chunk job_id must be nonzero"
        );
        parse_state_commitment(self.start_state_commitment)?;
        parse_state_commitment(self.end_state_commitment)?;
        match (&self.family, &self.classifier_context) {
            (SeizureProofFamily::Scan, None) => Ok(()),
            (SeizureProofFamily::Classify, Some(context)) => context.validate(),
            (SeizureProofFamily::Scan, Some(_)) => {
                bail!("scan proof must not carry classifier context")
            }
            (SeizureProofFamily::Classify, None) => {
                bail!("classification proof requires target context")
            }
        }
    }

    /// Gnark public inputs in exact circuit field order.
    pub fn gnark_public_inputs(&self) -> Result<Vec<decaf377::Fq>> {
        self.validate()?;
        let (job_lo, job_hi) = split_256(self.job_id);
        let (statement_lo, statement_hi) = split_256(self.immutable_statement_commitment);
        let mut inputs = vec![
            fq_from_u128(job_lo),
            fq_from_u128(job_hi),
            decaf377::Fq::from(self.sequence),
            fq_from_u128(statement_lo),
            fq_from_u128(statement_hi),
            parse_state_commitment(self.start_state_commitment)?,
            parse_state_commitment(self.end_state_commitment)?,
        ];
        if let Some(context) = &self.classifier_context {
            let (diversified_generator, transmission_key) =
                address_public_fields(&context.target_address);
            inputs.extend([
                context.target_asset_id.0,
                diversified_generator,
                transmission_key,
                decaf377::Fq::from_le_bytes_mod_order(&context.target_derivation),
            ]);
        }
        Ok(inputs)
    }
}

/// Verifies deployed seizure proofs before consensus state may advance.
///
/// ACP authorization remains outside this cryptographic interface so its final
/// representation can change without changing proof encodings.
pub trait SeizureProofVerifier {
    fn verify_chunk(&self, public: &SeizureChunkPublicInputs, proof: &[u8]) -> Result<()>;

    fn verify_final(
        &self,
        job: &SeizureJob,
        terminal_state_commitment: SeizureCommitment,
        statement: &SeizureFinalStatement,
        proof: &[u8],
    ) -> Result<()>;
}

#[cfg(feature = "component")]
fn validate_individual_proof(proof: &[u8]) -> Result<()> {
    ensure!(
        proof.len() == SEIZURE_GROTH16_PROOF_BYTES,
        "invalid seizure Groth16 proof length"
    );
    Ok(())
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct SeizureChunkReceipt {
    pub family: SeizureProofFamily,
    pub sequence: u64,
    pub start_state_commitment: SeizureCommitment,
    pub end_state_commitment: SeizureCommitment,
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub enum SeizureAdvance {
    Accepted(SeizureChunkReceipt),
    Replay(SeizureChunkReceipt),
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct SeizureProgress {
    pub next_sequence: u64,
    pub state_commitment: SeizureCommitment,
    pub last_receipt: Option<SeizureChunkReceipt>,
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct SeizureClassificationProgress {
    pub next_sequence: u64,
    pub state_commitment: SeizureCommitment,
    pub scan_terminal_sequence: u64,
    pub scan_terminal_commitment: SeizureCommitment,
    pub last_receipt: Option<SeizureChunkReceipt>,
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct SeizureReady {
    pub scan_terminal_sequence: u64,
    pub scan_terminal_commitment: SeizureCommitment,
    pub classification_terminal_sequence: u64,
    pub classification_terminal_commitment: SeizureCommitment,
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct SeizureSource {
    pub height: u64,
    pub result_header_hash: [u8; 32],
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct SeizureFinalStatement {
    pub certificate_id: SeizureId,
    pub chain_id: String,
    pub projection_version: String,
    #[serde(with = "asset_id_serde")]
    pub asset_id: asset::Id,
    #[serde(with = "address_serde")]
    pub target_address: Address,
    pub active_start_source: SeizureSource,
    pub freeze_source: SeizureSource,
    pub terminal_header_hash: [u8; 32],
    pub terminal_shieldd_root: [u8; 32],
    pub freeze_generation: u64,
    /// Canonical private scan cursor opened by the final proof.
    pub terminal_cursor: u128,
    pub opening_balance: u128,
    pub canonical_transaction_count: u64,
    pub matched_transaction_count: u64,
    pub amount: u128,
    pub authorization_record_hash: [u8; 32],
    pub bankd_destination: Vec<u8>,
}

mod address_serde {
    use serde::{de::Error as _, Deserialize, Deserializer, Serialize, Serializer};
    use shieldd_sdk_keys::Address;

    pub fn serialize<S>(address: &Address, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: Serializer,
    {
        address.to_vec().serialize(serializer)
    }

    pub fn deserialize<'de, D>(deserializer: D) -> Result<Address, D::Error>
    where
        D: Deserializer<'de>,
    {
        let bytes = Vec::<u8>::deserialize(deserializer)?;
        Address::try_from(bytes.as_slice()).map_err(D::Error::custom)
    }
}

mod asset_id_serde {
    use decaf377::Fq;
    use serde::{de::Error as _, Deserialize, Deserializer, Serialize, Serializer};
    use shieldd_sdk_asset::asset;

    pub fn serialize<S>(asset_id: &asset::Id, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: Serializer,
    {
        asset_id.0.to_bytes().to_vec().serialize(serializer)
    }

    pub fn deserialize<'de, D>(deserializer: D) -> Result<asset::Id, D::Error>
    where
        D: Deserializer<'de>,
    {
        let bytes = Vec::<u8>::deserialize(deserializer)?;
        let encoded: [u8; 32] = bytes
            .try_into()
            .map_err(|_| D::Error::custom("asset ID must be 32 bytes"))?;
        let fq = Fq::from_bytes_checked(&encoded)
            .map_err(|_| D::Error::custom("asset ID must be canonical"))?;
        Ok(asset::Id(fq))
    }
}

fn split_256(bytes: [u8; 32]) -> (u128, u128) {
    let low = u128::from_le_bytes(bytes[..16].try_into().expect("fixed low limb"));
    let high = u128::from_le_bytes(bytes[16..].try_into().expect("fixed high limb"));
    (low, high)
}

fn fq_from_u128(value: u128) -> decaf377::Fq {
    decaf377::Fq::from_le_bytes_mod_order(&value.to_le_bytes())
}

fn parse_state_commitment(bytes: SeizureCommitment) -> Result<decaf377::Fq> {
    decaf377::Fq::from_bytes_checked(&bytes)
        .map_err(|_| anyhow::anyhow!("seizure state commitment is not a canonical field element"))
}

fn address_public_fields(address: &Address) -> (decaf377::Fq, decaf377::Fq) {
    let diversified_generator = address.diversified_generator().vartime_compress_to_field();
    let transmission_key = decaf377::Encoding(address.transmission_key().0)
        .vartime_decompress()
        .expect("validated address transmission key")
        .vartime_compress_to_field();
    (diversified_generator, transmission_key)
}

impl SeizureFinalStatement {
    pub fn validate(&self) -> Result<()> {
        ensure!(
            !self.chain_id.is_empty() && self.chain_id.len() <= MAX_SEIZURE_CHAIN_ID_BYTES,
            "invalid seizure chain_id length"
        );
        ensure!(
            !self.projection_version.is_empty()
                && self.projection_version.len() <= MAX_SEIZURE_PROJECTION_VERSION_BYTES,
            "invalid seizure projection_version length"
        );
        ensure!(
            !self.bankd_destination.is_empty()
                && self.bankd_destination.len() <= MAX_SEIZURE_DESTINATION_BYTES,
            "invalid seizure destination length"
        );
        ensure!(
            self.active_start_source.height <= self.freeze_source.height,
            "seizure active range ends before it starts"
        );
        ensure!(
            self.matched_transaction_count <= self.canonical_transaction_count,
            "matched transaction count exceeds canonical transaction count"
        );
        ensure!(
            self.terminal_cursor < (1u128 << 96),
            "seizure terminal cursor exceeds 96 bits"
        );
        Ok(())
    }

    /// Canonical commitment opened only by the final proof.
    pub fn commitment(&self) -> Result<SeizureCommitment> {
        self.validate()?;
        let mut hash = Sha256::new();
        hash.update(b"shieldd.seizure.statement.v1\0");
        hash.update(self.certificate_id);
        update_len_prefixed(&mut hash, self.chain_id.as_bytes());
        update_len_prefixed(&mut hash, self.projection_version.as_bytes());
        hash.update(self.asset_id.to_bytes());
        update_len_prefixed(&mut hash, &self.target_address.to_vec());
        update_source(&mut hash, &self.active_start_source);
        update_source(&mut hash, &self.freeze_source);
        hash.update(self.terminal_header_hash);
        hash.update(self.terminal_shieldd_root);
        hash.update(self.freeze_generation.to_be_bytes());
        hash.update(self.terminal_cursor.to_be_bytes());
        hash.update(self.opening_balance.to_be_bytes());
        hash.update(self.canonical_transaction_count.to_be_bytes());
        hash.update(self.matched_transaction_count.to_be_bytes());
        hash.update(self.amount.to_be_bytes());
        hash.update(self.authorization_record_hash);
        update_len_prefixed(&mut hash, &self.bankd_destination);
        Ok(hash.finalize().into())
    }

    /// Gnark public inputs in exact `SeizureFinalizeCircuit` field order.
    pub fn gnark_public_inputs(&self, job: &SeizureJob) -> Result<Vec<decaf377::Fq>> {
        self.validate()?;
        ensure!(self.certificate_id == job.job_id, "certificate_id mismatch");
        ensure!(
            self.commitment()? == job.immutable_statement_commitment,
            "final statement does not open the seizure job commitment"
        );
        let SeizureJobState::Ready(ready) = &job.state else {
            bail!("seizure job is not ready")
        };
        let (job_lo, job_hi) = split_256(job.job_id);
        let (statement_lo, statement_hi) = split_256(job.immutable_statement_commitment);
        let context =
            SeizureClassifierPublicContext::for_target(self.asset_id, self.target_address.clone());
        context.validate()?;
        let (diversified_generator, transmission_key) = address_public_fields(&self.target_address);
        Ok(vec![
            fq_from_u128(job_lo),
            fq_from_u128(job_hi),
            fq_from_u128(statement_lo),
            fq_from_u128(statement_hi),
            decaf377::Fq::from(ready.scan_terminal_sequence),
            decaf377::Fq::from(ready.classification_terminal_sequence),
            parse_state_commitment(ready.scan_terminal_commitment)?,
            parse_state_commitment(ready.classification_terminal_commitment)?,
            fq_from_u128(self.terminal_cursor),
            fq_from_u128(self.opening_balance),
            decaf377::Fq::from(self.canonical_transaction_count),
            decaf377::Fq::from(self.matched_transaction_count),
            fq_from_u128(self.amount),
            self.asset_id.0,
            diversified_generator,
            transmission_key,
            decaf377::Fq::from_le_bytes_mod_order(&context.target_derivation),
        ])
    }
}

fn update_len_prefixed(hash: &mut Sha256, value: &[u8]) {
    hash.update((value.len() as u64).to_be_bytes());
    hash.update(value);
}

fn update_source(hash: &mut Sha256, source: &SeizureSource) {
    hash.update(source.height.to_be_bytes());
    hash.update(source.result_header_hash);
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct FrozenSeizureTarget<'a> {
    pub address: &'a Address,
    pub asset_id: asset::Id,
    pub freeze_generation: u64,
    pub freeze_height: u64,
    pub terminal_header_hash: [u8; 32],
    pub terminal_shieldd_root: [u8; 32],
    pub is_frozen: bool,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct SeizureAuthorization<'a> {
    pub authority: SeizureAuthority,
    pub record_hash: [u8; 32],
    pub destination: &'a [u8],
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct SeizureSettlement {
    pub certificate_id: SeizureId,
    pub denom: String,
    pub amount: u128,
    pub destination: Vec<u8>,
    pub freeze_generation: u64,
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct SeizureReceipt {
    pub statement: SeizureFinalStatement,
    pub settlement: SeizureSettlement,
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub enum SeizureJobState {
    Scanning(SeizureProgress),
    Classifying(SeizureClassificationProgress),
    Ready(SeizureReady),
    Seized(SeizureReceipt),
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct SeizureJob {
    pub job_id: SeizureId,
    pub authority: SeizureAuthority,
    pub immutable_statement_commitment: SeizureCommitment,
    pub state: SeizureJobState,
}

impl SeizureJob {
    pub fn open(
        job_id: SeizureId,
        authority: SeizureAuthority,
        immutable_statement_commitment: SeizureCommitment,
        initial_state_commitment: SeizureCommitment,
    ) -> Result<Self> {
        ensure!(job_id != [0; 32], "seizure job_id must be nonzero");
        ensure!(authority != [0; 32], "seizure authority must be nonzero");
        ensure!(
            immutable_statement_commitment != [0; 32],
            "seizure statement commitment must be nonzero"
        );
        parse_state_commitment(initial_state_commitment)?;
        Ok(Self {
            job_id,
            authority,
            immutable_statement_commitment,
            state: SeizureJobState::Scanning(SeizureProgress {
                next_sequence: 0,
                state_commitment: initial_state_commitment,
                last_receipt: None,
            }),
        })
    }

    pub fn advance(
        &mut self,
        authority: SeizureAuthority,
        public: SeizureChunkPublicInputs,
    ) -> Result<SeizureAdvance> {
        public.validate()?;
        self.ensure_authority(authority)?;
        ensure!(
            public.job_id == self.job_id,
            "seizure chunk job_id mismatch"
        );
        ensure!(
            public.immutable_statement_commitment == self.immutable_statement_commitment,
            "seizure chunk changed immutable statement commitment"
        );

        let progress = match (&mut self.state, public.family) {
            (SeizureJobState::Scanning(progress), SeizureProofFamily::Scan) => progress,
            (
                SeizureJobState::Classifying(SeizureClassificationProgress {
                    next_sequence,
                    state_commitment,
                    last_receipt,
                    ..
                }),
                SeizureProofFamily::Classify,
            ) => return advance_progress(next_sequence, state_commitment, last_receipt, public),
            (SeizureJobState::Seized(_), _) => bail!("seizure job is terminal"),
            _ => bail!("seizure proof family does not match job phase"),
        };

        advance_progress(
            &mut progress.next_sequence,
            &mut progress.state_commitment,
            &mut progress.last_receipt,
            public,
        )
    }

    pub fn begin_classification(&mut self, authority: SeizureAuthority) -> Result<()> {
        self.ensure_authority(authority)?;
        let SeizureJobState::Scanning(progress) = &self.state else {
            bail!("seizure job is not scanning");
        };
        ensure!(
            progress.next_sequence > 0,
            "seizure scan must accept at least one chunk"
        );
        let scan_terminal_sequence = progress.next_sequence;
        let terminal = progress.state_commitment;
        self.state = SeizureJobState::Classifying(SeizureClassificationProgress {
            next_sequence: 0,
            state_commitment: terminal,
            scan_terminal_sequence,
            scan_terminal_commitment: terminal,
            last_receipt: None,
        });
        Ok(())
    }

    pub fn mark_ready(&mut self, authority: SeizureAuthority) -> Result<()> {
        self.ensure_authority(authority)?;
        let SeizureJobState::Classifying(progress) = &self.state else {
            bail!("seizure job is not classifying");
        };
        ensure!(
            progress.next_sequence > 0,
            "seizure classification must accept at least one chunk"
        );
        self.state = SeizureJobState::Ready(SeizureReady {
            scan_terminal_sequence: progress.scan_terminal_sequence,
            scan_terminal_commitment: progress.scan_terminal_commitment,
            classification_terminal_sequence: progress.next_sequence,
            classification_terminal_commitment: progress.state_commitment,
        });
        Ok(())
    }

    /// Apply a previously verified final proof and fresh execution-time facts.
    pub fn finalize_verified(
        &mut self,
        authority: SeizureAuthority,
        final_proof_start_commitment: SeizureCommitment,
        statement: SeizureFinalStatement,
        target: FrozenSeizureTarget<'_>,
        authorization: SeizureAuthorization<'_>,
        denom: String,
        denom_asset_id: asset::Id,
    ) -> Result<SeizureReceipt> {
        if let SeizureJobState::Seized(existing) = &self.state {
            if existing.statement == statement
                && authority == self.authority
                && authorization.authority == self.authority
                && authorization.record_hash == statement.authorization_record_hash
                && authorization.destination == statement.bankd_destination
                && denom_asset_id == statement.asset_id
                && denom == existing.settlement.denom
            {
                return Ok(existing.clone());
            }
            bail!("conflicting replay of terminal seizure job");
        }

        self.ensure_authority(authority)?;
        let SeizureJobState::Ready(ready) = &self.state else {
            bail!("seizure job is not ready");
        };
        ensure!(
            final_proof_start_commitment == ready.classification_terminal_commitment,
            "seizure final proof starts from the wrong commitment"
        );
        ensure!(
            statement.commitment()? == self.immutable_statement_commitment,
            "seizure final statement does not open the job commitment"
        );
        ensure!(
            statement.certificate_id == self.job_id,
            "certificate_id mismatch"
        );
        ensure!(
            authorization.authority == self.authority,
            "authorization authority mismatch"
        );
        ensure!(
            authorization.record_hash == statement.authorization_record_hash,
            "authorization record mismatch"
        );
        ensure!(
            authorization.destination == statement.bankd_destination,
            "authorization destination mismatch"
        );
        ensure!(target.is_frozen, "seizure target is not frozen");
        ensure!(
            target.address == &statement.target_address,
            "seizure target address mismatch"
        );
        ensure!(
            target.asset_id == statement.asset_id,
            "seizure target asset mismatch"
        );
        ensure!(
            target.freeze_generation == statement.freeze_generation,
            "seizure freeze generation is stale"
        );
        ensure!(
            target.freeze_height == statement.freeze_source.height,
            "seizure freeze source height mismatch"
        );
        ensure!(
            target.terminal_header_hash == statement.terminal_header_hash,
            "seizure terminal header mismatch"
        );
        ensure!(
            target.terminal_shieldd_root == statement.terminal_shieldd_root,
            "seizure terminal Shieldd root mismatch"
        );
        ensure!(
            denom_asset_id == statement.asset_id,
            "seizure denom asset mismatch"
        );
        ensure!(
            !denom.is_empty() && denom.len() <= MAX_SEIZURE_DENOM_BYTES,
            "invalid seizure denom length"
        );

        let receipt = SeizureReceipt {
            settlement: SeizureSettlement {
                certificate_id: statement.certificate_id,
                denom,
                amount: statement.amount,
                destination: statement.bankd_destination.clone(),
                freeze_generation: statement.freeze_generation,
            },
            statement,
        };
        self.state = SeizureJobState::Seized(receipt.clone());
        Ok(receipt)
    }

    fn ensure_authority(&self, authority: SeizureAuthority) -> Result<()> {
        ensure!(authority == self.authority, "seizure authority mismatch");
        Ok(())
    }
}

fn advance_progress(
    next_sequence: &mut u64,
    state_commitment: &mut SeizureCommitment,
    last_receipt: &mut Option<SeizureChunkReceipt>,
    public: SeizureChunkPublicInputs,
) -> Result<SeizureAdvance> {
    if let Some(receipt) = last_receipt {
        if public.sequence == receipt.sequence
            && public.family == receipt.family
            && public.start_state_commitment == receipt.start_state_commitment
            && public.end_state_commitment == receipt.end_state_commitment
        {
            return Ok(SeizureAdvance::Replay(receipt.clone()));
        }
    }
    ensure!(
        public.sequence == *next_sequence,
        "seizure chunk sequence mismatch"
    );
    ensure!(
        *next_sequence < MAX_SEIZURE_CHUNKS_PER_PHASE,
        "seizure phase exceeds the chunk limit"
    );
    ensure!(
        public.start_state_commitment == *state_commitment,
        "seizure chunk start commitment mismatch"
    );
    ensure!(
        public.end_state_commitment != public.start_state_commitment,
        "seizure chunk must advance its state commitment"
    );
    *next_sequence = next_sequence
        .checked_add(1)
        .ok_or_else(|| anyhow::anyhow!("seizure chunk sequence overflow"))?;
    *state_commitment = public.end_state_commitment;
    let receipt = SeizureChunkReceipt {
        family: public.family,
        sequence: public.sequence,
        start_state_commitment: public.start_state_commitment,
        end_state_commitment: public.end_state_commitment,
    };
    *last_receipt = Some(receipt.clone());
    Ok(SeizureAdvance::Accepted(receipt))
}

#[cfg(feature = "component")]
#[async_trait]
pub trait FreezeStateRead: StateRead {
    async fn get_freeze_record(
        &self,
        address: &Address,
        asset_id: asset::Id,
    ) -> Result<Option<FreezeRecord>> {
        let key = state_key::freeze_record(address, &asset_id);
        let Some(bytes) = self.get_raw(&key).await? else {
            return Ok(None);
        };
        ensure!(
            bytes.len() <= MAX_FREEZE_RECORD_BYTES,
            "stored freeze record exceeds size limit"
        );
        let record: FreezeRecord = bincode::deserialize(&bytes)?;
        ensure!(
            record.address == *address && record.asset_id == asset_id,
            "stored freeze record key mismatch"
        );
        Ok(Some(record))
    }
}

#[cfg(feature = "component")]
impl<T: StateRead + ?Sized> FreezeStateRead for T {}

#[cfg(feature = "component")]
#[async_trait]
pub trait FreezeStateWrite: StateWrite + FreezeStateRead {
    async fn record_freeze_generation(
        &mut self,
        address: Address,
        asset_id: asset::Id,
        freeze_height: u64,
    ) -> Result<FreezeRecord> {
        let previous = self.get_freeze_record(&address, asset_id).await?;
        let record = FreezeRecord::next(previous.as_ref(), address, asset_id, freeze_height)?;
        self.put_freeze_record(record.clone())?;
        Ok(record)
    }

    async fn attach_freeze_result_anchor(
        &mut self,
        address: &Address,
        asset_id: asset::Id,
        generation: u64,
        anchor: FreezeResultAnchor,
    ) -> Result<FreezeRecord> {
        let mut record = self
            .get_freeze_record(address, asset_id)
            .await?
            .ok_or_else(|| anyhow::anyhow!("freeze record does not exist"))?;
        record.attach_anchor(generation, anchor)?;
        self.put_freeze_record(record.clone())?;
        Ok(record)
    }

    fn put_freeze_record(&mut self, record: FreezeRecord) -> Result<()> {
        let bytes = bincode::serialize(&record)?;
        ensure!(
            bytes.len() <= MAX_FREEZE_RECORD_BYTES,
            "freeze record exceeds size limit"
        );
        self.put_raw(
            state_key::freeze_record(&record.address, &record.asset_id),
            bytes,
        );
        Ok(())
    }
}

#[cfg(feature = "component")]
impl<T: StateWrite + ?Sized> FreezeStateWrite for T {}

#[cfg(feature = "component")]
#[async_trait]
pub trait SeizureStateRead: StateRead {
    async fn get_seizure_job(&self, job_id: SeizureId) -> Result<Option<SeizureJob>> {
        let Some(bytes) = self.get_raw(&state_key::seizure_job(&job_id)).await? else {
            return Ok(None);
        };
        ensure!(
            bytes.len() <= MAX_SEIZURE_JOB_BYTES,
            "stored seizure job exceeds size limit"
        );
        let job: SeizureJob = bincode::deserialize(&bytes)?;
        ensure!(job.job_id == job_id, "stored seizure job key mismatch");
        Ok(Some(job))
    }
}

#[cfg(feature = "component")]
impl<T: StateRead + ?Sized> SeizureStateRead for T {}

#[cfg(feature = "component")]
#[async_trait]
pub trait SeizureStateWrite: StateWrite + SeizureStateRead {
    async fn open_seizure_job(&mut self, job: SeizureJob) -> Result<()> {
        ensure!(
            self.get_seizure_job(job.job_id).await?.is_none(),
            "seizure job already exists"
        );
        self.put_seizure_job(job)
    }

    async fn advance_seizure_job<V: SeizureProofVerifier + Sync>(
        &mut self,
        verifier: &V,
        job_id: SeizureId,
        authority: SeizureAuthority,
        public: SeizureChunkPublicInputs,
        proof: &[u8],
    ) -> Result<SeizureAdvance> {
        validate_individual_proof(proof)?;
        let job = self
            .get_seizure_job(job_id)
            .await?
            .ok_or_else(|| anyhow::anyhow!("seizure job does not exist"))?;
        let mut next = job.clone();
        let advance = next.advance(authority, public.clone())?;
        verifier.verify_chunk(&public, proof)?;
        self.put_seizure_job(next)?;
        Ok(advance)
    }

    async fn begin_seizure_classification(
        &mut self,
        job_id: SeizureId,
        authority: SeizureAuthority,
    ) -> Result<()> {
        let mut job = self
            .get_seizure_job(job_id)
            .await?
            .ok_or_else(|| anyhow::anyhow!("seizure job does not exist"))?;
        job.begin_classification(authority)?;
        self.put_seizure_job(job)
    }

    async fn mark_seizure_ready(
        &mut self,
        job_id: SeizureId,
        authority: SeizureAuthority,
    ) -> Result<()> {
        let mut job = self
            .get_seizure_job(job_id)
            .await?
            .ok_or_else(|| anyhow::anyhow!("seizure job does not exist"))?;
        job.mark_ready(authority)?;
        self.put_seizure_job(job)
    }

    fn put_seizure_job(&mut self, job: SeizureJob) -> Result<()> {
        let bytes = bincode::serialize(&job)?;
        ensure!(
            bytes.len() <= MAX_SEIZURE_JOB_BYTES,
            "seizure job exceeds size limit"
        );
        self.put_raw(state_key::seizure_job(&job.job_id), bytes);
        Ok(())
    }
}

#[cfg(feature = "component")]
impl<T: StateWrite + ?Sized> SeizureStateWrite for T {}

/// Atomically validate execution-time state, mark the leaf seized, and persist the receipt.
#[cfg(feature = "component")]
pub async fn finalize_seizure_job<S>(
    state: &mut S,
    verifier: &(impl SeizureProofVerifier + Sync),
    job_id: SeizureId,
    authority: SeizureAuthority,
    final_proof_start_commitment: SeizureCommitment,
    statement: SeizureFinalStatement,
    proof: &[u8],
    authorization: SeizureAuthorization<'_>,
    denom: String,
    denom_asset_id: asset::Id,
) -> Result<SeizureReceipt>
where
    S: StateWrite + ComplianceRegistryRead + ?Sized,
{
    validate_individual_proof(proof)?;
    let mut job = state
        .get_seizure_job(job_id)
        .await?
        .ok_or_else(|| anyhow::anyhow!("seizure job does not exist"))?;
    verifier.verify_final(&job, final_proof_start_commitment, &statement, proof)?;

    // A terminal replay must not require the leaf to still be Frozen: the first
    // execution has already moved it to the terminal Seized status.
    if matches!(job.state, SeizureJobState::Seized(_)) {
        let replay_target = FrozenSeizureTarget {
            address: &statement.target_address,
            asset_id: statement.asset_id,
            freeze_generation: statement.freeze_generation,
            freeze_height: statement.freeze_source.height,
            terminal_header_hash: statement.terminal_header_hash,
            terminal_shieldd_root: statement.terminal_shieldd_root,
            is_frozen: false,
        };
        return job.finalize_verified(
            authority,
            final_proof_start_commitment,
            statement.clone(),
            replay_target,
            authorization,
            denom,
            denom_asset_id,
        );
    }

    let freeze = state
        .get_freeze_record(&statement.target_address, statement.asset_id)
        .await?
        .ok_or_else(|| anyhow::anyhow!("seizure target has no freeze record"))?;
    let anchor = freeze
        .anchor
        .as_ref()
        .ok_or_else(|| anyhow::anyhow!("freeze result anchor is not attached"))?;
    let leaf = state
        .get_user_leaf_record(&statement.target_address, statement.asset_id)
        .await?
        .ok_or_else(|| anyhow::anyhow!("seizure target is not registered"))?;
    ensure!(
        leaf.leaf.status == UserAssetStatus::Frozen,
        "seizure target is not frozen"
    );

    let target = FrozenSeizureTarget {
        address: &freeze.address,
        asset_id: freeze.asset_id,
        freeze_generation: freeze.generation,
        freeze_height: freeze.freeze_height,
        terminal_header_hash: anchor.terminal_header_hash,
        terminal_shieldd_root: anchor.terminal_shieldd_root,
        is_frozen: true,
    };
    let receipt = job.finalize_verified(
        authority,
        final_proof_start_commitment,
        statement,
        target,
        authorization,
        denom,
        denom_asset_id,
    )?;

    // Serialize before the leaf mutation so all fallible receipt validation is
    // complete before either consensus object is changed.
    let job_bytes = bincode::serialize(&job)?;
    ensure!(
        job_bytes.len() <= MAX_SEIZURE_JOB_BYTES,
        "seizure job exceeds size limit"
    );
    seize_frozen_leaf(state, &freeze.address, freeze.asset_id).await?;
    state.put_raw(state_key::seizure_job(&job.job_id), job_bytes);
    Ok(receipt)
}

#[cfg(test)]
mod tests {
    use super::*;
    use rand_core::OsRng;

    fn commitment(value: u64) -> SeizureCommitment {
        let mut hash = Sha256::new();
        hash.update(b"shieldd.seizure.test.commitment\0");
        hash.update(value.to_be_bytes());
        hash.finalize().into()
    }

    fn state_commitment(value: u64) -> SeizureCommitment {
        decaf377::Fq::from(value).to_bytes()
    }

    fn statement() -> SeizureFinalStatement {
        SeizureFinalStatement {
            certificate_id: commitment(1),
            chain_id: "bankd-test-1".to_owned(),
            projection_version: "asset-seizure-v1".to_owned(),
            asset_id: asset::Id(decaf377::Fq::from(9u64)),
            target_address: Address::dummy(&mut OsRng),
            active_start_source: SeizureSource {
                height: 10,
                result_header_hash: commitment(10),
            },
            freeze_source: SeizureSource {
                height: 20,
                result_header_hash: commitment(20),
            },
            terminal_header_hash: commitment(21),
            terminal_shieldd_root: commitment(22),
            freeze_generation: 3,
            terminal_cursor: 20,
            opening_balance: 0,
            canonical_transaction_count: 1_000,
            matched_transaction_count: 7,
            amount: 123,
            authorization_record_hash: commitment(23),
            bankd_destination: b"bankd1destination".to_vec(),
        }
    }

    fn chunk(
        job: &SeizureJob,
        family: SeizureProofFamily,
        sequence: u64,
        start: SeizureCommitment,
        end: SeizureCommitment,
    ) -> SeizureChunkPublicInputs {
        SeizureChunkPublicInputs {
            job_id: job.job_id,
            family,
            sequence,
            immutable_statement_commitment: job.immutable_statement_commitment,
            start_state_commitment: start,
            end_state_commitment: end,
            classifier_context: (family == SeizureProofFamily::Classify).then(|| {
                SeizureClassifierPublicContext::for_target(
                    asset::Id(decaf377::Fq::from(9u64)),
                    Address::dummy(&mut OsRng),
                )
            }),
        }
    }

    #[test]
    fn freeze_generations_and_result_anchors_are_monotonic_and_immutable() {
        let address = Address::dummy(&mut OsRng);
        let asset_id = asset::Id(decaf377::Fq::from(9u64));
        let mut first = FreezeRecord::next(None, address.clone(), asset_id, 20).unwrap();
        assert_eq!(first.generation, 1);
        let anchor = FreezeResultAnchor {
            terminal_header_hash: commitment(20),
            terminal_shieldd_root: commitment(21),
        };
        first.attach_anchor(1, anchor.clone()).unwrap();
        first.attach_anchor(1, anchor).unwrap();
        let stored = bincode::serialize(&first).unwrap();
        let decoded: FreezeRecord = bincode::deserialize(&stored).unwrap();
        assert_eq!(decoded, first);
        assert!(first
            .attach_anchor(
                1,
                FreezeResultAnchor {
                    terminal_header_hash: commitment(22),
                    terminal_shieldd_root: commitment(21),
                },
            )
            .is_err());

        let second = FreezeRecord::next(Some(&first), address, asset_id, 30).unwrap();
        assert_eq!(second.generation, 2);
        assert!(second.anchor.is_none());
    }

    #[test]
    fn one_thousand_chunks_advance_with_fixed_size_progress() {
        let statement = statement();
        let authority = commitment(2);
        let initial = state_commitment(100);
        let mut job = SeizureJob::open(
            statement.certificate_id,
            authority,
            statement.commitment().unwrap(),
            initial,
        )
        .unwrap();

        let mut current = initial;
        for sequence in 0..500 {
            let end = state_commitment(101 + sequence);
            assert!(matches!(
                job.advance(
                    authority,
                    chunk(&job, SeizureProofFamily::Scan, sequence, current, end)
                )
                .unwrap(),
                SeizureAdvance::Accepted(_)
            ));
            current = end;
        }
        job.begin_classification(authority).unwrap();
        for sequence in 0..500 {
            let end = state_commitment(1_001 + sequence);
            job.advance(
                authority,
                chunk(&job, SeizureProofFamily::Classify, sequence, current, end),
            )
            .unwrap();
            current = end;
        }
        job.mark_ready(authority).unwrap();

        let target = FrozenSeizureTarget {
            address: &statement.target_address,
            asset_id: statement.asset_id,
            freeze_generation: statement.freeze_generation,
            freeze_height: statement.freeze_source.height,
            terminal_header_hash: statement.terminal_header_hash,
            terminal_shieldd_root: statement.terminal_shieldd_root,
            is_frozen: true,
        };
        let authorization = SeizureAuthorization {
            authority,
            record_hash: statement.authorization_record_hash,
            destination: &statement.bankd_destination,
        };
        let receipt = job
            .finalize_verified(
                authority,
                current,
                statement.clone(),
                target,
                authorization,
                "uregulated".to_owned(),
                statement.asset_id,
            )
            .unwrap();
        assert_eq!(receipt.settlement.amount, 123);
        assert!(matches!(job.state, SeizureJobState::Seized(_)));

        let encoded = bincode::serialize(&job).unwrap();
        assert!(encoded.len() < 2_048, "terminal job state grew per chunk");
        let decoded: SeizureJob = bincode::deserialize(&encoded).unwrap();
        assert_eq!(decoded, job);
    }

    #[test]
    fn exact_latest_chunk_replay_is_idempotent() {
        let statement = statement();
        let authority = commitment(2);
        let initial = state_commitment(100);
        let mut job = SeizureJob::open(
            statement.certificate_id,
            authority,
            statement.commitment().unwrap(),
            initial,
        )
        .unwrap();
        let public = chunk(
            &job,
            SeizureProofFamily::Scan,
            0,
            initial,
            state_commitment(101),
        );
        job.advance(authority, public.clone()).unwrap();
        assert!(matches!(
            job.advance(authority, public).unwrap(),
            SeizureAdvance::Replay(_)
        ));
    }

    #[test]
    fn typed_gnark_public_inputs_bind_target_and_terminal_sequences() {
        let statement = statement();
        let authority = commitment(2);
        let initial = state_commitment(100);
        let scan_end = state_commitment(101);
        let classify_end = state_commitment(102);
        let mut job = SeizureJob::open(
            statement.certificate_id,
            authority,
            statement.commitment().unwrap(),
            initial,
        )
        .unwrap();

        let scan = chunk(&job, SeizureProofFamily::Scan, 0, initial, scan_end);
        assert_eq!(scan.gnark_public_inputs().unwrap().len(), 7);
        job.advance(authority, scan).unwrap();
        job.begin_classification(authority).unwrap();

        let mut classify = chunk(
            &job,
            SeizureProofFamily::Classify,
            0,
            scan_end,
            classify_end,
        );
        classify.classifier_context = Some(SeizureClassifierPublicContext::for_target(
            statement.asset_id,
            statement.target_address.clone(),
        ));
        assert_eq!(classify.gnark_public_inputs().unwrap().len(), 11);
        let mut wrong_derivation = classify.clone();
        wrong_derivation
            .classifier_context
            .as_mut()
            .unwrap()
            .target_derivation[0] ^= 1;
        assert!(wrong_derivation.gnark_public_inputs().is_err());

        job.advance(authority, classify).unwrap();
        job.mark_ready(authority).unwrap();
        let inputs = statement.gnark_public_inputs(&job).unwrap();
        assert_eq!(inputs.len(), 17);
        assert_eq!(inputs[4], decaf377::Fq::from(1u64));
        assert_eq!(inputs[5], decaf377::Fq::from(1u64));
        assert_eq!(inputs[12], fq_from_u128(statement.amount));
    }

    #[test]
    fn chunk_mutations_are_rejected_without_state_change() {
        let statement = statement();
        let authority = commitment(2);
        let initial = state_commitment(100);
        let original = SeizureJob::open(
            statement.certificate_id,
            authority,
            statement.commitment().unwrap(),
            initial,
        )
        .unwrap();
        let valid = chunk(
            &original,
            SeizureProofFamily::Scan,
            0,
            initial,
            state_commitment(101),
        );

        let mutations: Vec<Box<dyn Fn(&mut SeizureChunkPublicInputs)>> = vec![
            Box::new(|p| p.job_id = commitment(90)),
            Box::new(|p| p.family = SeizureProofFamily::Classify),
            Box::new(|p| p.sequence = 1),
            Box::new(|p| p.immutable_statement_commitment = commitment(91)),
            Box::new(|p| p.start_state_commitment = commitment(92)),
            Box::new(|p| p.end_state_commitment = p.start_state_commitment),
        ];
        for mutate in mutations {
            let mut job = original.clone();
            let mut public = valid.clone();
            mutate(&mut public);
            assert!(job.advance(authority, public).is_err());
            assert_eq!(job, original);
        }

        let mut job = original.clone();
        assert!(job.advance(commitment(99), valid).is_err());
        assert_eq!(job, original);
    }

    #[test]
    fn finalization_rejects_stale_freeze_and_conflicting_replay() {
        let statement = statement();
        let authority = commitment(2);
        let initial = state_commitment(100);
        let scan_end = state_commitment(101);
        let classify_end = state_commitment(102);
        let mut job = SeizureJob::open(
            statement.certificate_id,
            authority,
            statement.commitment().unwrap(),
            initial,
        )
        .unwrap();
        job.advance(
            authority,
            chunk(&job, SeizureProofFamily::Scan, 0, initial, scan_end),
        )
        .unwrap();
        job.begin_classification(authority).unwrap();
        job.advance(
            authority,
            chunk(
                &job,
                SeizureProofFamily::Classify,
                0,
                scan_end,
                classify_end,
            ),
        )
        .unwrap();
        job.mark_ready(authority).unwrap();

        let stale_target = FrozenSeizureTarget {
            address: &statement.target_address,
            asset_id: statement.asset_id,
            freeze_generation: statement.freeze_generation + 1,
            freeze_height: statement.freeze_source.height,
            terminal_header_hash: statement.terminal_header_hash,
            terminal_shieldd_root: statement.terminal_shieldd_root,
            is_frozen: true,
        };
        let authorization = SeizureAuthorization {
            authority,
            record_hash: statement.authorization_record_hash,
            destination: &statement.bankd_destination,
        };
        assert!(job
            .finalize_verified(
                authority,
                classify_end,
                statement.clone(),
                stale_target,
                authorization,
                "uregulated".to_owned(),
                statement.asset_id,
            )
            .is_err());
        assert!(matches!(job.state, SeizureJobState::Ready(_)));

        let target = FrozenSeizureTarget {
            address: &statement.target_address,
            asset_id: statement.asset_id,
            freeze_generation: statement.freeze_generation,
            freeze_height: statement.freeze_source.height,
            terminal_header_hash: statement.terminal_header_hash,
            terminal_shieldd_root: statement.terminal_shieldd_root,
            is_frozen: true,
        };
        let authorization = SeizureAuthorization {
            authority,
            record_hash: statement.authorization_record_hash,
            destination: &statement.bankd_destination,
        };
        let receipt = job
            .finalize_verified(
                authority,
                classify_end,
                statement.clone(),
                target,
                authorization,
                "uregulated".to_owned(),
                statement.asset_id,
            )
            .unwrap();

        let replay_target = FrozenSeizureTarget {
            address: &statement.target_address,
            asset_id: statement.asset_id,
            freeze_generation: statement.freeze_generation,
            freeze_height: statement.freeze_source.height,
            terminal_header_hash: statement.terminal_header_hash,
            terminal_shieldd_root: statement.terminal_shieldd_root,
            is_frozen: false,
        };
        let replay_authorization = SeizureAuthorization {
            authority,
            record_hash: statement.authorization_record_hash,
            destination: &statement.bankd_destination,
        };
        assert_eq!(
            job.finalize_verified(
                authority,
                classify_end,
                statement.clone(),
                replay_target,
                replay_authorization,
                "uregulated".to_owned(),
                statement.asset_id,
            )
            .unwrap(),
            receipt
        );

        let conflicting_denom_target = FrozenSeizureTarget {
            address: &statement.target_address,
            asset_id: statement.asset_id,
            freeze_generation: statement.freeze_generation,
            freeze_height: statement.freeze_source.height,
            terminal_header_hash: statement.terminal_header_hash,
            terminal_shieldd_root: statement.terminal_shieldd_root,
            is_frozen: false,
        };
        let conflicting_denom_authorization = SeizureAuthorization {
            authority,
            record_hash: statement.authorization_record_hash,
            destination: &statement.bankd_destination,
        };
        assert!(job
            .finalize_verified(
                authority,
                classify_end,
                statement.clone(),
                conflicting_denom_target,
                conflicting_denom_authorization,
                "different-denom".to_owned(),
                statement.asset_id,
            )
            .is_err());

        let mut conflict = statement;
        conflict.amount += 1;
        let conflict_target = FrozenSeizureTarget {
            address: &conflict.target_address,
            asset_id: conflict.asset_id,
            freeze_generation: conflict.freeze_generation,
            freeze_height: conflict.freeze_source.height,
            terminal_header_hash: conflict.terminal_header_hash,
            terminal_shieldd_root: conflict.terminal_shieldd_root,
            is_frozen: true,
        };
        let conflict_authorization = SeizureAuthorization {
            authority,
            record_hash: conflict.authorization_record_hash,
            destination: &conflict.bankd_destination,
        };
        assert!(job
            .finalize_verified(
                authority,
                classify_end,
                conflict.clone(),
                conflict_target,
                conflict_authorization,
                "uregulated".to_owned(),
                conflict.asset_id,
            )
            .is_err());
    }
}
