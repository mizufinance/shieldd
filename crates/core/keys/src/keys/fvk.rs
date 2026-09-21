use anyhow::Context;
use ff::Field;
use group::{Group, GroupEncoding};
use rand_core::{CryptoRng, RngCore};
use reddsa::{sapling::SpendAuth, VerificationKey};
use serde::{Deserialize, Serialize};
use shieldd_sdk_crypto::{domains, encoding, poseidon, Fq, SubgroupPoint};

use shieldd_sdk_proto::{serializers::bech32str, shieldd::core::keys::v1 as pb, DomainType};

use crate::keys::wallet_id::WalletId;
use crate::PositionMetadataKey;
use crate::{ka, prf, Address, AddressView, BackreferenceKey};

use super::{AddressIndex, DiversifierKey, IncomingViewingKey, NullifierKey, OutgoingViewingKey};

/// The root viewing capability for all data related to a given spend authority.
#[derive(Clone, Serialize, Deserialize, PartialEq)]
#[serde(try_from = "pb::FullViewingKey", into = "pb::FullViewingKey")]
pub struct FullViewingKey {
    ak: VerificationKey<SpendAuth>,
    nk: NullifierKey,
    ovk: OutgoingViewingKey,
    ivk: IncomingViewingKey,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq, thiserror::Error)]
pub enum FullViewingKeyError {
    #[error("spend authorization key has an invalid Jubjub encoding")]
    InvalidAuthorizationKeyEncoding,
    #[error("spend authorization key is the Jubjub identity")]
    IdentityAuthorizationKey,
    #[error("derived incoming viewing key reduces to zero")]
    ZeroIncomingViewingKey,
}

impl FullViewingKey {
    /// Derive a shielded payment address with the given [`AddressIndex`].
    pub fn payment_address(&self, index: AddressIndex) -> Address {
        self.incoming().payment_address(index)
    }

    /// Derive a random ephemeral address.
    pub fn ephemeral_address<R: RngCore + CryptoRng>(
        &self,
        rng: R,
        address_index: AddressIndex,
    ) -> Address {
        self.incoming().ephemeral_address(rng, address_index)
    }

    /// Views the structure of the supplied address with this viewing key.
    pub fn view_address(&self, address: Address) -> AddressView {
        // The IVK cannot supply the wallet ID carried by a decoded address.
        if self.incoming().views_address(&address) {
            AddressView::Decoded {
                index: self.incoming().index_for_diversifier(address.diversifier()),
                wallet_id: self.wallet_id(),
                address,
            }
        } else {
            AddressView::Opaque { address }
        }
    }

    /// Returns the index of the given address, if the address is viewed by this
    /// viewing key; otherwise, returns `None`.
    pub fn address_index(&self, address: &Address) -> Option<AddressIndex> {
        self.incoming().address_index(address)
    }

    /// Construct a full viewing key from its components.
    pub fn from_components(
        ak: VerificationKey<SpendAuth>,
        nk: NullifierKey,
    ) -> Result<Self, FullViewingKeyError> {
        let point = encoding::point(&ak.into())
            .map_err(|_| FullViewingKeyError::InvalidAuthorizationKeyEncoding)?;
        let coordinates = shieldd_sdk_crypto::coordinates(&point);
        let ivk_mod_q = poseidon::hash(
            domains::INCOMING_VIEWING_KEY,
            &[
                nk.0,
                encoding::field(&coordinates.x).expect("coordinate"),
                encoding::field(&coordinates.y).expect("coordinate"),
            ],
        );
        Self::from_components_with_ivk_hash(ak, nk, ivk_mod_q)
    }

