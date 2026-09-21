//! The core [`Hash`](struct@Hash) type, which is used internally to represent hashes, the
//! [`GetHash`] trait for computing and caching hashes of things, and the [`CachedHash`] type, which
//! is used internally for lazy evaluation of hashes.

use std::{
    fmt::{self, Debug, Formatter},
    ops::RangeInclusive,
};

use ff::Field;
use once_cell::sync::Lazy;
use serde::{Deserialize, Serialize};
use shieldd_sdk_crypto::{domains, poseidon, Fq};

use crate::prelude::*;

mod cache;
pub use cache::CachedHash;

/// A type which can be transformed into a [`struct@Hash`], either by retrieving a cached hash, computing a
/// hash for it, or some combination of both.
pub trait GetHash {
    /// Get the hash of this item.
    ///
    /// # Correctness
    ///
    /// This function must return the same hash for the same item. It is permissible to use internal
    /// mutability to cache hashes, but caching must ensure that the item cannot be mutated without
    /// recalculating the hash.
    fn hash(&self) -> Hash;

    /// Get the hash of this item, only if the hash is already cached and does not require
    /// recalculation.
    ///
    /// # Correctness
    ///
    /// It will not cause correctness issues to return a hash after recalculating it, but users of
    /// this function expect it to be reliably fast, so it may cause unexpected performance issues
    /// if this function performs any significant work.
    fn cached_hash(&self) -> Option<Hash>;

    /// If there is a hash cached, clear the cache.
    ///
    /// By default, this does nothing. Override this if there is a cache.
    fn clear_cached_hash(&self) {}
}

impl<T: GetHash> GetHash for &T {
    #[inline]
    fn hash(&self) -> Hash {
        (**self).hash()
    }

    #[inline]
    fn cached_hash(&self) -> Option<Hash> {
        (**self).cached_hash()
    }
}

impl<T: GetHash> GetHash for &mut T {
    #[inline]
    fn hash(&self) -> Hash {
        (**self).hash()
    }

    #[inline]
    fn cached_hash(&self) -> Option<Hash> {
        (**self).cached_hash()
    }
}

/// The hash of an individual [`Commitment`] or internal node in the tree.
#[derive(Clone, Copy, PartialEq, Eq)]
pub struct Hash(Option<Fq>);

impl std::hash::Hash for Hash {
    fn hash<H: std::hash::Hasher>(&self, state: &mut H) {
        std::hash::Hash::hash(&self.0.map(|value| value.to_bytes()), state);
    }
}
impl Serialize for Hash {
    fn serialize<S: serde::Serializer>(&self, serializer: S) -> Result<S::Ok, S::Error> {
        let value = self
            .0
            .as_ref()
            .ok_or_else(|| <S::Error as serde::ser::Error>::custom("uninitialized tree hash"))?;
        crate::storage::serialize::fq::serialize(value, serializer)
    }
}
impl<'de> Deserialize<'de> for Hash {
    fn deserialize<D: serde::Deserializer<'de>>(deserializer: D) -> Result<Self, D::Error> {
        crate::storage::serialize::fq::deserialize(deserializer).map(Self::new)
    }
}

impl From<Hash> for Fq {
    #[inline]
    fn from(hash: Hash) -> Self {
        hash.0.expect("initialized tree hash")
    }
}

impl Debug for Hash {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> Result<(), std::fmt::Error> {
        if *self == Hash::zero() {
            write!(f, "0")
        } else if *self == Hash::one() {
            write!(f, "1")
        } else if *self == Hash::uninitialized() {
            write!(f, "!")
        } else {
            write!(f, "{}", hex::encode(self.to_bytes()))
        }
    }
}

#[allow(unused)]
impl Hash {
    /// Create a hash from an arbitrary [`Fq`].
    pub fn new(fq: Fq) -> Self {
        Self(Some(fq))
    }

    /// Get an array of bytes representing the hash
    pub fn to_bytes(self) -> [u8; 32] {
        Fq::from(self).to_bytes()
    }

    /// Decode a hash from bytes representing it
    pub fn from_bytes(bytes: [u8; 32]) -> anyhow::Result<Self> {
        Ok(Self::new(shieldd_sdk_crypto::encoding::field(&bytes)?))
    }

    /// The zero hash, used for padding of frontier nodes.
    pub fn zero() -> Hash {
        Self::new(Fq::ZERO)
    }

    /// Checks if the hash is zero.
    pub fn is_zero(&self) -> bool {
        self.0 == Some(Fq::ZERO)
    }

    /// The one hash, used for padding of complete nodes.
    pub fn one() -> Hash {
        Self::new(Fq::ONE)
    }

    /// Checks if the hash is one.
    pub fn is_one(&self) -> bool {
        self.0 == Some(Fq::ONE)
    }

    /// Marks nodes that still require reconstruction from durable storage.
    pub(crate) fn uninitialized() -> Hash {
        Self(None)
    }

    pub(crate) fn is_uninitialized(&self) -> bool {
        self.0.is_none()
    }

    /// Hash an individual commitment to be inserted into the tree.
    #[inline]
    pub fn of(item: StateCommitment) -> Hash {
        Self::new(item.0)
    }

