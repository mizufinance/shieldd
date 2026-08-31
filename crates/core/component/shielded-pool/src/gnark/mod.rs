mod artifacts;
mod binary;
mod note_reshape;
mod note_reshape_witness;
mod note_reshape_witness_binary;
mod note_seizure;
mod note_seizure_witness;
mod note_seizure_witness_binary;
mod recovery_capsule_witness;
mod recovery_capsule_witness_binary;
pub mod runtime;
mod shielded_ics20_withdrawal;
mod shielded_ics20_withdrawal_witness;
mod shielded_ics20_withdrawal_witness_binary;
mod transfer;
mod transfer_proof_result;
mod transfer_witness;
mod transfer_witness_binary;
mod transport;
mod typed;

pub use artifacts::GnarkArtifactMetadata;
pub use note_reshape::{
    decode_note_reshape_witness, encode_note_reshape_witness, translate_note_reshape_proof_result,
    GnarkNoteReshapeClient,
};
pub use note_reshape_witness::NoteReshapeWitness;
pub use note_seizure::{
    decode_note_seizure_witness, encode_note_seizure_witness, translate_note_seizure_proof_result,
    GnarkNoteSeizureClient,
};
pub use note_seizure_witness::{NoteSeizureRecoveryWitness, NoteSeizureWitness};
pub use recovery_capsule_witness::RecoveryCapsuleWitness;
pub use shielded_ics20_withdrawal::{
    decode_shielded_ics20_withdrawal_witness, encode_shielded_ics20_withdrawal_witness,
    translate_shielded_ics20_withdrawal_proof_result, GnarkShieldedIcs20WithdrawalClient,
};
pub use shielded_ics20_withdrawal_witness::ShieldedIcs20WithdrawalWitness;
pub use transfer::{
    decode_transfer_witness, encode_transfer_witness, translate_transfer_proof_result,
    GnarkTransferClient,
};
pub use transfer_witness::TransferWitness;
#[cfg(test)]
pub(crate) use typed::point_affine_compress_to_field_bytes;
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
                "transfer",
                b"shieldd_gnark_transfer_init" as &[u8],
            ),
            (
                "note_reshape1x8",
                "artifacts/note_reshape1x8",
                "note_reshape",
                b"shieldd_gnark_note_reshape_init" as &[u8],
            ),
            (
                "note_reshape8x1",
                "artifacts/note_reshape8x1",
                "note_reshape",
                b"shieldd_gnark_note_reshape_init" as &[u8],
            ),
            (
                "shielded_ics20_withdrawal",
                "artifacts/shielded_ics20_withdrawal",
                "shielded_ics20_withdrawal",
                b"shieldd_gnark_shielded_ics20_withdrawal_init" as &[u8],
            ),
        ];

        let available_cases = cases
            .into_iter()
            .map(|(family, artifact_dir, library_name, init_symbol)| {
                (
                    family,
                    artifact_dir,
                    library_name,
                    init_symbol,
                    gnark_dir.join(format!(
                        "libshieldd_gnark_{library_name}.{}",
                        shared_lib_ext()
                    )),
                )
            })
            .filter(|(_, _, _, _, lib_path)| lib_path.exists())
            .collect::<Vec<_>>();

        if available_cases.is_empty() {
            eprintln!(
                "skipping repo-local demo gnark library smoke test; no local shared libraries found in {}",
                gnark_dir.display()
            );
            return;
        }

        for (family, artifact_dir, _, init_symbol, lib_path) in available_cases {
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
            encode_note_reshape_witness, encode_shielded_ics20_withdrawal_witness,
            encode_transfer_witness,
        },
        test_proof_helpers::proof_test_helpers,
        NoteReshapeFamilyId, ShieldedIcs20WithdrawalFamilyId,
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

    fn write_transfer_fixture() {
        let mut rng = rand::rngs::StdRng::seed_from_u64(0x0000_0054_5832_5832);
        let (public, private) =
            proof_test_helpers::build_transfer_roundtrip_inputs_with_rng(&mut rng, true);
        write_fixture(
            "transfer_witness.bin",
            encode_transfer_witness(&public, &private).expect("encode transfer witness"),
        );
    }

    fn write_unregulated_transfer_fixture() {
        let mut rng = rand::rngs::StdRng::seed_from_u64(0x554e_5245_4758_4631);
        let asset_id = shieldd_sdk_asset::asset::REGISTRY
            .parse_unit("test_usd")
            .id();
        let predecessor_asset_id = asset_id.0 - decaf377::Fq::from(1u64);
        let (public, private) =
            proof_test_helpers::build_transfer_hidden_arity_roundtrip_inputs_for_asset_populated(
                &mut rng,
                asset_id,
                predecessor_asset_id,
                1,
                false,
            );
        write_fixture(
            "transfer_unregulated_witness.bin",
            encode_transfer_witness(&public, &private)
                .expect("encode unregulated transfer witness"),
        );
    }

    fn write_flagged_transfer_fixture() {
        let mut rng = rand::rngs::StdRng::seed_from_u64(0x464c_4147_5631_3601);
        let (public, private) =
            proof_test_helpers::build_transfer_flagged_hidden_arity_roundtrip_inputs_with_rng(
                &mut rng,
            );
        write_fixture(
            "transfer_flagged_witness.bin",
            encode_transfer_witness(&public, &private).expect("encode flagged transfer witness"),
        );
    }

    fn write_shielded_ics20_withdrawal_fixture() {
        let mut rng = rand::rngs::StdRng::seed_from_u64(0x0000_0049_4353_3201);
        let (public, private) =
            proof_test_helpers::build_shielded_ics20_withdrawal_roundtrip_inputs_with_rng(
                &mut rng,
                ShieldedIcs20WithdrawalFamilyId::Canonical,
                true,
            );
        write_fixture(
            "shielded_ics20_withdrawal_witness.bin",
            encode_shielded_ics20_withdrawal_witness(&public, &private)
                .expect("encode shielded ICS-20 withdrawal witness"),
        );
    }

    fn write_unregulated_shielded_ics20_withdrawal_fixture() {
        let mut rng = rand::rngs::StdRng::seed_from_u64(0x554e_5245_4757_4438);
        let (public, private) =
            proof_test_helpers::build_shielded_ics20_withdrawal_roundtrip_inputs_with_rng_and_real_spends(
                &mut rng,
                ShieldedIcs20WithdrawalFamilyId::Canonical,
                false,
                1,
            );
        write_fixture(
            "shielded_ics20_withdrawal_unregulated_witness.bin",
            encode_shielded_ics20_withdrawal_witness(&public, &private)
                .expect("encode unregulated optional-dummy withdrawal witness"),
        );
    }

    #[test]
    #[ignore = "debug: refresh Rust-emitted withdrawal gnark soundness fixture"]
    fn bless_shielded_ics20_withdrawal_witness_fixture() {
        write_shielded_ics20_withdrawal_fixture();
        write_unregulated_shielded_ics20_withdrawal_fixture();
    }

    #[test]
    #[ignore = "debug: refresh Rust-emitted transfer gnark soundness fixture"]
    fn bless_transfer_witness_fixture() {
        write_transfer_fixture();
    }

    #[test]
    #[ignore = "debug: refresh Rust-emitted unregulated transfer gnark soundness fixture"]
    fn bless_unregulated_transfer_witness_fixture() {
        write_unregulated_transfer_fixture();
    }

    #[test]
    #[ignore = "debug: refresh Rust-emitted flagged transfer gnark soundness fixture"]
    fn bless_flagged_transfer_witness_fixture() {
        write_flagged_transfer_fixture();
    }

    #[test]
    #[ignore = "debug: refresh Rust-emitted gnark soundness fixtures"]
    fn bless_soundness_gnark_witness_fixtures() {
        write_transfer_fixture();
        write_flagged_transfer_fixture();

        let mut one_to_many_rng = rand::rngs::StdRng::seed_from_u64(0x0000_0053_3158_3401);
        let (one_to_many_public, one_to_many_private) =
            proof_test_helpers::build_note_reshape_roundtrip_inputs_with_rng(
                &mut one_to_many_rng,
                NoteReshapeFamilyId::OneByEight,
            );
        write_fixture(
            "note_reshape1x8_witness.bin",
            encode_note_reshape_witness(&one_to_many_public, &one_to_many_private)
                .expect("encode note reshape witness"),
        );

        for (family_id, seed, filename) in [(
            NoteReshapeFamilyId::EightByOne,
            0x0000_0043_3858_3101,
            "note_reshape8x1_witness.bin",
        )] {
            let mut rng = rand::rngs::StdRng::seed_from_u64(seed);
            let (public, private) =
                proof_test_helpers::build_note_reshape_roundtrip_inputs_with_rng(
                    &mut rng, family_id,
                );
            write_fixture(
                filename,
                encode_note_reshape_witness(&public, &private)
                    .expect("encode note reshape witness"),
            );
        }

        write_shielded_ics20_withdrawal_fixture();
    }
}
