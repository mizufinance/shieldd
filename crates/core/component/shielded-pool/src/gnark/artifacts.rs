use std::{fs, path::Path, str::FromStr};

use anyhow::{anyhow, bail, Context, Result};
use ark_ec::{pairing::Pairing, AffineRepr};
use ark_groth16::{prepare_verifying_key, PreparedVerifyingKey, VerifyingKey};
use decaf377::Bls12_377;
use serde::Deserialize;
use sha2::{Digest, Sha256};
use shieldd_sdk_proof_params::VerifyingKeyExt;

type ProofG1 = <Bls12_377 as Pairing>::G1Affine;
type ProofG2 = <Bls12_377 as Pairing>::G2Affine;
type ProofG1Base = <ProofG1 as AffineRepr>::BaseField;
type ProofG2Base = <ProofG2 as AffineRepr>::BaseField;

#[derive(Clone, Debug, Deserialize)]
pub struct G1PointJson {
    pub x: String,
    pub y: String,
}

#[derive(Clone, Debug, Deserialize)]
pub struct Fq2Json {
    pub a0: String,
    pub a1: String,
}

#[derive(Clone, Debug, Deserialize)]
pub struct G2PointJson {
    pub x: Fq2Json,
    pub y: Fq2Json,
}

#[derive(Clone, Debug, Deserialize)]
pub struct VerifyingKeyJson {
    pub alpha_g1: G1PointJson,
    pub beta_g2: G2PointJson,
    pub gamma_g2: G2PointJson,
    pub delta_g2: G2PointJson,
    pub gamma_abc_g1: Vec<G1PointJson>,
}

#[derive(Clone, Debug, Deserialize)]
pub struct GnarkArtifactMetadata {
    pub curve: String,
    pub circuit: String,
    pub compile_ms: f64,
    pub setup_ms: f64,
    pub proving_key_size_bytes: i64,
    pub verifying_key_size_bytes: i64,
    pub nb_constraints: i32,
    pub nb_public_variables: i32,
    pub nb_secret_variables: i32,
    #[serde(default)]
    pub verifying_key_sha256_hex: Option<String>,
    #[serde(default)]
    pub proving_key_sha256_hex: Option<String>,
    #[serde(default)]
    pub verifying_key_id: Option<String>,
}

pub(crate) fn load_artifact_metadata(artifact_dir: &Path) -> Result<GnarkArtifactMetadata> {
    serde_json::from_slice(
        &fs::read(artifact_dir.join("circuit_metadata.json"))
            .context("read circuit_metadata.json")?,
    )
    .context("decode circuit_metadata.json")
}

pub(crate) fn validate_artifact_metadata(
    metadata: &GnarkArtifactMetadata,
    family: &str,
) -> Result<()> {
    if metadata.curve != "bls12-377" {
        bail!("unsupported gnark {family} curve {}", metadata.curve);
    }
    if metadata.circuit != family {
        bail!(
            "unsupported gnark {family} circuit {}, expected {family}",
            metadata.circuit
        );
    }
    if metadata.nb_constraints <= 0
        || metadata.nb_public_variables <= 0
        || metadata.nb_secret_variables <= 0
    {
        bail!("gnark {family} circuit metadata is missing constraint shape");
    }
    Ok(())
}

pub(crate) fn validate_artifact_hashes(
    artifact_dir: &Path,
    metadata: &GnarkArtifactMetadata,
    family: &str,
) -> Result<()> {
    if let Some(expected) = &metadata.proving_key_sha256_hex {
        let actual = sha256_hex(&fs::read(artifact_dir.join("proving_key.bin"))?);
        if &actual != expected {
            bail!("gnark {family} proving key hash mismatch: expected {expected}, got {actual}");
        }
    }
    if let Some(expected) = &metadata.verifying_key_sha256_hex {
        let actual = sha256_hex(&fs::read(artifact_dir.join("verifying_key.json"))?);
        if &actual != expected {
            bail!("gnark {family} verifying key hash mismatch: expected {expected}, got {actual}");
        }
    }
    Ok(())
}

pub(crate) fn sha256_hex(bytes: &[u8]) -> String {
    hex::encode(Sha256::digest(bytes))
}

