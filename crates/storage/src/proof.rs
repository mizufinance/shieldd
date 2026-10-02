use anyhow::{ensure, Result};
use bitvec::prelude::*;
use nomt_core::{
    hasher::{Sha2Hasher, ValueHasher},
    proof::PathProof,
    trie::LeafData,
};

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct AuthenticatedValue {
    pub root: [u8; 32],
    pub key: [u8; 32],
    pub value: Option<[u8; 32]>,
}

/// A path proof must confirm the expected value or absence, in addition to its root.
pub fn authenticate(
    proof: &PathProof,
    root: [u8; 32],
    key: [u8; 32],
    value: Option<&[u8]>,
) -> Result<AuthenticatedValue> {
    let verified = proof
        .verify::<Sha2Hasher>(key.view_bits::<Msb0>(), root)
        .map_err(|e| anyhow::anyhow!("invalid authenticated path: {e:?}"))?;
    let value = value.map(Sha2Hasher::hash_value);
    let matches = match value {
        Some(value_hash) => verified.confirm_value(&LeafData {
            key_path: key,
            value_hash,
        }),
        None => verified.confirm_nonexistence(&key),
    }
    .map_err(|e| anyhow::anyhow!("key outside authenticated path: {e:?}"))?;
    ensure!(matches, "authenticated value or absence mismatch");
    Ok(AuthenticatedValue { root, key, value })
}

/// Detached participant proof. The verifier receives the native commitment from
/// its existing SDK/IBC trust boundary, rather than trusting this manifest.
#[derive(Clone, Debug)]
pub struct StateProof {
    pub manifest: crate::Manifest,
    pub participant: u32,
    pub key: [u8; 32],
    pub value: Option<Vec<u8>>,
    pub path: PathProof,
}
#[derive(Clone, PartialEq, prost::Message)]
struct ProofRecord {
    #[prost(bytes = "vec", tag = "1")]
    manifest: Vec<u8>,
    #[prost(uint32, tag = "2")]
    participant: u32,
    #[prost(bytes = "vec", tag = "3")]
    key: Vec<u8>,
    #[prost(bool, tag = "4")]
    present: bool,
    #[prost(bytes = "vec", tag = "5")]
    value: Vec<u8>,
    #[prost(bool, tag = "6")]
    leaf: bool,
    #[prost(bytes = "vec", tag = "7")]
    terminal_key: Vec<u8>,
    #[prost(bytes = "vec", tag = "8")]
    terminal_value: Vec<u8>,
    #[prost(bytes = "vec", repeated, tag = "9")]
    siblings: Vec<Vec<u8>>,
}
impl StateProof {
    pub fn verify_application(
        &self,
        sdk_anchor: [u8; 32],
        space: crate::Space,
        original_key: &[u8],
        full_value: Option<&[u8]>,
    ) -> Result<()> {
        ensure!(
            space != crate::Space::Order && !original_key.is_empty(),
            "invalid application proof key"
        );
        self.verify(sdk_anchor, 0, crate::application_key(space, original_key))?;
        let expected = full_value.map(|value| crate::ValueCommitment::new(value).encode().to_vec());
        ensure!(
            self.value == expected,
            "application bytes or checked length differ from the proven commitment"
        );
        Ok(())
    }

    pub fn verify(&self, sdk_anchor: [u8; 32], participant: u32, key: [u8; 32]) -> Result<()> {
        ensure!(
            self.manifest.digest()? == sdk_anchor,
            "native proof is not anchored in SDK state"
        );
        ensure!(
            self.participant == participant && self.key == key,
            "native proof identity mismatch"
        );
        let root = self
            .manifest
            .participants
            .get(participant as usize)
            .ok_or_else(|| anyhow::anyhow!("native proof participant is absent"))?
            .root;
        ensure!(
            self.path.siblings.len() <= 256,
            "native proof depth exceeded"
        );
        authenticate(&self.path, root, key, self.value.as_deref())?;
        Ok(())
    }
    pub fn encode(&self) -> Result<Vec<u8>> {
        use nomt_core::proof::PathProofTerminal;
        use prost::Message;
        self.verify(self.manifest.digest()?, self.participant, self.key)?;
        let (leaf, terminal_key, terminal_value) = match &self.path.terminal {
            PathProofTerminal::Leaf(value) => {
                (true, value.key_path.to_vec(), value.value_hash.to_vec())
            }
            PathProofTerminal::Terminator(position) => {
                (false, position.raw_path().to_vec(), vec![])
            }
        };
        Ok(ProofRecord {
            manifest: self.manifest.encode()?,
            participant: self.participant,
            key: self.key.to_vec(),
            present: self.value.is_some(),
            value: self.value.clone().unwrap_or_default(),
            leaf,
            terminal_key,
            terminal_value,
            siblings: self.path.siblings.iter().map(|s| s.to_vec()).collect(),
        }
        .encode_to_vec())
    }
    pub fn decode(bytes: &[u8]) -> Result<Self> {
        use nomt_core::{proof::PathProofTerminal, trie_pos::TriePosition};
        use prost::Message;
        ensure!(bytes.len() <= 32 * 1024, "native proof size exceeded");
        let record = ProofRecord::decode(bytes)?;
        ensure!(
            record.encode_to_vec() == bytes,
            "noncanonical native proof encoding"
        );
        ensure!(
            record.present || record.value.is_empty(),
            "absent native proof has a value"
        );
        ensure!(record.siblings.len() <= 256, "native proof depth exceeded");
        fn hash(bytes: Vec<u8>) -> Result<[u8; 32]> {
            bytes
                .try_into()
                .map_err(|_| anyhow::anyhow!("native proof hash is not 32 bytes"))
        }
        let key = hash(record.key)?;
        let siblings = record
            .siblings
            .into_iter()
            .map(hash)
            .collect::<Result<Vec<_>>>()?;
        let terminal_key = hash(record.terminal_key)?;
        let terminal = if record.leaf {
            PathProofTerminal::Leaf(LeafData {
                key_path: terminal_key,
                value_hash: hash(record.terminal_value)?,
            })
        } else {
            ensure!(record.terminal_value.is_empty(), "terminator has leaf data");
            let position = if siblings.is_empty() {
                TriePosition::new()
            } else {
                TriePosition::from_bitslice(&key.view_bits::<Msb0>()[..siblings.len()])
            };
            ensure!(
                position.raw_path() == terminal_key,
                "noncanonical terminal path"
            );
            PathProofTerminal::Terminator(position)
        };
        let proof = Self {
            manifest: crate::Manifest::decode(&record.manifest)?,
            participant: record.participant,
            key,
            value: record.present.then_some(record.value),
            path: PathProof { terminal, siblings },
        };
        proof.verify(proof.manifest.digest()?, proof.participant, proof.key)?;
        Ok(proof)
    }
}
