//! Local exact-key registry for the closed Shieldd Pari circuit catalogue.
use anyhow::{bail, ensure, Context, Result};
use commonware_codec::{Encode, EncodeSize, RangeCfg, Read};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::pari::{self, ProvingKey, VerifyingKey},
};
use commonware_parallel::{Sequential, Strategy};

use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use shieldd_sdk_circuits::{
    catalogue::{self, Compiled, Witness},
    proof::{self, BatchItem, Envelope, Family},
};
use std::{
    collections::BTreeMap,
    fs::{self, File},
    io::{Read as IoRead, Write},
    path::{Path, PathBuf},
    sync::{Mutex, OnceLock},
};

const MANIFEST_LIMIT: u64 = 64 * 1024;
const VERIFYING_KEY_LIMIT: u64 = 8 * 1024 * 1024;
const DOMAIN_LIMIT: usize = 1 << 21;
const PROVING_KEY_LIMIT: u64 = 512 * 1024 * 1024;
const SCHEMA: &str = "shieldd.pari.keys.v1";

/// Shares two native workers for upstream proving operations; callers retain proof ownership.
#[cfg(not(target_arch = "wasm32"))]
pub fn proving_strategy() -> Result<&'static impl Strategy> {
    static STRATEGY: std::sync::OnceLock<std::result::Result<commonware_parallel::Rayon, String>> =
        std::sync::OnceLock::new();
    STRATEGY
        .get_or_init(|| {
            commonware_parallel::Rayon::new(std::num::NonZeroUsize::new(2).unwrap())
                .map_err(|error| format!("creating native Pari worker pool: {error}"))
        })
        .as_ref()
        .map_err(|error| anyhow::anyhow!(error.clone()))
}

#[cfg(target_arch = "wasm32")]
pub fn proving_strategy() -> Result<&'static impl Strategy> {
    Ok(&Sequential)
}

#[derive(Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Artifact {
    pub bytes: u64,
    pub sha256: String,
}
#[derive(Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Entry {
    pub family: Family,
    pub relation: String,
    pub verifying_key_digest: String,
    pub domain_size: usize,
    pub verifying_key: Artifact,
    pub proving_key: Artifact,
}
#[derive(Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Manifest {
    pub schema: String,
    pub suite: String,
    pub setup: String,
    pub entries: Vec<Entry>,
}
struct Key {
    entry: Entry,
    verifying: VerifyingKey,
}
struct Prover {
    compiled: Compiled,
    key: ProvingKey,
}

/// A proof paired with the action-derived canonical statement.
#[derive(Clone, Debug)]
pub struct Verification {
    pub family: Family,
    pub statement: Scalar,
    pub envelope: Envelope,
}

impl PartialEq for Verification {
    fn eq(&self, other: &Self) -> bool {
        self.family == other.family
            && self.statement == other.statement
            && self.envelope.to_bytes() == other.envelope.to_bytes()
    }
}
/// Capability minted only after the registry verifies an exact proof and statement.
#[derive(Clone)]
pub struct Verified {
    registry_id: [u8; 32],
    item: Verification,
}
impl Verified {
    pub fn registry_id(&self) -> [u8; 32] {
        self.registry_id
    }
    pub fn ensure_binds(&self, family: Family, item: &Verification) -> Result<()> {
        ensure!(
            family == self.item.family && &self.item == item,
            "verified proof capability mismatch"
        );
        Ok(())
    }
}

/// The directory is operator-selected trusted configuration, never transaction input.