    /// Construct a hash for an internal node of the tree, given its height and the hashes of its
    /// four children.
    #[inline]
    pub fn node(height: u8, a: Hash, b: Hash, c: Hash, d: Hash) -> Hash {
        // Definition of hash of node without cache optimization
        fn hash_node(height: u8, a: Hash, b: Hash, c: Hash, d: Hash) -> Hash {
            Hash::new(poseidon::hash(
                domains::STATE_TREE,
                &[
                    Fq::from(u64::from(height)),
                    a.into(),
                    b.into(),
                    c.into(),
                    d.into(),
                ],
            ))
        }

        // The range of hashes to precompute: this captures hashes starting at the first internal node
        // above the epoch leaf, and up to the epoch root. These are the only useful hashes to
        // precompute, because commitments are expected to be cryptographically random, so
        // precomputing internal hashes within blocks won't save work, and epochs are extremely
        // unlikely to be entirely filled with empty blocks. However, in the middle, we can save
        // work by remembering how to hash power-of-4-aligned sequences of empty blocks.
        const PRECOMPUTE_HEIGHTS: RangeInclusive<u8> = 9..=16;

        const TOTAL_PRECOMPUTED: usize =
            *PRECOMPUTE_HEIGHTS.end() as usize - *PRECOMPUTE_HEIGHTS.start() as usize + 1;

        // Precompute internal node hashes lying above sequences of empty blocks within epochs
        static PRECOMPUTED_HASH_PAIRS: Lazy<[(Hash, Hash); TOTAL_PRECOMPUTED]> = Lazy::new(|| {
            let mut hashes: Vec<(Hash, Hash)> = Vec::with_capacity(PRECOMPUTE_HEIGHTS.len());

            for height in PRECOMPUTE_HEIGHTS {
                let below = hashes.last().map(|below| below.1).unwrap_or_else(Hash::one);
                hashes.push((below, hash_node(height, below, below, below, below)));
            }

            hashes
                .try_into()
                .expect("precomputed hashes should be the right length")
        });

        // If the height is in the range of the precomputed hashes, check if all the inputs are
        // equal to the singular precomputed input for that height, and return the output if so
        if PRECOMPUTE_HEIGHTS.contains(&height) {
            let index = usize::from(height - PRECOMPUTE_HEIGHTS.start());
            let (input, output) = PRECOMPUTED_HASH_PAIRS[index];
            if [a, b, c, d] == [input, input, input, input] {
                debug_assert_eq!(
                    output,
                    hash_node(height, a, b, c, d),
                    "precomputed hash mismatched calculated hash"
                );
                return output;
            }
        }

        // Otherwise, hash the node normally
        hash_node(height, a, b, c, d)
    }
}

/// A version tracking when a particular piece of the tree was explicitly forgotten.
#[derive(
    Derivative,
    Clone,
    Copy,
    PartialEq,
    Eq,
    PartialOrd,
    Ord,
    std::hash::Hash,
    Serialize,
    Deserialize,
    Default,
)]
#[cfg_attr(any(test, feature = "arbitrary"), derive(proptest_derive::Arbitrary))]
#[serde(from = "u64", into = "u64")]
pub struct Forgotten([u8; 6]);

impl Debug for Forgotten {
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result {
        write!(f, "{}", u64::from(*self))
    }
}

impl Forgotten {
    /// Get the next forgotten-version after this one.
    pub fn next(&self) -> Self {
        Self::from(
            u64::from(*self)
                .checked_add(1)
                .expect("forgotten should never overflow"),
        )
    }
}

impl From<Forgotten> for u64 {
    fn from(forgotten: Forgotten) -> Self {
        let mut eight_bytes = <[u8; 8]>::default();
        for (in_byte, out_byte) in eight_bytes.iter_mut().zip(forgotten.0) {
            *in_byte = out_byte;
        }

        u64::from_le_bytes(eight_bytes)
    }
}

impl From<u64> for Forgotten {
    fn from(u: u64) -> Self {
        let bytes = u.to_le_bytes();

        let mut six_bytes = [0; 6];
        for (in_byte, out_byte) in six_bytes.iter_mut().zip(&bytes[..6]) {
            *in_byte = *out_byte;
        }

        Self(six_bytes)
    }
}

#[cfg(any(test, feature = "arbitrary"))]
mod arbitrary {
    use shieldd_sdk_crypto::Fq;

    use super::Hash;

    impl proptest::arbitrary::Arbitrary for Hash {
        type Parameters = ();

        fn arbitrary_with(_args: Self::Parameters) -> Self::Strategy {
            HashStrategy
        }

        type Strategy = HashStrategy;
    }

    #[derive(Clone, Copy, Debug, PartialEq, Eq, Default)]
    pub struct HashStrategy;

    impl proptest::strategy::Strategy for HashStrategy {
        type Tree = proptest::strategy::Just<Hash>;

        type Value = Hash;

        fn new_tree(
            &self,
            runner: &mut proptest::test_runner::TestRunner,
        ) -> proptest::strategy::NewTree<Self> {
            use proptest::prelude::RngCore;
            let rng = runner.rng();
            let mut bytes = [0u8; 32];
            rng.fill_bytes(&mut bytes);
            Ok(proptest::strategy::Just(Hash::new(Fq::from_bytes_wide(&{
                let mut wide = [0; 64];
                wide[..32].copy_from_slice(&bytes);
                wide
            }))))
        }
    }
}

#[cfg(test)]
mod test {
    #[test]
    fn forgotten_increments() {
        use super::Forgotten;

        let mut last = Forgotten::default();
        for _ in 0..10 {
            let next = last.next();
            assert_eq!(u64::from(next), u64::from(last) + 1);
            last = next;
        }
    }
}
