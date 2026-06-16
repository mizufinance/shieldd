mod artifacts;
mod binary;
mod consolidate;
mod note_reshape_witness;
mod note_reshape_witness_binary;
pub mod runtime;
mod shielded_ics20_withdrawal;
mod shielded_ics20_withdrawal_witness;
mod shielded_ics20_withdrawal_witness_binary;
mod split;
mod transfer;
mod transfer_proof_result;
mod transfer_witness;
mod transfer_witness_binary;
mod transport;
mod typed;

pub use artifacts::GnarkArtifactMetadata;
pub use consolidate::{
    decode_consolidate_witness_v1, encode_consolidate_witness_v1,
    translate_consolidate_proof_result, GnarkConsolidateClient,
};
pub use note_reshape_witness::{ConsolidateWitnessV1, SplitWitnessV1};
pub use shielded_ics20_withdrawal::{
    decode_shielded_ics20_withdrawal_witness_v1, encode_shielded_ics20_withdrawal_witness_v1,
    translate_shielded_ics20_withdrawal_proof_result, GnarkShieldedIcs20WithdrawalClient,
};
pub use shielded_ics20_withdrawal_witness::ShieldedIcs20WithdrawalWitnessV1;
pub use split::{
    decode_split_witness_v1, encode_split_witness_v1, translate_split_proof_result,
    GnarkSplitClient,
};
pub use transfer::{
    decode_transfer_witness_v1, encode_transfer_witness_v1, translate_transfer_proof_result,
    GnarkTransferClient,
};
pub use transfer_witness::TransferWitnessV1;
pub use typed::{ComplianceLeafBinary, IndexedLeafBinary, MerklePathBinary, PointAffineBytes};

#[cfg(all(test, any(unix, windows)))]
mod repo_local_demo_library_tests {
    use std::path::PathBuf;

    use libloading::Library;

    fn repo_root() -> PathBuf {
        PathBuf::from(env!("CARGO_MANIFEST_DIR"))
            .join("../../../../")
            .canonicalize()
            .expect("repo root should resolve")
    }

    fn shared_lib_ext() -> &'static str {
        if cfg!(target_os = "macos") {
            "dylib"
        } else if cfg!(target_os = "linux") {
            "so"
        } else {
            "dll"
        }
    }

    #[test]
    fn repo_local_demo_gnark_libraries_are_loadable() {
        let gnark_dir = repo_root().join("tools/gnark");
        let cases = [
            (
                "transfer",
                "artifacts/transfer",
                b"shieldd_gnark_transfer_init" as &[u8],
            ),
            (
                "split",
                "artifacts/split1x4",
                b"shieldd_gnark_split_init" as &[u8],
            ),
            (
                "consolidate",
                "artifacts/consolidate2x1",
                b"shieldd_gnark_consolidate_init" as &[u8],
            ),
            (
                "shielded_ics20_withdrawal",
                "artifacts/shielded_ics20_withdrawal",
                b"shieldd_gnark_shielded_ics20_withdrawal_init" as &[u8],
            ),
        ];

        let available_cases = cases
            .into_iter()
            .map(|(family, artifact_dir, init_symbol)| {
                (
                    family,
                    artifact_dir,
                    init_symbol,
                    gnark_dir.join(format!("libshieldd_gnark_{family}.{}", shared_lib_ext())),
                )
            })
            .filter(|(_, _, _, lib_path)| lib_path.exists())
            .collect::<Vec<_>>();

        if available_cases.is_empty() {
            eprintln!(
                "skipping repo-local demo gnark library smoke test; no local shared libraries found in {}",
                gnark_dir.display()
            );
            return;
        }

        for (family, artifact_dir, init_symbol, lib_path) in available_cases {
            let metadata_path = gnark_dir.join(artifact_dir).join("circuit_metadata.json");
            assert!(
                metadata_path.exists(),
                "expected repo-local demo gnark metadata for {family} at {}",
                metadata_path.display()
            );

            let library = unsafe { Library::new(&lib_path) }.unwrap_or_else(|error| {
                panic!(
                    "repo-local demo gnark library for {family} failed to load from {}: {error}",
                    lib_path.display()
                )
            });

            unsafe {
                let _: libloading::Symbol<'_, unsafe extern "C" fn()> =
                    library.get(init_symbol).unwrap_or_else(|error| {
                        panic!(
                            "repo-local demo gnark library for {family} is missing init symbol {:?}: {error}",
                            std::str::from_utf8(init_symbol).expect("symbol should be utf8")
                        )
                    });
            }
        }
    }
}

