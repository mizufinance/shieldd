//! [Payment address][Address] facilities.

use std::{
    fmt::Display,
    io::{Cursor, Read, Write},
};

use anyhow::Context;
use f4jumble::{f4jumble, f4jumble_inv};
use group::Group;
use rand::{CryptoRng, Rng};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use shieldd_sdk_crypto::SubgroupPoint;
use shieldd_sdk_proto::{serializers::bech32str, shieldd::core::keys::v1 as pb, DomainType};

mod view;
pub use view::AddressView;

use crate::{ka, keys::Diversifier};

pub const TRANSPARENT_ADDRESS_BECH32_PREFIX: &str = "tshieldd";

/// The length of an [`Address`] in bytes.
pub const ADDRESS_LEN_BYTES: usize = 49;

/// Number of bits in the address short form divided by the number of bits per Bech32m character
pub const ADDRESS_NUM_CHARS_SHORT_FORM: usize = 24;

/// A valid payment address.
#[derive(Clone, Eq, Serialize, Deserialize)]
#[serde(try_from = "pb::Address", into = "pb::Address")]
pub struct Address {
    /// The address diversifier.
    d: Diversifier,
    g_d: SubgroupPoint,
    pk_d: ka::Public,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq, thiserror::Error)]
pub enum AddressError {
    #[error("diversified generator is the Jubjub identity")]
    IdentityDiversifiedGenerator,
}

impl PartialEq for Address {
    fn eq(&self, other: &Self) -> bool {
        self.d == other.d && self.pk_d == other.pk_d
    }
}

impl std::cmp::PartialOrd for Address {
    fn partial_cmp(&self, other: &Self) -> Option<std::cmp::Ordering> {
        Some(self.to_vec().cmp(&other.to_vec()))
    }
}

impl std::cmp::Ord for Address {
    fn cmp(&self, other: &Self) -> std::cmp::Ordering {
        self.to_vec().cmp(&other.to_vec())
    }
}

impl std::hash::Hash for Address {
    fn hash<H: std::hash::Hasher>(&self, state: &mut H) {
        self.to_vec().hash(state)
    }
}

impl Address {
    /// Constructs a payment address from its components.
    ///
    /// Rejects identity generators, invalid points, and noncanonical or
    /// identity transmission keys.
    pub fn from_components(d: Diversifier, pk_d: ka::Public) -> Result<Self, AddressError> {
        let diversified_generator = d.diversified_generator();
        Self::from_components_with_diversified_generator(d, diversified_generator, pk_d)
    }

    fn from_components_with_diversified_generator(
        d: Diversifier,
        diversified_generator: SubgroupPoint,
        pk_d: ka::Public,
    ) -> Result<Self, AddressError> {
        if bool::from(diversified_generator.is_identity()) {
            return Err(AddressError::IdentityDiversifiedGenerator);
        }
        Ok(Self {
            d,
            g_d: diversified_generator,
            pk_d,
        })
    }

    /// Returns a reference to the address diversifier.
    pub fn diversifier(&self) -> &Diversifier {
        &self.d
    }

    pub fn diversified_generator(&self) -> &SubgroupPoint {
        &self.g_d
    }

    pub fn transmission_key(&self) -> &ka::Public {
        &self.pk_d
    }

    pub fn transmission_point(&self) -> &SubgroupPoint {
        self.pk_d.point()
    }

    /// Converts this address to a vector of bytes.
    pub fn to_vec(&self) -> Vec<u8> {
        let mut bytes = std::io::Cursor::new(Vec::new());
        bytes
            .write_all(&self.diversifier().0)
            .expect("can write diversifier into vec");
        bytes
            .write_all(&self.transmission_key().to_bytes())
            .expect("can write transmission key into vec");
        let mut encoded = vec![shieldd_sdk_crypto::SUITE];
        encoded.extend(f4jumble(bytes.get_ref()).expect("48-byte address payload"));
        encoded
    }

    /// Generates a randomized dummy address.
    pub fn dummy<R: CryptoRng + Rng>(rng: &mut R) -> Self {
        loop {
            let mut diversifier_bytes = [0u8; 16];
            rng.fill_bytes(&mut diversifier_bytes);

            let mut pk_d_bytes = [0u8; 32];
            rng.fill_bytes(&mut pk_d_bytes);

            let diversifier = Diversifier(diversifier_bytes);
            let Ok(public) = ka::Public::try_from(pk_d_bytes) else {
                continue;
            };
            let addr = Address::from_components(diversifier, public);

            if let Ok(addr) = addr {
                return addr;
            }
        }
    }

    /// Short form suitable for displaying in a UI.
    pub fn display_short_form(&self) -> String {
        let full_address = format!("{self}");
        let fixed_prefix = format!("{}{}", bech32str::address::BECH32_PREFIX, '1');
        let num_chars_to_display = fixed_prefix.len() + ADDRESS_NUM_CHARS_SHORT_FORM;

        format!("{}…", &full_address[0..num_chars_to_display])
    }

