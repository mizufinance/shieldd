use super::*;
use crate::{
    memo::MemoPlaintext, plan::MemoPlan, FeeFunding, FeeFundingPlan, TransactionBody,
    TransactionParameters,
};
use shieldd_sdk_asset::BASE_ASSET_ID;
use shieldd_sdk_fee::Fee;
use shieldd_sdk_keys::keys::SpendKeyBytes;
use shieldd_sdk_shielded_pool::{
    test_plan_helpers, Note, RecoveryCommitment, Rseed, ShieldedInputPlan, ShieldedOutputPlan,
    Transfer, TransferPlan, TransferProof,
};

struct Fixture {
    owner: SpendKey,
    sponsor: SpendKey,
    principal: TransferPlan,
    fee: TransferPlan,
    memo: MemoPlan,
    tx: Transaction,
}

fn transfer_plan(key: &SpendKey, output_amount: u64, blinding: u64, fee: bool) -> TransferPlan {
    let address = key.full_viewing_key().payment_address(0u32.into());
    let note = Note::from_parts(
        address.clone(),
        Value {
            amount: 100u64.into(),
            asset_id: *BASE_ASSET_ID,
        },
        Rseed::generate(&mut OsRng),
        RecoveryCommitment::unavailable(),
    )
    .unwrap();
    let spend = ShieldedInputPlan::new(&mut OsRng, note, 0u64.into());
    let output = ShieldedOutputPlan::new(
        &mut OsRng,
        Value {
            amount: output_amount.into(),
            asset_id: *BASE_ASSET_ID,
        },
        address,
    );
    if fee {
        test_plan_helpers::fee_funding(vec![spend], vec![output], Fr::from(blinding)).unwrap()
    } else {
        test_plan_helpers::transfer(vec![spend], vec![output], Fr::from(blinding)).unwrap()
    }
}

fn transfer(plan: &TransferPlan, key: &SpendKey, memo: &MemoPlan, anchor: Root) -> Transfer {
    Transfer {
        body: plan
            .transfer_body(key.full_viewing_key(), &memo.key, anchor)
            .unwrap(),
        auth_sig: [0; 64].into(),
        proof: TransferProof::default(),
    }
}

impl Fixture {
    fn new() -> Self {
        let owner = SpendKey::try_from(SpendKeyBytes([81; 32])).unwrap();
        let sponsor = SpendKey::try_from(SpendKeyBytes([82; 32])).unwrap();
        let principal = transfer_plan(&owner, 100, 19, false);
        let fee = transfer_plan(&sponsor, 90, 23, true);
        let memo = MemoPlan::new(
            &mut OsRng,
            MemoPlaintext::blank_memo(owner.full_viewing_key().payment_address(0u32.into())),
        );
        let anchor = shieldd_sdk_tct::Tree::default().root();
        let tx = Transaction {
            transaction_body: TransactionBody {
                actions: vec![Action::Transfer(transfer(
                    &principal, &owner, &memo, anchor,
                ))],
                fee_funding: Some(FeeFunding {
                    transfer: transfer(&fee, &sponsor, &memo, anchor),
                }),
                transaction_parameters: TransactionParameters {
                    chain_id: "joint-test".into(),
                    expiry_height: 50,
                    fee: Fee::from_staking_token_amount(10u64.into()),
                },
                memo: Some(memo.memo().unwrap()),
            },
            anchor,
            binding_sig: [0; 64].into(),
        };
        let mut fixture = Self {
            owner,
            sponsor,
            principal,
            fee,
            memo,
            tx,
        };
        fixture.sign();
        fixture
    }

    fn sign(&mut self) {
        let digest = self.tx.effect_hash();
        let Action::Transfer(principal) = &mut self.tx.transaction_body.actions[0] else {
            unreachable!()
        };
        principal.auth_sig = self
            .owner
            .spend_auth_key()
            .randomize(&self.principal.auth_randomizer)
            .sign(OsRng, digest.as_ref());
        self.tx
            .transaction_body
            .fee_funding
            .as_mut()
            .unwrap()
            .transfer
            .auth_sig = self
            .sponsor
            .spend_auth_key()
            .randomize(&self.fee.auth_randomizer)
            .sign(OsRng, digest.as_ref());
        verify_authorizations(&self.tx).unwrap();
    }

    fn contributions(&self) -> [BindingContribution; 2] {
        let contribution = |actions, fee_blinding| BindingContribution {
            effect_hash: self.tx.effect_hash(),
            auth_hash: self.tx.auth_hash(),
            anchor: self.tx.anchor,
            actions,
            fee_blinding,
        };
        [
            contribution(
                vec![BalanceOpening {
                    action_index: 0,
                    blinding: self.principal.value_blinding.to_bytes(),
                }],
                None,
            ),
            contribution(vec![], Some(self.fee.value_blinding.to_bytes())),
        ]
    }

    fn request(&self) -> JointSigningRequest {
        JointSigningRequest {
            transaction: self.tx.clone(),
            plan: TransactionPlan {
                actions: vec![ActionPlan::Transfer(self.principal.clone())],
                transaction_parameters: self.tx.transaction_body.transaction_parameters.clone(),
                memo: Some(self.memo.clone()),
                ..Default::default()
            },
            action_indices: vec![0],
            incoming: vec![],
            anchor: self.tx.anchor,
            action_count: 1,
        }
    }
}

fn fails(result: Result<()>, expected: &str) {
    let error = result.expect_err(expected);
    assert!(
        error.to_string().contains(expected),
        "wrong failure boundary: {error:#}"
    );
}