    fn from_components_with_ivk_hash(
        ak: VerificationKey<SpendAuth>,
        nk: NullifierKey,
        ivk_mod_q: Fq,
    ) -> Result<Self, FullViewingKeyError> {
        if <[u8; 32]>::from(ak) == SubgroupPoint::identity().to_bytes() {
            return Err(FullViewingKeyError::IdentityAuthorizationKey);
        }

        let ovk = {
            let hash_result =
                prf::expand(b"ShielddDeriveOVK", &nk.0.to_bytes(), &<[u8; 32]>::from(ak));
            let mut ovk = [0; 32];
            ovk.copy_from_slice(&hash_result.as_bytes()[0..32]);
            ovk
        };

        let dk = {
            let hash_result =
                prf::expand(b"Shieldd_DeriveDK", &nk.0.to_bytes(), &<[u8; 32]>::from(ak));
            let mut dk = [0; 16];
            dk.copy_from_slice(&hash_result.as_bytes()[0..16]);
            dk
        };

        let ivk_mod_r = encoding::reduce_scalar(&ivk_mod_q);
        if bool::from(ivk_mod_r.is_zero()) {
            return Err(FullViewingKeyError::ZeroIncomingViewingKey);
        }
        let ivk = ka::Secret::from_scalar(ivk_mod_r).expect("nonzero canonical scalar");

        let dk = DiversifierKey(dk);
        let ovk = OutgoingViewingKey(ovk);
        let ivk = IncomingViewingKey { ivk, dk };

        Ok(Self { ak, nk, ovk, ivk })
    }

    /// Returns the incoming viewing key for this full viewing key.
    pub fn incoming(&self) -> &IncomingViewingKey {
        &self.ivk
    }

    /// Returns the outgoing viewing key for this full viewing key.
    pub fn outgoing(&self) -> &OutgoingViewingKey {
        &self.ovk
    }

    pub fn nullifier_key(&self) -> &NullifierKey {
        &self.nk
    }

    /// Returns the spend verification key contained in this full viewing key.
    pub fn spend_verification_key(&self) -> &VerificationKey<SpendAuth> {
        &self.ak
    }

    /// Construct the backreference key for this full viewing key.
    pub fn backref_key(&self) -> BackreferenceKey {
        BackreferenceKey::derive(self.outgoing()).clone()
    }

    /// Construct a position metadata key for this full viewing key.
    pub fn position_metadata_key(&self) -> PositionMetadataKey {
        PositionMetadataKey::derive(self.outgoing())
    }

    /// Hashes the full viewing key into an [`WalletId`].
    pub fn wallet_id(&self) -> WalletId {
        let hash = prf::expand(
            b"Shieldd_HashFVK1",
            &self.nk.0.to_bytes(),
            &<[u8; 32]>::from(self.ak),
        );
        WalletId(hash.as_bytes()[..32].try_into().expect("32-byte digest"))
    }
}

impl Eq for FullViewingKey {}

impl TryFrom<&[u8]> for FullViewingKey {
    type Error = anyhow::Error;

    fn try_from(value: &[u8]) -> Result<Self, Self::Error> {
        if value.len() != 65 {
            anyhow::bail!("Wrong byte length, expected 65 but found {}", value.len());
        }

        anyhow::ensure!(
            value[0] == shieldd_sdk_crypto::SUITE,
            "unsupported viewing key suite"
        );
        let ak_bytes: [u8; 32] = value[1..33].try_into().context("fvk wrong length")?;
        let nk_bytes: [u8; 32] = value[33..65].try_into().context("fvk wrong length")?;

        let ak = ak_bytes.try_into()?;
        let nk = NullifierKey(
            encoding::field(&nk_bytes).context("could not deserialize nullifier key")?,
        );

        Ok(FullViewingKey::from_components(ak, nk)?)
    }
}

impl DomainType for FullViewingKey {
    type Proto = pb::FullViewingKey;
}

impl TryFrom<pb::FullViewingKey> for FullViewingKey {
    type Error = anyhow::Error;

    fn try_from(value: pb::FullViewingKey) -> Result<Self, Self::Error> {
        Self::try_from(value.inner.as_slice())
    }
}

impl From<FullViewingKey> for pb::FullViewingKey {
    fn from(value: FullViewingKey) -> pb::FullViewingKey {
        let mut inner = Vec::with_capacity(65);
        inner.push(shieldd_sdk_crypto::SUITE);
        inner.extend_from_slice(&<[u8; 32]>::from(value.ak));
        inner.extend_from_slice(&value.nk.0.to_bytes());
        pb::FullViewingKey { inner }
    }
}

