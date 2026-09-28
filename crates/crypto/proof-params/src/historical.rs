//! Canonical nullifier-history claims verified by the configured native Pari registry.
use crate::pari::{Registry, Verification};
use anyhow::{ensure, Result};
use commonware_parallel::Sequential;
use shieldd_sdk_circuits::{
    encoding::field,
    hash::Parameters,
    history,
    proof::{BatchItem, Envelope, Family},
};
use shieldd_sdk_crypto::encoding;

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct GenerationClaim {
    pub protocol_version: u32,
    pub nullifier: [u8; 32],
    pub generation_index: u64,
    pub generation_root: [u8; 32],
    pub generation_start_position: u64,
    pub generation_end_position: u64,
    pub start_history_head: [u8; 32],
    pub end_history_head: [u8; 32],
}
impl GenerationClaim {
    pub fn verification(self, proof: &[u8]) -> Result<Verification> {
        Ok(Verification {
            family: Family::HistoryGeneration,
            statement: self.statement()?.digest(Parameters::load()?),
            envelope: Envelope::from_bytes(proof)?,
        })
    }
    pub fn statement(self) -> Result<history::GenerationStatement> {
        ensure!(
            self.protocol_version == history::VERSION,
            "unsupported history version"
        );
        ensure!(
            self.generation_start_position <= self.generation_end_position
                && self.generation_end_position < (1u64 << 48),
            "invalid history position range"
        );
        Ok(history::GenerationStatement {
            version: self.protocol_version,
            nullifier: field(&encoding::field(&self.nullifier)?),
            index: self.generation_index,
            root: field(&encoding::field(&self.generation_root)?),
            start_position: self.generation_start_position,
            end_position: self.generation_end_position,
            start_head: field(&encoding::field(&self.start_history_head)?),
            end_head: field(&encoding::field(&self.end_history_head)?),
        })
    }
}
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct ChunkClaim {
    pub protocol_version: u32,
    pub nullifier: [u8; 32],
    pub chunk_index: u64,
    pub start_history_head: [u8; 32],
    pub end_history_head: [u8; 32],
}
impl ChunkClaim {
    pub fn verification(self, proof: &[u8]) -> Result<Verification> {
        Ok(Verification {
            family: Family::HistoryChunk,
            statement: self.statement()?.digest(Parameters::load()?),
            envelope: Envelope::from_bytes(proof)?,
        })
    }
    pub fn statement(self) -> Result<history::ChunkStatement> {
        ensure!(
            self.protocol_version == history::VERSION,
            "unsupported history version"
        );
        let statement = history::ChunkStatement {
            version: self.protocol_version,
            nullifier: field(&encoding::field(&self.nullifier)?),
            index: self.chunk_index,
            start_head: field(&encoding::field(&self.start_history_head)?),
            end_head: field(&encoding::field(&self.end_history_head)?),
        };
        ensure!(
            statement.generation_indices().is_some(),
            "history generation index overflow"
        );
        Ok(statement)
    }
}
pub fn verify_generation(registry: &Registry, claim: GenerationClaim, proof: &[u8]) -> Result<()> {
    let item = claim.verification(proof)?;
    registry.verify(item.family, &item.statement, &item.envelope)
}
pub fn verify_chunk(registry: &Registry, claim: ChunkClaim, proof: &[u8]) -> Result<()> {
    let item = claim.verification(proof)?;
    registry.verify(item.family, &item.statement, &item.envelope)
}

// Bound temporary memory and the work before rejecting an invalid batch.
const BATCH_SIZE: usize = 32;

/// Bounded, exact-family verification for one transaction's historical inputs.
/// Callers must propagate every error and finish before issuing any receipt.
pub struct BatchVerifier<'a> {
    registry: &'a Registry,
    chunks: Vec<Verification>,
    generations: Vec<Verification>,
    #[cfg(test)]
    checks: Vec<(Family, usize)>,
}

impl<'a> BatchVerifier<'a> {
    pub fn new(registry: &'a Registry) -> Self {
        Self {
            registry,
            chunks: Vec::new(),
            generations: Vec::new(),
            #[cfg(test)]
            checks: Vec::new(),
        }
    }

