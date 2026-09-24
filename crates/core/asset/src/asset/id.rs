use crate::Value;
use base64::Engine;
use serde::{Deserialize, Serialize};
use shieldd_sdk_crypto::Fq;
use shieldd_sdk_num::Amount;
use shieldd_sdk_proto::{serializers::bech32str, shieldd::core::asset::v1 as pb, DomainType};

/// An identifier for an IBC asset type.
///
/// This is similar to, but different from, the design in [ADR001].  As in
/// ADR001, a denomination trace is hashed to a fixed-size identifier, but
/// unlike ADR001, we hash to a field element rather than a byte string.
///
/// A denomination trace looks like
///
/// - `denom` (native chain A asset)
/// - `transfer/channelToA/denom` (chain B representation of chain A asset)
/// - `transfer/channelToB/transfer/channelToA/denom` (chain C representation of chain B representation of chain A asset)
///
/// ADR001 defines the IBC asset ID as the SHA-256 hash of the denomination
/// trace.  Instead, Shieldd hashes to a field element, so that asset IDs can
/// be more easily used inside of a circuit.
///
/// [ADR001]:
/// https://github.com/cosmos/ibc-go/blob/main/docs/architecture/adr-001-coin-source-tracing.md
#[derive(Serialize, Deserialize, Copy, Clone, PartialEq, Eq)]
#[serde(try_from = "pb::AssetId", into = "pb::AssetId")]
pub struct Id(pub Fq);

impl std::hash::Hash for Id {
    fn hash<H: std::hash::Hasher>(&self, state: &mut H) {
        state.write(&self.to_bytes());
    }
}
impl Ord for Id {
    fn cmp(&self, other: &Self) -> std::cmp::Ordering {
        self.to_bytes()
            .iter()
            .rev()
            .cmp(other.to_bytes().iter().rev())
    }
}
impl PartialOrd for Id {
    fn partial_cmp(&self, other: &Self) -> Option<std::cmp::Ordering> {
        Some(self.cmp(other))
    }
}

impl From<Id> for pb::AssetId {
    fn from(id: Id) -> Self {
        pb::AssetId {
            inner: id.0.to_bytes().to_vec(),
            // Never produce a proto encoding with the alt string encoding.
            alt_bech32m: String::new(),
            // Never produce a proto encoding with the alt base denom.
            alt_base_denom: String::new(),
        }
    }
}

impl TryFrom<pb::AssetId> for Id {
    type Error = anyhow::Error;
    fn try_from(value: pb::AssetId) -> Result<Self, Self::Error> {
        match (
            value.inner.is_empty(),
            value.alt_bech32m.is_empty(),
            value.alt_base_denom.is_empty(),
        ) {
            (false, true, true) => value.inner.as_slice().try_into(),
            (true, false, true) => value.alt_bech32m.parse(),
            (true, true, false) => Ok(Self::from_raw_denom(&value.alt_base_denom)),
            _ => anyhow::bail!("AssetId proto must have exactly one representation set"),
        }
    }
}

impl DomainType for Id {
    type Proto = pb::AssetId;
}

impl TryFrom<&[u8]> for Id {
    type Error = anyhow::Error;

    fn try_from(slice: &[u8]) -> Result<Id, Self::Error> {
        Ok(Id(shieldd_sdk_crypto::encoding::field(&slice.try_into()?)?))
    }
}

impl TryFrom<[u8; 32]> for Id {
    type Error = anyhow::Error;

    fn try_from(bytes: [u8; 32]) -> Result<Id, Self::Error> {
        Ok(Id(shieldd_sdk_crypto::encoding::field(&bytes)?))
    }
}

impl std::fmt::Debug for Id {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str(&bech32str::encode(
            &self.0.to_bytes(),
            bech32str::asset_id::BECH32_PREFIX,
            bech32str::Bech32m,
        ))
    }
}

impl std::fmt::Display for Id {
    // IMPORTANT: Changing this is state-breaking.
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        f.write_str(&bech32str::encode(
            &self.0.to_bytes(),
            bech32str::asset_id::BECH32_PREFIX,
            bech32str::Bech32m,
        ))
    }
}

impl std::str::FromStr for Id {
    type Err = anyhow::Error;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        let inner = bech32str::decode(s, bech32str::asset_id::BECH32_PREFIX, bech32str::Bech32m)?;
        pb::AssetId {
            inner,
            alt_bech32m: String::new(),
            alt_base_denom: String::new(),
        }
        .try_into()
    }
}

impl Id {
    /// Compute the value generator for this asset, used for computing balance commitments.
    pub fn value_generator(&self) -> shieldd_sdk_crypto::SubgroupPoint {
        shieldd_sdk_crypto::map::to_subgroup(&shieldd_sdk_crypto::poseidon::hash(
            shieldd_sdk_crypto::domains::ASSET_GENERATOR,
            &[self.0],
        ))
    }

    /// Convert the asset ID to bytes.
    pub fn to_bytes(&self) -> [u8; 32] {
        self.0.to_bytes()
    }

    /// Create a value of this denomination.
    pub fn value(&self, amount: Amount) -> Value {
        Value {
            amount,
            asset_id: *self,
        }
    }

    pub(super) fn from_raw_denom(base_denom: &str) -> Self {
        let hash = blake2b_simd::Params::default()
            .personal(b"Shieldd_AssetID")
            .hash(base_denom.as_bytes());
        Id(Fq::from_bytes_wide(
            hash.as_bytes().try_into().expect("64-byte asset digest"),
        ))
    }

