//! Development evidence for a transaction fetched independently from a live Bankd node.
use anyhow::{ensure, Context, Result};
use base64::{engine::general_purpose::STANDARD, Engine};
use shieldd_sdk_disclosure as sdk;
use shieldd_sdk_keys::keys::{Bip44Path, SeedPhrase, SpendKey};
use shieldd_sdk_transaction::Transaction;
use std::{io::Read, path::PathBuf, str::FromStr};

#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct Input {
    request: sdk::DisclosureRequest,
    transaction: String,
}

#[derive(serde::Serialize)]
struct Case {
    name: &'static str,
    package: PathBuf,
    predicate: Option<bool>,
}

fn main() -> Result<()> {
    ensure!(cfg!(debug_assertions), "requires a development build");
    let registry = shieldd_sdk_proof_params::pari::Registry::load(&PathBuf::from(
        std::env::var("SHIELDD_PARI_KEYS").context("SHIELDD_PARI_KEYS is required")?,
    ))?;
    let mut args = std::env::args().skip(1);
    let input = args
        .next()
        .context("usage: accepted_fixture INPUT NEW_OUTPUT_DIRECTORY < synthetic-mnemonic.txt")?;
    let output = PathBuf::from(args.next().context("missing output directory")?);
    ensure!(args.next().is_none(), "unexpected argument");
    let bytes = std::fs::read(input)?;
    ensure!(bytes.len() <= sdk::MAX_PACKAGE_BYTES, "input too large");
    let input: Input = serde_json::from_slice(&bytes)?;
    let tx = Transaction::decode_canonical(&STANDARD.decode(input.transaction)?)?;
    let mut mnemonic = String::new();
    std::io::stdin().take(4096).read_to_string(&mut mnemonic)?;
    let sk = SpendKey::from_seed_phrase_bip44(
        SeedPhrase::from_str(mnemonic.trim())?,
        &Bip44Path::new(0),
    )
    .map_err(|error| anyhow::anyhow!(error.to_string()))?;
    let mut witness = sdk::prepare(input.request, &[tx.clone()], &sk.full_viewing_key())?;
    ensure!(
        witness.outputs.len() == 1,
        "fixture requires one selected output"
    );
    let height = witness.request.outputs[0].reference.height;
    let chain = witness.request.chain_id.clone();
    let blocks = [sdk::AcceptedBlock {
        height,
        transactions: vec![tx],
    }];
    // This validates the supplied reference; live-node acceptance is checked by pcli separately.
    sdk::confirm_acceptance(&sdk::evaluate(&witness)?, &chain, &blocks)?;
    std::fs::create_dir(&output)?;
    let mut cases = Vec::new();
    for (name, predicate) in [
        ("openings", None),
        ("payload-keys", None),
        ("predicate-true", Some(true)),
        ("predicate-false", Some(false)),
    ] {
        let claim = &mut witness.request.outputs[0];
        claim.amount = predicate.is_none();
        claim.asset = true;
        claim.recipient = predicate.is_none();
        claim.memo = name == "payload-keys";
        claim.spending_control = false;
        // Nonnegative amounts are always >= 0 and never < 0, including zero-valued outputs.
        claim.predicate = predicate.map(|value| {
            if value {
                sdk::AmountPredicate::AtLeast("0".into())
            } else {
                sdk::AmountPredicate::LessThan("0".into())
            }
        });
        let package = match name {
            "openings" => sdk::export_openings(&witness)?,
            "payload-keys" => sdk::export_payload_keys(&witness)?,
            _ => sdk::prove(&witness, &registry)?,
        };
        ensure!(
            package.statement.outputs[0].predicate_result == predicate,
            "unexpected predicate result"
        );
        sdk::verify(&package, Some(&registry))?;
        let path = output.join(format!("{name}.json"));
        std::fs::write(&path, serde_json::to_vec_pretty(&package)?)?;
        cases.push(Case {
            name,
            package: path,
            predicate,
        });
    }
    std::fs::write(
        output.join("manifest.json"),
        serde_json::to_vec_pretty(&cases)?,
    )?;
    Ok(())
}
