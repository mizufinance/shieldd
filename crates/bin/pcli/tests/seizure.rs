#![cfg(feature = "seizure")]
use anyhow::Result;
use assert_cmd::Command;
use reddsa::{sapling::SpendAuth, SigningKey, VerificationKey};
use shieldd_sdk_asset::{asset, Value};
use shieldd_sdk_compliance::{ComplianceLeaf, UserAssetStatus};
use shieldd_sdk_crypto::{Fq, Fr};
use shieldd_sdk_keys::test_keys;
use shieldd_sdk_proto::core::component::shielded_pool::v1 as pb;
use shieldd_sdk_shielded_pool::{
    HostTransfer, HostWithdrawalDestination, NoteSeizureBatch, RecoveryCapsule, Rseed,
};
use shieldd_sdk_tct as tct;

#[test]
#[ignore = "requires local Pari keys and actual proof generation"]
fn local_private_stdin_preparation_exports_only_a_verified_whole_note_batch() -> Result<()> {
    let keys = std::env::var("SHIELDD_PARI_KEYS")?;
    let registry = shieldd_sdk_proof_params::pari::Registry::load(&keys)?;
    let address = test_keys::ADDRESS_0.clone();
    let asset_id = asset::Id(Fq::from(7u64));
    let rnk = Fq::from(23u64);
    let mut leaf = ComplianceLeaf::registered_from_rnk(
        address.clone(),
        asset_id,
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
        rnk,
    )?;
    leaf.status = UserAssetStatus::Frozen;
    leaf.freeze_generation = 1;
    leaf.frozen_since_height = 2;
    let seed = Rseed([17; 32]);
    let note_blinding = seed.derive_note_blinding();
    let (capsule, _) = RecoveryCapsule::encrypt(
        42u64.into(),
        note_blinding,
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
        seed,
    )?;
    let cm = shieldd_sdk_shielded_pool::note::commitment_from_address(
        address,
        Value {
            amount: 42u64.into(),
            asset_id,
        },
        note_blinding,
        capsule.commitment(),
    );
    let mut tree = tct::Tree::new();
    let positions = [
        tree.insert(tct::Witness::Keep, cm)?,
        tree.insert(tct::Witness::Keep, cm)?,
    ];
    let directory = tempfile::tempdir()?;
    let output = directory.path().join("public-batch.json");
    let home = directory.path().join("no-wallet");
    let authority = Fr::from(3u64);
    // Refresh while private witnesses are retained, then consume them at authorization.
    let recovered = positions
        .into_iter()
        .map(
            |position| shieldd_sdk_shielded_pool::seizure_recovery::RecoveredSeizureNote {
                amount: 42u64.into(),
                note_blinding,
                recovery_commitment: capsule.commitment(),
                proof: tree.witness(position).unwrap(),
            },
        )
        .collect();
    let mut prepared = shieldd_sdk_shielded_pool::seizure_recovery::prepare_seizure(
        shieldd_sdk_shielded_pool::seizure_recovery::SeizurePreparationContext {
            chain_id: "fixture-chain".into(),
            leaf: leaf.clone(),
            current_height: 2,
            anchor: tree.root(),
            destination: HostWithdrawalDestination::Transfer(HostTransfer {
                recipient: "bank1authority".into(),
            }),
            expiry_height: 20,
        },
        recovered,
        rnk,
        &registry,
        &mut rand_core::OsRng,
    )?;
    use shieldd_sdk_proto::DomainType;
    let body = prepared.authorization().encode_to_vec();
    let old_anchor = prepared.anchor();
    let old_proofs = prepared
        .proofs()
        .iter()
        .map(|p| p.inner.clone())
        .collect::<Vec<_>>();
    let mut wrong = tct::Tree::new();
    wrong.insert(tct::Witness::Keep, tct::StateCommitment(Fq::from(99u64)))?;
    wrong.insert(tct::Witness::Keep, cm)?;
    for invalid in [tct::Tree::new(), wrong] {
        assert!(prepared.refresh_anchor(&invalid, &registry).is_err());
        assert_eq!(prepared.anchor(), old_anchor);
        assert_eq!(prepared.authorization().encode_to_vec(), body);
        assert_eq!(
            prepared
                .proofs()
                .iter()
                .map(|p| p.inner.clone())
                .collect::<Vec<_>>(),
            old_proofs
        );
    }
    let mut refreshed = tree.clone();
    refreshed.insert(tct::Witness::Forget, tct::StateCommitment(Fq::from(101u64)))?;
    prepared.refresh_anchor(&refreshed, &registry)?;
    assert_ne!(prepared.anchor(), old_anchor);
    assert_eq!(prepared.authorization().encode_to_vec(), body);
    let sk = SigningKey::<SpendAuth>::try_from(authority.to_bytes())?;
    let signature = sk.sign(rand_core::OsRng, &prepared.authorization().signing_bytes()?);
    let refreshed_batch = prepared.authorize(signature, &VerificationKey::from(&sk))?;
    refreshed_batch.verify_proofs(leaf.rnk_commitment, &registry)?;
    let input = serde_json::json!({
        "chain_id": "fixture-chain", "leaf": leaf, "current_height": 2, "tree": tree,
        "destination": HostWithdrawalDestination::Transfer(HostTransfer { recipient: "bank1authority".to_owned() }),
        "expiry_height": 20, "rnk_hex": hex::encode(rnk.to_bytes()), "authority_sk_hex": hex::encode(authority.to_bytes()),
        "openings": positions.map(|position| serde_json::json!({ "position": u64::from(position), "amount": 42,
            "note_blinding_hex": hex::encode(note_blinding.to_bytes()), "recovery_commitment_hex": hex::encode(capsule.commitment().0.to_bytes()) }))
    });
    Command::cargo_bin("pcli")?
        .arg("--home")
        .arg(&home)
        .arg("--pari-keys")
        .arg(&keys)
        .args(["seizure", "prepare-local", "--output"])
        .arg(&output)
        .write_stdin(serde_json::to_vec(&input)?)
        .assert()
        .success();
    assert!(
        !home.exists(),
        "offline preparation must not initialize target wallet state"
    );
    let exported = std::fs::read_to_string(output)?;
    fn assert_public_shape(value: &serde_json::Value, shape: &serde_json::Value) {
        match (value, shape) {
            (serde_json::Value::Object(fields), serde_json::Value::Object(allowed)) => {
                for (key, value) in fields {
                    let expected = allowed
                        .get(key)
                        .unwrap_or_else(|| panic!("unexpected export key {key}"));
                    assert_public_shape(value, expected);
                }
            }
            (serde_json::Value::Array(values), serde_json::Value::Array(shape)) => {
                for value in values {
                    assert_public_shape(value, &shape[0]);
                }
            }
            (_, serde_json::Value::Null) => assert!(!value.is_object() && !value.is_array()),
            _ => panic!("unexpected export structure"),
        }
    }
    let public_shape = serde_json::json!({
        "authorization": {
            "chainId": null, "address": { "inner": null }, "assetId": { "inner": null },
            "freezeGeneration": null, "frozenSinceHeight": null, "expiryHeight": null,
            "registryId": null, "aggregateBlinding": null,
            "withdrawal": {
                "value": { "amount": { "lo": null, "hi": null }, "assetId": { "inner": null } },
                "transfer": { "recipient": null }
            },
            "entries": [{ "nullifier": { "inner": null }, "valueCommitment": { "inner": null } }]
        },
        "authoritySignature": { "inner": null }, "anchor": { "inner": null },
        "proofs": [{ "inner": null }]
    });
    assert_public_shape(&serde_json::from_str(&exported)?, &public_shape);
    let wire: pb::NoteSeizureBatch = serde_json::from_str(&exported)?;
    let batch = NoteSeizureBatch::try_from(wire)?;
    assert_eq!(batch.authorization.entries.len(), 2);
    assert_eq!(batch.authorization.withdrawal.value.amount.value(), 84);
    assert_ne!(
        batch.authorization.entries[0].nullifier,
        batch.authorization.entries[1].nullifier
    );
    batch.authorization.verify_balance()?;
    let sk = SigningKey::<SpendAuth>::try_from(authority.to_bytes())?;
    batch
        .authorization
        .verify_signature(&VerificationKey::from(&sk), &batch.authority_signature)?;
    batch.verify_proofs(leaf.rnk_commitment, &registry)?;
    Ok(())
}