pub(crate) fn verifying_key_from_json(vk: &VerifyingKeyJson) -> Result<VerifyingKey<Bls12_377>> {
    Ok(VerifyingKey {
        alpha_g1: parse_g1(&vk.alpha_g1)?,
        beta_g2: parse_g2(&vk.beta_g2)?,
        gamma_g2: parse_g2(&vk.gamma_g2)?,
        delta_g2: parse_g2(&vk.delta_g2)?,
        gamma_abc_g1: vk
            .gamma_abc_g1
            .iter()
            .map(parse_g1)
            .collect::<Result<Vec<_>>>()?,
    })
}

pub(crate) fn load_prepared_vk(
    artifact_dir: &Path,
    metadata: &GnarkArtifactMetadata,
    family: &str,
) -> Result<PreparedVerifyingKey<Bls12_377>> {
    let vk_json: VerifyingKeyJson = serde_json::from_slice(
        &fs::read(artifact_dir.join("verifying_key.json")).context("read verifying_key.json")?,
    )
    .context("decode verifying_key.json")?;
    let pvk = prepare_verifying_key(&verifying_key_from_json(&vk_json)?);
    if let Some(expected_id) = &metadata.verifying_key_id {
        let actual_id = pvk.debug_id();
        if &actual_id != expected_id {
            bail!(
                "gnark {family} verifying key id mismatch: expected {expected_id}, got {actual_id}"
            );
        }
    }
    Ok(pvk)
}

fn parse_g1(point: &G1PointJson) -> Result<ProofG1> {
    let x = ProofG1Base::from_str(&point.x).map_err(|_| anyhow!("invalid G1 x"))?;
    let y = ProofG1Base::from_str(&point.y).map_err(|_| anyhow!("invalid G1 y"))?;
    let point = ProofG1::new_unchecked(x, y);
    if !point.is_on_curve() {
        bail!("G1 point is not on curve");
    }
    if !point.is_in_correct_subgroup_assuming_on_curve() {
        bail!("G1 point is not in the correct subgroup");
    }
    Ok(point)
}

#[cfg(test)]
mod statement_parity_tests {
    use super::*;
    use std::path::PathBuf;

    /// Every shieldd gnark family exposes exactly one public input wire,
    /// `ClaimedStatementHash` — the statement-hash transcript binding (see
    /// `note_reshape_circuit.go:23` / `transfer_circuit.go:49`, and the
    /// per-field binding inventories under the generated coverage manifests
    /// and deployed `CircuitFacts.lean` modules).
    ///
    /// The SnarkPack aggregation layer derives its per-proof arity from the VK
    /// as `pvk.vk.gamma_abc_g1.len() - 1` (`proof-aggregation/src/statement.rs:212`).
    /// Groth16 lays out `gamma_abc_g1` as `[gamma_abc_0, ..public inputs..]`, so
    /// `len() - 1` is the public-input count. Nothing else pins the committed
    /// family VKs to the circuit's actual public-input surface; this test closes
    /// that cross-tool statement-parity axis (SnarkPack S5): a circuit change
    /// exposing a second public input, or a VK swap, would otherwise silently
    /// diverge the aggregated statement shape from what the circuit proves.
    const EXPECTED_PUBLIC_INPUT_ARITY: usize = 1;

    /// All committed gnark families (one artifact dir each under tools/gnark/artifacts).
    const FAMILIES: &[&str] = &[
        "note_reshape2x1",
        "note_reshape4x1",
        "note_reshape8x1",
        "shielded_ics20_withdrawal",
        "note_reshape1x8",
        "transfer",
    ];

    fn artifacts_root() -> PathBuf {
        PathBuf::from(env!("CARGO_MANIFEST_DIR"))
            .join("../../../../tools/gnark/artifacts")
            .canonicalize()
            .expect("tools/gnark/artifacts should resolve")
    }