    /// Generate a Noble forwarding address.
    pub fn noble_forwarding_address(&self, channel: &str) -> NobleForwardingAddress {
        NobleForwardingAddress {
            channel: channel.to_string(),
            recipient: format!("{}", self),
        }
    }

    /// Encodes the address as a transparent address if it has the reserved zero diversifier.
    /// Returns `None` if the address doesn't meet the requirements for a transparent address.
    pub fn encode_as_transparent_address(&self) -> Option<String> {
        // Check if diversifier is zero
        if self.diversifier().0 != [0u8; 16] {
            return None;
        }

        // Encode the transmission key.
        Some(bech32str::encode(
            &[
                &[shieldd_sdk_crypto::SUITE][..],
                &self.transmission_key().to_bytes(),
            ]
            .concat(),
            TRANSPARENT_ADDRESS_BECH32_PREFIX,
            bech32str::Bech32,
        ))
    }
}

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct NobleForwardingAddress {
    pub channel: String,
    pub recipient: String,
}

impl NobleForwardingAddress {
    pub fn bytes(&self) -> Vec<u8> {
        // Based on https://github.com/noble-assets/forwarding/blob/9d7657a89a5d4c68a082f28629e759b60b39b0fd/types/account.go#L17
        let channel = self.channel.clone();
        let recipient = self.recipient.clone();
        let bz = format!("{channel}{recipient}").as_bytes().to_owned();
        let th = Sha256::digest("forwarding".as_bytes());
        let mut hasher = Sha256::new();
        hasher.update(th);
        hasher.update(bz);

        // This constructs the account bytes for the Noble forwarding address
        // Only use bytes 12 and on:
        hasher.finalize()[12..].to_vec()
    }
}

impl Display for NobleForwardingAddress {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        let addr_bytes = &self.bytes();

        write!(
            f,
            "{}",
            bech32str::encode(&addr_bytes, "noble", bech32str::Bech32)
        )
    }
}

impl DomainType for Address {
    type Proto = pb::Address;
}

impl From<Address> for pb::Address {
    fn from(a: Address) -> Self {
        Self::from(&a)
    }
}

impl From<&Address> for pb::Address {
    fn from(a: &Address) -> Self {
        pb::Address {
            inner: a.to_vec(),
            // Always produce encodings without the alt format.
            alt_bech32m: String::new(),
        }
    }
}

impl TryFrom<pb::Address> for Address {
    type Error = anyhow::Error;

    fn try_from(value: pb::Address) -> Result<Self, Self::Error> {
        match (value.inner.is_empty(), value.alt_bech32m.is_empty()) {
            (false, true) => value.inner.try_into(),
            (true, false) => value.alt_bech32m.parse(),
            (false, false) => Err(anyhow::anyhow!(
                "Address proto has both inner and alt_bech32m fields set"
            )),
            (true, true) => Err(anyhow::anyhow!(
                "Address proto has neither inner nor alt_bech32m fields set"
            )),
        }
    }
}

impl std::fmt::Display for Address {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        let proto_address = pb::Address::from(self);
        f.write_str(&bech32str::encode(
            &proto_address.inner,
            bech32str::address::BECH32_PREFIX,
            bech32str::Bech32m,
        ))
    }
}

impl std::fmt::Debug for Address {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        <Self as std::fmt::Display>::fmt(self, f)
    }
}

impl std::str::FromStr for Address {
    type Err = anyhow::Error;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        if s.starts_with(TRANSPARENT_ADDRESS_BECH32_PREFIX) {
            let dzero = Diversifier([0u8; 16]);

            let encoded =
                bech32str::decode(s, TRANSPARENT_ADDRESS_BECH32_PREFIX, bech32str::Bech32)?;
            anyhow::ensure!(
                encoded.len() == 33 && encoded[0] == shieldd_sdk_crypto::SUITE,
                "unsupported transparent address suite or length"
            );
            let pk_dzero = ka::Public::try_from(&encoded[1..])?;

            let address = Self::from_components(dzero, pk_dzero)
                .context("could not reconstruct transparent address")?;

            // Verify this is a valid transparent address, bailing if not
            if address.encode_as_transparent_address().is_none() {
                return Err(anyhow::anyhow!("invalid transparent address components"));
            }

            Ok(address)
        } else {
            pb::Address {
                inner: bech32str::decode(s, bech32str::address::BECH32_PREFIX, bech32str::Bech32m)?,
                alt_bech32m: String::new(),
            }
            .try_into()
        }
    }
}

impl TryFrom<Vec<u8>> for Address {
    type Error = anyhow::Error;

    fn try_from(jumbled_vec: Vec<u8>) -> Result<Self, Self::Error> {
        (&jumbled_vec[..]).try_into()
    }
}

impl TryFrom<&Vec<u8>> for Address {
    type Error = anyhow::Error;

    fn try_from(jumbled_vec: &Vec<u8>) -> Result<Self, Self::Error> {
        (jumbled_vec[..]).try_into()
    }
}

