use std::{
    collections::{BTreeMap, BTreeSet},
    iter,
};

use anyhow::{anyhow, Result};
use ed25519_consensus::{Signature, SigningKey, VerificationKey};
use rand_core::CryptoRngCore;
use shieldd_sdk_keys::FullViewingKey;

use frost::round1::SigningCommitments;
use redjubjub_frost as frost;
use shieldd_sdk_proto::{shieldd::custody::threshold::v1 as pb, DomainType, Message};
use shieldd_sdk_transaction::{
    joint::{ExpectedReceipt, JointSigningRequest},
    AuthorizationData,
};
use shieldd_sdk_txhash::EffectHash;

use crate::terminal::SigningRequest;

use super::{config::Config, SigningResponse};

/// Represents the message sent by the coordinator at the start of the signing process.
///
/// This is nominally "round 1", even though it's the only message the coordinator ever sends.
#[derive(Debug, Clone)]
pub struct CoordinatorRound1 {
    request: SigningRequest,
}

impl CoordinatorRound1 {
    /// View the transaction plan associated with the first message.
    ///
    /// We need this method to be able to prompt users correctly.
    pub fn signing_request(&self) -> &SigningRequest {
        &self.request
    }
}

impl From<CoordinatorRound1> for pb::CoordinatorRound1 {
    fn from(value: CoordinatorRound1) -> Self {
        let request = match value.request {
            SigningRequest::TransactionPlan(plan) => {
                pb::coordinator_round1::Request::Plan(plan.into())
            }
            SigningRequest::JointTransaction(request) => {
                pb::coordinator_round1::Request::JointTransaction(joint_to_proto(*request))
            }
        };
        Self {
            request: Some(request),
        }
    }
}

impl TryFrom<pb::CoordinatorRound1> for CoordinatorRound1 {
    type Error = anyhow::Error;

    fn try_from(value: pb::CoordinatorRound1) -> Result<Self, Self::Error> {
        match value
            .request
            .ok_or_else(|| anyhow::anyhow!("missing request"))?
        {
            pb::coordinator_round1::Request::Plan(plan) => Ok(Self {
                request: SigningRequest::TransactionPlan(plan.try_into()?),
            }),
            pb::coordinator_round1::Request::JointTransaction(request) => Ok(Self {
                request: SigningRequest::JointTransaction(Box::new(joint_from_proto(request)?)),
            }),
        }
    }
}

fn joint_to_proto(request: JointSigningRequest) -> pb::JointSigningRequest {
    pb::JointSigningRequest {
        transaction: Some(request.transaction.into()),
        plan: Some(request.plan.into()),
        action_indices: request
            .action_indices
            .into_iter()
            .map(|index| index as u64)
            .collect(),
        incoming: request
            .incoming
            .into_iter()
            .map(|receipt| pb::joint_signing_request::ExpectedReceipt {
                action_index: receipt.action_index as u64,
                output_index: receipt.output_index as u64,
                address: Some(receipt.address.into()),
                value: Some(receipt.value.into()),
            })
            .collect(),
        anchor: Some(request.anchor.into()),
        action_count: request.action_count as u64,
    }
}

fn joint_from_proto(request: pb::JointSigningRequest) -> Result<JointSigningRequest> {
    Ok(JointSigningRequest {
        transaction: request
            .transaction
            .ok_or_else(|| anyhow!("missing joint transaction"))?
            .try_into()?,
        plan: request
            .plan
            .ok_or_else(|| anyhow!("missing joint local plan"))?
            .try_into()?,
        action_indices: request
            .action_indices
            .into_iter()
            .map(usize::try_from)
            .collect::<Result<_, _>>()?,
        incoming: request
            .incoming
            .into_iter()
            .map(|receipt| {
                Ok(ExpectedReceipt {
                    action_index: receipt.action_index.try_into()?,
                    output_index: receipt.output_index.try_into()?,
                    address: receipt
                        .address
                        .ok_or_else(|| anyhow!("missing receipt address"))?
                        .try_into()?,
                    value: receipt
                        .value
                        .ok_or_else(|| anyhow!("missing receipt value"))?
                        .try_into()?,
                })
            })
            .collect::<Result<_, anyhow::Error>>()?,
        anchor: request
            .anchor
            .ok_or_else(|| anyhow!("missing joint anchor"))?
            .try_into()?,
        action_count: request.action_count.try_into()?,
    })
}

impl DomainType for CoordinatorRound1 {
    type Proto = pb::CoordinatorRound1;
}

#[derive(Debug, Clone)]
pub struct CoordinatorRound2 {
    // For each thing to sign, a map from FROST identifiers to a pair of commitments.
    all_commitments: Vec<BTreeMap<frost::Identifier, frost::round1::SigningCommitments>>,
}

fn commitments_to_pb(
    commitments: impl IntoIterator<Item = frost::round1::SigningCommitments>,
) -> pb::follower_round1::Inner {
    pb::follower_round1::Inner {
        commitments: commitments.into_iter().map(|x| x.into()).collect(),
    }
}

