use crate::*;
use anyhow::{ensure, Result};
use commonware_cryptography::bls12381::primitives::group::Scalar;
use sha2::{Digest, Sha256};
#[cfg(feature = "prover")]
use shieldd_sdk_circuits::{catalogue::Witness, note::Note};
use shieldd_sdk_circuits::{
    disclosure as circuit,
    encoding::field as scalar,
    encryption::Address,
    group::{native_point, Point},
    hash::Parameters,
    proof::{Envelope, Family},
};
use shieldd_sdk_crypto::{domains, Fq};
use shieldd_sdk_proof_params::pari::Registry;

fn family(request: &DisclosureRequest) -> Result<Family> {
    validate_request(request)?;
    Ok(if request.outputs.len() == 1 {
        Family::DisclosureOne
    } else {
        Family::Disclosure
    })
}

pub fn circuit_id(request: &DisclosureRequest) -> Result<&'static str> {
    Ok(match family(request)? {
        Family::DisclosureOne => CIRCUIT_ID_ONE,
        Family::Disclosure => CIRCUIT_ID_MANY,
        _ => unreachable!("disclosure request selects a disclosure family"),
    })
}

fn zero() -> Scalar {
    Scalar::from(0u64)
}
fn bit(value: bool) -> Scalar {
    Scalar::from(u64::from(value))
}
fn amount(value: &str) -> Result<Scalar> {
    let n: u128 = value.parse()?;
    ensure!(n.to_string() == value, "noncanonical amount");
    Ok(scalar(&Fq::from_raw([n as u64, (n >> 64) as u64, 0, 0])))
}
fn asset(value: &str) -> Result<Scalar> {
    let asset: shieldd_sdk_asset::asset::Id = value.parse()?;
    ensure!(asset.to_string() == value, "noncanonical asset");
    Ok(scalar(&asset.0))
}
fn recipient(value: &str) -> Result<Address<Scalar>> {
    let address: shieldd_sdk_keys::Address = value.parse()?;
    ensure!(address.to_string() == value, "noncanonical address");
    Ok(Address {
        diversified: native_point(&address.diversified_generator()),
        transmission: native_point(&address.transmission_key().point()),
    })
}
fn empty_address() -> Address<Scalar> {
    Address {
        diversified: Point {
            x: zero(),
            y: zero(),
        },
        transmission: Point {
            x: zero(),
            y: zero(),
        },
    }
}
fn predicate(
    p: Option<&AmountPredicate>,
    result: Option<bool>,
) -> Result<circuit::Predicate<Scalar>> {
    ensure!(
        p.is_some() == result.is_some(),
        "predicate result shape mismatch"
    );
    let (op, lower, upper) = match p {
        None => (0, zero(), zero()),
        Some(AmountPredicate::GreaterThan(v)) => (1, amount(v)?, zero()),
        Some(AmountPredicate::LessThan(v)) => (2, amount(v)?, zero()),
        Some(AmountPredicate::AtLeast(v)) => (3, amount(v)?, zero()),
        Some(AmountPredicate::AtMost(v)) => (4, amount(v)?, zero()),
        Some(AmountPredicate::InclusiveRange { lower, upper }) => {
            (5, amount(lower)?, amount(upper)?)
        }
    };
    Ok(circuit::Predicate {
        op: Scalar::from(op as u64),
        lower,
        upper,
        result: bit(result.unwrap_or(false)),
    })
}
fn statement<const N: usize>(s: &DisclosureStatement) -> Result<circuit::Statement<Scalar, N>> {
    validate_request(&s.request)?;
    ensure!(
        s.request.outputs.len() <= N,
        "request exceeds disclosure family capacity"
    );
    ensure!(
        s.outputs.len() == s.request.outputs.len(),
        "output count mismatch"
    );
    let mut context = Sha256::new();
    context.update(b"shieldd.disclosure.statement.v2\0");
    context.update([shieldd_sdk_crypto::SUITE]);
    context.update(serde_json::to_vec(s)?);
    let digest: [u8; 32] = context.finalize().into();
    let halves = [
        scalar(&shieldd_sdk_crypto::encoding::pack(&digest[..16])[0]),
        scalar(&shieldd_sdk_crypto::encoding::pack(&digest[16..])[0]),
    ];
    let mut slots = std::array::from_fn(|_| circuit::Slot {
        active: zero(),
        commitment: zero(),
        reveal_amount: zero(),
        reveal_asset: zero(),
        reveal_recipient: zero(),
        amount: zero(),
        asset: zero(),
        address: empty_address(),
        predicate: predicate(None, None).expect("empty predicate"),
    });
    for (index, (claim, output)) in s.request.outputs.iter().zip(&s.outputs).enumerate() {
        ensure!(
            claim.reference == output.public.reference,
            "reference mismatch"
        );
        ensure!(
            !claim.memo && output.memo.is_none(),
            "memo disclosure requires payload keys"
        );
        let reveal_asset = claim.asset || claim.predicate.is_some();
        ensure!(
            claim.amount == output.amount.is_some()
                && reveal_asset == output.asset.is_some()
                && claim.recipient == output.recipient.is_some(),
            "field selection mismatch"
        );
        slots[index] = circuit::Slot {
            active: bit(true),
            commitment: scalar(&field(&output.public.commitment)?),
            reveal_amount: bit(claim.amount),
            reveal_asset: bit(reveal_asset),
            reveal_recipient: bit(claim.recipient),
            amount: output
                .amount
                .as_deref()
                .map(amount)
                .transpose()?
                .unwrap_or_else(zero),
            asset: output
                .asset
                .as_deref()
                .map(asset)
                .transpose()?
                .unwrap_or_else(zero),
            address: output
                .recipient
                .as_deref()
                .map(recipient)
                .transpose()?
                .unwrap_or_else(empty_address),
            predicate: predicate(claim.predicate.as_ref(), output.predicate_result)?,
        };
    }
    ensure!(
        s.request.total.is_some() == s.selected_output_total.is_some(),
        "total shape mismatch"
    );
    let mut out = circuit::Statement {
        context_hash: Parameters::load()?.native(domains::DISCLOSURE_CONTEXT, &halves),
        context: halves,
        slots,
        total_enabled: zero(),
        total_reveal: zero(),
        total_amount: zero(),
        total_asset: zero(),
        total_predicate: predicate(None, None)?,
    };
    if let (Some(claim), Some(total)) = (&s.request.total, &s.selected_output_total) {
        ensure!(
            claim.reveal == total.amount.is_some(),
            "total amount shape mismatch"
        );
        out.total_enabled = bit(true);
        out.total_reveal = bit(claim.reveal);
        out.total_amount = total
            .amount
            .as_deref()
            .map(amount)
            .transpose()?
            .unwrap_or_else(zero);
        out.total_asset = asset(&total.asset)?;
        out.total_predicate = predicate(claim.predicate.as_ref(), total.predicate_result)?;
    }
    Ok(out)
}
#[cfg(feature = "prover")]
fn witness<const N: usize>(
    s: &DisclosureStatement,
    openings: &[NoteOpening],
) -> Result<circuit::Witness<N>> {
    ensure!(openings.len() == s.outputs.len(), "opening count mismatch");
    ensure!(
        openings.len() <= N,
        "openings exceed disclosure family capacity"
    );
    let mut notes = std::array::from_fn(|_| circuit::Opening {
        note: Note {
            blinding: zero(),
            amount: zero(),
            recovery: zero(),
        },
        asset: zero(),
        address: empty_address(),
    });
    for (index, opening) in openings.iter().enumerate() {
        notes[index] = circuit::Opening {
            note: Note {
                blinding: scalar(&field(&opening.blinding)?),
                amount: amount(&opening.amount)?,
                recovery: scalar(&field(&opening.recovery)?),
            },
            asset: asset(&opening.asset)?,
            address: recipient(&opening.recipient)?,
        };
    }
    Ok(circuit::Witness {
        statement: statement::<N>(s)?,
        notes,
    })
}
pub(crate) fn verify_pari(package: &DisclosurePackage, registry: &Registry) -> Result<()> {
    let Evidence::Pari {
        circuit,
        verification_key_digest,
        proof,
        control_signatures,
    } = &package.evidence
    else {
        anyhow::bail!("expected Pari evidence")
    };
    let selected = family(&package.statement.request)?;
    ensure!(
        circuit == circuit_id(&package.statement.request)?,
        "wrong disclosure circuit for request"
    );
    ensure!(
        verification_key_digest == &hex::encode(registry.verifying_key(selected)?.digest()),
        "disclosure key mismatch"
    );
    registry.verify(
        selected,
        &match selected {
            Family::DisclosureOne => {
                statement::<1>(&package.statement)?.digest(Parameters::load()?)
            }
            Family::Disclosure => statement::<32>(&package.statement)?.digest(Parameters::load()?),
            _ => unreachable!(),
        },
        &Envelope::from_bytes(proof)?,
    )?;
    verify_controls(&package.statement, control_signatures)
}
#[cfg(feature = "prover")]
pub fn prove(w: &DisclosureWitness, registry: &Registry) -> Result<DisclosurePackage> {
    let statement = evaluate(w)?;
    let selected = family(&statement.request)?;
    let openings = crate::evidence::openings(w)?;
    let native = match selected {
        Family::DisclosureOne => {
            Witness::DisclosureOne(Box::new(witness::<1>(&statement, &openings)?))
        }
        Family::Disclosure => Witness::Disclosure(Box::new(witness::<32>(&statement, &openings)?)),
        _ => unreachable!(),
    };
    let proof = registry.prove(&native, shieldd_sdk_proof_params::pari::proving_strategy()?)?;
    let selected_id = circuit_id(&statement.request)?;
    let package = DisclosurePackage {
        version: VERSION,
        statement,
        evidence: Evidence::Pari {
            circuit: selected_id.into(),
            verification_key_digest: hex::encode(registry.verifying_key(selected)?.digest()),
            proof: proof.to_bytes(),
            control_signatures: crate::evidence::signatures(w),
        },
    };
    verify(&package, Some(registry))?;
    Ok(package)
}

#[cfg(all(test, feature = "prover"))]
mod tests;
