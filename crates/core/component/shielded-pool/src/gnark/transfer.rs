use std::path::{Path, PathBuf};

use anyhow::{bail, Result};
use ark_groth16::PreparedVerifyingKey;
use ark_serialize::CanonicalSerialize;
use decaf377::{Bls12_377, Fq};

#[cfg(any(unix, windows))]
use crate::gnark::transport::{auto_lib_path, load_bundled_transport, load_library_transport};
use crate::{
    gnark::{
        transfer_proof_result::parse_transfer_binary_proof_result,
        transfer_witness::TransferWitnessV20,
        transport::{
            load_daemon_transport, load_from_env_paths, prove_with_transport, shutdown_transport,
            GnarkFamilyConfig, GnarkTransport,
        },
    },
    transfer::{TransferProof, TransferProofPrivate, TransferProofPublic},
};

const TRANSFER_LIB_BASENAME: &str = "libshieldd_gnark_transfer";
const TRANSFER_ENV_ARTIFACT_DIR: &str = "SHIELDD_GNARK_TRANSFER_ARTIFACT_DIR";
const TRANSFER_ENV_LIB: &str = "SHIELDD_GNARK_TRANSFER_LIB";
const TRANSFER_ENV_DAEMON: &str = "SHIELDD_GNARK_TRANSFER_DAEMON";

const TRANSFER_INIT_SYMBOL: &[u8] = b"shieldd_gnark_transfer_init";
const TRANSFER_INIT_FROM_BYTES_SYMBOL: &[u8] = b"shieldd_gnark_transfer_init_from_bytes";
const TRANSFER_PROVE_SYMBOL: &[u8] = b"shieldd_gnark_transfer_prove";
const TRANSFER_FREE_SYMBOL: &[u8] = b"shieldd_gnark_transfer_free";
const TRANSFER_SHUTDOWN_SYMBOL: &[u8] = b"shieldd_gnark_transfer_shutdown";

static TRANSFER_FAMILY_CONFIG: GnarkFamilyConfig = GnarkFamilyConfig {
    family: "transfer",
    env_artifact_dir: TRANSFER_ENV_ARTIFACT_DIR,
    env_lib: TRANSFER_ENV_LIB,
    env_daemon: TRANSFER_ENV_DAEMON,
    init_symbol: TRANSFER_INIT_SYMBOL,
    init_from_bytes_symbol: TRANSFER_INIT_FROM_BYTES_SYMBOL,
    prove_symbol: TRANSFER_PROVE_SYMBOL,
    free_symbol: TRANSFER_FREE_SYMBOL,
    shutdown_symbol: TRANSFER_SHUTDOWN_SYMBOL,
};

pub fn encode_transfer_witness_v20(
    public: &TransferProofPublic,
    private: &TransferProofPrivate,
) -> Result<Vec<u8>> {
    TransferWitnessV20::from_public_private(public, private)?.encode()
}

pub fn decode_transfer_witness_v20(bytes: &[u8]) -> Result<TransferWitnessV20> {
    TransferWitnessV20::decode(bytes)
}

pub struct GnarkTransferClient {
    transport: GnarkTransport,
    verifying_key: PreparedVerifyingKey<Bls12_377>,
}

enum TransferTransportSource<'a> {
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

// SAFETY: `GnarkTransferClient` is only shared through immutable references. The daemon
// transport serializes mutable process I/O through its internal `Mutex<GnarkDaemonProcess>`,
// and the library transport stores only an owned library handle, immutable function pointers,
// and an opaque prover handle created during initialization. Calls into the native transport
// take `&self`, do not expose borrowed internal state, and rely on the gnark transport API to
// treat the handle as a thread-safe proving context for concurrent read-only use.
unsafe impl Send for GnarkTransferClient {}
// SAFETY: See the `Send` impl above; the client contains no Rust-side unsynchronized mutable
// aliasing, and daemon access is protected by a mutex.
unsafe impl Sync for GnarkTransferClient {}

impl GnarkTransferClient {
    fn load_transport(source: TransferTransportSource<'_>) -> Result<Self> {
        let config = &TRANSFER_FAMILY_CONFIG;
        let (transport, verifying_key) = match source {
            #[cfg(any(unix, windows))]
            TransferTransportSource::Library {
                lib_path,
                artifact_dir,
            } => load_library_transport(lib_path, artifact_dir, &config)?,
            TransferTransportSource::Daemon {
                binary,
                artifact_dir,
            } => load_daemon_transport(binary, artifact_dir, &config)?,
            #[cfg(any(unix, windows))]
            TransferTransportSource::Bundled {
                lib_path,
                pk_bytes,
                vk_json_bytes,
                metadata,
            } => load_bundled_transport(lib_path, pk_bytes, vk_json_bytes, metadata, &config)?,
        };
        Ok(Self {
            transport,
            verifying_key,
        })
    }

