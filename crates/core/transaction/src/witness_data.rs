use std::collections::BTreeMap;

use serde::{Deserialize, Serialize};
use shieldd_sdk_proto::{core::transaction::v1 as pb, DomainType};
use shieldd_sdk_tct as tct;

#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(try_from = "pb::WitnessData", into = "pb::WitnessData")]
pub struct WitnessData {
    pub anchor: tct::Root,
    pub state_commitment_proofs: BTreeMap<tct::Position, tct::Proof>,
}

impl WitnessData {
    /// Validate occurrence identity and the admitted anchor before proof construction.
    pub fn proof(
        &self,
        position: tct::Position,
        commitment: tct::StateCommitment,
    ) -> anyhow::Result<tct::Proof> {
        let proof = self
            .state_commitment_proofs
            .get(&position)
            .ok_or_else(|| anyhow::anyhow!("missing proof for position {position:?}"))?;
        anyhow::ensure!(
            proof.position() == position && proof.commitment() == commitment,
            "witness occurrence does not match the planned input"
        );
        proof.verify(self.anchor)?;
        Ok(proof.clone())
    }
}

impl DomainType for WitnessData {
    type Proto = pb::WitnessData;
}

impl From<WitnessData> for pb::WitnessData {
    fn from(msg: WitnessData) -> Self {
        Self {
            anchor: Some(msg.anchor.into()),
            state_commitment_proofs: msg
                .state_commitment_proofs
                .into_values()
                .map(|v| v.into())
                .collect(),
        }
    }
}

impl TryFrom<pb::WitnessData> for WitnessData {
    type Error = anyhow::Error;

    fn try_from(msg: pb::WitnessData) -> Result<Self, Self::Error> {
        let mut state_commitment_proofs = BTreeMap::new();
        for proof in msg.state_commitment_proofs {
            let tct_proof: tct::Proof = proof.try_into()?;
            anyhow::ensure!(
                state_commitment_proofs
                    .insert(tct_proof.position(), tct_proof)
                    .is_none(),
                "duplicate witness position"
            );
        }
        Ok(Self {
            anchor: msg
                .anchor
                .ok_or_else(|| anyhow::anyhow!("missing anchor"))?
                .try_into()?,
            state_commitment_proofs,
        })
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn duplicate_contents_have_distinct_checked_witnesses_and_codec_positions() {
        let cm = tct::StateCommitment(shieldd_sdk_crypto::Fq::from(7u64));
        let mut tree = tct::Tree::new();
        let positions = [
            tree.insert(tct::Witness::Keep, cm).unwrap(),
            tree.insert(tct::Witness::Keep, cm).unwrap(),
        ];
        let data = WitnessData {
            anchor: tree.root(),
            state_commitment_proofs: positions
                .into_iter()
                .map(|p| (p, tree.witness(p).unwrap()))
                .collect(),
        };
        for position in positions {
            assert_eq!(data.proof(position, cm).unwrap().position(), position);
        }
        assert!(data
            .proof(
                positions[0],
                tct::StateCommitment(shieldd_sdk_crypto::Fq::from(8u64))
            )
            .is_err());
        let wire: pb::WitnessData = data.clone().into();
        let decoded = WitnessData::try_from(wire.clone()).unwrap();
        assert_eq!(decoded.state_commitment_proofs.len(), 2);
        let mut duplicate = wire;
        duplicate
            .state_commitment_proofs
            .push(duplicate.state_commitment_proofs[0].clone());
        assert!(WitnessData::try_from(duplicate)
            .unwrap_err()
            .to_string()
            .contains("duplicate witness position"));
        let mut misplaced = data.clone();
        misplaced.state_commitment_proofs.insert(
            positions[0],
            data.state_commitment_proofs[&positions[1]].clone(),
        );
        assert!(misplaced.proof(positions[0], cm).is_err());
        let mut stale = data;
        tree.insert(tct::Witness::Forget, cm).unwrap();
        stale.anchor = tree.root();
        assert!(stale.proof(positions[0], cm).is_err());
    }
}