impl From<CoordinatorRound2> for pb::CoordinatorRound2 {
    fn from(value: CoordinatorRound2) -> Self {
        Self {
            signing_packages: value
                .all_commitments
                .into_iter()
                .map(|x| pb::coordinator_round2::PartialSigningPackage {
                    all_commitments: x
                        .into_iter()
                        .map(
                            |(id, commitment)| pb::coordinator_round2::IdentifiedCommitments {
                                identifier: id.serialize(),
                                commitments: Some(commitment.into()),
                            },
                        )
                        .collect(),
                })
                .collect(),
        }
    }
}

impl TryFrom<pb::CoordinatorRound2> for CoordinatorRound2 {
    type Error = anyhow::Error;

    fn try_from(value: pb::CoordinatorRound2) -> std::result::Result<Self, Self::Error> {
        Ok(Self {
            all_commitments: value
                .signing_packages
                .into_iter()
                .map(|x| {
                    let mut acc = BTreeMap::new();
                    for id_commitment in x.all_commitments {
                        let identifier = frost::Identifier::deserialize(&id_commitment.identifier)?;
                        if acc.contains_key(&identifier) {
                            anyhow::bail!(
                                "duplicate key when deserializing CoordinatorRound2: {:?}",
                                &identifier
                            );
                        }
                        let commitment = id_commitment
                            .commitments
                            .ok_or(anyhow!("CoordinatorRound2 missing commitments"))?
                            .try_into()?;
                        acc.insert(identifier, commitment);
                    }
                    Ok(acc)
                })
                .collect::<Result<Vec<_>, _>>()?,
        })
    }
}

impl DomainType for CoordinatorRound2 {
    type Proto = pb::CoordinatorRound2;
}

/// The message sent by the followers in round1 of signing.
#[derive(Debug, Clone)]
pub struct FollowerRound1 {
    /// A commitment for each spend we need to authorize.
    pub(self) commitments: Vec<frost::round1::SigningCommitments>,
    /// A verification key identifying who the sender is.
    pub(self) pk: VerificationKey,
    /// The signature over the protobuf encoding of the commitments.
    pub(self) sig: Signature,
}

impl From<FollowerRound1> for pb::FollowerRound1 {
    fn from(value: FollowerRound1) -> Self {
        Self {
            inner: Some(commitments_to_pb(value.commitments)),
            pk: Some(pb::VerificationKey {
                inner: value.pk.to_bytes().to_vec(),
            }),
            sig: Some(pb::Signature {
                inner: value.sig.to_bytes().to_vec(),
            }),
        }
    }
}

impl TryFrom<pb::FollowerRound1> for FollowerRound1 {
    type Error = anyhow::Error;

    fn try_from(value: pb::FollowerRound1) -> Result<Self, Self::Error> {
        Ok(Self {
            commitments: value
                .inner
                .ok_or(anyhow!("missing inner"))?
                .commitments
                .into_iter()
                .map(|x| x.try_into())
                .collect::<Result<Vec<_>, _>>()?,
            pk: value
                .pk
                .ok_or(anyhow!("missing pk"))?
                .inner
                .as_slice()
                .try_into()?,
            sig: value
                .sig
                .ok_or(anyhow!("missing sig"))?
                .inner
                .as_slice()
                .try_into()?,
        })
    }
}

impl FollowerRound1 {
    // Make a round1 message, automatically signing the right bytes
    fn make(signing_key: &SigningKey, commitments: Vec<SigningCommitments>) -> Self {
        Self {
            commitments: commitments.clone(),
            pk: signing_key.verification_key(),
            sig: signing_key.sign(&commitments_to_pb(commitments).encode_to_vec()),
        }
    }

    // Extract the commitments from this struct, checking the signature
    fn checked_commitments(self) -> Result<(VerificationKey, Vec<SigningCommitments>)> {
        self.pk.verify(
            &self.sig,
            &commitments_to_pb(self.commitments.clone()).encode_to_vec(),
        )?;
        Ok((self.pk, self.commitments))
    }
}

impl DomainType for FollowerRound1 {
    type Proto = pb::FollowerRound1;
}

fn shares_to_pb(shares: Vec<frost::round2::SignatureShare>) -> pb::follower_round2::Inner {
    pb::follower_round2::Inner {
        shares: shares.into_iter().map(|x| x.into()).collect(),
    }
}

/// The message sent by the followers in round2 of signing.
#[derive(Debug, Clone)]
pub struct FollowerRound2 {
    /// A share of each signature we need to produce.
    pub(self) shares: Vec<frost::round2::SignatureShare>,
    /// A verification key identifying who the sender is.
    pub(self) pk: VerificationKey,
    /// The signature over the protobuf encoding of the sahres.
    pub(self) sig: Signature,
}

impl From<FollowerRound2> for pb::FollowerRound2 {
    fn from(value: FollowerRound2) -> Self {
        Self {
            inner: Some(shares_to_pb(value.shares)),
            pk: Some(pb::VerificationKey {
                inner: value.pk.to_bytes().to_vec(),
            }),
            sig: Some(pb::Signature {
                inner: value.sig.to_bytes().to_vec(),
            }),
        }
    }
}

