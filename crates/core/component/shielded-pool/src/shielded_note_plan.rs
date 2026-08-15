use decaf377::Fr;
use decaf377_rdsa::{SpendAuth, VerificationKey};
use rand_core::{CryptoRng, RngCore};
use serde::{Deserialize, Serialize};
use shieldd_sdk_asset::{Balance, Value};
use shieldd_sdk_compliance::{AssetPolicy, MerklePath};
use shieldd_sdk_keys::{keys::IncomingViewingKey, Address, FullViewingKey};
use shieldd_sdk_proto::core::component::shielded_pool::v1 as pb;
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_tct as tct;
use std::convert::{TryFrom, TryInto};

use crate::{Backref, Note, Rseed, TransferInputBody};

// Bare shielded plan constructors are used heavily by tests, vector generation,
// and mock flows before wallet code overwrites the target timestamp with a live
// value. Keep the placeholder non-zero so downstream compliance metadata remains
// structurally valid; stateful freshness checks will still reject stale values.
const DEFAULT_PLACEHOLDER_TARGET_TIMESTAMP: u64 = 1_700_000_000;

#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(try_from = "pb::ShieldedInputPlan", into = "pb::ShieldedInputPlan")]
pub struct ShieldedInputPlan {
    pub note: Note,
    pub position: tct::Position,
    pub randomizer: Fr,
    pub value_blinding: Fr,
    pub compliance_path: MerklePath,
    #[serde(skip)]
    pub compliance_leaf: Option<shieldd_sdk_compliance::ComplianceLeaf>,
    #[serde(skip)]
    pub is_regulated: bool,
    #[serde(skip)]
    pub tx_blinding_nonce: Fr,
    #[serde(skip)]
    pub compliance_anchor: tct::StateCommitment,
    #[serde(skip)]
    pub asset_anchor: tct::StateCommitment,
    #[serde(skip)]
    pub asset_path: MerklePath,
    #[serde(skip)]
    pub asset_position: u64,
    #[serde(skip)]
    pub asset_indexed_leaf: shieldd_sdk_compliance::IndexedLeaf,
    #[serde(skip)]
    pub compliance_position: u64,
    #[serde(skip)]
    pub target_timestamp: u64,
    #[serde(skip)]
    pub asset_policy: Option<AssetPolicy>,
}

impl ShieldedInputPlan {
    /// Normalize the sender leaf used by the transfer-level compliance proof.
    pub fn set_compliance_details(&mut self) -> anyhow::Result<()> {
        let compliance_leaf = if self.is_regulated {
            self.compliance_leaf.clone().ok_or_else(|| {
                anyhow::anyhow!("regulated shielded input missing registered compliance leaf")
            })?
        } else {
            shieldd_sdk_compliance::ComplianceLeaf::synthetic_unregulated(
                self.note.address().clone(),
                self.note.asset_id(),
            )
        };

        self.compliance_leaf = Some(compliance_leaf);

        Ok(())
    }

    pub fn new<R: CryptoRng + RngCore>(
        rng: &mut R,
        note: Note,
        position: tct::Position,
    ) -> ShieldedInputPlan {
        let compliance_leaf = shieldd_sdk_compliance::ComplianceLeaf::synthetic_unregulated(
            note.address().clone(),
            note.asset_id(),
        );

        let (compliance_anchor, compliance_path, compliance_position) =
            shieldd_sdk_compliance::default_user_proof(&compliance_leaf);
        let (asset_anchor, asset_indexed_leaf, asset_path, asset_position) =
            shieldd_sdk_compliance::create_default_imt_proof(note.asset_id().0);

        ShieldedInputPlan {
            note,
            position,
            randomizer: Fr::rand(rng),
            value_blinding: Fr::rand(rng),
            compliance_path,
            compliance_leaf: Some(compliance_leaf),
            is_regulated: false,
            tx_blinding_nonce: Fr::rand(rng),
            compliance_anchor,
            asset_anchor,
            asset_path,
            asset_position,
            asset_indexed_leaf,
            compliance_position,
            target_timestamp: DEFAULT_PLACEHOLDER_TARGET_TIMESTAMP,
            asset_policy: None,
        }
    }