#[cfg(test)]
mod soundness_fixture_tests {
    use std::path::PathBuf;

    use rand::SeedableRng;

    use crate::{
        gnark::{
            encode_consolidate_witness_v1, encode_shielded_ics20_withdrawal_witness_v1,
            encode_split_witness_v1, encode_transfer_witness_v1,
        },
        test_proof_helpers::proof_test_helpers,
        ConsolidateFamilyId, ShieldedIcs20WithdrawalFamilyId, SplitFamilyId,
    };

    fn fixture_dir() -> PathBuf {
        PathBuf::from(env!("CARGO_MANIFEST_DIR"))
            .join("../../../../tools/gnark/internal/testfixtures/vectors")
    }

    fn write_fixture(filename: &str, bytes: Vec<u8>) {
        let dir = fixture_dir();
        std::fs::create_dir_all(&dir)
            .unwrap_or_else(|e| panic!("create soundness fixture dir {dir:?}: {e}"));
        let path = dir.join(filename);
        std::fs::write(&path, &bytes)
            .unwrap_or_else(|e| panic!("write soundness fixture {path:?}: {e}"));
        eprintln!("wrote {} bytes to {path:?}", bytes.len());
    }

    #[test]
    #[ignore = "debug: refresh Rust-emitted gnark soundness fixtures"]
    fn bless_soundness_gnark_witness_fixtures() {
        let mut transfer_rng = rand::rngs::StdRng::seed_from_u64(0x0000_0054_5832_5832);
        let (transfer_public, transfer_private) =
            proof_test_helpers::build_transfer_roundtrip_inputs_with_rng(&mut transfer_rng, true);
        write_fixture(
            "transfer_witness_v1.bin",
            encode_transfer_witness_v1(&transfer_public, &transfer_private)
                .expect("encode transfer witness"),
        );

        let mut consolidate_rng = rand::rngs::StdRng::seed_from_u64(0x0000_0043_3258_3101);
        let (consolidate_public, consolidate_private) =
            proof_test_helpers::build_consolidate_roundtrip_inputs_with_rng(
                &mut consolidate_rng,
                ConsolidateFamilyId::TwoByOne,
            );
        write_fixture(
            "consolidate2x1_witness_v1.bin",
            encode_consolidate_witness_v1(&consolidate_public, &consolidate_private)
                .expect("encode consolidate witness"),
        );

        let mut split_rng = rand::rngs::StdRng::seed_from_u64(0x0000_0053_3158_3401);
        let (split_public, split_private) =
            proof_test_helpers::build_split_roundtrip_inputs_with_rng(
                &mut split_rng,
                SplitFamilyId::OneByFour,
            );
        write_fixture(
            "split1x4_witness_v1.bin",
            encode_split_witness_v1(&split_public, &split_private).expect("encode split witness"),
        );

        let mut withdrawal_rng = rand::rngs::StdRng::seed_from_u64(0x0000_0049_4353_3201);
        let (withdrawal_public, withdrawal_private) =
            proof_test_helpers::build_shielded_ics20_withdrawal_roundtrip_inputs_with_rng(
                &mut withdrawal_rng,
                ShieldedIcs20WithdrawalFamilyId::Canonical,
                true,
            );
        write_fixture(
            "shielded_ics20_withdrawal_witness_v1.bin",
            encode_shielded_ics20_withdrawal_witness_v1(&withdrawal_public, &withdrawal_private)
                .expect("encode shielded ICS-20 withdrawal witness"),
        );
    }
}
