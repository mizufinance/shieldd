use anyhow::{ensure, Context, Result};
use camino::{Utf8Path, Utf8PathBuf};
use reddsa::{sapling::SpendAuth, SigningKey, VerificationKey};
use serde::Deserialize;
use shieldd_sdk_crypto::{encoding, Fq};
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_shielded_pool::{
    seizure_recovery::{prepare_seizure, RecoveredSeizureNote, SeizurePreparationContext},
    HostWithdrawalDestination, RecoveryCommitment, MAX_SEIZURE_REQUEST_BYTES,
};
use std::io::{Read, Write};
use zeroize::Zeroizing;

#[derive(Debug, clap::Subcommand)]
pub enum SeizureCmd {
    /// Prepare an explicitly local fixture from private JSON stdin; no recovery service or submission.
    /// Leaf/history authentication belongs to the caller. The output contains only the signed public batch.
    PrepareLocal {
        #[clap(long)]
        output: Utf8PathBuf,
    },
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct LocalInput {
    chain_id: String,
    leaf: shieldd_sdk_compliance::ComplianceLeaf,
    current_height: u64,
    tree: shieldd_sdk_tct::Tree,
    destination: HostWithdrawalDestination,
    expiry_height: u64,
    openings: Vec<LocalOpening>,
    rnk_hex: Zeroizing<String>,
    authority_sk_hex: Zeroizing<String>,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct LocalOpening {
    position: u64,
    amount: u128,
    note_blinding_hex: Zeroizing<String>,
    recovery_commitment_hex: String,
}
fn field(text: &str) -> Result<Fq> {
    let bytes = Zeroizing::new(
        hex::decode(text).map_err(|_| anyhow::anyhow!("invalid private field encoding"))?,
    );
    encoding::field(
        bytes
            .as_slice()
            .try_into()
            .map_err(|_| anyhow::anyhow!("private field must be 32 bytes"))?,
    )
}
impl SeizureCmd {
    pub fn exec(&self, keys: Option<&Utf8Path>) -> Result<()> {
        let Self::PrepareLocal { output } = self;
        let owner = ExportOwner::acquire(output)?;
        let mut bytes = Zeroizing::new(Vec::new());
        std::io::stdin()
            .take(MAX_SEIZURE_REQUEST_BYTES as u64 + 1)
            .read_to_end(&mut bytes)?;
        ensure!(
            bytes.len() <= MAX_SEIZURE_REQUEST_BYTES,
            "private fixture exceeds size limit"
        );
        let input: LocalInput = serde_json::from_slice(&bytes)
            .map_err(|_| anyhow::anyhow!("invalid private seizure fixture"))?;
        let keys = keys.context("--pari-keys is required for local seizure preparation")?;
        let registry = shieldd_sdk_proof_params::pari::Registry::load(keys)?;
        let recovered = input
            .openings
            .into_iter()
            .map(|note| -> Result<_> {
                Ok(RecoveredSeizureNote {
                    amount: note.amount.into(),
                    note_blinding: field(&note.note_blinding_hex)?,
                    recovery_commitment: RecoveryCommitment(field(&note.recovery_commitment_hex)?),
                    proof: input.tree.witness(note.position.into()).context(
                        "selected occurrence is not retained; replay authenticated history locally",
                    )?,
                })
            })
            .collect::<Result<Vec<_>>>()?;
        let context = SeizurePreparationContext {
            chain_id: input.chain_id,
            leaf: input.leaf,
            current_height: input.current_height,
            anchor: input.tree.root(),
            destination: input.destination,
            expiry_height: input.expiry_height,
        };
        let prepared = prepare_seizure(
            context,
            recovered,
            field(&input.rnk_hex)?,
            &registry,
            &mut rand_core::OsRng,
        )?;
        let sk_bytes = Zeroizing::new(
            hex::decode(input.authority_sk_hex.as_str())
                .map_err(|_| anyhow::anyhow!("invalid private authority key"))?,
        );
        let key: [u8; 32] = sk_bytes
            .as_slice()
            .try_into()
            .map_err(|_| anyhow::anyhow!("authority key must have 32 bytes"))?;
        let sk = SigningKey::<SpendAuth>::try_from(key)
            .map_err(|_| anyhow::anyhow!("invalid authority signing key"))?;
        let signature = sk.sign(rand_core::OsRng, &prepared.authorization().signing_bytes()?);
        let batch = prepared.authorize(signature, &VerificationKey::from(&sk))?;
        let wire: pb::NoteSeizureBatch = batch.to_proto();
        owner.publish(&serde_json::to_vec_pretty(&wire)?)?;
        println!("Prepared signed public seizure batch: {output}");
        Ok(())
    }
}
/// One output owner; atomic replacement preserves the previous complete export on failure.
struct ExportOwner {
    output: Utf8PathBuf,
    _lock: std::fs::File,
}
impl ExportOwner {
    fn acquire(output: &Utf8Path) -> Result<Self> {
        ensure!(
            !output
                .as_str()
                .to_ascii_lowercase()
                .ends_with(".seizure-lock"),
            "seizure output must not use the reserved .seizure-lock suffix"
        );
        let lock_path = Utf8PathBuf::from(format!("{output}.seizure-lock"));
        let mut options = std::fs::OpenOptions::new();
        options.read(true).write(true).create(true);
        #[cfg(unix)]
        {
            use std::os::unix::fs::OpenOptionsExt;
            options.mode(0o600).custom_flags(libc::O_NOFOLLOW);
        }
        let lock = options.open(&lock_path)?;
        lock.try_lock()
            .context("another invocation owns this seizure output")?;
        Ok(Self {
            output: output.to_owned(),
            _lock: lock,
        })
    }
    fn publish(&self, bytes: &[u8]) -> Result<()> {
        ensure!(
            bytes.len() <= MAX_SEIZURE_REQUEST_BYTES,
            "public seizure export exceeds size limit"
        );
        let parent = self
            .output
            .parent()
            .filter(|p| !p.as_str().is_empty())
            .unwrap_or(Utf8Path::new("."));
        let mut file = tempfile::NamedTempFile::new_in(parent)?;
        #[cfg(unix)]
        {
            use std::os::unix::fs::PermissionsExt;
            file.as_file()
                .set_permissions(std::fs::Permissions::from_mode(0o600))?;
        }
        file.write_all(bytes)?;
        file.as_file().sync_all()?;
        file.persist(&self.output).map_err(|e| e.error)?;
        std::fs::File::open(parent)?.sync_all()?;
        Ok(())
    }
}
#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn output_has_exclusive_ownership_and_preserves_completed_export_on_failure() -> Result<()> {
        let directory = tempfile::tempdir()?;
        let output = Utf8Path::from_path(directory.path())
            .unwrap()
            .join("batch.json");
        let owner = ExportOwner::acquire(&output)?;
        assert!(ExportOwner::acquire(&output).is_err());
        owner.publish(b"complete first batch")?;
        assert!(ExportOwner::acquire(&output).is_err());
        let reserved = Utf8PathBuf::from(format!("{output}.seizure-lock"));
        assert!(ExportOwner::acquire(&reserved).is_err());
        let reserved = Utf8PathBuf::from(format!("{output}.SEIZURE-LOCK"));
        assert!(ExportOwner::acquire(&reserved).is_err());
        assert!(owner
            .publish(&vec![0; MAX_SEIZURE_REQUEST_BYTES + 1])
            .is_err());
        assert_eq!(std::fs::read(&output)?, b"complete first batch");
        #[cfg(unix)]
        {
            use std::os::unix::fs::PermissionsExt;
            assert_eq!(
                std::fs::metadata(&output)?.permissions().mode() & 0o777,
                0o600
            );
        }
        drop(owner);
        let next = ExportOwner::acquire(&output)?;
        next.publish(b"complete second batch")?;
        assert_eq!(std::fs::read(&output)?, b"complete second batch");
        Ok(())
    }
}
