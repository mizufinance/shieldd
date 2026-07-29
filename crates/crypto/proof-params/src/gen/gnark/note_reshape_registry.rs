#[derive(Clone, Copy, Debug)]
struct GeneratedNoteReshapeProofFamily {
    id: u32,
    verification_key: &'static Lazy<PreparedVerifyingKey<Bls12_377>>,
    proving_key_bytes: &'static [u8],
    verifying_key_json_bytes: &'static [u8],
    metadata_bytes: &'static [u8],
}

static NOTE_RESHAPE2X1_PROOF_VERIFYING_KEY_JSON_BYTES: &[u8] = include_bytes!(concat!(
    env!("CARGO_MANIFEST_DIR"),
    "/../../../tools/gnark/artifacts/note_reshape2x1/verifying_key.json"
));

static NOTE_RESHAPE2X1_PROOF_VERIFICATION_KEY: Lazy<PreparedVerifyingKey<Bls12_377>> = Lazy::new(|| {
    if let Some(dir) = std::env::var_os("SHIELDD_GNARK_NOTE_RESHAPE_ARTIFACT_DIR") {
        return load_verifying_key_json_artifact(Path::new(&dir), "note_reshape2x1")
            .expect("can deserialize note_reshape2x1 VerifyingKey")
            .into();
    }
    load_verifying_key_json_bytes(NOTE_RESHAPE2X1_PROOF_VERIFYING_KEY_JSON_BYTES)
    .expect("bundled note_reshape2x1 VerifyingKey is valid")
    .into()
});

static NOTE_RESHAPE2X1_PROOF_PROVING_KEY_BYTES: &[u8] = {
    #[cfg(feature = "bundled-proving-keys")]
    {
        include_bytes!(concat!(
            env!("CARGO_MANIFEST_DIR"),
            "/../../../tools/gnark/artifacts/note_reshape2x1/proving_key.bin"
        ))
    }
    #[cfg(not(feature = "bundled-proving-keys"))]
    {
        &[]
    }
};

static NOTE_RESHAPE2X1_CIRCUIT_METADATA: &[u8] = include_bytes!(concat!(
    env!("CARGO_MANIFEST_DIR"),
    "/../../../tools/gnark/artifacts/note_reshape2x1/circuit_metadata.json"
));

static NOTE_RESHAPE8X1_PROOF_VERIFYING_KEY_JSON_BYTES: &[u8] = include_bytes!(concat!(
    env!("CARGO_MANIFEST_DIR"),
    "/../../../tools/gnark/artifacts/note_reshape8x1/verifying_key.json"
));

static NOTE_RESHAPE8X1_PROOF_VERIFICATION_KEY: Lazy<PreparedVerifyingKey<Bls12_377>> = Lazy::new(|| {
    if let Some(dir) = std::env::var_os("SHIELDD_GNARK_NOTE_RESHAPE_ARTIFACT_DIR") {
        return load_verifying_key_json_artifact(Path::new(&dir), "note_reshape8x1")
            .expect("can deserialize note_reshape8x1 VerifyingKey")
            .into();
    }
    load_verifying_key_json_bytes(NOTE_RESHAPE8X1_PROOF_VERIFYING_KEY_JSON_BYTES)
    .expect("bundled note_reshape8x1 VerifyingKey is valid")
    .into()
});

static NOTE_RESHAPE8X1_PROOF_PROVING_KEY_BYTES: &[u8] = {
    #[cfg(feature = "bundled-proving-keys")]
    {
        include_bytes!(concat!(
            env!("CARGO_MANIFEST_DIR"),
            "/../../../tools/gnark/artifacts/note_reshape8x1/proving_key.bin"
        ))
    }
    #[cfg(not(feature = "bundled-proving-keys"))]
    {
        &[]
    }
};

static NOTE_RESHAPE8X1_CIRCUIT_METADATA: &[u8] = include_bytes!(concat!(
    env!("CARGO_MANIFEST_DIR"),
    "/../../../tools/gnark/artifacts/note_reshape8x1/circuit_metadata.json"
));

static NOTE_RESHAPE1X8_PROOF_VERIFYING_KEY_JSON_BYTES: &[u8] = include_bytes!(concat!(
    env!("CARGO_MANIFEST_DIR"),
    "/../../../tools/gnark/artifacts/note_reshape1x8/verifying_key.json"
));

static NOTE_RESHAPE1X8_PROOF_VERIFICATION_KEY: Lazy<PreparedVerifyingKey<Bls12_377>> = Lazy::new(|| {
    if let Some(dir) = std::env::var_os("SHIELDD_GNARK_NOTE_RESHAPE_ARTIFACT_DIR") {
        return load_verifying_key_json_artifact(Path::new(&dir), "note_reshape1x8")
            .expect("can deserialize note_reshape1x8 VerifyingKey")
            .into();
    }
    load_verifying_key_json_bytes(NOTE_RESHAPE1X8_PROOF_VERIFYING_KEY_JSON_BYTES)
    .expect("bundled note_reshape1x8 VerifyingKey is valid")
    .into()
});

static NOTE_RESHAPE1X8_PROOF_PROVING_KEY_BYTES: &[u8] = {
    #[cfg(feature = "bundled-proving-keys")]
    {
        include_bytes!(concat!(
            env!("CARGO_MANIFEST_DIR"),
            "/../../../tools/gnark/artifacts/note_reshape1x8/proving_key.bin"
        ))
    }
    #[cfg(not(feature = "bundled-proving-keys"))]
    {
        &[]
    }
};