    pub fn action_input_body(
        &self,
        fvk: &FullViewingKey,
        recent_position_floor: u64,
    ) -> anyhow::Result<TransferInputBody> {
        let backref = Backref::new(self.note.commit());
        let encrypted_backref = backref.encrypt(&fvk.backref_key(), &self.nullifier(fvk));

        Ok(TransferInputBody {
            nullifier: self.nullifier(fvk),
            rk: self.rk(fvk),
            encrypted_backref,
            compliance_ciphertext: Vec::new(),
            history_required: shieldd_sdk_sct::nullifier_generation::is_old(
                u64::from(self.position),
                recent_position_floor,
            )?,
        })
    }

    pub fn rk(&self, fvk: &FullViewingKey) -> VerificationKey<SpendAuth> {
        fvk.spend_verification_key().randomize(&self.randomizer)
    }

    pub fn nullifier(&self, fvk: &FullViewingKey) -> Nullifier {
        let nk = fvk.nullifier_key();
        Nullifier::derive(nk, self.position, &self.note.commit())
    }

    pub fn balance(&self) -> Balance {
        Value {
            amount: self.note.value().amount,
            asset_id: self.note.value().asset_id,
        }
        .into()
    }
}

#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(try_from = "pb::ShieldedOutputPlan", into = "pb::ShieldedOutputPlan")]
pub struct ShieldedOutputPlan {
    pub value: Value,
    pub dest_address: Address,
    pub rseed: Rseed,
    pub value_blinding: Fr,
    pub compliance_path: MerklePath,
    #[serde(skip)]
    pub compliance_leaf: Option<shieldd_sdk_compliance::ComplianceLeaf>,
    #[serde(skip)]
    pub is_regulated: bool,
    #[serde(skip)]
    pub tx_blinding_nonce: Fr,
    #[serde(skip)]
    pub compliance_anchor: tct::StateCommitment,
    #[serde(skip)]
    pub asset_anchor: tct::StateCommitment,
    #[serde(skip)]
    pub asset_path: MerklePath,
    #[serde(skip)]
    pub asset_position: u64,
    #[serde(skip)]
    pub asset_indexed_leaf: shieldd_sdk_compliance::IndexedLeaf,
    #[serde(skip)]
    pub compliance_position: u64,
    #[serde(skip)]
    pub target_timestamp: u64,
    #[serde(skip)]
    pub asset_policy: Option<AssetPolicy>,
}

impl ShieldedOutputPlan {
    /// Set the recipient leaf and transaction nonce used by the transfer proof.
    pub fn set_compliance_details(
        &mut self,
        recipient_leaf: &shieldd_sdk_compliance::ComplianceLeaf,
        tx_blinding_nonce: Fr,
    ) -> anyhow::Result<()> {
        let note = self.output_note();

        let compliance_leaf = if self.is_regulated {
            recipient_leaf.clone()
        } else {
            shieldd_sdk_compliance::ComplianceLeaf::synthetic_unregulated(
                self.dest_address.clone(),
                note.asset_id(),
            )
        };

        self.compliance_leaf = Some(compliance_leaf);
        self.tx_blinding_nonce = tx_blinding_nonce;

        Ok(())
    }

    pub fn new<R: RngCore + CryptoRng>(
        rng: &mut R,
        value: Value,
        dest_address: Address,
    ) -> ShieldedOutputPlan {
        let rseed = Rseed::generate(rng);
        let value_blinding = Fr::rand(rng);
        let compliance_leaf = shieldd_sdk_compliance::ComplianceLeaf::synthetic_unregulated(
            dest_address.clone(),
            value.asset_id,
        );

        let (compliance_anchor, compliance_path, compliance_position) =
            shieldd_sdk_compliance::default_user_proof(&compliance_leaf);
        let (asset_anchor, asset_indexed_leaf, asset_path, asset_position) =
            shieldd_sdk_compliance::create_default_imt_proof(value.asset_id.0);
        let tx_blinding_nonce = Fr::rand(rng);

        ShieldedOutputPlan {
            value,
            dest_address,
            rseed,
            value_blinding,
            compliance_path,
            compliance_leaf: Some(compliance_leaf.clone()),
            is_regulated: false,
            tx_blinding_nonce,
            compliance_anchor,
            asset_anchor,
            asset_path,
            asset_position,
            asset_indexed_leaf,
            compliance_position,
            target_timestamp: DEFAULT_PLACEHOLDER_TARGET_TIMESTAMP,
            asset_policy: None,
        }
    }