    pub fn from_env() -> Result<Self> {
        let config = &TRANSFER_FAMILY_CONFIG;
        let (artifact_dir, lib_path, daemon_path) = load_from_env_paths(config)?;
        match (lib_path, daemon_path) {
            (Some(lib_path), None) => {
                #[cfg(any(unix, windows))]
                {
                    Self::load_transport(TransferTransportSource::Library {
                        lib_path: &lib_path,
                        artifact_dir: &artifact_dir,
                    })
                }
                #[cfg(not(any(unix, windows)))]
                {
                    let _ = (&lib_path, &artifact_dir);
                    bail!("gnark library transport is not supported on this platform")
                }
            }
            (None, Some(daemon_path)) => Self::load_transport(TransferTransportSource::Daemon {
                binary: &daemon_path,
                artifact_dir: &artifact_dir,
            }),
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
    ) -> Result<Self> {
        #[cfg(any(unix, windows))]
        {
            Self::load_transport(TransferTransportSource::Bundled {
                lib_path,
                pk_bytes,
                vk_json_bytes,
                metadata,
            })
        }
        #[cfg(not(any(unix, windows)))]
        {
            let _ = (lib_path, pk_bytes, vk_json_bytes, metadata);
            bail!("gnark bundled library loading is not supported on this platform")
        }
    }

    pub fn bundled_lib_path() -> Option<PathBuf> {
        shieldd_sdk_proof_params::GNARK_TRANSFER_BUNDLED_LIBRARY_PATH.map(PathBuf::from)
    }

    #[cfg(any(unix, windows))]
    pub fn auto_lib_path() -> Option<PathBuf> {
        auto_lib_path(TRANSFER_LIB_BASENAME)
    }

    pub fn env_override_configured() -> bool {
        std::env::var_os(TRANSFER_ENV_LIB).is_some()
            || std::env::var_os(TRANSFER_ENV_DAEMON).is_some()
            || std::env::var_os(TRANSFER_ENV_ARTIFACT_DIR).is_some()
    }

    pub fn bundled_transport_available() -> bool {
        let lib_path = Self::bundled_lib_path().or_else(|| {
            #[cfg(any(unix, windows))]
            {
                Self::auto_lib_path()
            }
            #[cfg(not(any(unix, windows)))]
            {
                None
            }
        });
        lib_path.is_some() && !shieldd_sdk_proof_params::transfer_proving_key_bytes().is_empty()
    }

    pub fn prove(
        &self,
        public: &TransferProofPublic,
        private: &TransferProofPrivate,
    ) -> Result<TransferProof> {
        let witness_model = TransferWitnessV20::from_public_private(public, private)?;
        let expected_hash = Fq::from_bytes_checked(&witness_model.claimed_statement_hash)
            .map_err(|_| anyhow::anyhow!("transfer witness statement hash is non-canonical"))?;
        let witness = witness_model.encode()?;
        let payload = prove_with_transport(&self.transport, &witness, "transfer")?;
        let (claimed_hash, proof) = translate_transfer_proof_result(&payload)?;
        if claimed_hash != expected_hash {
            bail!(
                "gnark transfer proof returned wrong statement hash: expected {expected_hash}, got {claimed_hash}",
            );
        }
        proof.verify_with_prepared_vk(public, &self.verifying_key)?;
        Ok(proof)
    }
}

impl Drop for GnarkTransferClient {
    fn drop(&mut self) {
        shutdown_transport(&mut self.transport);
    }
}

pub fn translate_transfer_proof_result(payload: &[u8]) -> Result<(Fq, TransferProof)> {
    let (claimed_hash, proof) = parse_transfer_binary_proof_result(payload, "transfer")?;
    let mut proof_bytes = Vec::new();
    proof.serialize_compressed(&mut proof_bytes)?;
    let proof = TransferProof::try_from(
        shieldd_sdk_proto::shieldd::core::component::shielded_pool::v1::ZkTransferProof {
            inner: proof_bytes,
        },
    )?;
    Ok((claimed_hash, proof))
}

#[cfg(test)]
mod tests {
    use super::*;
    use rand::SeedableRng;

    #[test]
    fn transfer_witness_v20_roundtrip() {
        let (public, private) =
            crate::test_proof_helpers::proof_test_helpers::build_transfer_roundtrip_inputs(true);
        let encoded =
            encode_transfer_witness_v20(&public, &private).expect("encode transfer witness");
        assert_eq!(u32::from_le_bytes(encoded[4..8].try_into().unwrap()), 20);
        let decoded = decode_transfer_witness_v20(&encoded).expect("decode transfer witness");
        let expected = TransferWitnessV20::from_public_private(&public, &private)
            .expect("build transfer witness");
        assert_eq!(decoded, expected);
    }

    #[test]
    fn transfer_hidden_arity_witness_v20_roundtrip() {
        let mut rng = rand::rngs::StdRng::seed_from_u64(0x0000_0054_5831_5831);
        let (public, private) = crate::test_proof_helpers::proof_test_helpers::
            build_transfer_hidden_arity_roundtrip_inputs_with_rng(&mut rng, true, false);
        assert!(private.optional_input.is_dummy);

        let encoded =
            encode_transfer_witness_v20(&public, &private).expect("encode hidden-arity witness");
        let decoded =
            decode_transfer_witness_v20(&encoded).expect("decode hidden-arity transfer witness");
        let expected = TransferWitnessV20::from_public_private(&public, &private)
            .expect("build hidden-arity transfer witness");
        assert_eq!(decoded, expected);
    }

    #[test]
    fn transfer_witness_v20_rejects_legacy_v15_layout() {
        let (public, private) =
            crate::test_proof_helpers::proof_test_helpers::build_transfer_roundtrip_inputs(true);
        let mut encoded =
            encode_transfer_witness_v20(&public, &private).expect("encode transfer witness");
        encoded[4..8].copy_from_slice(&15u32.to_le_bytes());
        let err = decode_transfer_witness_v20(&encoded)
            .expect_err("version 16 decoder must reject the obsolete version 15 layout");
        assert!(err
            .to_string()
            .contains("unsupported transfer witness version 15"));
    }
}
