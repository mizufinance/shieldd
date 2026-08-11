use std::path::{Path, PathBuf};

use anyhow::{bail, Result};
use ark_groth16::PreparedVerifyingKey;
use ark_serialize::CanonicalSerialize;
use decaf377::{Bls12_377, Fq};

#[cfg(any(unix, windows))]
use crate::gnark::transport::{auto_lib_path, load_bundled_transport, load_library_transport};

use crate::{
    gnark::{
        note_reshape_witness::NoteReshapeWitnessV3,
        transfer_proof_result::parse_binary_proof_result,
        transport::{
            load_daemon_transport, load_from_env_paths, prove_with_transport, shutdown_transport,
            GnarkFamilyConfig, GnarkTransport,
        },
    },
    note_reshape::{NoteReshapeProof, NoteReshapeProofPrivate, NoteReshapeProofPublic},
    NoteReshapeFamilyId,
};

const NOTE_RESHAPE_LIB_BASENAME: &str = "libshieldd_gnark_note_reshape";
const NOTE_RESHAPE_ENV_ARTIFACT_DIR: &str = "SHIELDD_GNARK_NOTE_RESHAPE_ARTIFACT_DIR";
const NOTE_RESHAPE_ENV_LIB: &str = "SHIELDD_GNARK_NOTE_RESHAPE_LIB";
const NOTE_RESHAPE_ENV_DAEMON: &str = "SHIELDD_GNARK_NOTE_RESHAPE_DAEMON";

const NOTE_RESHAPE_INIT_SYMBOL: &[u8] = b"shieldd_gnark_note_reshape_init";
const NOTE_RESHAPE_INIT_FROM_BYTES_SYMBOL: &[u8] = b"shieldd_gnark_note_reshape_init_from_bytes";
const NOTE_RESHAPE_PROVE_SYMBOL: &[u8] = b"shieldd_gnark_note_reshape_prove";
const NOTE_RESHAPE_FREE_SYMBOL: &[u8] = b"shieldd_gnark_note_reshape_free";
const NOTE_RESHAPE_SHUTDOWN_SYMBOL: &[u8] = b"shieldd_gnark_note_reshape_shutdown";

static NOTE_RESHAPE_FAMILY_CONFIG: GnarkFamilyConfig = GnarkFamilyConfig {
    family: "note_reshape8x1",
    env_artifact_dir: NOTE_RESHAPE_ENV_ARTIFACT_DIR,
    env_lib: NOTE_RESHAPE_ENV_LIB,
    env_daemon: NOTE_RESHAPE_ENV_DAEMON,
    init_symbol: NOTE_RESHAPE_INIT_SYMBOL,
    init_from_bytes_symbol: NOTE_RESHAPE_INIT_FROM_BYTES_SYMBOL,
    prove_symbol: NOTE_RESHAPE_PROVE_SYMBOL,
    free_symbol: NOTE_RESHAPE_FREE_SYMBOL,
    shutdown_symbol: NOTE_RESHAPE_SHUTDOWN_SYMBOL,
};

static NOTE_RESHAPE_FAMILY_CONFIG_8X1: GnarkFamilyConfig = GnarkFamilyConfig {
    family: "note_reshape8x1",
    ..NOTE_RESHAPE_FAMILY_CONFIG
};

static NOTE_RESHAPE_FAMILY_CONFIG_1X8: GnarkFamilyConfig = GnarkFamilyConfig {
    family: "note_reshape1x8",
    ..NOTE_RESHAPE_FAMILY_CONFIG
};

fn note_reshape_family_config(family_id: NoteReshapeFamilyId) -> &'static GnarkFamilyConfig {
    match family_id {
        NoteReshapeFamilyId::OneByEight => &NOTE_RESHAPE_FAMILY_CONFIG_1X8,
        NoteReshapeFamilyId::EightByOne => &NOTE_RESHAPE_FAMILY_CONFIG_8X1,
        _ => panic!("unknown note_reshape family id {}", family_id.get()),
    }
}

pub fn encode_note_reshape_witness_v3(
    public: &NoteReshapeProofPublic,
    private: &NoteReshapeProofPrivate,
) -> Result<Vec<u8>> {
    NoteReshapeWitnessV3::from_public_private(public, private)?.encode()
}

pub fn decode_note_reshape_witness_v3(bytes: &[u8]) -> Result<NoteReshapeWitnessV3> {
    NoteReshapeWitnessV3::decode(bytes)
}