    pub fn output_note(&self) -> Note {
        Note::from_parts(self.dest_address.clone(), self.value, self.rseed)
            .expect("transmission key in address is always valid")
    }

    pub fn is_viewed_by(&self, ivk: &IncomingViewingKey) -> bool {
        ivk.views_address(&self.dest_address)
    }

    pub fn balance(&self) -> Balance {
        -Balance::from(self.value)
    }
}

impl From<ShieldedInputPlan> for pb::ShieldedInputPlan {
    fn from(msg: ShieldedInputPlan) -> Self {
        use crate::compliance_helpers::{compliance_leaf_to_proto, indexed_leaf_to_proto};

        Self {
            note: Some(msg.note.into()),
            position: u64::from(msg.position),
            randomizer: msg.randomizer.to_bytes().to_vec(),
            value_blinding: msg.value_blinding.to_bytes().to_vec(),
            target_timestamp: msg.target_timestamp,
            is_regulated: msg.is_regulated,
            compliance_leaf: msg
                .compliance_leaf
                .map(|leaf| compliance_leaf_to_proto(&leaf)),
            tx_blinding_nonce: msg.tx_blinding_nonce.to_bytes().to_vec(),
            compliance_anchor: Some(msg.compliance_anchor.into()),
            asset_anchor: Some(msg.asset_anchor.into()),
            compliance_path: Some(msg.compliance_path.into()),
            compliance_position: msg.compliance_position,
            asset_path: Some(msg.asset_path.into()),
            asset_position: msg.asset_position,
            asset_indexed_leaf: Some(indexed_leaf_to_proto(&msg.asset_indexed_leaf)),
            asset_policy: msg.asset_policy.map(Into::into),
        }
    }
}

impl TryFrom<pb::ShieldedInputPlan> for ShieldedInputPlan {
    type Error = anyhow::Error;

    fn try_from(msg: pb::ShieldedInputPlan) -> Result<Self, Self::Error> {
        use crate::compliance_helpers::{
            compliance_leaf_from_proto, parse_indexed_leaf, parse_merkle_path,
            parse_state_commitment, parse_tx_blinding_nonce,
        };

        let compliance_leaf = msg
            .compliance_leaf
            .map(|leaf| compliance_leaf_from_proto(leaf, "compliance leaf"))
            .transpose()?;
        let tx_blinding_nonce = parse_tx_blinding_nonce(&msg.tx_blinding_nonce)?;
        let compliance_anchor = parse_state_commitment(msg.compliance_anchor)?
            .ok_or_else(|| anyhow::anyhow!("missing compliance_anchor"))?;
        let asset_anchor = parse_state_commitment(msg.asset_anchor)?
            .ok_or_else(|| anyhow::anyhow!("missing asset_anchor"))?;
        let compliance_path = parse_merkle_path(msg.compliance_path)?
            .ok_or_else(|| anyhow::anyhow!("missing compliance_path"))?;
        let asset_path = parse_merkle_path(msg.asset_path)?
            .ok_or_else(|| anyhow::anyhow!("missing asset_path"))?;
        let asset_indexed_leaf = parse_indexed_leaf(msg.asset_indexed_leaf)?
            .ok_or_else(|| anyhow::anyhow!("missing asset_indexed_leaf"))?;

        Ok(Self {
            note: msg
                .note
                .ok_or_else(|| anyhow::anyhow!("missing note"))?
                .try_into()?,
            position: msg.position.into(),
            randomizer: Fr::from_bytes_checked(msg.randomizer.as_slice().try_into()?)
                .map_err(|_| anyhow::anyhow!("randomizer malformed"))?,
            value_blinding: Fr::from_bytes_checked(msg.value_blinding.as_slice().try_into()?)
                .map_err(|_| anyhow::anyhow!("value_blinding malformed"))?,
            compliance_path,
            compliance_leaf,
            is_regulated: msg.is_regulated,
            tx_blinding_nonce,
            compliance_anchor,
            asset_anchor,
            asset_path,
            asset_position: msg.asset_position,
            asset_indexed_leaf,
            compliance_position: msg.compliance_position,
            target_timestamp: msg.target_timestamp,
            asset_policy: msg.asset_policy.map(TryInto::try_into).transpose()?,
        })
    }
}

