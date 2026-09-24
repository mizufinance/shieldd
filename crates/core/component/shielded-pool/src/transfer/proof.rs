use anyhow::{ensure, Result};
use reddsa::{sapling::SpendAuth, VerificationKey};
use shieldd_sdk_asset::balance;
use shieldd_sdk_compliance::{ComplianceLeaf, IndexedLeaf, MerklePath, TransferComplianceMetadata};
use shieldd_sdk_crypto::{Fq, Fr};
use shieldd_sdk_keys::keys::NullifierKey;
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_tct as tct;

use crate::{
    discovery::{Parameters as RoutingParameters, TransferRouting},
    public_input_hash::transfer_statement_hash_from_public,
    transfer::{transfer_input_count, transfer_output_count, TRANSFER_PROOF_LABEL},
    Note, TransferProofContext, VolumeAccumulatorPrivate, VolumeAccumulatorPublic,
};

#[derive(Clone, Debug)]
pub struct TransferSpendPublic {
    pub nullifier: Nullifier,
    pub history_required: bool,
}

#[derive(Clone, Debug)]
pub struct TransferOutputPublic {
    pub note_commitment: tct::StateCommitment,
    pub recovery_commitment: crate::RecoveryCommitment,
}

#[derive(Clone, Debug)]
pub struct TransferComplianceCiphertextPublic {
    pub epk: shieldd_sdk_crypto::SubgroupPoint,
    pub c2: Fq,
    pub ciphertext: Vec<Fq>,
}

#[derive(Clone, Debug)]
pub struct TransferCompliancePublic {
    pub ownership: [shieldd_sdk_compliance::ownership::OwnershipCiphertext; 2],
    pub detection_ciphertext: Vec<Fq>,
    pub metadata: TransferComplianceMetadata,
    pub sender_core_key_confirmation: Fq,
    pub output_core_key_confirmation: Fq,
    pub sender_core: TransferComplianceCiphertextPublic,
    pub sender_ext: TransferComplianceCiphertextPublic,
    pub output_core: TransferComplianceCiphertextPublic,
    pub output_ext: TransferComplianceCiphertextPublic,
}

#[derive(Clone, Debug)]
pub struct TransferProofPublic {
    pub rk: VerificationKey<SpendAuth>,
    pub anchor: tct::Root,
    pub balance_commitment: balance::Commitment,
    pub asset_anchor: tct::StateCommitment,
    pub compliance_anchor: tct::StateCommitment,
    pub target_timestamp: Fq,
    pub inputs: Vec<TransferSpendPublic>,
    pub outputs: Vec<TransferOutputPublic>,
    pub compliance: TransferCompliancePublic,
    pub routing: TransferRouting,
    pub routing_parameter_set_id: Fq,
    pub recent_position_floor: u64,
    pub volume_accumulator: VolumeAccumulatorPublic,
    pub proof_context: TransferProofContext,
}

impl TransferProofPublic {
    pub fn validate_shape(&self) -> Result<()> {
        ensure!(
            self.inputs.len() == transfer_input_count(),
            "{} expects {} inputs, got {}",
            TRANSFER_PROOF_LABEL,
            transfer_input_count(),
            self.inputs.len()
        );
        ensure!(
            self.outputs.len() == transfer_output_count(),
            "{} expects {} outputs, got {}",
            TRANSFER_PROOF_LABEL,
            transfer_output_count(),
            self.outputs.len()
        );
        Ok(())
    }

    pub fn statement_hash(&self) -> Result<Fq> {
        transfer_statement_hash_from_public(self)
    }
}

#[derive(Clone, Debug)]
pub struct TransferSpendPrivate {
    pub state_commitment_proof: tct::Proof,
    pub spent_note: Note,
}

#[derive(Clone, Debug)]
pub struct TransferOptionalSpendPrivate {
    pub spend: TransferSpendPrivate,
    pub is_dummy: bool,
    pub dummy_nullifier_seed: Fq,
}

#[derive(Clone, Debug)]
pub struct TransferReceiverOutputPrivate {
    pub created_note: Note,
    pub recipient_compliance_path: MerklePath,
    pub recipient_compliance_position: u64,
    pub recipient_leaf: ComplianceLeaf,
}

#[derive(Clone, Debug)]
pub struct TransferChangeOutputPrivate {
    pub created_note: Note,
}

#[derive(Clone, Debug)]
pub struct TransferTierRandomizers {
    pub core: Fr,
    pub ext: Fr,
    pub checking: Fr,
}