impl TryFrom<pb::FollowerRound2> for FollowerRound2 {
    type Error = anyhow::Error;

    fn try_from(value: pb::FollowerRound2) -> Result<Self, Self::Error> {
        Ok(Self {
            shares: value
                .inner
                .ok_or(anyhow!("missing inner"))?
                .shares
                .into_iter()
                .map(|x| x.try_into())
                .collect::<Result<Vec<_>, _>>()?,
            pk: value
                .pk
                .ok_or(anyhow!("missing pk"))?
                .inner
                .as_slice()
                .try_into()?,
            sig: value
                .sig
                .ok_or(anyhow!("missing sig"))?
                .inner
                .as_slice()
                .try_into()?,
        })
    }
}

impl FollowerRound2 {
    // Make a round1 message, automatically signing the right bytes
    fn make(signing_key: &SigningKey, shares: Vec<frost::round2::SignatureShare>) -> Self {
        Self {
            shares: shares.clone(),
            pk: signing_key.verification_key(),
            sig: signing_key.sign(&shares_to_pb(shares).encode_to_vec()),
        }
    }

    // Extract the commitments from this struct, checking the signature
    fn checked_shares(self) -> Result<(VerificationKey, Vec<frost::round2::SignatureShare>)> {
        self.pk.verify(
            &self.sig,
            &shares_to_pb(self.shares.clone()).encode_to_vec(),
        )?;
        Ok((self.pk, self.shares))
    }
}

impl DomainType for FollowerRound2 {
    type Proto = pb::FollowerRound2;
}

/// Calculate the number of required signatures for a plan.
///
/// A plan can require more than one signature, hence the need for this method.
fn required_signatures(request: &SigningRequest) -> usize {
    request.randomizers().len()
}

/// Create a trivial signing response if no signatures are needed.
pub fn no_signature_response(
    fvk: &FullViewingKey,
    request: &SigningRequest,
) -> Result<Option<SigningResponse>> {
    request.validate_joint(fvk)?;
    if required_signatures(request) == 0 {
        Ok(Some(SigningResponse::Transaction(AuthorizationData {
            effect_hash: Some(request.effect_hash(fvk)?),
            spend_auths: Vec::new(),
        })))
    } else {
        Ok(None)
    }
}

pub struct CoordinatorState1 {
    request: SigningRequest,
    my_round1_reply: FollowerRound1,
    my_round1_state: FollowerState,
}

pub struct CoordinatorState2 {
    request: SigningRequest,
    my_round2_reply: FollowerRound2,
    to_be_signed: ToBeSigned,
    signing_packages: Vec<frost::SigningPackage>,
}

struct ToBeSigned(EffectHash);

impl SigningRequest {
    fn to_be_signed(&self, config: &Config) -> Result<ToBeSigned> {
        Ok(ToBeSigned(self.effect_hash(config.fvk())?))
    }

    fn effect_hash(&self, fvk: &FullViewingKey) -> Result<EffectHash> {
        match self {
            Self::TransactionPlan(plan) => plan.effect_hash(fvk),
            Self::JointTransaction(request) => Ok(request.effect_hash()),
        }
    }

    fn randomizers(&self) -> Vec<shieldd_sdk_crypto::Fr> {
        match self {
            Self::TransactionPlan(plan) => plan.spend_auth_randomizers().collect(),
            Self::JointTransaction(request) => request.randomizers(),
        }
    }
}

impl AsRef<[u8]> for ToBeSigned {
    fn as_ref(&self) -> &[u8] {
        self.0.as_ref()
    }
}

pub struct FollowerState {
    request: SigningRequest,
    nonces: Vec<frost::round1::SigningNonces>,
}

pub fn coordinator_round1(
    rng: &mut impl CryptoRngCore,
    config: &Config,
    request: SigningRequest,
) -> Result<(CoordinatorRound1, CoordinatorState1)> {
    let message = CoordinatorRound1 {
        request: request.clone(),
    };
    let (my_round1_reply, my_round1_state) = follower_round1(rng, config, message.clone())?;
    let state = CoordinatorState1 {
        request,
        my_round1_reply,
        my_round1_state,
    };
    Ok((message, state))
}

