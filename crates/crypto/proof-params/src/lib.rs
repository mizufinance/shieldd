#![deny(clippy::unwrap_used)]
#![allow(clippy::redundant_static_lifetimes)]
// Requires nightly.
#![cfg_attr(docsrs, feature(doc_cfg))]

use anyhow::{bail, Result};
use ark_ec::{pairing::Pairing, AffineRepr};
use ark_ff::PrimeField;
use ark_groth16::{PreparedVerifyingKey, VerifyingKey};
use decaf377::Bls12_377;
use once_cell::sync::Lazy;
use serde::{de::DeserializeOwned, Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{fs, path::Path};

/// The length of our Groth16 proofs in bytes.
pub const GROTH16_PROOF_LENGTH_BYTES: usize = 192;

pub mod batch;
pub mod statement_hash;
mod traits;

pub use traits::{
    generate_constraint_matrices, generate_prepared_test_parameters, generate_test_parameters,
    DummyWitness, ProvingKeyExt, VerifyingKeyExt,
};

include!(concat!(env!("OUT_DIR"), "/gnark_bundled.rs"));

include!("gen/gnark/transfer_registry.rs");
include!("gen/gnark/note_reshape_registry.rs");
include!("gen/gnark/shielded_ics20_withdrawal_registry.rs");

type ProofG1 = <Bls12_377 as Pairing>::G1Affine;
type ProofG2 = <Bls12_377 as Pairing>::G2Affine;
type ProofG1Base = <ProofG1 as AffineRepr>::BaseField;
type ProofG2Base = <ProofG2 as AffineRepr>::BaseField;

#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct G1PointJson {
    x: String,
    y: String,
}

#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct Fq2Json {
    a0: String,
    a1: String,
}

#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct G2PointJson {
    x: Fq2Json,
    y: Fq2Json,
}

#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct VerifyingKeyJson {
    alpha_g1: G1PointJson,
    beta_g2: G2PointJson,
    gamma_g2: G2PointJson,
    delta_g2: G2PointJson,
    gamma_abc_g1: Vec<G1PointJson>,
}

#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
struct CircuitMetadataJson {
    schema: String,
    curve: String,
    circuit: String,
    proving_key_size_bytes: i64,
    verifying_key_size_bytes: i64,
    nb_constraints: i32,
    nb_public_variables: i32,
    nb_secret_variables: i32,
    proving_key_sha256_hex: String,
    verifying_key_binary_sha256_hex: String,
    verifying_key_json_sha256_hex: String,
}

fn load_verifying_key_json_bytes(bytes: &[u8]) -> Result<VerifyingKey<Bls12_377>> {
    let vk_json: VerifyingKeyJson = decode_canonical_json(bytes, "verifying_key.json")?;
    verifying_key_from_json(&vk_json)
}

fn load_verifying_key_json_artifact(
    artifact_dir: &Path,
    expected_circuit: &str,
) -> Result<VerifyingKey<Bls12_377>> {
    let metadata_path = artifact_dir.join("circuit_metadata.json");
    let metadata: CircuitMetadataJson = decode_canonical_json(
        &fs::read(&metadata_path)?,
        &format!("{expected_circuit} circuit_metadata.json"),
    )?;
    validate_circuit_metadata(&metadata, expected_circuit)?;
    let vk_path = artifact_dir.join("verifying_key.json");
    let vk_bytes = fs::read(&vk_path)?;
    let actual_hash = hex::encode(Sha256::digest(&vk_bytes));
    if actual_hash != metadata.verifying_key_json_sha256_hex {
        bail!(
            "{expected_circuit} JSON verifying key hash mismatch: expected {}, got {actual_hash}",
            metadata.verifying_key_json_sha256_hex
        );
    }
    load_verifying_key_json_bytes(&vk_bytes)
}

fn validate_circuit_metadata(metadata: &CircuitMetadataJson, expected_circuit: &str) -> Result<()> {
    if metadata.schema != "shieldd.gnark.circuit_metadata.v1" {
        bail!("unsupported circuit metadata schema {}", metadata.schema);
    }
    if metadata.curve != "bls12-377" {
        bail!("artifact curve {} does not match bls12-377", metadata.curve);
    }
    if metadata.circuit != expected_circuit {
        bail!(
            "artifact circuit {} does not match expected {}",
            metadata.circuit,
            expected_circuit
        );
    }
    if metadata.proving_key_size_bytes <= 0
        || metadata.verifying_key_size_bytes <= 0
        || metadata.nb_constraints <= 0
        || metadata.nb_public_variables <= 0
        || metadata.nb_secret_variables <= 0
    {
        bail!("artifact metadata has nonpositive size or circuit shape");
    }
    for (label, value) in [
        ("proving key", &metadata.proving_key_sha256_hex),
        (
            "binary verifying key",
            &metadata.verifying_key_binary_sha256_hex,
        ),
        (
            "JSON verifying key",
            &metadata.verifying_key_json_sha256_hex,
        ),
    ] {
        if !is_lower_sha256(value) {
            bail!("artifact metadata has invalid {label} hash");
        }
    }
    Ok(())
}

fn is_lower_sha256(value: &str) -> bool {
    value.len() == 64
        && value
            .bytes()
            .all(|byte| byte.is_ascii_digit() || (b'a'..=b'f').contains(&byte))
}