impl std::fmt::Display for FullViewingKey {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        let proto = pb::FullViewingKey::from(self.clone());
        f.write_str(&bech32str::encode(
            &proto.inner,
            bech32str::full_viewing_key::BECH32_PREFIX,
            bech32str::Bech32m,
        ))
    }
}

impl std::fmt::Debug for FullViewingKey {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        <Self as std::fmt::Display>::fmt(self, f)
    }
}

impl std::str::FromStr for FullViewingKey {
    type Err = anyhow::Error;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        pb::FullViewingKey {
            inner: bech32str::decode(
                s,
                bech32str::full_viewing_key::BECH32_PREFIX,
                bech32str::Bech32m,
            )?,
        }
        .try_into()
    }
}

#[cfg(test)]
mod tests {
    use reddsa::VerificationKeyBytes;

    use super::*;

    #[test]
    fn full_viewing_key_rejects_identity_authorization_key() {
        let identity = VerificationKey::<SpendAuth>::try_from(
            VerificationKeyBytes::<SpendAuth>::from(SubgroupPoint::identity().to_bytes()),
        )
        .expect("the underlying verification-key type admits the identity");

        assert_eq!(
            FullViewingKey::from_components(identity, NullifierKey(Fq::from(1u64))),
            Err(FullViewingKeyError::IdentityAuthorizationKey)
        );
    }

    #[test]
    fn full_viewing_key_rejects_zero_reduced_incoming_viewing_key() {
        let ak = *crate::test_keys::FULL_VIEWING_KEY.spend_verification_key();
        assert_eq!(
            FullViewingKey::from_components_with_ivk_hash(
                ak,
                NullifierKey(Fq::from(1u64)),
                Fq::ZERO,
            ),
            Err(FullViewingKeyError::ZeroIncomingViewingKey)
        );
    }

    #[test]
    fn full_viewing_key_accepts_valid_components() {
        let known = crate::test_keys::FULL_VIEWING_KEY.clone();
        let rebuilt = FullViewingKey::from_components(
            *known.spend_verification_key(),
            *known.nullifier_key(),
        )
        .expect("known components satisfy all full viewing key invariants");
        assert_eq!(rebuilt, known);
    }
    #[test]
    fn native_viewing_key_matches_pari_relation() {
        use shieldd_sdk_circuits::{
            authorization, encoding as circuit_encoding, group, hash::Parameters,
        };
        let params = Parameters::load().unwrap();
        for seed in [0u8, 1, 127, 255] {
            let spend =
                crate::keys::SpendKey::try_from(crate::keys::SpendKeyBytes([seed; 32])).unwrap();
            let fvk = spend.full_viewing_key();
            let point = encoding::nonidentity(&(*fvk.spend_verification_key()).into()).unwrap();
            let expected = authorization::viewing_key(
                &params,
                &circuit_encoding::field(&fvk.nk.0),
                &group::native_point(&point),
            );
            assert_eq!(
                circuit_encoding::native_field(&expected.remainder).to_bytes(),
                fvk.incoming().to_bytes()
            );
            let address = fvk.payment_address(3u32.into());
            let ivk = encoding::scalar(&fvk.incoming().to_bytes()).unwrap();
            assert_eq!(
                address.diversified_generator() * ivk,
                *address.transmission_point()
            );
        }
    }

    #[test]
    fn full_viewing_key_rejects_non_subgroup_authorization_key() {
        let torsion = (-Fq::ONE).to_bytes();
        let ak = VerificationKey::<SpendAuth>::try_from(torsion)
            .expect("RedDSA admits small order points");
        assert_eq!(
            FullViewingKey::from_components(ak, NullifierKey(Fq::ONE)),
            Err(FullViewingKeyError::InvalidAuthorizationKeyEncoding)
        );
        assert!(crate::ensure_nonidentity_spend_auth_key(&ak, "spend authorization").is_err());
    }
}