pub fn coordinator_round2(
    config: &Config,
    state: CoordinatorState1,
    follower_messages: &[FollowerRound1],
) -> Result<(CoordinatorRound2, CoordinatorState2)> {
    let required = required_signatures(&state.request);
    let allowed = config.verification_keys();
    anyhow::ensure!(
        follower_messages.len() + 1 >= usize::from(config.threshold())
            && follower_messages.len() < allowed.len(),
        "invalid signing participant count"
    );
    let mut seen = BTreeSet::new();
    let mut all_commitments = vec![BTreeMap::new(); required];
    for message in follower_messages
        .iter()
        .cloned()
        .chain(iter::once(state.my_round1_reply))
    {
        let (pk, commitments) = message.checked_commitments()?;
        anyhow::ensure!(seen.insert(pk), "duplicate signing participant");
        anyhow::ensure!(commitments.len() == required, "incorrect commitment count");
        if !allowed.contains(&pk) {
            anyhow::bail!("unknown verification key: {:?}", pk);
        }
        // The public key acts as the identifier
        let identifier = frost::Identifier::derive(pk.as_bytes().as_slice())?;
        for (tree_i, com_i) in all_commitments.iter_mut().zip(commitments.into_iter()) {
            tree_i.insert(identifier, com_i);
        }
    }
    let reply = CoordinatorRound2 { all_commitments };

    let my_round2_reply = follower_round2(config, state.my_round1_state, reply.clone())?;

    let to_be_signed = state.request.to_be_signed(&config)?;

    let signing_packages = {
        reply
            .all_commitments
            .iter()
            .map(|tree| frost::SigningPackage::new(tree.clone(), to_be_signed.as_ref()))
            .collect()
    };
    let state = CoordinatorState2 {
        request: state.request,
        my_round2_reply,
        to_be_signed,
        signing_packages,
    };
    Ok((reply, state))
}

pub fn coordinator_round3(
    config: &Config,
    state: CoordinatorState2,
    follower_messages: &[FollowerRound2],
) -> Result<SigningResponse> {
    let required = required_signatures(&state.request);
    let mut seen = BTreeSet::new();
    let mut share_maps: Vec<BTreeMap<frost::Identifier, frost::round2::SignatureShare>> =
        vec![BTreeMap::new(); required];
    for message in follower_messages
        .iter()
        .cloned()
        .chain(iter::once(state.my_round2_reply))
    {
        let (pk, shares) = message.checked_shares()?;
        anyhow::ensure!(seen.insert(pk), "duplicate signing participant");
        anyhow::ensure!(shares.len() == required, "incorrect signature share count");
        if !config.verification_keys().contains(&pk) {
            anyhow::bail!("unknown verification key: {:?}", pk);
        }
        let identifier = frost::Identifier::derive(pk.as_bytes().as_slice())?;
        anyhow::ensure!(
            state
                .signing_packages
                .iter()
                .all(|package| package.signing_commitment(&identifier).is_some()),
            "share from unselected participant"
        );
        for (map_i, share_i) in share_maps.iter_mut().zip(shares.into_iter()) {
            map_i.insert(identifier, share_i);
        }
    }

    anyhow::ensure!(
        state.signing_packages.len() == required,
        "incorrect signing package count"
    );
    let spend_auths = state
        .request
        .randomizers()
        .into_iter()
        .zip(share_maps.iter())
        .zip(state.signing_packages.iter())
        .map(|((randomizer, share_map), signing_package)| {
            frost::aggregate_randomized(
                signing_package,
                share_map,
                &config.public_key_package(),
                randomizer,
            )
        })
        .collect::<Result<Vec<_>, _>>()?;
    Ok(SigningResponse::Transaction(AuthorizationData {
        effect_hash: Some(state.to_be_signed.0),
        spend_auths,
    }))
}

pub fn follower_round1(
    rng: &mut impl CryptoRngCore,
    config: &Config,
    coordinator: CoordinatorRound1,
) -> Result<(FollowerRound1, FollowerState)> {
    coordinator.request.validate_joint(config.fvk())?;
    let required = required_signatures(&coordinator.request);
    let (nonces, commitments) = (0..required)
        .map(|_| frost::round1::commit(&config.key_package().signing_share(), rng))
        .unzip();
    let reply = FollowerRound1::make(config.signing_key(), commitments);
    let state = FollowerState {
        request: coordinator.request,
        nonces,
    };
    Ok((reply, state))
}

pub fn follower_round2(
    config: &Config,
    state: FollowerState,
    coordinator: CoordinatorRound2,
) -> Result<FollowerRound2> {
    let required = required_signatures(&state.request);
    anyhow::ensure!(
        coordinator.all_commitments.len() == required && state.nonces.len() == required,
        "incorrect signing package count"
    );
    let allowed = config
        .verification_keys()
        .into_iter()
        .map(|pk| frost::Identifier::derive(pk.as_bytes()))
        .collect::<Result<BTreeSet<_>, _>>()?;
    let own = frost::Identifier::derive(config.signing_key().verification_key().as_bytes())?;
    for commitments in &coordinator.all_commitments {
        anyhow::ensure!(
            commitments.len() >= usize::from(config.threshold())
                && commitments.len() <= allowed.len(),
            "invalid signing participant count"
        );
        anyhow::ensure!(
            commitments.contains_key(&own) && commitments.keys().all(|id| allowed.contains(id)),
            "unknown or missing signing participant"
        );
    }
    let to_be_signed = state.request.to_be_signed(config)?;
    let signing_packages = coordinator
        .all_commitments
        .into_iter()
        .map(|tree| frost::SigningPackage::new(tree, to_be_signed.as_ref()));

    let shares = state
        .request
        .randomizers()
        .into_iter()
        .zip(signing_packages)
        .zip(state.nonces.into_iter())
        .map(|((randomizer, signing_package), signer_nonces)| {
            frost::round2::sign_randomized(
                &signing_package,
                &signer_nonces,
                &config.key_package(),
                randomizer,
            )
        })
        .collect::<Result<_, _>>()?;
    Ok(FollowerRound2::make(config.signing_key(), shares))
}