impl From<ShieldedOutputPlan> for pb::ShieldedOutputPlan {
    fn from(msg: ShieldedOutputPlan) -> Self {
        use crate::compliance_helpers::{compliance_leaf_to_proto, indexed_leaf_to_proto};

        Self {
            value: Some(msg.value.into()),
            dest_address: Some(msg.dest_address.into()),
            rseed: msg.rseed.0.to_vec(),
            value_blinding: msg.value_blinding.to_bytes().to_vec(),
            target_timestamp: msg.target_timestamp,
            is_regulated: msg.is_regulated,
            compliance_leaf: msg
                .compliance_leaf
                .map(|leaf| compliance_leaf_to_proto(&leaf)),
            tx_blinding_nonce: msg.tx_blinding_nonce.to_bytes().to_vec(),
            compliance_anchor: Some(msg.compliance_anchor.into()),
            asset_anchor: Some(msg.asset_anchor.into()),
            compliance_path: Some(msg.compliance_path.into()),
            compliance_position: msg.compliance_position,
            asset_path: Some(msg.asset_path.into()),
            asset_position: msg.asset_position,
            asset_indexed_leaf: Some(indexed_leaf_to_proto(&msg.asset_indexed_leaf)),
            asset_policy: msg.asset_policy.map(Into::into),
        }
    }
}

impl TryFrom<pb::ShieldedOutputPlan> for ShieldedOutputPlan {
    type Error = anyhow::Error;

    fn try_from(msg: pb::ShieldedOutputPlan) -> Result<Self, Self::Error> {
        use crate::compliance_helpers::{
            compliance_leaf_from_proto, parse_indexed_leaf, parse_merkle_path,
            parse_state_commitment, parse_tx_blinding_nonce,
        };

        let compliance_leaf = msg
            .compliance_leaf
            .map(|leaf| compliance_leaf_from_proto(leaf, "compliance leaf"))
            .transpose()?;
        let tx_blinding_nonce = parse_tx_blinding_nonce(&msg.tx_blinding_nonce)?;
        let compliance_anchor = parse_state_commitment(msg.compliance_anchor)?
            .ok_or_else(|| anyhow::anyhow!("missing compliance_anchor"))?;
        let asset_anchor = parse_state_commitment(msg.asset_anchor)?
            .ok_or_else(|| anyhow::anyhow!("missing asset_anchor"))?;
        let compliance_path = parse_merkle_path(msg.compliance_path)?
            .ok_or_else(|| anyhow::anyhow!("missing compliance_path"))?;
        let asset_path = parse_merkle_path(msg.asset_path)?
            .ok_or_else(|| anyhow::anyhow!("missing asset_path"))?;
        let asset_indexed_leaf = parse_indexed_leaf(msg.asset_indexed_leaf)?
            .ok_or_else(|| anyhow::anyhow!("missing asset_indexed_leaf"))?;

        Ok(Self {
            value: msg
                .value
                .ok_or_else(|| anyhow::anyhow!("missing value"))?
                .try_into()?,
            dest_address: msg
                .dest_address
                .ok_or_else(|| anyhow::anyhow!("missing dest_address"))?
                .try_into()?,
            rseed: Rseed(
                msg.rseed
                    .as_slice()
                    .try_into()
                    .map_err(|_| anyhow::anyhow!("rseed malformed"))?,
            ),
            value_blinding: Fr::from_bytes_checked(msg.value_blinding.as_slice().try_into()?)
                .map_err(|_| anyhow::anyhow!("value_blinding malformed"))?,
            compliance_path,
            compliance_leaf,
            is_regulated: msg.is_regulated,
            tx_blinding_nonce,
            compliance_anchor,
            asset_anchor,
            asset_path,
            asset_position: msg.asset_position,
            asset_indexed_leaf,
            compliance_position: msg.compliance_position,
            target_timestamp: msg.target_timestamp,
            asset_policy: msg.asset_policy.map(TryInto::try_into).transpose()?,
        })
    }
}

#[cfg(test)]
mod tests {
    use std::ops::Deref;

    use rand::{rngs::StdRng, SeedableRng};
    use rand_core::OsRng;
    use shieldd_sdk_asset::{Value, BASE_ASSET_DENOM};
    use shieldd_sdk_keys::test_keys;

    use super::*;

