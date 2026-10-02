use crate::{Cache, ValueCommitment};
use anyhow::{ensure, Result};
use prost::Message;
use sha2::{Digest, Sha256};

/// Persisted key spaces are separate from local derived indexes and metadata.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
#[repr(u8)]
pub enum Space {
    Application = 0,
    Raw = 1,
    Order = 2,
    Archive = 3,
    Native = 4,
}
impl TryFrom<u32> for Space {
    type Error = anyhow::Error;
    fn try_from(value: u32) -> Result<Self> {
        match value {
            0 => Ok(Self::Application),
            1 => Ok(Self::Raw),
            2 => Ok(Self::Order),
            3 => Ok(Self::Archive),
            4 => Ok(Self::Native),
            _ => anyhow::bail!("unknown canonical key space"),
        }
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Effect {
    pub space: Space,
    pub key: Vec<u8>,
    pub value: Option<Vec<u8>>,
}

#[derive(Clone, PartialEq, Message)]
struct Record {
    #[prost(uint32, tag = "1")]
    space: u32,
    #[prost(bytes = "vec", tag = "2")]
    key: Vec<u8>,
    #[prost(bool, tag = "3")]
    present: bool,
    #[prost(bytes = "vec", tag = "4")]
    value: Vec<u8>,
}
#[derive(Clone, PartialEq, Message)]
struct Records {
    #[prost(message, repeated, tag = "1")]
    effects: Vec<Record>,
}

/// Exact sorted effects, including derived authenticated ordering updates.
/// Local indexes, checkpoints and physical deletion never enter this record.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Effects(pub Vec<Effect>);
impl Effects {
    pub fn from_cache(cache: &Cache) -> Self {
        let mut effects = Self(
            cache
                .unwritten_changes()
                .map(|(key, value)| Effect {
                    space: Space::Application,
                    key: key.as_bytes().to_vec(),
                    value: value.as_ref().map(|v| v.to_vec()),
                })
                .chain(cache.nonverifiable_changes().map(|(key, value)| Effect {
                    space: if crate::archive::height(key).is_some() {
                        Space::Archive
                    } else if crate::native::tree(key).is_some() {
                        Space::Native
                    } else {
                        Space::Raw
                    },
                    key: key.clone(),
                    value: value.as_ref().map(|v| v.to_vec()),
                }))
                .collect(),
        );
        effects
            .0
            .sort_by(|a, b| (a.space, &a.key).cmp(&(b.space, &b.key)));
        effects
    }
    pub fn validate(&self) -> Result<()> {
        let mut previous = None;
        for effect in &self.0 {
            ensure!(!effect.key.is_empty(), "empty persisted keys are reserved");
            if effect.space == Space::Native {
                ensure!(
                    crate::native::tree(&effect.key).is_some(),
                    "unknown derived native node key"
                );
            }
            if effect.space == Space::Application {
                std::str::from_utf8(&effect.key)?;
            }
            let key = (effect.space, effect.key.as_slice());
            ensure!(
                previous.is_none_or(|p| p < key),
                "effects are not strictly ordered"
            );
            previous = Some(key);
        }
        Ok(())
    }
    pub fn encode(&self) -> Result<Vec<u8>> {
        self.validate()?;
        Ok(Records {
            effects: self
                .0
                .iter()
                .filter(|e| e.space != Space::Native)
                .map(|e| Record {
                    space: e.space as u32,
                    key: e.key.clone(),
                    present: e.value.is_some(),
                    value: e.value.clone().unwrap_or_default(),
                })
                .collect(),
        }
        .encode_to_vec())
    }
    pub fn decode(bytes: &[u8]) -> Result<Self> {
        let records = Records::decode(bytes)?;
        ensure!(
            records.encode_to_vec() == bytes,
            "noncanonical effects encoding"
        );
        let result = Self(
            records
                .effects
                .into_iter()
                .map(|r| {
                    ensure!(
                        r.present || r.value.is_empty(),
                        "deleted effect contains bytes"
                    );
                    let space = Space::try_from(r.space)?;
                    ensure!(
                        space != Space::Native,
                        "derived native records cannot enter canonical effects"
                    );
                    Ok(Effect {
                        space,
                        key: r.key,
                        value: r.present.then_some(r.value),
                    })
                })
                .collect::<Result<Vec<_>>>()?,
        );
        result.validate()?;
        Ok(result)
    }
    pub fn digest(&self) -> Result<[u8; 32]> {
        let mut hash = Sha256::new();
        hash.update(b"shieldd.effects.v1\0");
        hash.update(self.encode()?);
        Ok(hash.finalize().into())
    }
}

pub(crate) fn storage_key(space: Space, key: &[u8]) -> Vec<u8> {
    let mut result = Vec::with_capacity(1 + key.len());
    result.push(space as u8);
    result.extend_from_slice(key);
    result
}
pub fn application_key(space: Space, key: &[u8]) -> [u8; 32] {
    let mut hash = Sha256::new();
    hash.update(b"shieldd.application-key.v1\0");
    hash.update([space as u8]);
    hash.update(key);
    hash.finalize().into()
}
pub(crate) fn committed_value(value: Option<&[u8]>) -> Option<Vec<u8>> {
    value.map(|v| ValueCommitment::new(v).encode().to_vec())
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn native_proof_nodes_and_cleanup_do_not_change_canonical_effects() {
        let canonical = Effects(vec![Effect {
            space: Space::Application,
            key: b"root".to_vec(),
            value: Some(vec![1]),
        }]);
        let mut derived = canonical.clone();
        derived.0.push(Effect {
            space: Space::Native,
            key: b"sct/tree/incremental/hash/00000000000000000000/000".to_vec(),
            value: Some(vec![2]),
        });
        assert_eq!(derived.digest().unwrap(), canonical.digest().unwrap());
        assert_eq!(
            Effects::decode(&derived.encode().unwrap()).unwrap(),
            canonical
        );
        derived.0[1].value = None;
        assert_eq!(derived.digest().unwrap(), canonical.digest().unwrap());
    }
    #[test]
    fn canonical_effects_distinguish_deletion_empty_values_and_namespaces() {
        let effects = Effects(vec![
            Effect {
                space: Space::Application,
                key: b"a".to_vec(),
                value: None,
            },
            Effect {
                space: Space::Raw,
                key: b"a".to_vec(),
                value: Some(vec![]),
            },
        ]);
        let encoded = effects.encode().unwrap();
        assert_eq!(Effects::decode(&encoded).unwrap(), effects);
        let mut bad = encoded;
        bad.extend_from_slice(&[0x10, 1]);
        assert!(Effects::decode(&bad).is_err());
        assert_ne!(
            application_key(Space::Application, b"a"),
            application_key(Space::Raw, b"a")
        );
        let mut reversed = effects;
        reversed.0.reverse();
        assert!(reversed.encode().is_err());
    }
}