#[cfg(test)]
mod tests {
    use super::*;
    use rand_core::OsRng;
    use shieldd_sdk_transaction::TransactionPlan;

    fn joint_request(config: &Config, owns_fee: bool) -> JointSigningRequest {
        use shieldd_sdk_shielded_pool::{
            Note, RecoveryCommitment, Rseed, ShieldedInputPlan, ShieldedOutputPlan, Transfer,
            TransferPlan, TransferProof, TransferProofContext,
        };
        use shieldd_sdk_transaction::{
            memo::MemoPlaintext, plan::MemoPlan, Action, ActionPlan, FeeFunding, FeeFundingPlan,
            Transaction, TransactionBody,
        };
        let peer = Config::deal(&mut OsRng, 2, 2).unwrap().remove(0);
        let sender = config.fvk().incoming().payment_address(0u32.into());
        let peer_address = peer.fvk().incoming().payment_address(0u32.into());
        let value = shieldd_sdk_asset::Value {
            amount: 1000u64.into(),
            asset_id: *shieldd_sdk_asset::BASE_ASSET_ID,
        };
        let transfer_plan = |owner: &FullViewingKey,
                             recipient: shieldd_sdk_keys::Address,
                             position: u64,
                             fee: bool| {
            let address = owner.incoming().payment_address(0u32.into());
            let note = Note::from_parts(
                address,
                shieldd_sdk_asset::Value {
                    amount: (if fee { 1100u64 } else { 1000u64 }).into(),
                    ..value
                },
                Rseed::generate(&mut OsRng),
                RecoveryCommitment::unavailable(),
            )
            .unwrap();
            let mut plan = shieldd_sdk_shielded_pool::test_plan_helpers::transfer(
                vec![ShieldedInputPlan::new(&mut OsRng, note, position.into())],
                vec![ShieldedOutputPlan::new(&mut OsRng, value, recipient)],
                shieldd_sdk_crypto::Fr::from(position + 10),
            )
            .unwrap();
            if fee {
                plan.proof_context = TransferProofContext::FeeFunding;
            }
            plan
        };
        let memo = MemoPlan::new(
            &mut OsRng,
            MemoPlaintext::new(sender.clone(), "joint settlement".into()).unwrap(),
        );
        let anchor = shieldd_sdk_tct::Tree::default().root();
        let fragment = |plan: &TransferPlan, fvk: &FullViewingKey| Transfer {
            body: plan.transfer_body(fvk, &memo.key, anchor).unwrap(),
            auth_sig: [0; 64].into(),
            // Proof verification belongs to negotiation; this test observes the FROST boundary.
            proof: TransferProof::default(),
        };
        let first = transfer_plan(config.fvk(), peer_address.clone(), 0, false);
        let second = transfer_plan(config.fvk(), peer_address.clone(), 1, false);
        let incoming = transfer_plan(peer.fvk(), sender.clone(), 2, false);
        let fee_owner = if owns_fee { config.fvk() } else { peer.fvk() };
        let fee = transfer_plan(
            fee_owner,
            fee_owner.incoming().payment_address(0u32.into()),
            3,
            true,
        );
        let mut parameters = shieldd_sdk_transaction::TransactionParameters::default();
        parameters.fee.0.amount = 100u64.into();
        let transaction = Transaction {
            transaction_body: TransactionBody {
                actions: vec![
                    Action::Transfer(fragment(&first, config.fvk())),
                    Action::Transfer(fragment(&second, config.fvk())),
                    Action::Transfer(fragment(&incoming, peer.fvk())),
                ],
                transaction_parameters: parameters.clone(),
                fee_funding: Some(FeeFunding {
                    transfer: fragment(&fee, fee_owner),
                }),
                memo: Some(memo.memo().unwrap()),
            },
            anchor,
            binding_sig: [0; 64].into(),
        };
        JointSigningRequest {
            transaction,
            plan: TransactionPlan {
                actions: vec![ActionPlan::Transfer(first), ActionPlan::Transfer(second)],
                transaction_parameters: parameters,
                fee_funding: owns_fee.then_some(FeeFundingPlan { transfer: fee }),
                memo: Some(memo),
            },
            action_indices: vec![0, 1],
            incoming: vec![ExpectedReceipt {
                action_index: 2,
                output_index: 0,
                address: sender,
                value,
            }],
            anchor,
            action_count: 3,
        }
    }

