//! Strict application framing around Commonware's claim-bound proofs.
use anyhow::{Result, ensure};
use commonware_codec::{Encode, RangeCfg, Read};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    transcript::{Transcript, Version},
    zk::{
        circuit::ValuedCircuit,
        pari::{self, Claim, InputLayout, Opening, Proof, ProvingKey, Relation, VerifyingKey},
    },
};
use commonware_parallel::Strategy;
use shieldd_sdk_crypto::SUITE;

#[derive(
    Clone, Copy, Debug, Eq, PartialEq, Ord, PartialOrd, Hash, serde::Serialize, serde::Deserialize,
)]
#[serde(rename_all = "snake_case")]
#[repr(u8)]
pub enum Family {
    Transfer = 1,
    ReshapeOneToEight = 2,
    ReshapeEightToOne = 3,
    Withdrawal = 4,
    Seizure = 5,
    Disclosure = 6,
    HistoryGeneration = 7,
    HistoryChunk = 8,
    DisclosureOne = 9,
}

impl Family {
    pub const ALL: [Self; 9] = [
        Self::Transfer,
        Self::ReshapeOneToEight,
        Self::ReshapeEightToOne,
        Self::Withdrawal,
        Self::Seizure,
        Self::Disclosure,
        Self::HistoryGeneration,
        Self::HistoryChunk,
        Self::DisclosureOne,
    ];
    pub const fn label(self) -> &'static str {
        match self {
            Self::Transfer => "transfer",
            Self::ReshapeOneToEight => "reshape1x8",
            Self::ReshapeEightToOne => "reshape8x1",
            Self::Withdrawal => "withdrawal",
            Self::Seizure => "seizure",
            Self::Disclosure => "disclosure32",
            Self::DisclosureOne => "disclosure1",
            Self::HistoryGeneration => "history_generation",
            Self::HistoryChunk => "history_chunk10",
        }
    }
}

impl TryFrom<u8> for Family {
    type Error = anyhow::Error;

    fn try_from(value: u8) -> Result<Self> {
        Ok(match value {
            1 => Self::Transfer,
            2 => Self::ReshapeOneToEight,
            3 => Self::ReshapeEightToOne,
            4 => Self::Withdrawal,
            5 => Self::Seizure,
            6 => Self::Disclosure,
            7 => Self::HistoryGeneration,
            8 => Self::HistoryChunk,
            9 => Self::DisclosureOne,
            _ => anyhow::bail!("unknown proof family"),
        })
    }
}

#[derive(Clone, Debug)]
pub struct Envelope {
    family: Family,
    relation: [u8; 32],
    claim: Claim,
    proof: Proof,
}

// One suite, one family, one relation digest, one public scalar, one commitment,
// two G1 proof elements, one response scalar, and two one-byte vector lengths.
pub const ENCODED_LEN: usize = 244;

fn transcript(family: Family) -> Transcript {
    let mut transcript = Transcript::new(b"shieldd.pari.proof.v1", Version::V1);
    transcript.commit([SUITE, family as u8].as_slice());
    transcript
}

impl Envelope {
    pub fn family(&self) -> Family {
        self.family
    }

    pub fn from_bytes(bytes: &[u8]) -> Result<Self> {
        ensure!(bytes.len() == ENCODED_LEN, "invalid Pari envelope length");
        ensure!(bytes[0] == SUITE, "unsupported cryptographic suite");
        let family = Family::try_from(bytes[1])?;
        let relation = bytes[2..34].try_into()?;
        let mut input = &bytes[34..];
        let claim = Claim::read_cfg(&mut input, &(RangeCfg::exact(1), RangeCfg::exact(1)))?;
        let proof = Proof::read_cfg(&mut input, &())?;
        ensure!(input.is_empty(), "trailing Pari proof bytes");
        Ok(Self {
            family,
            relation,
            claim,
            proof,
        })
    }

    pub fn to_bytes(&self) -> Vec<u8> {
        let mut bytes = Vec::with_capacity(ENCODED_LEN);
        bytes.extend([SUITE, self.family as u8]);
        bytes.extend(self.relation);
        bytes.extend(self.claim.encode());
        bytes.extend(self.proof.encode());
        debug_assert_eq!(bytes.len(), ENCODED_LEN);
        bytes
    }

    pub fn prove(
        family: Family,
        prover: &ProvingKey,
        relation: &Relation,
        layout: &InputLayout,
        values: ValuedCircuit<Scalar>,
        strategy: &impl Strategy,
    ) -> Result<Self> {
        ensure!(
            relation.public_inputs() == 1 && relation.blocks() == [1],
            "Shieldd relations require one statement digest and one committed witness value"
        );
        ensure!(
            prover.verifying_key().matches_relation(relation),
            "wrong proving key"
        );
        let mut rng = rand10::rand_core::UnwrapErr(rand10::rngs::SysRng);
        let witness = relation.witness(&values, layout, vec![Opening::random(&mut rng)])?;
        drop(values);
        let claim = witness.claim(prover.commitment_keys(), strategy)?;
        let proof = pari::prove(
            &mut rng,
            &mut transcript(family),
            prover,
            relation,
            &claim,
            &witness,
            strategy,
        )?;
        Ok(Self {
            family,
            relation: *relation.digest(),
            claim,
            proof,
        })
    }

    fn check_context(&self, family: Family, key: &VerifyingKey, statement: &Scalar) -> Result<()> {
        ensure!(self.family == family, "wrong proof family");
        ensure!(
            &self.relation == key.relation_digest(),
            "wrong proof relation"
        );
        ensure!(
            self.claim.public_inputs.as_slice() == [statement.clone()]
                && self.claim.commitments.len() == 1,
            "wrong proof statement"
        );
        Ok(())
    }

    /// The caller selects the key from its local registry, never from the message.
    pub fn verify(&self, family: Family, key: &VerifyingKey, statement: &Scalar) -> Result<()> {
        self.check_context(family, key, statement)?;
        ensure!(
            pari::verify(&mut transcript(family), key, &self.claim, &self.proof),
            "invalid Pari proof"
        );
        Ok(())
    }
}

pub struct BatchItem<'a> {
    pub envelope: &'a Envelope,
    pub statement: &'a Scalar,
}

/// Verifies one family under one exact local key, with fresh CSPRNG coefficients.
pub fn verify_batch(
    family: Family,
    key: &VerifyingKey,
    items: &[BatchItem<'_>],
    strategy: &impl Strategy,
) -> Result<()> {
    ensure!(!items.is_empty(), "empty proof batch");
    for item in items {
        item.envelope.check_context(family, key, item.statement)?;
    }
    let entries: Vec<_> = items
        .iter()
        .map(|item| (item.envelope.claim.clone(), item.envelope.proof.clone()))
        .collect();
    let mut transcripts: Vec<_> = items.iter().map(|_| transcript(family)).collect();
    ensure!(
        pari::batch_verify(
            &mut rand10::rand_core::UnwrapErr(rand10::rngs::SysRng),
            &mut transcripts,
            key,
            &entries,
            strategy
        ),
        "invalid Pari proof batch"
    );
    Ok(())
}
