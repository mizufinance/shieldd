use decaf377::Fq;
use serde::{Deserialize, Serialize};

/// Public routing material used to derive note-discovery tags.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Serialize, Deserialize)]
pub struct DiscoveryKey(pub [u8; 32]);

impl DiscoveryKey {
    /// Derives canonical discovery-key bytes from arbitrary key material.
    pub fn derive(key_material: &[u8]) -> Self {
        Self(Fq::from_le_bytes_mod_order(key_material).to_bytes())
    }
}