    fn sign_joint(configs: &[Config], request: JointSigningRequest) -> AuthorizationData {
        let (round1, state1) = coordinator_round1(
            &mut OsRng,
            &configs[0],
            SigningRequest::JointTransaction(Box::new(request)),
        )
        .unwrap();
        let (reply1, follower) = follower_round1(&mut OsRng, &configs[1], round1).unwrap();
        let (round2, state2) = coordinator_round2(&configs[0], state1, &[reply1]).unwrap();
        let reply2 = follower_round2(&configs[1], follower, round2).unwrap();
        let SigningResponse::Transaction(auth) =
            coordinator_round3(&configs[0], state2, &[reply2]).unwrap();
        auth
    }

    #[test]
    fn joint_signatures_cover_candidate_and_only_owned_slots() {
        let configs = Config::deal(&mut OsRng, 2, 2).unwrap();
        for owns_fee in [false, true] {
            let request = joint_request(&configs[0], owns_fee);
            request.validate(configs[0].fvk()).unwrap();
            let local_hash = request.plan.effect_hash(configs[0].fvk()).unwrap();
            let combined_hash = request.effect_hash();
            assert_ne!(local_hash, combined_hash);
            let auth = sign_joint(&configs, request.clone());
            assert_eq!(auth.effect_hash, Some(combined_hash));
            assert_eq!(auth.spend_auths.len(), if owns_fee { 3 } else { 2 });
            for (randomizer, sig) in request.randomizers().into_iter().zip(&auth.spend_auths) {
                let key = configs[0]
                    .fvk()
                    .spend_verification_key()
                    .randomize(&randomizer);
                key.verify(combined_hash.as_ref(), sig).unwrap();
                assert!(key.verify(local_hash.as_ref(), sig).is_err());
            }
            let mut signed = request.transaction.clone();
            request.apply(&mut signed, &auth).unwrap();
            let shieldd_sdk_transaction::Action::Transfer(peer) =
                &signed.transaction_body.actions[2]
            else {
                unreachable!()
            };
            assert_eq!(peer.auth_sig, [0; 64].into());
            if !owns_fee {
                assert_eq!(
                    signed
                        .transaction_body
                        .fee_funding
                        .as_ref()
                        .unwrap()
                        .transfer
                        .auth_sig,
                    [0; 64].into()
                );
            }
        }
        let mut fee_only = joint_request(&configs[0], true);
        fee_only.plan.actions.clear();
        fee_only.action_indices.clear();
        fee_only.validate(configs[0].fvk()).unwrap();
        assert_eq!(sign_joint(&configs, fee_only).spend_auths.len(), 1);
    }

    struct DecliningTerminal;
    #[tonic::async_trait]
    impl crate::threshold::Terminal for DecliningTerminal {
        async fn confirm_request(&self, request: &SigningRequest) -> Result<bool> {
            assert!(matches!(request, SigningRequest::JointTransaction(_)));
            Ok(false)
        }
        fn explain(&self, _: &str) -> Result<()> {
            panic!("declined request entered the signing ceremony")
        }
        async fn broadcast(&self, _: &str) -> Result<()> {
            panic!("declined request was broadcast")
        }
        async fn read_line_raw(&self) -> Result<String> {
            panic!("declined request waited for shares")
        }
        async fn get_password(&self) -> Result<String> {
            panic!("unexpected password request")
        }
    }

    #[tokio::test]
    async fn joint_coordinator_honors_terminal_decline() {
        let config = Config::deal(&mut OsRng, 2, 2).unwrap().remove(0);
        let request = joint_request(&config, true);
        let error = super::super::Threshold::new(config, DecliningTerminal)
            .authorize_joint(request)
            .await
            .unwrap_err();
        assert!(error.to_string().contains("authorization declined"));
    }

    struct NoNonceRng;
    impl rand_core::RngCore for NoNonceRng {
        fn next_u32(&mut self) -> u32 {
            panic!("invalid request allocated a nonce")
        }
        fn next_u64(&mut self) -> u64 {
            panic!("invalid request allocated a nonce")
        }
        fn fill_bytes(&mut self, _: &mut [u8]) {
            panic!("invalid request allocated a nonce")
        }
        fn try_fill_bytes(&mut self, _: &mut [u8]) -> Result<(), rand_core::Error> {
            panic!("invalid request allocated a nonce")
        }
    }
    impl rand_core::CryptoRng for NoNonceRng {}

