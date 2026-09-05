use std::path::Path;

use anyhow::{bail, Result};
use ark_groth16::PreparedVerifyingKey;
use ark_serialize::CanonicalSerialize;
use decaf377::{Bls12_377, Fq};

use crate::{
    gnark::{
        note_seizure_witness::NoteSeizureWitness,
        transfer_proof_result::parse_binary_proof_result,
        transport::{
            load_daemon_transport, load_from_env_paths, prove_with_transport, shutdown_transport,
            GnarkFamilyConfig, GnarkTransport,
        },
    },
    NoteSeizureProof, NoteSeizureProofPrivate, NoteSeizureProofPublic,
};

const NOTE_SEIZURE_ENV_ARTIFACT_DIR: &str = "SHIELDD_GNARK_NOTE_SEIZURE_ARTIFACT_DIR";
const NOTE_SEIZURE_ENV_LIB: &str = "SHIELDD_GNARK_NOTE_SEIZURE_LIB";
const NOTE_SEIZURE_ENV_DAEMON: &str = "SHIELDD_GNARK_NOTE_SEIZURE_DAEMON";

static NOTE_SEIZURE_FAMILY_CONFIG: GnarkFamilyConfig = GnarkFamilyConfig {
    family: "note_seizure",
    env_artifact_dir: NOTE_SEIZURE_ENV_ARTIFACT_DIR,
    env_lib: NOTE_SEIZURE_ENV_LIB,
    env_daemon: NOTE_SEIZURE_ENV_DAEMON,
    init_symbol: b"",
    init_from_bytes_symbol: b"",
    prove_symbol: b"",
    free_symbol: b"",
    shutdown_symbol: b"",
};

pub fn encode_note_seizure_witness(
    public: &NoteSeizureProofPublic,
    private: &NoteSeizureProofPrivate,
) -> Result<Vec<u8>> {
    NoteSeizureWitness::from_public_private(public, private)?.encode()
}

pub fn decode_note_seizure_witness(bytes: &[u8]) -> Result<NoteSeizureWitness> {
    NoteSeizureWitness::decode(bytes)
}

/// Offline note-seizure prover backed by the shared gnark prover daemon.
pub struct GnarkNoteSeizureClient {
    transport: GnarkTransport,
    verifying_key: PreparedVerifyingKey<Bls12_377>,
}

// SAFETY: daemon access is serialized by the transport's process mutex.
unsafe impl Send for GnarkNoteSeizureClient {}
// SAFETY: daemon access is serialized by the transport's process mutex.
unsafe impl Sync for GnarkNoteSeizureClient {}

impl GnarkNoteSeizureClient {
    pub fn from_env() -> Result<Self> {
        let config = &NOTE_SEIZURE_FAMILY_CONFIG;
        let (artifact_dir, lib_path, daemon_path) = load_from_env_paths(config)?;
        ensure_daemon_only(lib_path.as_deref(), daemon_path.as_deref())?;
        let daemon_path = daemon_path
            .as_deref()
            .ok_or_else(|| anyhow::anyhow!("expected {NOTE_SEIZURE_ENV_DAEMON} to be set"))?;
        Self::from_daemon(daemon_path, &artifact_dir)
    }

    pub fn from_daemon(binary: &Path, artifact_dir: &Path) -> Result<Self> {
        let (transport, verifying_key) =
            load_daemon_transport(binary, artifact_dir, &NOTE_SEIZURE_FAMILY_CONFIG)?;
        Ok(Self {
            transport,
            verifying_key,
        })
    }

    pub fn env_override_configured() -> bool {
        std::env::var_os(NOTE_SEIZURE_ENV_LIB).is_some()
            || std::env::var_os(NOTE_SEIZURE_ENV_DAEMON).is_some()
            || std::env::var_os(NOTE_SEIZURE_ENV_ARTIFACT_DIR).is_some()
    }

    pub fn prove(
        &self,
        public: &NoteSeizureProofPublic,
        private: &NoteSeizureProofPrivate,
    ) -> Result<NoteSeizureProof> {
        let witness_model = NoteSeizureWitness::from_public_private(public, private)?;
        let expected_hash = Fq::from_bytes_checked(&witness_model.claimed_statement_hash)
            .map_err(|_| anyhow::anyhow!("note seizure witness statement hash is non-canonical"))?;
        let witness = witness_model.encode()?;
        let payload = prove_with_transport(&self.transport, &witness, "note_seizure")?;
        let (claimed_hash, proof) = translate_note_seizure_proof_result(&payload)?;
        if claimed_hash != expected_hash {
            bail!(
                "gnark note seizure proof returned wrong statement hash: expected {expected_hash}, got {claimed_hash}"
            );
        }
        proof.verify_with_prepared_vk(public, &self.verifying_key)?;
        Ok(proof)
    }
}