impl TryFrom<&[u8]> for Address {
    type Error = anyhow::Error;

    fn try_from(jumbled_bytes: &[u8]) -> Result<Self, Self::Error> {
        if jumbled_bytes.len() != ADDRESS_LEN_BYTES {
            anyhow::bail!("address malformed");
        }

        anyhow::ensure!(
            jumbled_bytes[0] == shieldd_sdk_crypto::SUITE,
            "unsupported address suite"
        );
        let unjumbled_bytes = f4jumble_inv(&jumbled_bytes[1..]).context("invalid address")?;
        let mut bytes = Cursor::new(unjumbled_bytes);

        let mut diversifier_bytes = [0u8; 16];
        bytes
            .read_exact(&mut diversifier_bytes)
            .context("could not read diversifier bytes")?;

        let mut pk_d_bytes = [0u8; 32];
        bytes
            .read_exact(&mut pk_d_bytes)
            .context("could not read transmission key bytes")?;

        let diversifier = Diversifier(diversifier_bytes);

        Address::from_components(diversifier, ka::Public::try_from(pk_d_bytes)?)
            .context("could not create address from components")
    }
}

/// Assert the addresses are both [`Send`] and [`Sync`].
//  NB: allow dead code, because this block only contains compile-time assertions.
#[allow(dead_code)]
mod assert_address_is_send_and_sync {
    fn is_send<T: Send>() {}
    fn is_sync<T: Sync>() {}
    fn f() {
        is_send::<super::Address>();
        is_sync::<super::Address>();
    }
}

#[cfg(test)]
mod tests {
    use std::str::FromStr;

    use rand_core::OsRng;

    use super::*;
    use crate::keys::{Bip44Path, SeedPhrase, SpendKey};

    #[test]
    fn test_address_encoding() {
        let rng = OsRng;
        let seed_phrase = SeedPhrase::generate(rng);
        let sk = SpendKey::from_seed_phrase_bip44(seed_phrase, &Bip44Path::new(0))
            .expect("generated spend key satisfies key refinements");
        let fvk = sk.full_viewing_key();
        let ivk = fvk.incoming();
        let dest = ivk.payment_address(0u32.into());

        let bech32m_addr = format!("{dest}");

        let addr = Address::from_str(&bech32m_addr).expect("can decode valid address");

        use shieldd_sdk_proto::Message;

        let proto_addr = dest.encode_to_vec();
        let proto_addr_bech32m = pb::Address {
            inner: Vec::new(),
            alt_bech32m: bech32m_addr,
        }
        .encode_to_vec();
        let proto_addr_direct: pb::Address = dest.clone().into();
        let addr_from_proto: Address = proto_addr_direct
            .try_into()
            .expect("can convert from proto back to address");

        let addr2 = Address::decode(proto_addr.as_ref()).expect("can decode valid address");
        let addr3 = Address::decode(proto_addr_bech32m.as_ref()).expect("can decode valid address");

        assert_eq!(addr, dest);
        assert_eq!(addr2, dest);
        assert_eq!(addr3, dest);
        assert_eq!(addr_from_proto, dest);
        let raw: Address = dest.to_vec().try_into().expect("canonical raw address");
        assert_eq!(raw, dest);
        let bytes = dest.to_vec();
        for length in [0, bytes.len() - 1, bytes.len() + 1, 80] {
            let mut malformed = bytes.clone();
            malformed.resize(length, 0);
            assert!(Address::try_from(malformed).is_err(), "length {length}");
        }
    }

    #[test]
    fn test_address_keys_are_diversified() {
        let rng = OsRng;
        let seed_phrase = SeedPhrase::generate(rng);
        let sk = SpendKey::from_seed_phrase_bip44(seed_phrase, &Bip44Path::new(0))
            .expect("generated spend key satisfies key refinements");
        let fvk = sk.full_viewing_key();
        let ivk = fvk.incoming();
        let dest1 = ivk.payment_address(0u32.into());
        let dest2 = ivk.payment_address(1u32.into());

        assert!(dest1.transmission_key() != dest2.transmission_key());
    }

    #[test]
    fn address_components_reject_identity_diversified_generator() {
        let known = crate::test_keys::ADDRESS_0.clone();
        assert_eq!(
            Address::from_components_with_diversified_generator(
                *known.diversifier(),
                SubgroupPoint::identity(),
                *known.transmission_key(),
            ),
            Err(AddressError::IdentityDiversifiedGenerator)
        );
    }

    #[test]
    fn address_wire_rejects_identity_and_noncanonical_transmission_keys() {
        use group::GroupEncoding;
        for key in [SubgroupPoint::identity().to_bytes(), [255; 32]] {
            let mut raw = [0; ADDRESS_LEN_BYTES - 1];
            raw[16..].copy_from_slice(&key);
            let wire = [
                &[shieldd_sdk_crypto::SUITE][..],
                f4jumble(&raw).unwrap().as_slice(),
            ]
            .concat();
            assert!(Address::try_from(wire).is_err());
        }
    }
}