#[derive(Clone, Debug)]
pub struct TransferCompliancePrivate {
    pub transfer_nonce_root: Fr,
    pub sender: TransferTierRandomizers,
    pub output: TransferTierRandomizers,
}

#[derive(Clone, Debug)]
pub struct TransferProofPrivate {
    pub spend_auth_randomizer: Fr,
    pub action_balance_blinding: Fr,
    pub ak: VerificationKey<SpendAuth>,
    pub nk: NullifierKey,
    pub asset_path: MerklePath,
    pub asset_position: u64,
    pub asset_indexed_leaf: IndexedLeaf,
    pub is_regulated: bool,
    pub routing_parameters: RoutingParameters,
    pub sender_compliance_path: MerklePath,
    pub sender_compliance_position: u64,
    pub sender_leaf: ComplianceLeaf,
    pub compliance: TransferCompliancePrivate,
    pub required_input: TransferSpendPrivate,
    pub optional_input: TransferOptionalSpendPrivate,
    pub receiver_output: TransferReceiverOutputPrivate,
    pub change_output: TransferChangeOutputPrivate,
    pub volume_accumulator: VolumeAccumulatorPrivate,
}

#[derive(Clone, Debug, Default)]
pub struct TransferProof {
    pub inner: Vec<u8>,
}

impl TransferProof {
    pub(crate) fn to_batch_item(
        &self,
        public: &TransferProofPublic,
    ) -> Result<shieldd_sdk_proof_params::pari::Verification> {
        let envelope =
            crate::proof::decode(&self.inner, shieldd_sdk_circuits::proof::Family::Transfer)?;
        Ok(shieldd_sdk_proof_params::pari::Verification {
            family: shieldd_sdk_circuits::proof::Family::Transfer,
            statement: shieldd_sdk_circuits::encoding::field(&public.statement_hash()?),
            envelope,
        })
    }

    pub fn verify(
        &self,
        public: &TransferProofPublic,
        registry: &shieldd_sdk_proof_params::pari::Registry,
    ) -> Result<()> {
        registry
            .verify_item(&self.to_batch_item(public)?)
            .map(|_| ())
    }

    pub fn validate_encoding(&self) -> Result<()> {
        let decoded = shieldd_sdk_circuits::proof::Envelope::from_bytes(&self.inner)?;
        ensure!(
            decoded.family() == shieldd_sdk_circuits::proof::Family::Transfer,
            "wrong proof family"
        );
        Ok(())
    }

    pub fn prove(
        public: TransferProofPublic,
        private: TransferProofPrivate,
        registry: &shieldd_sdk_proof_params::pari::Registry,
    ) -> Result<Self, crate::ProofError> {
        (|| -> Result<Self> {
            let witness = crate::pari::transfer(&public, &private)?;
            let proof = registry.prove(
                &witness,
                shieldd_sdk_proof_params::pari::proving_strategy()?,
            )?;
            registry.verify(
                shieldd_sdk_circuits::proof::Family::Transfer,
                &shieldd_sdk_circuits::encoding::field(&public.statement_hash()?),
                &proof,
            )?;
            Ok(Self {
                inner: proof.to_bytes(),
            })
        })()
        .map_err(|error| {
            crate::ProofError::ProofGenerationFailed(format!("Pari transfer: {error:#}"))
        })
    }
}

impl DomainType for TransferProof {
    type Proto = pb::ZkTransferProof;
}

impl From<TransferProof> for pb::ZkTransferProof {
    fn from(proof: TransferProof) -> Self {
        Self { inner: proof.inner }
    }
}

impl TryFrom<pb::ZkTransferProof> for TransferProof {
    type Error = anyhow::Error;

    fn try_from(proto: pb::ZkTransferProof) -> Result<Self, Self::Error> {
        let proof = Self { inner: proto.inner };
        proof.validate_encoding()?;
        Ok(proof)
    }
}

#[cfg(feature = "component")]
#[cfg(all(test, all(feature = "prover", any(unix, windows))))]
mod tests {
    use crate::test_proof_helpers::proof_test_helpers::registry;
    use ff::Field;
    use rand::SeedableRng;

    #[cfg(feature = "component")]
    use crate::component::transfer_extract_public;
    use crate::test_proof_helpers::proof_test_helpers::build_transfer_hidden_arity_roundtrip_inputs_for_asset_with_rng;
    use crate::{
        Note, RecoveryCommitment, Rseed, ShieldedInputPlan, ShieldedOutputPlan, TransferPlan,
    };
    use shieldd_sdk_asset::{Value, BASE_ASSET_ID};
    use shieldd_sdk_compliance::{ComplianceLeaf, MerklePath, QuadTree};
    use shieldd_sdk_crypto::Fr;
    use shieldd_sdk_keys::test_keys;
    use shieldd_sdk_num::Amount;
    use shieldd_sdk_tct as tct;