impl Drop for GnarkNoteSeizureClient {
    fn drop(&mut self) {
        shutdown_transport(&mut self.transport);
    }
}

pub fn translate_note_seizure_proof_result(payload: &[u8]) -> Result<(Fq, NoteSeizureProof)> {
    let (claimed_hash, proof) = parse_binary_proof_result(payload, b"PNSP", "note seizure")?;
    let mut proof_bytes = Vec::new();
    proof.serialize_compressed(&mut proof_bytes)?;
    let proof = NoteSeizureProof::try_from(
        shieldd_sdk_proto::shieldd::core::component::shielded_pool::v1::ZkNoteSeizureProof {
            inner: proof_bytes,
        },
    )?;
    Ok((claimed_hash, proof))
}

fn ensure_daemon_only(lib_path: Option<&Path>, daemon_path: Option<&Path>) -> Result<()> {
    match (lib_path, daemon_path) {
        (None, Some(_)) => Ok(()),
        (Some(_), _) => bail!(
            "note seizure proving uses the daemon transport; set {NOTE_SEIZURE_ENV_DAEMON}, not {NOTE_SEIZURE_ENV_LIB}"
        ),
        (None, None) => bail!("expected {NOTE_SEIZURE_ENV_DAEMON} to be set"),
    }
}

#[cfg(test)]
mod tests {
    use decaf377::Fr;
    use shieldd_sdk_asset::{asset, Value};
    use shieldd_sdk_keys::{keys::NullifierKey, test_keys};
    use shieldd_sdk_num::Amount;
    use shieldd_sdk_sct::Nullifier;
    use shieldd_sdk_tct as tct;

    use super::*;
    use crate::{HostTransfer, HostWithdrawal, HostWithdrawalDestination, RecoveryCapsule, Rseed};

    fn proof_inputs() -> (NoteSeizureProofPublic, NoteSeizureProofPrivate) {
        let address = test_keys::ADDRESS_0.clone();
        let asset_id = asset::Id(Fq::from(11u64));
        let amount = Amount::from(42u64);
        let capk = decaf377::Element::GENERATOR * Fr::from(19u64);
        let rseed = Rseed([17; 32]);
        let note_blinding = rseed.derive_note_blinding();
        let (recovery_capsule, opening) =
            RecoveryCapsule::encrypt(amount, note_blinding, capk, rseed)
                .expect("encrypt recovery capsule");
        let note_commitment = crate::note::commitment_from_address(
            address.clone(),
            Value { amount, asset_id },
            note_blinding,
            recovery_capsule.commitment(),
        )
        .expect("commit note");

        let mut tree = tct::Tree::new();
        tree.insert(tct::Witness::Keep, note_commitment)
            .expect("insert note commitment");
        let state_commitment_proof = tree
            .witness(note_commitment)
            .expect("witness note commitment");
        let rnk = Fq::from(23u64);
        let nullifier = Nullifier::derive(
            &NullifierKey(rnk),
            state_commitment_proof.position(),
            &note_commitment,
        );
        let authorization = crate::NoteSeizureAuthorizationBody {
            chain_id: "shieldd-test".to_owned(),
            note_commitment,
            nullifier,
            address,
            asset_id,
            amount,
            freeze_generation: 2,
            frozen_since_height: 10,
            withdrawal: HostWithdrawal {
                value: Value { amount, asset_id },
                destination: HostWithdrawalDestination::Transfer(HostTransfer {
                    recipient: "bank1seizureauthority".to_owned(),
                }),
            },
            expiry_height: 20,
        };

        (
            NoteSeizureProofPublic {
                authorization,
                anchor: state_commitment_proof.root(),
                history_required: false,
                recent_position_floor: 0,
                recovery_capsule,
                recovery_seed: opening.seed,
                rnk_commitment: shieldd_sdk_compliance::compliance_nullifier_key_commitment(rnk),
            },
            NoteSeizureProofPrivate {
                note_blinding,
                state_commitment_proof,
                rnk,
            },
        )
    }

    #[test]
    fn note_seizure_proof_roundtrip() {
        if !GnarkNoteSeizureClient::env_override_configured() {
            eprintln!(
                "skipping note seizure proof roundtrip without an explicitly configured prover daemon"
            );
            return;
        }

        let (public, private) = proof_inputs();
        let client = GnarkNoteSeizureClient::from_env().expect("start note seizure prover");
        let proof = client
            .prove(&public, &private)
            .expect("prove and verify note seizure through the daemon transport");

        proof
            .verify(&public)
            .expect("verify note seizure with the compiled consensus key");

        let mut changed_public = public;
        changed_public.authorization.expiry_height += 1;
        proof
            .verify(&changed_public)
            .expect_err("proof must not verify for a changed authorization statement");
    }
}