static NOTE_RESHAPE1X8_CIRCUIT_METADATA: &[u8] = include_bytes!(concat!(
    env!("CARGO_MANIFEST_DIR"),
    "/../../../tools/gnark/artifacts/note_reshape1x8/circuit_metadata.json"
));

static NOTE_RESHAPE4X1_PROOF_VERIFYING_KEY_JSON_BYTES: &[u8] = include_bytes!(concat!(
    env!("CARGO_MANIFEST_DIR"),
    "/../../../tools/gnark/artifacts/note_reshape4x1/verifying_key.json"
));

static NOTE_RESHAPE4X1_PROOF_VERIFICATION_KEY: Lazy<PreparedVerifyingKey<Bls12_377>> = Lazy::new(|| {
    if let Some(dir) = std::env::var_os("SHIELDD_GNARK_NOTE_RESHAPE_ARTIFACT_DIR") {
        return load_verifying_key_json_artifact(Path::new(&dir), "note_reshape4x1")
            .expect("can deserialize note_reshape4x1 VerifyingKey")
            .into();
    }
    load_verifying_key_json_bytes(NOTE_RESHAPE4X1_PROOF_VERIFYING_KEY_JSON_BYTES)
    .expect("bundled note_reshape4x1 VerifyingKey is valid")
    .into()
});

static NOTE_RESHAPE4X1_PROOF_PROVING_KEY_BYTES: &[u8] = {
    #[cfg(feature = "bundled-proving-keys")]
    {
        include_bytes!(concat!(
            env!("CARGO_MANIFEST_DIR"),
            "/../../../tools/gnark/artifacts/note_reshape4x1/proving_key.bin"
        ))
    }
    #[cfg(not(feature = "bundled-proving-keys"))]
    {
        &[]
    }
};

static NOTE_RESHAPE4X1_CIRCUIT_METADATA: &[u8] = include_bytes!(concat!(
    env!("CARGO_MANIFEST_DIR"),
    "/../../../tools/gnark/artifacts/note_reshape4x1/circuit_metadata.json"
));

static GENERATED_NOTE_RESHAPE_PROOF_FAMILIES: &[GeneratedNoteReshapeProofFamily] = &[
    GeneratedNoteReshapeProofFamily {
        id: 1,
        verification_key: &NOTE_RESHAPE2X1_PROOF_VERIFICATION_KEY,
        proving_key_bytes: NOTE_RESHAPE2X1_PROOF_PROVING_KEY_BYTES,
        verifying_key_json_bytes: NOTE_RESHAPE2X1_PROOF_VERIFYING_KEY_JSON_BYTES,
        metadata_bytes: NOTE_RESHAPE2X1_CIRCUIT_METADATA,
    },
    GeneratedNoteReshapeProofFamily {
        id: 2,
        verification_key: &NOTE_RESHAPE1X8_PROOF_VERIFICATION_KEY,
        proving_key_bytes: NOTE_RESHAPE1X8_PROOF_PROVING_KEY_BYTES,
        verifying_key_json_bytes: NOTE_RESHAPE1X8_PROOF_VERIFYING_KEY_JSON_BYTES,
        metadata_bytes: NOTE_RESHAPE1X8_CIRCUIT_METADATA,
    },
    GeneratedNoteReshapeProofFamily {
        id: 3,
        verification_key: &NOTE_RESHAPE8X1_PROOF_VERIFICATION_KEY,
        proving_key_bytes: NOTE_RESHAPE8X1_PROOF_PROVING_KEY_BYTES,
        verifying_key_json_bytes: NOTE_RESHAPE8X1_PROOF_VERIFYING_KEY_JSON_BYTES,
        metadata_bytes: NOTE_RESHAPE8X1_CIRCUIT_METADATA,
    },
    GeneratedNoteReshapeProofFamily {
        id: 4,
        verification_key: &NOTE_RESHAPE4X1_PROOF_VERIFICATION_KEY,
        proving_key_bytes: NOTE_RESHAPE4X1_PROOF_PROVING_KEY_BYTES,
        verifying_key_json_bytes: NOTE_RESHAPE4X1_PROOF_VERIFYING_KEY_JSON_BYTES,
        metadata_bytes: NOTE_RESHAPE4X1_CIRCUIT_METADATA,
    },
];

fn note_reshape_proof_family(family_id: u32) -> &'static GeneratedNoteReshapeProofFamily {
    GENERATED_NOTE_RESHAPE_PROOF_FAMILIES
        .iter()
        .find(|family| family.id == family_id)
        .unwrap_or_else(|| panic!("unknown note_reshape family id {family_id}"))
}

pub fn note_reshape_proof_verification_key(
    family_id: u32,
) -> &'static PreparedVerifyingKey<Bls12_377> {
    &**note_reshape_proof_family(family_id).verification_key
}

pub fn note_reshape_proving_key_bytes(family_id: u32) -> &'static [u8] {
    note_reshape_proof_family(family_id).proving_key_bytes
}

pub fn note_reshape_verifying_key_json_bytes(family_id: u32) -> &'static [u8] {
    note_reshape_proof_family(family_id).verifying_key_json_bytes
}

pub fn note_reshape_circuit_metadata(family_id: u32) -> &'static [u8] {
    note_reshape_proof_family(family_id).metadata_bytes
}