pub struct GnarkNoteReshapeClient {
    family_id: NoteReshapeFamilyId,
    transport: GnarkTransport,
    verifying_key: PreparedVerifyingKey<Bls12_377>,
}

enum NoteReshapeTransportSource<'a> {
    #[cfg(any(unix, windows))]
    Library {
        lib_path: &'a Path,
        artifact_dir: &'a Path,
    },
    Daemon {
        binary: &'a Path,
        artifact_dir: &'a Path,
    },
    #[cfg(any(unix, windows))]
    Bundled {
        lib_path: &'a Path,
        pk_bytes: &'a [u8],
        vk_json_bytes: &'a [u8],
        metadata: &'a [u8],
    },
}

// SAFETY: `GnarkNoteReshapeClient` is only shared through immutable references. The daemon
// transport serializes mutable process I/O through its internal `Mutex<GnarkDaemonProcess>`,
// and the library transport stores only an owned library handle, immutable function pointers,
// and an opaque prover handle created during initialization. Calls into the native transport
// take `&self`, do not expose borrowed internal state, and rely on the gnark transport API to
// treat the handle as a thread-safe proving context for concurrent read-only use.
unsafe impl Send for GnarkNoteReshapeClient {}
// SAFETY: See the `Send` impl above; the client contains no Rust-side unsynchronized mutable
// aliasing, and daemon access is protected by a mutex.
unsafe impl Sync for GnarkNoteReshapeClient {}

impl GnarkNoteReshapeClient {
    fn load_transport(
        family_id: NoteReshapeFamilyId,
        source: NoteReshapeTransportSource<'_>,
    ) -> Result<Self> {
        let config = note_reshape_family_config(family_id);
        let (transport, verifying_key) = match source {
            #[cfg(any(unix, windows))]
            NoteReshapeTransportSource::Library {
                lib_path,
                artifact_dir,
            } => load_library_transport(lib_path, artifact_dir, config)?,
            NoteReshapeTransportSource::Daemon {
                binary,
                artifact_dir,
            } => load_daemon_transport(binary, artifact_dir, config)?,
            #[cfg(any(unix, windows))]
            NoteReshapeTransportSource::Bundled {
                lib_path,
                pk_bytes,
                vk_json_bytes,
                metadata,
            } => load_bundled_transport(lib_path, pk_bytes, vk_json_bytes, metadata, config)?,
        };
        Ok(Self {
            family_id,
            transport,
            verifying_key,
        })
    }

    pub fn from_env(family_id: NoteReshapeFamilyId) -> Result<Self> {
        let config = note_reshape_family_config(family_id);
        let (artifact_dir, lib_path, daemon_path) = load_from_env_paths(config)?;
        match (lib_path, daemon_path) {
            (Some(lib_path), None) => {
                #[cfg(any(unix, windows))]
                {
                    Self::load_transport(
                        family_id,
                        NoteReshapeTransportSource::Library {
                            lib_path: &lib_path,
                            artifact_dir: &artifact_dir,
                        },
                    )
                }
                #[cfg(not(any(unix, windows)))]
                {
                    let _ = (&lib_path, &artifact_dir, family_id);
                    bail!("gnark library transport is not supported on this platform")
                }
            }
            (None, Some(daemon_path)) => Self::load_transport(
                family_id,
                NoteReshapeTransportSource::Daemon {
                    binary: &daemon_path,
                    artifact_dir: &artifact_dir,
                },
            ),
            (Some(_), Some(_)) => bail!(
                "{} and {} are mutually exclusive",
                config.env_lib,
                config.env_daemon
            ),
            (None, None) => bail!(
                "expected {} or {} to be set",
                config.env_lib,
                config.env_daemon
            ),
        }
    }

    pub fn from_bundled(
        lib_path: &Path,
        pk_bytes: &[u8],
        vk_json_bytes: &[u8],
        metadata: &[u8],
        family_id: NoteReshapeFamilyId,
    ) -> Result<Self> {
        #[cfg(any(unix, windows))]
        {
            Self::load_transport(
                family_id,
                NoteReshapeTransportSource::Bundled {
                    lib_path,
                    pk_bytes,
                    vk_json_bytes,
                    metadata,
                },
            )
        }
        #[cfg(not(any(unix, windows)))]
        {
            let _ = (lib_path, pk_bytes, vk_json_bytes, metadata, family_id);
            bail!("gnark bundled library loading is not supported on this platform")
        }
    }

    pub fn bundled_lib_path() -> Option<PathBuf> {
        shieldd_sdk_proof_params::GNARK_NOTE_RESHAPE_BUNDLED_LIBRARY_PATH.map(PathBuf::from)
    }

