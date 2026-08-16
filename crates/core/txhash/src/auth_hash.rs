/// A hash of a transaction's _authorizing data_, describing both its effects on
/// the chain state as well as the cryptographic authorization of those effects.
///
/// In practice this is simply a hash of the `TransactionBody`.
///
/// A nonidentity aggregate binding key signs the transaction's `AuthHash`
/// using the action balance-commitment randomness. Identity is an explicit
/// no-binding mode only for transactions without shielded proofs; those
/// transactions rely on their action-specific authorization.
#[derive(Clone, Copy, Eq, PartialEq)]
pub struct AuthHash(pub [u8; 32]);

impl std::fmt::Debug for AuthHash {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_tuple("AuthHash")
            .field(&hex::encode(self.0))
            .finish()
    }
}

impl AuthHash {
    pub fn as_bytes(&self) -> &[u8] {
        &self.0[..]
    }
}

pub trait AuthorizingData {
    fn auth_hash(&self) -> AuthHash;
}
