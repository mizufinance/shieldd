//! Offline public registrations for disposable Bankd chains with the development registrar.
use anyhow::{ensure, Context, Result};
use decaf377::{Element, Fr};
use decaf377_rdsa::{SigningKey, SpendAuth, VerificationKey};
use rand_core::{OsRng, RngCore};
use shieldd_sdk_compliance::{
    derive_regulated_nullifier_key, registration::policy_from_asset_grant, AssetRegistrationGrant,
    AuditKeys, ComplianceLeaf, DetectionKey, MsgRegisterAsset, MsgRegisterUser,
    OrbisCapabilityCertificate, UserRegistrationGrant, UserRegistrationGrantBody,
};
use shieldd_sdk_keys::keys::{Bip44Path, SeedPhrase, SpendKey};
use shieldd_sdk_proto::core::component::compliance::v1 as pb;
use std::{io::Read, str::FromStr};

#[derive(serde::Serialize)]
struct Fixture {
    synthetic_committee: bool,
    chain_id: String,
    denom: String,
    address: String,
    asset: pb::MsgRegisterAsset,
    user: pb::MsgRegisterUser,
}

fn main() -> Result<()> {
    ensure!(
        cfg!(debug_assertions),
        "synthetic registration fixtures require a development build"
    );
    let mut args = std::env::args().skip(1);
    let chain_id = args
        .next()
        .context("usage: registration_fixture CHAIN_ID DENOM < synthetic-mnemonic.txt")?;
    let denom = args.next().context("missing denomination")?;
    ensure!(args.next().is_none(), "unexpected argument");
    let mut mnemonic = String::new();
    std::io::stdin().take(4096).read_to_string(&mut mnemonic)?;
    let seed = SeedPhrase::from_str(mnemonic.trim())?;
    let sk = SpendKey::from_seed_phrase_bip44(seed, &Bip44Path::new(0))
        .map_err(|e| anyhow::anyhow!(e.to_string()))?;
    let fvk = sk.full_viewing_key();
    let address = fvk.payment_address(0u32.into());
    let asset_id = shieldd_sdk_asset::asset::REGISTRY
        .parse_denom(&denom)
        .context("invalid denomination")?
        .id();
    let signing = |n: u64| {
        SigningKey::<SpendAuth>::try_from(Fr::from(n).to_bytes().as_slice())
            .expect("valid synthetic scalar")
    };
    let registrar = signing(1);
    let authority = signing(2);
    let ring_sk = Fr::from(41u64);
    let ring_pk = Element::GENERATOR * ring_sk;
    let mut asset = MsgRegisterAsset {
        asset_id,
        is_regulated: true,
        dk_pub: Some(DetectionKey::new(Fr::from(3u64)).public_key()),
        daily_volume_limit: Some(u128::MAX),
        allowed_ibc_routes: vec![],
        ibc_origin: None,
        ring_pk: Some(ring_pk),
        ring_id: "synthetic-e2e-ring".into(),
        policy_id: "synthetic-e2e-policy".into(),
        permission: "read".into(),
        resource: "document".into(),
        registration_authority_vk: Some(VerificationKey::from(&authority)),
        seizure_authority_vk: Some(VerificationKey::from(&signing(3))),
        audit_keys: Some(AuditKeys::test_keys()),
        audit_certificate: None,
        asset_registration_grant: None,
    };
    let body = asset.registration_grant_body(4_102_444_800);
    asset.asset_registration_grant = Some(AssetRegistrationGrant {
        signature: registrar.sign(OsRng, &body.signing_bytes()),
        registrar_vk: VerificationKey::from(&registrar),
        body,
    });
    let policy = policy_from_asset_grant(&asset, 0)?;
    asset.audit_certificate = Some(OrbisCapabilityCertificate::sign_general_for_test(
        &chain_id, asset_id, &policy, ring_sk,
    )?);
    asset
        .audit_certificate
        .as_ref()
        .unwrap()
        .verify_general(asset_id, &policy, &chain_id)?;
    let rnk_dh_pk = address.diversified_generator() * ring_sk;
    let rnk =
        derive_regulated_nullifier_key(fvk.incoming(), &address, asset_id, ring_pk, rnk_dh_pk)?;
    let leaf =
        ComplianceLeaf::registered_from_rnk(address.clone(), asset_id, ring_pk, rnk_dh_pk, rnk)?;
    let mut nonce = vec![0; 16];
    OsRng.fill_bytes(&mut nonce);
    let body = UserRegistrationGrantBody {
        leaf: leaf.clone(),
        policy_id: policy.ring.policy_id.clone(),
        valid_until_unix: 4_102_444_800,
        nonce,
    };
    let user = MsgRegisterUser {
        leaf: leaf.clone(),
        grant: Some(UserRegistrationGrant {
            signature: authority.sign(OsRng, &body.signing_bytes()),
            body,
        }),
        capability_certificate: Some(OrbisCapabilityCertificate::sign(
            &chain_id, &leaf, &policy, ring_sk, OsRng,
        )?),
    };
    shieldd_sdk_compliance::registration::validate_user_grant(&user, &policy, 0)?;
    user.capability_certificate
        .as_ref()
        .unwrap()
        .verify(&leaf, &policy, &chain_id)?;
    eprintln!("Synthetic committee keys; no live Orbis provisioning or PET. Output contains public signed registrations only.");
    println!(
        "{}",
        serde_json::to_string_pretty(&Fixture {
            synthetic_committee: true,
            chain_id,
            denom,
            address: address.to_string(),
            asset: asset.into(),
            user: user.into()
        })?
    );
    Ok(())
}