fn decode_canonical_json<T>(bytes: &[u8], label: &str) -> Result<T>
where
    T: DeserializeOwned + Serialize,
{
    let value: T = serde_json::from_slice(bytes)?;
    let mut canonical = serde_json::to_vec_pretty(&value)?;
    canonical.push(b'\n');
    if bytes != canonical {
        bail!("{label} is not canonical two-space-indented JSON");
    }
    Ok(value)
}

fn verifying_key_from_json(vk: &VerifyingKeyJson) -> Result<VerifyingKey<Bls12_377>> {
    Ok(VerifyingKey {
        alpha_g1: parse_g1(&vk.alpha_g1)?,
        beta_g2: parse_g2(&vk.beta_g2)?,
        gamma_g2: parse_g2(&vk.gamma_g2)?,
        delta_g2: parse_g2(&vk.delta_g2)?,
        gamma_abc_g1: vk
            .gamma_abc_g1
            .iter()
            .map(parse_g1)
            .collect::<Result<_>>()?,
    })
}

fn parse_g1(point: &G1PointJson) -> Result<ProofG1> {
    let x: ProofG1Base = parse_canonical_field(&point.x, "G1 x")?;
    let y: ProofG1Base = parse_canonical_field(&point.y, "G1 y")?;
    let point = ProofG1::new_unchecked(x, y);
    if !point.is_on_curve() {
        bail!("G1 point is not on curve");
    }
    if !point.is_in_correct_subgroup_assuming_on_curve() {
        bail!("G1 point is not in the correct subgroup");
    }
    Ok(point)
}

fn parse_g2(point: &G2PointJson) -> Result<ProofG2> {
    let x_a0 = parse_canonical_field(&point.x.a0, "G2 x.a0")?;
    let x_a1 = parse_canonical_field(&point.x.a1, "G2 x.a1")?;
    let y_a0 = parse_canonical_field(&point.y.a0, "G2 y.a0")?;
    let y_a1 = parse_canonical_field(&point.y.a1, "G2 y.a1")?;
    let point = ProofG2::new_unchecked(ProofG2Base::new(x_a0, x_a1), ProofG2Base::new(y_a0, y_a1));
    if !point.is_on_curve() {
        bail!("G2 point is not on curve");
    }
    if !point.is_in_correct_subgroup_assuming_on_curve() {
        bail!("G2 point is not in the correct subgroup");
    }
    Ok(point)
}

fn parse_canonical_field<F: PrimeField>(value: &str, label: &str) -> Result<F> {
    let parsed = F::from_str(value).map_err(|_| anyhow::anyhow!("invalid {label}"))?;
    if parsed.to_string() != value {
        bail!("{label} is not a canonical field decimal");
    }
    Ok(parsed)
}

#[cfg(test)]
mod gnark_artifact_tests {
    use super::*;
    use ark_ff::BigInteger;

    const TRANSFER_METADATA: &[u8] = include_bytes!(concat!(
        env!("CARGO_MANIFEST_DIR"),
        "/../../../tools/gnark/artifacts/transfer/circuit_metadata.json"
    ));

    #[test]
    fn proof_params_rejects_noncanonical_metadata_and_vk_json() {
        let metadata: CircuitMetadataJson =
            decode_canonical_json(TRANSFER_METADATA, "transfer metadata")
                .expect("canonical metadata loads");
        validate_circuit_metadata(&metadata, "transfer").expect("metadata validates");
        let metadata_value: serde_json::Value =
            serde_json::from_slice(TRANSFER_METADATA).expect("parse metadata");
        let compact_metadata =
            serde_json::to_vec(&metadata_value).expect("encode compact metadata");
        assert!(
            decode_canonical_json::<CircuitMetadataJson>(&compact_metadata, "transfer metadata")
                .is_err(),
            "compact metadata alias must fail"
        );

        let vk_bytes = transfer_verifying_key_json_bytes();
        load_verifying_key_json_bytes(vk_bytes).expect("canonical VK JSON loads");
        let vk_value: serde_json::Value = serde_json::from_slice(vk_bytes).expect("parse VK JSON");
        let compact_vk = serde_json::to_vec(&vk_value).expect("encode compact VK JSON");
        assert!(
            load_verifying_key_json_bytes(&compact_vk).is_err(),
            "compact VK JSON alias must fail"
        );

        let mut vk_json: VerifyingKeyJson =
            serde_json::from_slice(vk_bytes).expect("decode canonical VK JSON");
        let canonical_x = vk_json
            .alpha_g1
            .x
            .parse::<ProofG1Base>()
            .expect("decode canonical G1 x");
        let mut alias = canonical_x.into_bigint();
        assert!(
            !alias.add_with_carry(&ProofG1Base::MODULUS),
            "x + modulus fits the base-field integer width"
        );
        vk_json.alpha_g1.x = alias.to_string();
        let mut modular_alias = serde_json::to_vec_pretty(&vk_json).expect("encode modular alias");
        modular_alias.push(b'\n');
        assert!(
            load_verifying_key_json_bytes(&modular_alias).is_err(),
            "x + modulus must not decode to the same verifying key"
        );

        vk_json.alpha_g1.x = "-1".to_owned();
        let mut negative_alias =
            serde_json::to_vec_pretty(&vk_json).expect("encode negative coordinate");
        negative_alias.push(b'\n');
        assert!(
            load_verifying_key_json_bytes(&negative_alias).is_err(),
            "negative field coordinates must fail"
        );
    }
}
