use crate::*;
use anyhow::{ensure, Result};

/// The local verifier could not run reliably; this is not an invalid disclosure.
#[derive(Debug)]
pub struct VerificationUnavailable;
impl std::fmt::Display for VerificationUnavailable {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str("local disclosure verification unavailable")
    }
}
impl std::error::Error for VerificationUnavailable {}

pub fn verify(package: &DisclosurePackage) -> Result<VerificationResult> {
    ensure!(package.version == VERSION, "unsupported disclosure version");
    validate_request(&package.statement.request)?;
    match &package.evidence {
        Evidence::Groth16 { .. } => {
            #[cfg(feature = "proof")]
            crate::proof::verify_groth16(package)?;
            #[cfg(not(feature = "proof"))]
            return Err(VerificationUnavailable.into());
        }
        Evidence::Openings {
            openings,
            control_signatures,
        } => {
            require_full_openings(&package.statement.request)?;
            let public = package
                .statement
                .outputs
                .iter()
                .map(|o| o.public.clone())
                .collect::<Vec<_>>();
            ensure!(
                describe_openings(&package.statement.request, &public, openings)?
                    == package.statement,
                "opening statement mismatch"
            );
            verify_controls(&package.statement, control_signatures)?;
        }
        Evidence::PayloadKeys {
            keys,
            control_signatures,
        } => {
            ensure!(
                keys.len() == package.statement.outputs.len()
                    && keys.len() == control_signatures.len(),
                "payload key count mismatch"
            );
            let mut outputs = Vec::new();
            for ((output, key), signature) in package
                .statement
                .outputs
                .iter()
                .zip(keys)
                .zip(control_signatures)
            {
                let public = &output.public;
                let key = shieldd_sdk_keys::PayloadKey::try_from(key.clone())?;
                let epk = decaf377_ka::Public(public.ephemeral_key.as_slice().try_into()?);
                let ciphertext = shieldd_sdk_shielded_pool::NoteCiphertext(
                    public.encrypted_note.as_slice().try_into()?,
                );
                let note = shieldd_sdk_shielded_pool::Note::decrypt_with_payload_key(
                    &ciphertext,
                    &key,
                    &epk,
                )?;
                outputs.push(OutputWitness {
                    public: public.clone(),
                    note: note.to_bytes().to_vec(),
                    control_signature: signature.clone(),
                });
            }
            let actual = evaluate(&DisclosureWitness {
                request: package.statement.request.clone(),
                outputs,
            })?;
            ensure!(
                actual == package.statement,
                "payload disclosure statement mismatch"
            );
        }
    }
    Ok(VerificationResult {
        cryptography_verified: true,
        acceptance: Acceptance::NotChecked,
    })
}
pub(crate) fn signatures(w: &DisclosureWitness) -> Vec<Option<Vec<u8>>> {
    w.outputs
        .iter()
        .map(|o| o.control_signature.clone())
        .collect()
}
pub(crate) fn openings(w: &DisclosureWitness) -> Result<Vec<NoteOpening>> {
    w.outputs
        .iter()
        .map(|o| {
            Ok(note_opening(&shieldd_sdk_shielded_pool::Note::try_from(
                o.note.as_slice(),
            )?))
        })
        .collect()
}
fn require_full_openings(r: &DisclosureRequest) -> Result<()> {
    ensure!(r.outputs.iter().all(|c|c.amount&&c.asset&&c.recipient&&!c.memo),"full openings reveal amount, asset, recipient and blinding; memo disclosure requires payload keys");
    Ok(())
}
pub fn export_openings(w: &DisclosureWitness) -> Result<DisclosurePackage> {
    require_full_openings(&w.request)?;
    let p = DisclosurePackage {
        version: VERSION,
        statement: evaluate(w)?,
        evidence: Evidence::Openings {
            openings: openings(w)?,
            control_signatures: signatures(w),
        },
    };
    verify(&p)?;
    Ok(p)
}
pub fn export_payload_keys(w: &DisclosureWitness) -> Result<DisclosurePackage> {
    let keys = w
        .outputs
        .iter()
        .map(|o| {
            Ok(payload_key(&shieldd_sdk_shielded_pool::Note::try_from(
                o.note.as_slice(),
            )?)?
            .to_vec())
        })
        .collect::<Result<Vec<_>>>()?;
    let p = DisclosurePackage {
        version: VERSION,
        statement: evaluate(w)?,
        evidence: Evidence::PayloadKeys {
            keys,
            control_signatures: signatures(w),
        },
    };
    verify(&p)?;
    Ok(p)
}
