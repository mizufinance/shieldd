use super::*;
use shieldd_sdk_keys::keys::{SpendKey, SpendKeyBytes};
use shieldd_sdk_shielded_pool::{Note as NativeNote, RecoveryCommitment, Rseed};

fn fixture(count: usize) -> DisclosureWitness {
    let fvk = SpendKey::try_from(SpendKeyBytes([7; 32]))
        .unwrap()
        .full_viewing_key()
        .clone();
    let asset = shieldd_sdk_asset::asset::REGISTRY
        .parse_denom("ubrl")
        .unwrap()
        .id();
    let mut outputs = Vec::new();
    let mut claims = Vec::new();
    for i in 0..count {
        let note = NativeNote::from_parts(
            fvk.payment_address((i as u32).into()),
            shieldd_sdk_asset::Value {
                amount: ((1u128 << 100) + i as u128 + 1).into(),
                asset_id: asset,
            },
            Rseed([i as u8; 32]),
            RecoveryCommitment::unavailable(),
        )
        .unwrap();
        let reference = OutputRef {
            transaction_id: "ab".repeat(32),
            height: 5,
            action: ActionRef::Body(i as u32),
            output: 0,
        };
        claims.push(OutputClaim {
            reference: reference.clone(),
            amount: false,
            asset: false,
            recipient: i % 2 == 1,
            predicate: if i % 2 == 0 {
                Some(AmountPredicate::AtLeast((1u128 << 100).to_string()))
            } else {
                None
            },
            memo: false,
            spending_control: false,
        });
        outputs.push(OutputWitness {
            public: PublicOutput {
                reference,
                commitment: hex::encode(note.commit().0.to_bytes()),
                ephemeral_key: note.ephemeral_public_key().to_bytes().to_vec(),
                encrypted_note: note.encrypt().0.to_vec(),
                wrapped_memo_key: vec![],
                memo_ciphertext: None,
                spend_verification_key: None,
            },
            note: note.to_bytes().to_vec(),
            control_signature: None,
        });
    }
    DisclosureWitness {
        request: DisclosureRequest {
            version: VERSION,
            chain_id: "shieldd-test".into(),
            recipient: None,
            challenge: Some("context".into()),
            outputs: claims,
            total: Some(TotalClaim {
                reveal: true,
                predicate: Some(AmountPredicate::GreaterThan("0".into())),
            }),
        },
        outputs,
    }
}
fn native(w: &DisclosureWitness) -> circuit::Witness {
    witness(
        &evaluate(w).unwrap(),
        &crate::evidence::openings(w).unwrap(),
    )
    .unwrap()
}
fn satisfied(w: circuit::Witness) -> bool {
    shieldd_sdk_circuits::catalogue::evaluate(&Witness::Disclosure(Box::new(w)))
        .unwrap()
        .is_satisfied()
}
#[test]
fn runtime_disclosure_matches_native_relation_at_capacity_and_with_padding() {
    for count in [1, 2, 32] {
        assert!(satisfied(native(&fixture(count))));
    }
}
#[test]
fn runtime_disclosure_rejects_changed_fields_totals_and_context() {
    let valid = native(&fixture(2));
    for change in 0..5 {
        let mut bad = valid.clone();
        match change {
            0 => bad.statement.slots[0].amount = Scalar::from(1),
            1 => bad.statement.slots[1].address = native(&fixture(1)).notes[0].address.clone(),
            2 => bad.statement.slots[0].commitment = Scalar::from(42),
            3 => bad.statement.total_amount = Scalar::from(42),
            _ => bad.statement.context[0] = Scalar::from(42),
        }
        assert!(!satisfied(bad));
    }
}
#[test]
#[ignore = "requires local Pari keys and actual proof generation"]
fn runtime_disclosure_proof_binds_context_and_key() {
    let registry = Registry::load(std::env::var("SHIELDD_PARI_KEYS").unwrap()).unwrap();
    let package = prove(&fixture(2), &registry).unwrap();
    verify(&package, Some(&registry)).unwrap();
    let mut changed = package.clone();
    changed.statement.request.challenge = Some("different context".into());
    assert!(verify(&changed, Some(&registry)).is_err());
    let mut changed = package;
    if let Evidence::Pari {
        verification_key_digest,
        ..
    } = &mut changed.evidence
    {
        *verification_key_digest = "00".repeat(32);
    }
    assert!(verify(&changed, Some(&registry)).is_err());
}