    /// Returns the base64 encoded string of the inner bytes.
    pub fn to_base64(&self) -> String {
        base64::engine::general_purpose::STANDARD.encode(self.to_bytes())
    }
}
#[cfg(test)]
mod tests {
    use super::*;
    use hex;
    use std::str::FromStr;

    #[test]
    fn asset_id_proto_requires_exactly_one_representation() {
        let raw_id = Id::from_raw_denom("ushieldd");
        let alternate_id = Id::from_raw_denom("uusd");
        for (name, raw, bech32m, denom, expected) in [
            ("raw", true, false, false, Some(raw_id)),
            ("bech32m", false, true, false, Some(raw_id)),
            ("denom", false, false, true, Some(alternate_id)),
            ("empty", false, false, false, None),
            ("raw and bech32m", true, true, false, None),
            ("raw and denom", true, false, true, None),
            ("bech32m and denom", false, true, true, None),
            ("all representations", true, true, true, None),
        ] {
            let proto = pb::AssetId {
                inner: if raw {
                    raw_id.to_bytes().to_vec()
                } else {
                    Vec::new()
                },
                alt_bech32m: if bech32m {
                    raw_id.to_string()
                } else {
                    String::new()
                },
                alt_base_denom: if denom {
                    "uusd".to_owned()
                } else {
                    String::new()
                },
            };
            let result = Id::try_from(proto);
            match expected {
                Some(id) => assert_eq!(result.expect(name), id, "{name}"),
                None => assert!(result.is_err(), "{name} unexpectedly accepted: {result:?}"),
            }
        }
    }

    #[test]
    fn asset_id_encoding() {
        let id = Id::from_raw_denom("ushieldd");

        let bech32m_id = format!("{id}");

        let id2 = Id::from_str(&bech32m_id).expect("can decode valid asset id");

        use shieldd_sdk_proto::Message;

        let proto = id.encode_to_vec();
        let proto2 = pb::AssetId {
            alt_bech32m: bech32m_id,
            ..Default::default()
        }
        .encode_to_vec();
        let proto3 = pb::AssetId {
            alt_base_denom: "ushieldd".to_owned(),
            ..Default::default()
        }
        .encode_to_vec();

        let id3 = Id::decode(proto.as_ref()).expect("can decode valid asset id");
        let id4 = Id::decode(proto2.as_ref()).expect("can decode valid asset id");
        let id5 = Id::decode(proto3.as_ref()).expect("can decode valid asset id");

        assert_eq!(id2, id);
        assert_eq!(id3, id);
        assert_eq!(id4, id);
        assert_eq!(id5, id);

        let hex_strings = [
            "cc0d3c9eef0c7ff4e225eca85a3094603691d289aeaf428ab0d87319ad93a302", // USDY
            "a7a339f42e671b2db1de226d4483d3e63036661cad1554d75f5f76fe04ec1e00", // SHITMOS
            "29ea9c2f3371f6a487e7e95c247041f4a356f983eb064e5d2b3bcf322ca96a10", // UM
            "76b3e4b10681358c123b381f90638476b7789040e47802de879f0fb3eedc8d0b", // USDC
            "2923a0a87b3a2421f165cc853dbf73a9bdafb5da0d948564b6059cb0217c4407", // OSMO
            "07ef660132a4c3235fab272d43d9b9752a8337b2d108597abffaff5f246d0f0f", // ATOM
            "5314b33eecfd5ca2e99c0b6d1e0ccafe3d2dd581c952d814fb64fdf51f85c411", // TIA
            "516108d0d0bba3f76e1f982d0a7cde118833307b03c0cd4ccb94e882b53c1f0f", // WBTC
            "414e723f74bd987c02ccbc997585ed52b196e2ffe75b3793aa68cc2996626910", // allBTC
            "bf8b035dda339b6cda8f221e79773b0fd871f27a472920f84c4aa2b4f98a700d", // allUSDT
        ];

        for hex in hex_strings {
            let bytes = hex::decode(hex).expect("valid hex string");
            let bytes_array: [u8; 32] = bytes.try_into().expect("hex is 32 bytes");

            let id = Id::try_from(bytes_array).expect("valid asset ID bytes");
            let bech32_str = id.to_string();

            let id_decoded = Id::from_str(&bech32_str).expect("valid bech32 string");
            assert_eq!(id, id_decoded);
        }
    }

    /// Distinct canonical denominations must produce distinct asset identifiers.
    #[test]
    fn distinct_denom_trace_examples_have_distinct_asset_ids() {
        // Representative corpus: bases, single-hop and multi-hop ICS-20 traces,
        // and adversarial near-collisions (channel-index boundary, base that
        // itself contains path separators).
        let denoms = [
            "uatom",
            "uosmo",
            "transfer/channel-0/uatom",
            "transfer/channel-1/uatom",
            "transfer/channel-10/uatom",
            "transfer/channel-0/uosmo",
            "transfer/channel-0/transfer/channel-1/uatom",
            "transfer/channel-1/transfer/channel-0/uatom",
            "transfer/channel-0/uatom-with-suffix",
        ];

        let mut seen: std::collections::HashMap<[u8; 32], &str> = std::collections::HashMap::new();
        for denom in denoms {
            let id = Id::from_raw_denom(denom).to_bytes();
            if let Some(prev) = seen.insert(id, denom) {
                panic!("denom-trace asset-id collision: {prev:?} and {denom:?} map to the same id");
            }
        }
    }
}