    fn fr_modulus_bytes() -> [u8; 32] {
        let mut modulus = (-Fr::from(1u64)).to_bytes();
        for byte in &mut modulus {
            let (next, carry) = byte.overflowing_add(1);
            *byte = next;
            if !carry {
                break;
            }
        }
        modulus
    }

    #[test]
    fn plan_proto_rejects_missing_nonce_and_noncanonical_scalars() {
        let value = Value {
            amount: 7u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        };
        let note = Note::generate(&mut OsRng, test_keys::ADDRESS_0.deref(), value);
        let input = ShieldedInputPlan::new(&mut OsRng, note, 0u64.into());

        let mut missing_nonce: pb::ShieldedInputPlan = input.clone().into();
        missing_nonce.tx_blinding_nonce.clear();
        ShieldedInputPlan::try_from(missing_nonce)
            .expect_err("an omitted transaction blinding nonce must fail");

        let mut invalid_randomizer: pb::ShieldedInputPlan = input.into();
        invalid_randomizer.randomizer = fr_modulus_bytes().to_vec();
        ShieldedInputPlan::try_from(invalid_randomizer)
            .expect_err("a non-canonical input randomizer must return an error");

        let output =
            ShieldedOutputPlan::new(&mut OsRng, value, test_keys::ADDRESS_0.deref().clone());
        let mut invalid_value_blinding: pb::ShieldedOutputPlan = output.into();
        invalid_value_blinding.value_blinding = fr_modulus_bytes().to_vec();
        ShieldedOutputPlan::try_from(invalid_value_blinding)
            .expect_err("a non-canonical output value blinding must return an error");
    }

    #[test]
    fn plan_proto_requires_authoritative_membership_facts() {
        let value = Value {
            amount: 7u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        };
        let note = Note::generate(&mut OsRng, test_keys::ADDRESS_0.deref(), value);
        let input: pb::ShieldedInputPlan =
            ShieldedInputPlan::new(&mut OsRng, note, 0u64.into()).into();
        let input_mutations: [(&str, fn(&mut pb::ShieldedInputPlan)); 5] = [
            ("compliance_anchor", |p| p.compliance_anchor = None),
            ("asset_anchor", |p| p.asset_anchor = None),
            ("compliance_path", |p| p.compliance_path = None),
            ("asset_path", |p| p.asset_path = None),
            ("asset_indexed_leaf", |p| p.asset_indexed_leaf = None),
        ];
        for (label, mutate) in input_mutations {
            let mut candidate = input.clone();
            mutate(&mut candidate);
            assert!(
                ShieldedInputPlan::try_from(candidate).is_err(),
                "missing input {label} must fail"
            );
        }

        let output: pb::ShieldedOutputPlan =
            ShieldedOutputPlan::new(&mut OsRng, value, test_keys::ADDRESS_0.deref().clone()).into();
        let output_mutations: [(&str, fn(&mut pb::ShieldedOutputPlan)); 5] = [
            ("compliance_anchor", |p| p.compliance_anchor = None),
            ("asset_anchor", |p| p.asset_anchor = None),
            ("compliance_path", |p| p.compliance_path = None),
            ("asset_path", |p| p.asset_path = None),
            ("asset_indexed_leaf", |p| p.asset_indexed_leaf = None),
        ];
        for (label, mutate) in output_mutations {
            let mut candidate = output.clone();
            mutate(&mut candidate);
            assert!(
                ShieldedOutputPlan::try_from(candidate).is_err(),
                "missing output {label} must fail"
            );
        }
    }

    #[test]
    fn honest_transfer_actions_use_independent_nonzero_nonce_roots() {
        let mut rng = StdRng::seed_from_u64(0x4e4f_4e43_455f_524f);
        let value = Value {
            amount: 7u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        };
        let nonce_roots = (0..3)
            .map(|position| {
                let note = Note::generate(&mut rng, test_keys::ADDRESS_0.deref(), value);
                ShieldedInputPlan::new(&mut rng, note, (position as u64).into()).tx_blinding_nonce
            })
            .collect::<Vec<_>>();

        assert!(
            nonce_roots.iter().all(|nonce| *nonce != Fr::from(0u64)),
            "honest ordinary and fee-funding construction must not reuse the neutral nonce root"
        );
        let distinct = nonce_roots.iter().collect::<std::collections::HashSet<_>>();
        assert_eq!(
            distinct.len(),
            nonce_roots.len(),
            "independent honest actions must draw independent nonce roots"
        );
    }
}