    #[test]
    #[ignore = "expensive: native Pari proof generation with local keys"]
    fn regulated_and_unregulated_proofs_verify_individually_and_in_a_batch() -> anyhow::Result<()> {
        use shieldd_sdk_proof_params::pari::proving_strategy;
        let registry = registry();
        let strategy = proving_strategy()?;
        let mut items = Vec::new();
        for (seed, regulated) in [(42, true), (43, false)] {
            let (public, private) = build_transfer_hidden_arity_roundtrip_inputs_for_asset_with_rng(
                &mut rand::rngs::StdRng::seed_from_u64(seed),
                *BASE_ASSET_ID,
                regulated,
                false,
            );
            let proof = super::TransferProof::prove(public.clone(), private, registry)?;
            proof.verify(&public, registry)?;
            let item = proof.to_batch_item(&public)?;
            assert_eq!(item.family, shieldd_sdk_circuits::proof::Family::Transfer);
            items.push(item);
        }
        assert_ne!(items[0].statement, items[1].statement);
        assert_ne!(items[0].envelope.to_bytes(), items[1].envelope.to_bytes());
        assert_eq!(registry.verify_items(&items, strategy)?.len(), 2);
        Ok(())
    }

    fn compliance_leaf_for(address: &shieldd_sdk_keys::Address) -> ComplianceLeaf {
        ComplianceLeaf::synthetic_unregulated(address.clone(), *BASE_ASSET_ID)
    }

    fn sender_recipient_compliance_witnesses() -> (
        ComplianceLeaf,
        ComplianceLeaf,
        tct::StateCommitment,
        MerklePath,
        MerklePath,
    ) {
        let sender_leaf = compliance_leaf_for(&test_keys::ADDRESS_0);
        let recipient_leaf = compliance_leaf_for(&test_keys::ADDRESS_1);
        let mut user_tree = QuadTree::new();
        user_tree
            .update(0, sender_leaf.commit())
            .expect("insert sender user leaf");
        user_tree
            .update(1, recipient_leaf.commit())
            .expect("insert recipient user leaf");
        let compliance_anchor = tct::StateCommitment(user_tree.root().0);
        let sender_compliance_path =
            MerklePath::from_auth_path(user_tree.auth_path(0).expect("sender auth path"));
        let recipient_compliance_path =
            MerklePath::from_auth_path(user_tree.auth_path(1).expect("recipient auth path"));

        (
            sender_leaf,
            recipient_leaf,
            compliance_anchor,
            sender_compliance_path,
            recipient_compliance_path,
        )
    }

    fn assert_transfer_witness(
        public: super::TransferProofPublic,
        private: super::TransferProofPrivate,
    ) {
        use commonware_cryptography::{bls12381::primitives::group::Scalar, zk::pari::Opening};
        use shieldd_sdk_circuits::{catalogue, hash::Parameters, map::Generators};

        let witness = crate::pari::transfer(&public, &private).expect("map transfer witness");
        let parameters = Parameters::load().unwrap();
        let generators = Generators::derive(&parameters);
        assert_eq!(
            witness.digest(&parameters, &generators).unwrap(),
            shieldd_sdk_circuits::encoding::field(&public.statement_hash().unwrap()),
            "mapped witness must preserve the action statement",
        );
        let valued = catalogue::evaluate(&witness).expect("evaluate transfer witness");
        assert!(
            valued.is_satisfied(),
            "transfer witness violates the relation"
        );
        let compiled = catalogue::compile(witness.family()).expect("compile canonical relation");
        compiled
            .relation
            .witness(
                &valued,
                &compiled.layout,
                vec![Opening::new(Scalar::from(1))],
            )
            .expect("witness must match the canonical relation shape");
    }

    #[test]
    fn transfer_public_projection_matches_builder_without_proving() {
        for regulated in [false, true] {
            let (transfer, expected, context) = crate::test_proof_helpers::proof_test_helpers::build_transfer_action_and_public_without_proof(regulated);
            let actual =
                transfer_extract_public(&transfer, &context).expect("extract public inputs");
            assert_eq!(
                actual.statement_hash().unwrap(),
                expected.statement_hash().unwrap()
            );
        }
    }