pub struct Registry {
    id: [u8; 32],
    directory: PathBuf,
    keys: BTreeMap<Family, Key>,
    // The lease serializes proving and retains at most one large key/relation pair.
    prover: Mutex<Option<Prover>>,
}
fn validate_bounds(domain_size: usize, verifying_bytes: u64, proving_bytes: u64) -> Result<()> {
    ensure!(
        domain_size.is_power_of_two() && domain_size <= DOMAIN_LIMIT,
        "invalid relation domain bound"
    );
    ensure!(
        verifying_bytes > 0 && verifying_bytes <= VERIFYING_KEY_LIMIT,
        "invalid verifying key size"
    );
    ensure!(
        proving_bytes > 0 && proving_bytes <= PROVING_KEY_LIMIT,
        "invalid proving key size"
    );
    Ok(())
}
fn bounded_read(path: &Path, limit: u64) -> Result<Vec<u8>> {
    let file = File::open(path).with_context(|| format!("opening {}", path.display()))?;
    ensure!(
        file.metadata()?.len() <= limit,
        "artifact exceeds size bound"
    );
    let mut bytes = Vec::new();
    file.take(limit + 1).read_to_end(&mut bytes)?;
    ensure!(
        bytes.len() as u64 <= limit,
        "artifact grew beyond size bound"
    );
    Ok(bytes)
}
fn read_artifact(path: &Path, expected: &Artifact, limit: u64) -> Result<Vec<u8>> {
    ensure!(
        expected.bytes > 0 && expected.bytes <= limit,
        "invalid artifact size"
    );
    let bytes = bounded_read(path, expected.bytes)?;
    ensure!(
        bytes.len() as u64 == expected.bytes
            && hex::encode(Sha256::digest(&bytes)) == expected.sha256,
        "artifact size or checksum mismatch"
    );
    Ok(bytes)
}
fn decode_key<T: Read<Cfg = (RangeCfg<usize>, RangeCfg<usize>)>>(bytes: &[u8]) -> Result<T> {
    let mut input = bytes;
    let key = T::read_cfg(&mut input, &(RangeCfg::exact(1), RangeCfg::exact(1)))?;
    ensure!(input.is_empty(), "trailing key bytes");
    Ok(key)
}
struct ValidatedRelation {
    key: VerifyingKey,
    domain_size: usize,
}

fn validate_relation(family: Family, key: &VerifyingKey, domain_size: usize) -> Result<()> {
    // One exact successful key per closed family, never compiled matrices or mutable paths.
    static VALIDATED: OnceLock<Mutex<BTreeMap<Family, ValidatedRelation>>> = OnceLock::new();
    let mut validated = VALIDATED
        .get_or_init(Mutex::default)
        .lock()
        .map_err(|_| anyhow::anyhow!("relation validation cache poisoned"))?;
    if validated
        .get(&family)
        .is_some_and(|prior| prior.key == *key && prior.domain_size == domain_size)
    {
        return Ok(());
    }
    let compiled = catalogue::compile(family)?;
    ensure!(
        key.matches_relation(&compiled.relation) && compiled.relation.domain_size() == domain_size,
        "key does not match the compiled Shieldd relation"
    );
    validated.insert(
        family,
        ValidatedRelation {
            key: key.clone(),
            domain_size,
        },
    );
    Ok(())
}

impl Registry {
    pub fn load(directory: impl AsRef<Path>) -> Result<Self> {
        ensure!(
            !directory.as_ref().as_os_str().is_empty(),
            "Pari key directory must not be empty"
        );
        let directory = directory.as_ref().to_path_buf();
        let manifest: Manifest = serde_json::from_slice(&bounded_read(
            &directory.join("manifest.json"),
            MANIFEST_LIMIT,
        )?)?;
        ensure!(
            manifest.schema == SCHEMA
                && manifest.suite == shieldd_sdk_crypto::SUITE_NAME
                && manifest.setup == "development",
            "unsupported key manifest"
        );
        ensure!(
            manifest.entries.len() == Family::ALL.len(),
            "incomplete proof family registry"
        );
        let mut keys = BTreeMap::new();
        for entry in manifest.entries {
            ensure!(!keys.contains_key(&entry.family), "duplicate proof family");
            validate_bounds(
                entry.domain_size,
                entry.verifying_key.bytes,
                entry.proving_key.bytes,
            )?;
            let vk: VerifyingKey = decode_key(&read_artifact(
                &directory.join(format!("{}.vk", entry.family.label())),
                &entry.verifying_key,
                VERIFYING_KEY_LIMIT,
            )?)?;
            ensure!(
                hex::encode(vk.digest()) == entry.verifying_key_digest
                    && hex::encode(vk.relation_digest()) == entry.relation,
                "verifying key identity mismatch"
            );
            validate_relation(entry.family, &vk, entry.domain_size)?;
            keys.insert(
                entry.family,
                Key {
                    entry,
                    verifying: vk,
                },
            );
        }
        let mut identity = Sha256::new();
        identity.update(b"shieldd.pari.registry.v1");
        identity.update(shieldd_sdk_crypto::SUITE_NAME.as_bytes());
        for (family, key) in &keys {
            identity.update([*family as u8]);
            identity.update(key.verifying.digest());
        }
        Ok(Self {
            id: identity.finalize().into(),
            directory,
            keys,
            prover: Mutex::new(None),
        })
    }
    pub fn id(&self) -> [u8; 32] {
        self.id
    }