#[test]
fn independent_principal_and_fee_sponsor_finalize_a_valid_binding_signature() {
    let mut fixture = Fixture::new();
    fixture
        .request()
        .validate(fixture.owner.full_viewing_key())
        .unwrap();
    let sponsor = JointSigningRequest {
        plan: TransactionPlan {
            fee_funding: Some(FeeFundingPlan {
                transfer: fixture.fee.clone(),
            }),
            actions: vec![],
            ..fixture.request().plan
        },
        action_indices: vec![],
        ..fixture.request()
    };
    sponsor
        .validate(fixture.sponsor.full_viewing_key())
        .unwrap();
    let contributions = fixture.contributions();
    finalize(&mut fixture.tx, &contributions).unwrap();
    fixture
        .tx
        .binding_verification_key()
        .verify(fixture.tx.auth_hash().as_bytes(), &fixture.tx.binding_sig)
        .unwrap();
}

#[test]
fn finalizer_requires_complete_unique_transaction_bound_contributions() {
    let fixture = Fixture::new();
    let [principal, fee] = fixture.contributions();
    let check = |contributions: &[BindingContribution], expected| {
        let mut tx = fixture.tx.clone();
        let old_signature = tx.binding_sig;
        fails(finalize(&mut tx, contributions), expected);
        assert_eq!(
            tx.binding_sig, old_signature,
            "rejected finalization changed the signature"
        );
    };
    check(&[fee.clone()], "missing principal contribution");
    check(
        &[principal.clone()],
        "missing or unexpected fee contribution",
    );
    check(
        &[principal.clone(), principal.clone(), fee.clone()],
        "duplicate action contribution",
    );
    check(
        &[principal.clone(), fee.clone(), fee.clone()],
        "multiple fee contributors",
    );
    let mut stale = principal.clone();
    stale.auth_hash = crate::txhash::AuthHash([0; 32]);
    check(
        &[stale, fee.clone()],
        "contribution belongs to a different transaction",
    );
    let mut wrong_index = principal;
    wrong_index.actions[0].action_index = 1;
    check(&[wrong_index, fee], "contribution index is not a Transfer");
}

#[test]
fn finalizer_refuses_signed_principal_residual_and_underfunded_fee() {
    let mut principal = Fixture::new();
    let controls = principal.contributions();
    finalize(&mut principal.tx, &controls).unwrap();
    principal.principal = transfer_plan(&principal.owner, 99, 19, false);
    principal.tx.transaction_body.actions[0] = Action::Transfer(transfer(
        &principal.principal,
        &principal.owner,
        &principal.memo,
        principal.tx.anchor,
    ));
    principal.sign();
    let contributions = principal.contributions();
    fails(
        finalize(&mut principal.tx, &contributions),
        "principal contribution does not open zero residual",
    );

    let mut fee = Fixture::new();
    // A 100-unit input and 91-unit output contribute 9, below the public fee of 10.
    fee.fee = transfer_plan(&fee.sponsor, 91, 23, true);
    fee.tx.transaction_body.fee_funding = Some(FeeFunding {
        transfer: transfer(&fee.fee, &fee.sponsor, &fee.memo, fee.tx.anchor),
    });
    fee.sign();
    let contributions = fee.contributions();
    fails(
        finalize(&mut fee.tx, &contributions),
        "fee contribution does not cover public fee",
    );
}

#[test]
fn signing_request_checks_owner_slot_terms_and_distinct_receipts() {
    let fixture = Fixture::new();
    let request = fixture.request();
    let fvk = fixture.owner.full_viewing_key();
    request.validate(fvk).unwrap();
    let mut wrong_slot = request.clone();
    wrong_slot.action_indices[0] = 1;
    fails(wrong_slot.validate(fvk), "owned action index out of bounds");
    fails(
        request.validate(fixture.sponsor.full_viewing_key()),
        "principal inputs belong to another wallet",
    );
    let mut wrong_key = request.clone();
    let Action::Transfer(transfer) = &mut wrong_key.transaction.transaction_body.actions[0] else {
        unreachable!()
    };
    transfer.body.rk = fixture
        .sponsor
        .full_viewing_key()
        .spend_verification_key()
        .randomize(&fixture.principal.auth_randomizer);
    fails(wrong_key.validate(fvk), "owned randomized key differs");
    let mut parameters = request.clone();
    parameters
        .transaction
        .transaction_body
        .transaction_parameters
        .expiry_height += 1;
    fails(
        parameters.validate(fvk),
        "agreed transaction parameters changed",
    );
    let mut memo = request.clone();
    memo.transaction.transaction_body.memo = None;
    fails(memo.validate(fvk), "agreed memo changed");
    let mut receipts = request;
    let expected = ExpectedReceipt {
        action_index: 0,
        output_index: 0,
        address: fvk.payment_address(0u32.into()),
        value: Value {
            amount: 100u64.into(),
            asset_id: *BASE_ASSET_ID,
        },
    };
    receipts.incoming = vec![expected.clone()];
    receipts.validate(fvk).unwrap();
    receipts.incoming.push(expected);
    fails(receipts.validate(fvk), "duplicate expected receipt");
}

#[test]
fn registration_cannot_precede_an_ordinary_transfer() {
    let fixture = Fixture::new();
    let registration = Action::ComplianceRegisterUser(shieldd_sdk_compliance::MsgRegisterUser {
        leaf: shieldd_sdk_compliance::ComplianceLeaf::synthetic_unregulated(
            fixture
                .owner
                .full_viewing_key()
                .payment_address(0u32.into()),
            *BASE_ASSET_ID,
        ),
        grant: None,
        capability_certificate: None,
    });
    let mut ordered = fixture.tx.clone();
    ordered.transaction_body.actions.push(registration.clone());
    validate_candidate(&ordered).unwrap();
    ordered.transaction_body.actions.insert(0, registration);
    fails(
        validate_candidate(&ordered),
        "transfers must precede asset and user registrations",
    );
}