    pub fn push(&mut self, item: Verification) -> Result<()> {
        let pending = match item.family {
            Family::HistoryChunk => &mut self.chunks,
            Family::HistoryGeneration => &mut self.generations,
            _ => anyhow::bail!("non-historical proof in history batch"),
        };
        pending.push(item);
        if pending.len() == BATCH_SIZE {
            #[cfg(test)]
            self.checks.push((pending[0].family, pending.len()));
            Self::flush(self.registry, pending)?;
        }
        Ok(())
    }

    pub fn finish(mut self) -> Result<()> {
        Self::flush(self.registry, &mut self.chunks)?;
        Self::flush(self.registry, &mut self.generations)
    }

    fn flush(registry: &Registry, pending: &mut Vec<Verification>) -> Result<()> {
        match pending.as_slice() {
            [] => return Ok(()),
            [item] => registry.verify(item.family, &item.statement, &item.envelope)?,
            items => {
                let batch = items
                    .iter()
                    .map(|item| BatchItem {
                        envelope: &item.envelope,
                        statement: &item.statement,
                    })
                    .collect::<Vec<_>>();
                registry.verify_batch(items[0].family, &batch, &Sequential)?;
            }
        }
        pending.clear();
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    #[ignore = "requires local Pari keys and real historical proofs"]
    fn historical_batches_bind_every_item_across_flush_boundaries() -> Result<()> {
        use commonware_cryptography::bls12381::primitives::group::Scalar;
        use shieldd_sdk_circuits::{catalogue::Witness, encoding::native_field, tree};
        let registry = Registry::load(std::env::var("SHIELDD_PARI_KEYS")?)?;
        let parameters = Parameters::load()?;
        let start = parameters.native(shieldd_sdk_crypto::domains::HISTORY_EMPTY, &[]);
        let mut head = start.clone();
        let generations: [history::GenerationWitness; history::CHUNK_SIZE] =
            std::array::from_fn(|i| {
                let leaf = history::Leaf {
                    value: Scalar::from(0),
                    next_index: 0,
                    next_value: Scalar::from(0),
                    lower_sentinel: true,
                    terminal: true,
                };
                let path = tree::Path {
                    position: Scalar::from(0),
                    siblings: std::array::from_fn(|_| std::array::from_fn(|_| Scalar::from(0))),
                };
                let mut statement = history::GenerationStatement {
                    version: history::VERSION,
                    nullifier: Scalar::from(9),
                    index: i as u64,
                    root: tree::native_root(
                        parameters,
                        tree::Tree::History,
                        leaf.commitment(parameters),
                        0,
                        &path.siblings,
                    ),
                    start_position: 0,
                    end_position: 0,
                    start_head: head.clone(),
                    end_head: Scalar::from(0),
                };
                statement.end_head = statement.history_head(parameters);
                head = statement.end_head.clone();
                history::GenerationWitness {
                    statement,
                    leaf,
                    path,
                }
            });
        let generation = generations[0].clone();
        let statement = &generation.statement;
        let bytes = |scalar: &Scalar| native_field(scalar).to_bytes();
        let generation_claim = GenerationClaim {
            protocol_version: history::VERSION,
            nullifier: bytes(&statement.nullifier),
            generation_index: statement.index,
            generation_root: bytes(&statement.root),
            generation_start_position: 0,
            generation_end_position: 0,
            start_history_head: bytes(&statement.start_head),
            end_history_head: bytes(&statement.end_head),
        };
        let chunk_claim = ChunkClaim {
            protocol_version: history::VERSION,
            nullifier: bytes(&statement.nullifier),
            chunk_index: 0,
            start_history_head: bytes(&start),
            end_history_head: bytes(&head),
        };
        let generation_proof = registry
            .prove(
                &Witness::HistoryGeneration(Box::new(generation)),
                crate::pari::proving_strategy()?,
            )?
            .to_bytes();
        let chunk_proof = registry
            .prove(
                &Witness::HistoryChunk(Box::new(history::ChunkWitness {
                    statement: chunk_claim.statement()?,
                    generations,
                })),
                crate::pari::proving_strategy()?,
            )?
            .to_bytes();
        verify_generation(&registry, generation_claim, &generation_proof)?;
        verify_chunk(&registry, chunk_claim, &chunk_proof)?;
        let items = [
            generation_claim.verification(&generation_proof)?,
            chunk_claim.verification(&chunk_proof)?,
        ];
        BatchVerifier::new(&registry).finish()?;
        for item in &items {
            for count in [1, 2, 32, 33] {
                let mut verifier = BatchVerifier::new(&registry);
                for _ in 0..count {
                    verifier.push(item.clone())?;
                }
                assert_eq!(verifier.checks, vec![(item.family, 32); count / 32]);
                assert_eq!(
                    verifier.chunks.len() + verifier.generations.len(),
                    count % 32
                );
                verifier.finish()?;
            }
            // Keep the encoding and claim intact; fail cryptographic verification itself.
            let mut bad = item.clone();
            let mut encoded = bad.envelope.to_bytes();
            *encoded.last_mut().unwrap() ^= 1;
            bad.envelope = Envelope::from_bytes(&encoded)?;
            assert!(registry
                .verify(bad.family, &bad.statement, &bad.envelope)
                .is_err());
            for at in [0, 30, 31, 32] {
                let result = (|| -> Result<()> {
                    let mut verifier = BatchVerifier::new(&registry);
                    for index in 0..33 {
                        verifier.push(if index == at {
                            bad.clone()
                        } else {
                            item.clone()
                        })?;
                    }
                    verifier.finish()
                })();
                let error = result.unwrap_err().to_string();
                assert_eq!(
                    error,
                    if at == 32 {
                        "invalid Pari proof"
                    } else {
                        "invalid Pari proof batch"
                    },
                    "invalid item at {at} must reach the appropriate verifier"
                );
            }
            let mut wrong_statement = item.clone();
            wrong_statement.statement = Scalar::from(0);
            let mut verifier = BatchVerifier::new(&registry);
            verifier.push(item.clone())?;
            verifier.push(wrong_statement)?;
            assert!(verifier
                .finish()
                .unwrap_err()
                .to_string()
                .contains("wrong proof statement"));

            let mut wrong_family = item.clone();
            wrong_family.family = if item.family == Family::HistoryChunk {
                Family::HistoryGeneration
            } else {
                Family::HistoryChunk
            };
            let mut verifier = BatchVerifier::new(&registry);
            verifier.push(wrong_family)?;
            assert!(verifier
                .finish()
                .unwrap_err()
                .to_string()
                .contains("wrong proof family"));
            assert!(item
                .envelope
                .verify(
                    item.family,
                    registry.verifying_key(Family::Transfer)?,
                    &item.statement,
                )
                .unwrap_err()
                .to_string()
                .contains("wrong proof relation"));
        }
        // A successfully flushed family must not hide a later failure in another family.
        let mut verifier = BatchVerifier::new(&registry);
        for _ in 0..32 {
            verifier.push(items[0].clone())?;
        }
        let mut bad = items[1].clone();
        bad.statement = Scalar::from(0);
        verifier.push(bad)?;
        assert!(verifier.finish().is_err());
        Ok(())
    }
    #[test]
    fn history_claims_reject_noncanonical_fields_versions_and_ranges() {
        let generation = GenerationClaim {
            protocol_version: history::VERSION,
            nullifier: [0; 32],
            generation_index: 0,
            generation_root: [0; 32],
            generation_start_position: 0,
            generation_end_position: 1,
            start_history_head: [0; 32],
            end_history_head: [0; 32],
        };
        assert!(generation.statement().is_ok());
        for bad in [
            GenerationClaim {
                protocol_version: 2,
                ..generation
            },
            GenerationClaim {
                nullifier: [255; 32],
                ..generation
            },
            GenerationClaim {
                generation_root: [255; 32],
                ..generation
            },
            GenerationClaim {
                generation_start_position: 2,
                ..generation
            },
            GenerationClaim {
                generation_end_position: 1u64 << 48,
                ..generation
            },
        ] {
            assert!(bad.statement().is_err());
        }
        let chunk = ChunkClaim {
            protocol_version: history::VERSION,
            nullifier: [0; 32],
            chunk_index: 0,
            start_history_head: [0; 32],
            end_history_head: [0; 32],
        };
        assert!(chunk.statement().is_ok());
        assert!(ChunkClaim {
            chunk_index: u64::MAX,
            ..chunk
        }
        .statement()
        .is_err());
        assert!(ChunkClaim {
            end_history_head: [255; 32],
            ..chunk
        }
        .statement()
        .is_err());
    }
}