    #[cfg(any(unix, windows))]
    pub fn auto_lib_path() -> Option<PathBuf> {
        auto_lib_path(NOTE_RESHAPE_LIB_BASENAME)
    }

    pub fn env_override_configured() -> bool {
        std::env::var_os(NOTE_RESHAPE_ENV_LIB).is_some()
            || std::env::var_os(NOTE_RESHAPE_ENV_DAEMON).is_some()
            || std::env::var_os(NOTE_RESHAPE_ENV_ARTIFACT_DIR).is_some()
    }

    pub fn prove(
        &self,
        public: &NoteReshapeProofPublic,
        private: &NoteReshapeProofPrivate,
    ) -> Result<NoteReshapeProof> {
        let witness_model = NoteReshapeWitnessV3::from_public_private(public, private)?;
        let expected_hash =
            Fq::from_bytes_checked(&witness_model.claimed_statement_hash).map_err(|_| {
                anyhow::anyhow!(
                    "{} witness statement hash is non-canonical",
                    self.family_id.label()
                )
            })?;
        let witness = witness_model.encode()?;
        let payload = prove_with_transport(&self.transport, &witness, self.family_id.label())?;
        let (claimed_hash, proof) = translate_note_reshape_proof_result(&payload, self.family_id)?;
        if claimed_hash != expected_hash {
            bail!(
                "gnark {} proof returned wrong statement hash: expected {expected_hash}, got {claimed_hash}",
                self.family_id.label()
            );
        }
        proof.verify_with_prepared_vk(public, &self.verifying_key)?;
        Ok(proof)
    }
}

impl Drop for GnarkNoteReshapeClient {
    fn drop(&mut self) {
        shutdown_transport(&mut self.transport);
    }
}

pub fn translate_note_reshape_proof_result(
    payload: &[u8],
    family_id: NoteReshapeFamilyId,
) -> Result<(Fq, NoteReshapeProof)> {
    let (claimed_hash, proof) = parse_binary_proof_result(payload, b"PNRP", family_id.label())?;
    let mut proof_bytes = Vec::new();
    proof.serialize_compressed(&mut proof_bytes)?;
    let proof = NoteReshapeProof::try_from(
        shieldd_sdk_proto::shieldd::core::component::shielded_pool::v1::ZkNoteReshapeProof {
            inner: proof_bytes,
        },
    )?;
    Ok((claimed_hash, proof))
}

#[cfg(test)]
mod tests {
    use super::{decode_note_reshape_witness_v3, encode_note_reshape_witness_v3};
    use crate::{
        gnark::NoteReshapeWitnessV3, test_proof_helpers::proof_test_helpers, NoteReshapeFamilyId,
    };

    #[test]
    fn note_reshape_witness_v3_roundtrip() {
        for family_id in NoteReshapeFamilyId::ALL {
            let (public, private) =
                proof_test_helpers::build_note_reshape_roundtrip_inputs(family_id);
            let encoded = encode_note_reshape_witness_v3(&public, &private)
                .expect("encode note_reshape witness");
            let decoded =
                decode_note_reshape_witness_v3(&encoded).expect("decode note_reshape witness");
            let expected = NoteReshapeWitnessV3::from_public_private(&public, &private)
                .expect("build note_reshape witness");
            assert_eq!(decoded, expected, "family {}", family_id.label());
        }
    }

    fn corrupt() -> Vec<u8> {
        let (public, private) = proof_test_helpers::build_note_reshape_roundtrip_inputs(
            NoteReshapeFamilyId::EightByOne,
        );
        encode_note_reshape_witness_v3(&public, &private).expect("encode note_reshape witness")
    }

    #[test]
    fn note_reshape_witness_v3_rejects_bad_magic() {
        let mut encoded = corrupt();
        encoded[0] = b'X';
        assert!(decode_note_reshape_witness_v3(&encoded).is_err());
    }

    #[test]
    fn note_reshape_witness_v3_rejects_bad_version() {
        let mut encoded = corrupt();
        encoded[4..8].copy_from_slice(&2u32.to_le_bytes());
        assert!(decode_note_reshape_witness_v3(&encoded).is_err());
    }

    #[test]
    fn note_reshape_witness_v3_rejects_bad_length() {
        let mut encoded = corrupt();
        let wrong_len = (encoded.len() as u32).saturating_sub(1);
        encoded[8..12].copy_from_slice(&wrong_len.to_le_bytes());
        assert!(decode_note_reshape_witness_v3(&encoded).is_err());
    }
}