    #[test]
    fn joint_mutations_reject_before_round1_nonces() {
        use shieldd_sdk_shielded_pool::TransferProofContext;
        use shieldd_sdk_transaction::Action;
        let configs = Config::deal(&mut OsRng, 2, 2).unwrap();
        let valid = joint_request(&configs[0], true);
        valid.validate(configs[0].fvk()).unwrap();
        let mut cases = Vec::new();
        let mut changed = valid.clone();
        changed.incoming[0].value.amount += 1u64.into();
        cases.push((changed, "incoming asset or amount"));
        let mut changed = valid.clone();
        changed.incoming[0].output_index = usize::MAX;
        cases.push((changed, "incoming output index"));
        let mut changed = valid.clone();
        changed.incoming[0].address = configs[0].fvk().incoming().payment_address(1u32.into());
        cases.push((changed, "incoming receiving address"));
        let mut changed = valid.clone();
        changed.action_indices.swap(0, 1);
        cases.push((changed, "owned randomized key"));
        let mut changed = valid.clone();
        changed.action_indices[1] = 0;
        cases.push((changed, "duplicate owned action"));
        let mut changed = valid.clone();
        changed
            .transaction
            .transaction_body
            .transaction_parameters
            .fee
            .0
            .amount += 1u64.into();
        cases.push((changed, "transaction parameters"));
        let mut changed = valid.clone();
        changed.action_count += 1;
        cases.push((changed, "action count"));
        let mut changed = valid.clone();
        changed.anchor = shieldd_sdk_proto::shieldd::crypto::tct::v1::MerkleRoot {
            inner: shieldd_sdk_crypto::Fq::from(1u64).to_bytes().to_vec(),
        }
        .try_into()
        .unwrap();
        cases.push((changed, "agreed anchor"));
        let mut changed = valid.clone();
        changed.transaction.transaction_body.memo = None;
        cases.push((changed, "agreed memo"));
        let mut changed = valid.clone();
        changed.transaction.transaction_body.memo = None;
        changed.plan.memo = None;
        // Keep local bodies consistent with the missing memo, reaching the incoming receipt check.
        let key = shieldd_sdk_keys::PayloadKey::from([0; 32]);
        for (plan, index) in changed.plan.actions.iter().zip(&changed.action_indices) {
            let shieldd_sdk_transaction::ActionPlan::Transfer(plan) = plan else {
                unreachable!()
            };
            let Action::Transfer(action) =
                &mut changed.transaction.transaction_body.actions[*index]
            else {
                unreachable!()
            };
            action.body = plan
                .transfer_body(configs[0].fvk(), &key, changed.anchor)
                .unwrap();
        }
        changed
            .transaction
            .transaction_body
            .fee_funding
            .as_mut()
            .unwrap()
            .transfer
            .body = changed
            .plan
            .fee_funding
            .as_ref()
            .unwrap()
            .transfer
            .transfer_body(configs[0].fvk(), &key, changed.anchor)
            .unwrap();
        cases.push((changed, "incoming memo missing"));
        let mut changed = valid.clone();
        changed
            .transaction
            .transaction_body
            .fee_funding
            .as_mut()
            .unwrap()
            .transfer
            .body
            .target_timestamp += 1;
        cases.push((changed, "wallet's fee funding changed"));
        let mut changed = valid.clone();
        changed
            .transaction
            .transaction_body
            .fee_funding
            .as_mut()
            .unwrap()
            .transfer
            .body
            .proof_context = TransferProofContext::Ordinary;
        changed
            .transaction
            .transaction_body
            .fee_funding
            .as_ref()
            .unwrap()
            .transfer
            .body
            .proof_public(changed.anchor, TransferProofContext::Ordinary)
            .unwrap();
        cases.push((
            changed,
            "transfer proof context does not match its transaction location",
        ));
        let mut changed = valid.clone();
        let Action::Transfer(peer) = &mut changed.transaction.transaction_body.actions[2] else {
            unreachable!()
        };
        peer.body.proof_context = TransferProofContext::FeeFunding;
        peer.body.volume_accumulator =
            shieldd_sdk_shielded_pool::VolumeAccumulatorPayload::canonical_fee_funding();
        peer.body
            .proof_public(changed.anchor, TransferProofContext::FeeFunding)
            .unwrap();
        cases.push((
            changed,
            "transfer proof context does not match its transaction location",
        ));
        let mut changed = valid.clone();
        let Action::Transfer(peer) = &mut changed.transaction.transaction_body.actions[2] else {
            unreachable!()
        };
        peer.body.outputs[0].note_payload.encrypted_note.0[0] ^= 1;
        cases.push((changed, "incoming receiver note"));
        let mut changed = valid.clone();
        let Action::Transfer(first) = &changed.transaction.transaction_body.actions[0] else {
            unreachable!()
        };
        let nullifier = first.body.inputs[0].nullifier;
        let Action::Transfer(peer) = &mut changed.transaction.transaction_body.actions[2] else {
            unreachable!()
        };
        peer.body.inputs[0].nullifier = nullifier;
        cases.push((changed, "reused note nullifier"));
        let mut changed = valid.clone();
        let Action::Transfer(first) = &changed.transaction.transaction_body.actions[0] else {
            unreachable!()
        };
        let key = first.body.rk;
        let Action::Transfer(peer) = &mut changed.transaction.transaction_body.actions[2] else {
            unreachable!()
        };
        peer.body.rk = key;
        cases.push((changed, "reused randomized key"));
        for (request, diagnostic) in cases {
            let error = match follower_round1(
                &mut NoNonceRng,
                &configs[1],
                CoordinatorRound1 {
                    request: SigningRequest::JointTransaction(Box::new(request)),
                },
            ) {
                Ok(_) => panic!("accepted invalid joint request: {diagnostic}"),
                Err(error) => error,
            };
            assert!(
                format!("{error:#}").contains(diagnostic),
                "wrong rejection boundary: {error:#}"
            );
        }
    }
    fn request(config: &Config) -> SigningRequest {
        use shieldd_sdk_shielded_pool::{
            Note, RecoveryCommitment, Rseed, ShieldedInputPlan, ShieldedOutputPlan,
        };
        let address = config.fvk().incoming().payment_address(0u32.into());
        let value = shieldd_sdk_asset::Value {
            amount: 1000u64.into(),
            asset_id: *shieldd_sdk_asset::BASE_ASSET_ID,
        };
        let note = Note::from_parts(
            address.clone(),
            value,
            Rseed::generate(&mut OsRng),
            RecoveryCommitment::unavailable(),
        )
        .unwrap();
        let spend = ShieldedInputPlan::new(&mut OsRng, note, 0u64.into());
        let output = ShieldedOutputPlan::new(&mut OsRng, value, address);
        let transfer = shieldd_sdk_shielded_pool::test_plan_helpers::transfer(
            vec![spend],
            vec![output],
            shieldd_sdk_crypto::Fr::from(7),
        )
        .unwrap();
        SigningRequest::TransactionPlan(TransactionPlan {
            actions: vec![shieldd_sdk_transaction::ActionPlan::Transfer(transfer)],
            memo: None,
            fee_funding: None,
            transaction_parameters: Default::default(),
        })
    }
    #[test]
    fn action_signatures_cover_multiple_inputs_and_fee_funding() {
        let configs = Config::deal(&mut OsRng, 2, 2).unwrap();
        let SigningRequest::TransactionPlan(mut plan) = request(&configs[0]) else {
            unreachable!()
        };
        let shieldd_sdk_transaction::ActionPlan::Transfer(transfer) = &mut plan.actions[0] else {
            unreachable!()
        };
        transfer.spends.push(transfer.spends[0].clone());
        transfer.outputs[0].value.amount = 2000u64.into();
        let mut fee = transfer.clone();
        fee.auth_randomizer += shieldd_sdk_crypto::Fr::from(1);
        fee.proof_context = shieldd_sdk_shielded_pool::TransferProofContext::FeeFunding;
        fee.volume_accumulator =
            shieldd_sdk_shielded_pool::VolumeAccumulatorPlan::padding(fee.compliance.timestamp);
        plan.fee_funding = Some(shieldd_sdk_transaction::FeeFundingPlan { transfer: fee });
        assert_eq!(plan.num_spends(), 4);
        assert_eq!(plan.num_spend_auths(), 2);
        let request = SigningRequest::TransactionPlan(plan.clone());
        let (round1, state1) = coordinator_round1(&mut OsRng, &configs[0], request).unwrap();
        let (reply1, follower) = follower_round1(&mut OsRng, &configs[1], round1).unwrap();
        assert_eq!(reply1.commitments.len(), 2);
        let (round2, state2) = coordinator_round2(&configs[0], state1, &[reply1]).unwrap();
        let reply2 = follower_round2(&configs[1], follower, round2).unwrap();
        let SigningResponse::Transaction(auth) =
            coordinator_round3(&configs[0], state2, &[reply2]).unwrap();
        assert_eq!(auth.spend_auths.len(), 2);
        let hash = plan.effect_hash(configs[0].fvk()).unwrap();
        for (index, randomizer) in plan.spend_auth_randomizers().enumerate() {
            let rk = configs[0]
                .fvk()
                .spend_verification_key()
                .randomize(&randomizer);
            rk.verify(hash.as_ref(), &auth.spend_auths[index]).unwrap();
            assert!(
                rk.verify(hash.as_ref(), &auth.spend_auths[1 - index])
                    .is_err(),
                "reordered signatures must fail"
            );
        }
    }

    #[test]
    fn follower_rejects_missing_signing_packages() {
        let configs = Config::deal(&mut OsRng, 2, 2).unwrap();
        let message = CoordinatorRound1 {
            request: request(&configs[0]),
        };
        let (_, state) = follower_round1(&mut OsRng, &configs[1], message).unwrap();
        assert!(follower_round2(
            &configs[1],
            state,
            CoordinatorRound2 {
                all_commitments: vec![]
            }
        )
        .is_err());
    }
    #[test]
    fn coordinator_rejects_duplicate_followers_and_extra_commitments() {
        let configs = Config::deal(&mut OsRng, 2, 2).unwrap();
        for duplicate in [true, false] {
            let (message, state) =
                coordinator_round1(&mut OsRng, &configs[0], request(&configs[0])).unwrap();
            let (reply, _) = follower_round1(&mut OsRng, &configs[1], message).unwrap();
            let replies = if duplicate {
                vec![reply.clone(), reply]
            } else {
                let mut commitments = reply.commitments;
                commitments.push(commitments[0].clone());
                vec![FollowerRound1::make(configs[1].signing_key(), commitments)]
            };
            assert!(coordinator_round2(&configs[0], state, &replies).is_err());
        }
    }
}