    #[test]
    fn unregulated_transfer_witnesses_cover_asset_gaps() {
        let nonbase = shieldd_sdk_asset::asset::REGISTRY
            .parse_unit("test_usd")
            .id();
        for asset_id in [*BASE_ASSET_ID, nonbase] {
            for populated in [false, true] {
                let mut rng = rand::rngs::StdRng::seed_from_u64(42);
                let (public, private) = if populated {
                    crate::test_proof_helpers::proof_test_helpers::build_transfer_hidden_arity_roundtrip_inputs_for_asset_populated(
                        &mut rng, asset_id, asset_id.0 - shieldd_sdk_crypto::Fq::from(1u64),
                        500_000_000_000_000_000_000u128, false,
                    )
                } else {
                    build_transfer_hidden_arity_roundtrip_inputs_for_asset_with_rng(
                        &mut rng, asset_id, false, false,
                    )
                };
                assert_transfer_witness(public, private);
            }
        }
    }

    #[test]
    fn transfer_witnesses_cover_user_paths_note_positions_and_change() {
        for (position, with_change) in [(0u64, false), (512, false), (0, true)] {
            let mut rng = rand::rngs::StdRng::seed_from_u64(42);
            let input_note = Note::from_parts(
                test_keys::ADDRESS_0.clone(),
                Value {
                    amount: Amount::from(1_000_000u64),
                    asset_id: *BASE_ASSET_ID,
                },
                Rseed::generate(&mut rng),
                RecoveryCommitment::unavailable(),
            )
            .expect("create registered base-asset test note");

            let mut sct = tct::Tree::new();
            for _ in 0..position {
                let filler_note = Note::from_parts(
                    test_keys::ADDRESS_1.clone(),
                    Value {
                        amount: Amount::from(1u64),
                        asset_id: *BASE_ASSET_ID,
                    },
                    Rseed::generate(&mut rng),
                    RecoveryCommitment::unavailable(),
                )
                .expect("create filler note");
                sct.insert(tct::Witness::Forget, filler_note.commit())
                    .expect("insert filler note");
            }
            sct.insert(tct::Witness::Keep, input_note.commit())
                .expect("insert registered base-asset note");
            let state_commitment_proof = sct
                .witness(input_note.commit())
                .expect("witness registered base-asset note");
            let anchor = sct.root();

            let (asset_anchor, asset_indexed_leaf, asset_path, asset_position) =
                shieldd_sdk_compliance::create_default_imt_proof(input_note.asset_id().0);
            let (
                sender_leaf,
                recipient_leaf,
                compliance_anchor,
                sender_compliance_path,
                recipient_compliance_path,
            ) = sender_recipient_compliance_witnesses();

            let spend = ShieldedInputPlan::new(
                &mut rng,
                input_note.clone(),
                state_commitment_proof.position(),
            );

            let mut value = input_note.value();
            if with_change {
                value.amount = 1u64.into();
            }
            let output = ShieldedOutputPlan::new(&mut rng, value, test_keys::ADDRESS_1.clone());

            let mut compliance =
                crate::test_plan_helpers::transfer_context(&spend, &output.dest_address);
            compliance.witness.user_root = compliance_anchor;
            compliance.witness.sender = crate::UserWitness {
                leaf: sender_leaf,
                path: sender_compliance_path,
                position: 0,
            };
            compliance.recipient = crate::UserWitness {
                leaf: recipient_leaf,
                path: recipient_compliance_path,
                position: 1,
            };
            compliance.witness.asset.root = asset_anchor;
            compliance.witness.asset.leaf = asset_indexed_leaf;
            compliance.witness.asset.path = asset_path;
            compliance.witness.asset.position = asset_position;
            let mut outputs = vec![output];
            if with_change {
                outputs.push(ShieldedOutputPlan::new(
                    &mut rng,
                    Value {
                        amount: 999_999u64.into(),
                        asset_id: *BASE_ASSET_ID,
                    },
                    test_keys::ADDRESS_0.clone(),
                ));
            }
            let transfer = TransferPlan::new(
                vec![spend],
                outputs,
                Fr::random(&mut rng),
                compliance.clone(),
                crate::VolumeAccumulatorPlan::padding(compliance.timestamp),
                crate::TransferProofContext::Ordinary,
                crate::discovery::Parameters::default(),
            )
            .expect("build registered base-asset transfer plan");
            let (public, private) = transfer
                .transfer_public_private(
                    &test_keys::FULL_VIEWING_KEY,
                    &[state_commitment_proof],
                    anchor,
                    0,
                )
                .expect("derive registered base-asset transfer public/private inputs");

            assert_transfer_witness(public, private);
        }
    }
}