    #[test]
    fn family_vks_expose_single_statement_hash_public_input() {
        let root = artifacts_root();
        for family in FAMILIES {
            let family_dir = root.join(family);
            let vk_path = family_dir.join("verifying_key.json");
            let vk_json: VerifyingKeyJson = serde_json::from_slice(
                &fs::read(&vk_path).unwrap_or_else(|e| panic!("read {vk_path:?}: {e}")),
            )
            .unwrap_or_else(|e| panic!("decode {vk_path:?}: {e}"));

            // Parse into ark VK so we validate the same shape the runtime consumes.
            let vk = verifying_key_from_json(&vk_json)
                .unwrap_or_else(|e| panic!("parse VK for {family}: {e}"));

            let gamma_abc_len = vk.gamma_abc_g1.len();
            let arity = gamma_abc_len
                .checked_sub(1)
                .unwrap_or_else(|| panic!("family {family} VK has empty gamma_abc_g1"));

            assert_eq!(
                arity, EXPECTED_PUBLIC_INPUT_ARITY,
                "family {family} VK public-input arity {arity} != {EXPECTED_PUBLIC_INPUT_ARITY} \
                 (gamma_abc_g1 len {gamma_abc_len}); statement-parity broken — the circuit's \
                 public-input surface no longer matches the single ClaimedStatementHash wire the \
                 aggregation layer assumes"
            );

            // Cross-file parity: the two committed artifacts must agree on the
            // public surface. gnark's `nb_public_variables` counts the implicit
            // constant `1` wire plus each declared public input, which is exactly
            // `gamma_abc_g1.len()` (Groth16 lays out `[gamma_abc_0, ..inputs..]`).
            // A partial regen (new VK, stale metadata, or vice versa) drifts these.
            let metadata = load_artifact_metadata(&family_dir)
                .unwrap_or_else(|e| panic!("load metadata for {family}: {e}"));
            assert_eq!(
                metadata.nb_public_variables as usize, gamma_abc_len,
                "family {family} circuit_metadata.nb_public_variables {} disagrees with VK \
                 gamma_abc_g1 len {gamma_abc_len}; the VK and metadata artifacts have drifted",
                metadata.nb_public_variables
            );
        }
    }

    /// `validate_artifact_hashes` skips a key silently when its recorded
    /// `*_sha256_hex` field is absent — a stale or hand-truncated metadata file
    /// would then load an unverified artifact. For the committed families we
    /// require both key hashes to be present, and exercise the real validator so
    /// a recorded hash that no longer matches the committed bytes fails closed.
    #[test]
    fn committed_family_artifacts_carry_verified_hashes() {
        let root = artifacts_root();
        for family in FAMILIES {
            let family_dir = root.join(family);
            let metadata = load_artifact_metadata(&family_dir)
                .unwrap_or_else(|e| panic!("load metadata for {family}: {e}"));

            assert!(
                metadata.verifying_key_sha256_hex.is_some(),
                "family {family} circuit_metadata is missing verifying_key_sha256_hex; \
                 the committed VK would load unverified"
            );
            assert!(
                metadata.proving_key_sha256_hex.is_some(),
                "family {family} circuit_metadata is missing proving_key_sha256_hex; \
                 the committed proving key would load unverified"
            );

            // Run the real validator against the committed bytes: it checks the
            // proving_key.bin and verifying_key.json hashes since both fields are
            // present above and both files are committed for every family.
            validate_artifact_hashes(&family_dir, &metadata, family)
                .unwrap_or_else(|e| panic!("hash validation for {family}: {e}"));

            // Also parse the committed VK end-to-end (on-curve + subgroup checks
            // in load_prepared_vk / parse_g1 / parse_g2) so a malformed committed
            // key is caught here rather than at first proof verification.
            load_prepared_vk(&family_dir, &metadata, family)
                .unwrap_or_else(|e| panic!("prepared VK load for {family}: {e}"));
        }
    }
}

fn parse_g2(point: &G2PointJson) -> Result<ProofG2> {
    let x_a0 = ProofG1Base::from_str(&point.x.a0).map_err(|_| anyhow!("invalid G2 x.a0"))?;
    let x_a1 = ProofG1Base::from_str(&point.x.a1).map_err(|_| anyhow!("invalid G2 x.a1"))?;
    let y_a0 = ProofG1Base::from_str(&point.y.a0).map_err(|_| anyhow!("invalid G2 y.a0"))?;
    let y_a1 = ProofG1Base::from_str(&point.y.a1).map_err(|_| anyhow!("invalid G2 y.a1"))?;
    let point = ProofG2::new_unchecked(ProofG2Base::new(x_a0, x_a1), ProofG2Base::new(y_a0, y_a1));
    if !point.is_on_curve() {
        bail!("G2 point is not on curve");
    }
    if !point.is_in_correct_subgroup_assuming_on_curve() {
        bail!("G2 point is not in the correct subgroup");
    }
    Ok(point)
}
