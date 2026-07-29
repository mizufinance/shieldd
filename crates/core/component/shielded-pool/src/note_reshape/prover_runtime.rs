use anyhow::Result;
#[cfg(any(unix, windows))]
use std::{
    collections::BTreeMap,
    sync::{mpsc, LazyLock},
    thread,
};

use crate::{
    gnark::GnarkNoteReshapeClient,
    note_reshape::{NoteReshapeProof, NoteReshapeProofPrivate, NoteReshapeProofPublic},
    NoteReshapeFamilyId,
};

#[cfg(any(unix, windows))]
enum NoteReshapeProverRuntimeRequest {
    Prove {
        public: NoteReshapeProofPublic,
        private: NoteReshapeProofPrivate,
        response: mpsc::Sender<Result<NoteReshapeProof, crate::ProofError>>,
    },
}

#[cfg(any(unix, windows))]
static NOTE_RESHAPE_PROVER_RUNTIME: LazyLock<mpsc::Sender<NoteReshapeProverRuntimeRequest>> =
    LazyLock::new(|| {
        let (tx, rx) = mpsc::channel::<NoteReshapeProverRuntimeRequest>();
        thread::Builder::new()
            .name("note_reshape-prover-runtime".to_string())
            .spawn(move || {
                let mut clients = BTreeMap::<NoteReshapeFamilyId, GnarkNoteReshapeClient>::new();
                while let Ok(request) = rx.recv() {
                    match request {
                        NoteReshapeProverRuntimeRequest::Prove {
                            public,
                            private,
                            response,
                        } => {
                            let family_id = public.family_id;
                            let result = (|| {
                                ensure_client(&mut clients, family_id)?
                                    .prove(&public, &private)
                                    .map_err(|e| {
                                        crate::ProofError::ProofGenerationFailed(format!(
                                            "gnark {} prove: {e}",
                                            family_id.label()
                                        ))
                                    })
                            })();
                            let _ = response.send(result);
                        }
                    }
                }
            })
            .expect("spawn note_reshape prover runtime worker");
        tx
    });

#[cfg(any(unix, windows))]
pub(super) fn prove_with_runtime(
    public: NoteReshapeProofPublic,
    private: NoteReshapeProofPrivate,
) -> Result<NoteReshapeProof, crate::ProofError> {
    call_runtime(public, private)
}

#[cfg(any(unix, windows))]
fn init_gnark_note_reshape_client(
    family_id: NoteReshapeFamilyId,
) -> Result<GnarkNoteReshapeClient, crate::ProofError> {
    if GnarkNoteReshapeClient::env_override_configured() {
        return crate::gnark::GnarkNoteReshapeClient::from_env(family_id).map_err(|e| {
            crate::ProofError::ProofGenerationFailed(format!(
                "gnark {} init: {e}",
                family_id.label()
            ))
        });
    }

    let lib_path = crate::gnark::GnarkNoteReshapeClient::bundled_lib_path().or_else(|| {
        #[cfg(any(unix, windows))]
        {
            crate::gnark::GnarkNoteReshapeClient::auto_lib_path()
        }
        #[cfg(not(any(unix, windows)))]
        {
            None
        }
    }).ok_or_else(|| {
        crate::ProofError::ProofGenerationFailed(
            "gnark note_reshape library not found (checked bundled path and executable-adjacent locations)".to_string(),
        )
    })?;
    let pk_bytes = family_id.proving_key_bytes();
    if pk_bytes.is_empty() {
        return Err(crate::ProofError::ProofGenerationFailed(format!(
            "gnark {} proving key not bundled (enable bundled-proving-keys feature)",
            family_id.label()
        )));
    }
    let vk_json_bytes = family_id.verifying_key_json_bytes();
    let metadata = family_id.circuit_metadata_bytes();
    crate::gnark::GnarkNoteReshapeClient::from_bundled(
        &lib_path,
        pk_bytes,
        vk_json_bytes,
        metadata,
        family_id,
    )
    .map_err(|e| {
        crate::ProofError::ProofGenerationFailed(format!("gnark {} init: {e}", family_id.label()))
    })
}

#[cfg(any(unix, windows))]
fn ensure_client<'a>(
    clients: &'a mut BTreeMap<NoteReshapeFamilyId, GnarkNoteReshapeClient>,
    family_id: NoteReshapeFamilyId,
) -> Result<&'a GnarkNoteReshapeClient, crate::ProofError> {
    if let std::collections::btree_map::Entry::Vacant(entry) = clients.entry(family_id) {
        entry.insert(init_gnark_note_reshape_client(family_id)?);
    }
    Ok(clients
        .get(&family_id)
        .expect("note_reshape prover runtime cached client"))
}

#[cfg(any(unix, windows))]
fn call_runtime(
    public: NoteReshapeProofPublic,
    private: NoteReshapeProofPrivate,
) -> Result<NoteReshapeProof, crate::ProofError> {
    let (response_tx, response_rx) = mpsc::channel();
    let request = NoteReshapeProverRuntimeRequest::Prove {
        public,
        private,
        response: response_tx,
    };
    NOTE_RESHAPE_PROVER_RUNTIME.send(request).map_err(|_| {
        crate::ProofError::ProofGenerationFailed(
            "note_reshape prover runtime channel closed".into(),
        )
    })?;
    response_rx.recv().map_err(|_| {
        crate::ProofError::ProofGenerationFailed(
            "note_reshape prover runtime exited before replying".into(),
        )
    })?
}