    fn key(&self, family: Family) -> Result<&Key> {
        self.keys
            .get(&family)
            .context("proof family missing from local registry")
    }
    pub fn verifying_key(&self, family: Family) -> Result<&VerifyingKey> {
        Ok(&self.key(family)?.verifying)
    }
    pub fn verify(&self, family: Family, statement: &Scalar, envelope: &Envelope) -> Result<()> {
        envelope.verify(family, self.verifying_key(family)?, statement)
    }
    pub fn verify_item(&self, item: &Verification) -> Result<Verified> {
        self.verify(item.family, &item.statement, &item.envelope)?;
        Ok(Verified {
            registry_id: self.id,
            item: item.clone(),
        })
    }
    /// Verifies one exact family under its local key before minting any capabilities.
    pub fn verify_items(
        &self,
        items: &[Verification],
        strategy: &impl Strategy,
    ) -> Result<Vec<Verified>> {
        let family = items.first().context("empty proof batch")?.family;
        ensure!(
            items.iter().all(|item| item.family == family),
            "mixed proof families"
        );
        let batch = items
            .iter()
            .map(|item| BatchItem {
                envelope: &item.envelope,
                statement: &item.statement,
            })
            .collect::<Vec<_>>();
        self.verify_batch(family, &batch, strategy)?;
        Ok(items
            .iter()
            .cloned()
            .map(|item| Verified {
                registry_id: self.id,
                item,
            })
            .collect())
    }
    pub fn verify_batch(
        &self,
        family: Family,
        items: &[BatchItem<'_>],
        strategy: &impl Strategy,
    ) -> Result<()> {
        proof::verify_batch(family, self.verifying_key(family)?, items, strategy)
    }
    pub fn prove(&self, witness: &Witness, strategy: &impl Strategy) -> Result<Envelope> {
        let family = witness.family();
        let trusted = self.key(family)?;
        let mut cache = self
            .prover
            .lock()
            .map_err(|_| anyhow::anyhow!("prover cache poisoned"))?;
        if cache.as_ref().is_none_or(|p| p.compiled.family != family) {
            // Release the previous allocation before decoding a different family.
            *cache = None;
            let compiled = catalogue::compile(family)?;
            let encoded = read_artifact(
                &self.directory.join(format!("{}.pk", family.label())),
                &trusted.entry.proving_key,
                PROVING_KEY_LIMIT,
            )?;
            let key = decode_key::<ProvingKey>(&encoded)?;
            ensure!(
                key.verifying_key() == &trusted.verifying,
                "proving key embeds a different verifying key"
            );
            drop(encoded);
            *cache = Some(Prover { compiled, key });
        }
        let prover = cache.as_ref().context("prover cache absent")?;
        let values = catalogue::evaluate(witness)?;
        Envelope::prove(
            family,
            &prover.key,
            &prover.compiled.relation,
            &prover.compiled.layout,
            values,
            strategy,
        )
    }
}

fn write_new(path: &Path, bytes: &[u8]) -> Result<Artifact> {
    let mut file = File::options().write(true).create_new(true).open(path)?;
    file.write_all(bytes)?;
    file.sync_all()?;
    Ok(Artifact {
        bytes: bytes.len() as u64,
        sha256: hex::encode(Sha256::digest(bytes)),
    })
}

/// Generates all keys sequentially using OS-seeded randomness; no setup trapdoor is returned or written.
pub fn generate_development(directory: impl AsRef<Path>) -> Result<()> {
    let directory = directory.as_ref();
    ensure!(!directory.as_os_str().is_empty(), "key directory is empty");
    ensure!(!directory.exists(), "key destination already exists");
    let parent = directory
        .parent()
        .filter(|path| !path.as_os_str().is_empty())
        .unwrap_or_else(|| Path::new("."));
    fs::create_dir_all(parent)?;
    let staging = parent.join(format!(".pari-setup-{}", std::process::id()));
    fs::create_dir(&staging)?;
    let result = (|| -> Result<()> {
        let mut entries = Vec::new();
        for family in Family::ALL {
            let compiled = catalogue::compile(family)?;
            ensure!(
                compiled.relation.domain_size() <= DOMAIN_LIMIT,
                "generated relation exceeds domain bound"
            );
            let (pk, vk) = pari::setup(
                &compiled.relation,
                &mut rand10::rand_core::UnwrapErr(rand10::rngs::SysRng),
                &Sequential,
            )?;
            validate_bounds(
                compiled.relation.domain_size(),
                vk.encode_size() as u64,
                pk.encode_size() as u64,
            )?;
            let verifying_key = write_new(
                &staging.join(format!("{}.vk", family.label())),
                &vk.encode(),
            )?;
            let proving_key = write_new(
                &staging.join(format!("{}.pk", family.label())),
                &pk.encode(),
            )?;
            entries.push(Entry {
                family,
                relation: hex::encode(compiled.relation.digest()),
                verifying_key_digest: hex::encode(vk.digest()),
                domain_size: compiled.relation.domain_size(),
                verifying_key,
                proving_key,
            });
        }
        let manifest = Manifest {
            schema: SCHEMA.into(),
            suite: shieldd_sdk_crypto::SUITE_NAME.into(),
            setup: "development".into(),
            entries,
        };
        write_new(
            &staging.join("manifest.json"),
            &serde_json::to_vec_pretty(&manifest)?,
        )?;
        Registry::load(&staging)?;
        File::open(&staging)?.sync_all()?;
        // Publish only a complete manifest and key set; existing artifacts are never replaced.
        if directory.exists() {
            bail!("key destination appeared during setup");
        }
        fs::rename(&staging, directory)?;
        File::open(parent)?.sync_all()?;
        Registry::load(directory)?;
        Ok(())
    })();
    if result.is_err() {
        let _ = fs::remove_dir_all(&staging);
    }
    result
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn generation_and_loading_share_bounded_admission() {
        assert!(validate_bounds(8, 539, 1024).is_ok());
        for (domain, vk, pk) in [
            (0, 539, 1024),
            (3, 539, 1024),
            (DOMAIN_LIMIT * 2, 539, 1024),
            (8, 0, 1024),
            (8, VERIFYING_KEY_LIMIT + 1, 1024),
            (8, 539, 0),
            (8, 539, PROVING_KEY_LIMIT + 1),
        ] {
            assert!(validate_bounds(domain, vk, pk).is_err());
        }
    }

    #[test]
    #[cfg(not(target_arch = "wasm32"))]
    fn native_proving_strategy_shares_two_workers() -> Result<()> {
        let strategy = proving_strategy()?;
        assert!(std::ptr::eq(strategy, proving_strategy()?));
        assert_eq!(strategy.manual().parallelism(), 2);
        Ok(())
    }
    #[test]
    #[ignore = "requires the configured complete native Pari registry"]
    fn warm_registry_load_rechecks_artifacts_and_relation_shape() -> Result<()> {
        let source = PathBuf::from(std::env::var("SHIELDD_PARI_KEYS")?);
        let cold = Registry::load(&source)?;
        let directory = tempfile::tempdir()?;
        let original = fs::read(source.join("manifest.json"))?;
        for family in Family::ALL {
            let name = format!("{}.vk", family.label());
            fs::copy(source.join(&name), directory.path().join(name))?;
        }
        let manifest_path = directory.path().join("manifest.json");
        fs::write(&manifest_path, &original)?;
        assert_eq!(Registry::load(directory.path())?.id(), cold.id());
        let mut duplicate: Manifest = serde_json::from_slice(&original)?;
        duplicate.entries[1] = duplicate.entries[0].clone();
        fs::write(&manifest_path, serde_json::to_vec(&duplicate)?)?;
        let error = Registry::load(directory.path())
            .err()
            .context("duplicate family must fail")?;
        assert!(
            error.to_string().contains("duplicate proof family"),
            "{error:#}"
        );
        let mut manifest: Manifest = serde_json::from_slice(&original)?;
        manifest
            .entries
            .iter_mut()
            .find(|entry| entry.family == Family::Transfer)
            .unwrap()
            .domain_size *= 2;
        fs::write(&manifest_path, serde_json::to_vec(&manifest)?)?;
        assert!(Registry::load(directory.path()).is_err());
        fs::write(&manifest_path, &original)?;
        assert_eq!(Registry::load(directory.path())?.id(), cold.id());
        let key_path = directory.path().join("transfer.vk");
        let key = fs::read(&key_path)?;
        let mut changed = key.clone();
        changed[0] ^= 1;
        fs::write(&key_path, &changed)?;
        assert!(Registry::load(directory.path()).is_err());
        let mut manifest: Manifest = serde_json::from_slice(&original)?;
        manifest
            .entries
            .iter_mut()
            .find(|entry| entry.family == Family::Transfer)
            .unwrap()
            .verifying_key
            .sha256 = hex::encode(Sha256::digest(&changed));
        fs::write(&manifest_path, serde_json::to_vec(&manifest)?)?;
        assert!(Registry::load(directory.path()).is_err());
        let substituted: VerifyingKey = decode_key(&changed)?;
        let entry = manifest
            .entries
            .iter_mut()
            .find(|entry| entry.family == Family::Transfer)
            .unwrap();
        entry.verifying_key_digest = hex::encode(substituted.digest());
        entry.relation = hex::encode(substituted.relation_digest());
        fs::write(&manifest_path, serde_json::to_vec(&manifest)?)?;
        let error = Registry::load(directory.path())
            .err()
            .context("substituted relation must fail")?;
        assert!(
            error.to_string().contains("compiled Shieldd relation"),
            "{error:#}"
        );
        let mut trailing = key.clone();
        trailing.push(0);
        fs::write(&key_path, &trailing)?;
        manifest
            .entries
            .iter_mut()
            .find(|entry| entry.family == Family::Transfer)
            .unwrap()
            .verifying_key
            .bytes = trailing.len() as u64;
        manifest
            .entries
            .iter_mut()
            .find(|entry| entry.family == Family::Transfer)
            .unwrap()
            .verifying_key
            .sha256 = hex::encode(Sha256::digest(&trailing));
        fs::write(&manifest_path, serde_json::to_vec(&manifest)?)?;
        assert!(Registry::load(directory.path()).is_err());
        fs::write(&key_path, &key)?;
        fs::write(&manifest_path, &original)?;
        assert_eq!(Registry::load(directory.path())?.id(), cold.id());
        Ok(())
    }
    #[test]
    fn empty_registry_path_is_rejected_before_filesystem_access() {
        assert!(Registry::load("")
            .err()
            .unwrap()
            .to_string()
            .contains("must not be empty"));
    }
    #[test]
    fn exact_lengths_and_hashes_are_checked_before_key_decoding() -> Result<()> {
        let directory = tempfile::tempdir()?;
        let path = directory.path().join("key");
        let metadata = write_new(&path, b"not a key")?;
        assert_eq!(read_artifact(&path, &metadata, 1024)?, b"not a key");
        assert!(decode_key::<VerifyingKey>(&read_artifact(&path, &metadata, 1024)?).is_err());
        assert!(read_artifact(&path, &metadata, 2).is_err());
        fs::write(&path, b"bad a key")?;
        assert!(read_artifact(&path, &metadata, 1024).is_err());
        fs::write(&path, b"not a key plus extra")?;
        assert!(read_artifact(&path, &metadata, 1024).is_err());
        assert!(write_new(&path, b"replacement").is_err());
        Ok(())
    }
    fn manifest_fixture() -> Manifest {
        Manifest {
            schema: SCHEMA.into(),
            suite: shieldd_sdk_crypto::SUITE_NAME.into(),
            setup: "development".into(),
            entries: Family::ALL
                .into_iter()
                .map(|family| Entry {
                    family,
                    relation: String::new(),
                    verifying_key_digest: String::new(),
                    domain_size: 1,
                    verifying_key: Artifact {
                        bytes: 1,
                        sha256: String::new(),
                    },
                    proving_key: Artifact {
                        bytes: 1,
                        sha256: String::new(),
                    },
                })
                .collect(),
        }
    }

    #[test]
    fn unsupported_manifest_headers_are_rejected_before_artifact_access() -> Result<()> {
        let directory = tempfile::tempdir()?;
        let path = directory.path().join("manifest.json");
        for field in ["schema", "suite", "setup"] {
            let mut manifest = manifest_fixture();
            match field {
                "schema" => manifest.schema = "unknown".into(),
                "suite" => manifest.suite = "decaf377".into(),
                "setup" => manifest.setup = "unknown".into(),
                _ => unreachable!(),
            }
            fs::write(&path, serde_json::to_vec(&manifest)?)?;
            let error = Registry::load(directory.path())
                .err()
                .context("unsupported header must fail")?;
            assert!(
                error.to_string().contains("unsupported key manifest"),
                "{field}: {error:#}"
            );
        }
        Ok(())
    }

    #[test]
    fn unknown_manifest_fields_and_families_are_rejected_by_decoding() -> Result<()> {
        let original = serde_json::to_value(manifest_fixture())?;
        for field in ["manifest", "entry", "artifact", "family"] {
            let mut value = original.clone();
            match field {
                "manifest" => value["unknown"] = true.into(),
                "entry" => value["entries"][0]["unknown"] = true.into(),
                "artifact" => value["entries"][0]["verifying_key"]["unknown"] = true.into(),
                "family" => value["entries"][0]["family"] = "unknown".into(),
                _ => unreachable!(),
            }
            let error = serde_json::from_value::<Manifest>(value)
                .err()
                .context("unknown field or family must fail")?;
            let expected = if field == "family" {
                "unknown variant"
            } else {
                "unknown field"
            };
            assert!(error.to_string().contains(expected), "{field}: {error}");
        }
        Ok(())
    }

    #[test]
    fn incomplete_and_oversized_manifests_are_rejected() -> Result<()> {
        let directory = tempfile::tempdir()?;
        let path = directory.path().join("manifest.json");
        let mut manifest = manifest_fixture();
        manifest.entries.pop();
        fs::write(&path, serde_json::to_vec(&manifest)?)?;
        let error = Registry::load(directory.path())
            .err()
            .context("incomplete registry must fail")?;
        assert!(
            error
                .to_string()
                .contains("incomplete proof family registry"),
            "{error:#}"
        );
        fs::write(&path, vec![b' '; MANIFEST_LIMIT as usize + 1])?;
        let error = Registry::load(directory.path())
            .err()
            .context("oversized manifest must fail")?;
        assert!(
            error.to_string().contains("artifact exceeds size bound"),
            "{error:#}"
        );
        Ok(())
    }
}
