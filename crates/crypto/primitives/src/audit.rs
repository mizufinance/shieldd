use crate::{
    coordinates, domains, encoding, generators::SPEND_AUTH, map, poseidon, Fq, Fr, SubgroupPoint,
    SUITE,
};
use anyhow::{ensure, Result};
use ff::Field;
use group::{Group, GroupEncoding};
use std::sync::LazyLock;

pub static UNREGULATED_RING: LazyLock<SubgroupPoint> =
    LazyLock::new(|| map::to_subgroup(&poseidon::hash(domains::UNREGULATED_RING, &[])));
pub static UNREGULATED_DETECTION: LazyLock<SubgroupPoint> =
    LazyLock::new(|| map::to_subgroup(&poseidon::hash(domains::UNREGULATED_DETECTION, &[])));

#[derive(Clone, Debug, PartialEq, Eq, serde::Serialize, serde::Deserialize)]
#[serde(try_from = "Vec<u8>", into = "Vec<u8>")]
pub struct AuditKeys {
    pub epoch: u64,
    pub amount: SubgroupPoint,
    pub sender: SubgroupPoint,
    pub receiver: SubgroupPoint,
    pub checking: SubgroupPoint,
}

impl From<AuditKeys> for Vec<u8> {
    fn from(keys: AuditKeys) -> Self {
        keys.to_bytes().to_vec()
    }
}
impl TryFrom<Vec<u8>> for AuditKeys {
    type Error = anyhow::Error;
    fn try_from(bytes: Vec<u8>) -> Result<Self> {
        Self::from_bytes(&bytes)
    }
}

impl AuditKeys {
    pub const BYTES: usize = 1 + 8 + 4 * 32;
    pub fn validate(&self) -> Result<()> {
        for point in self.points() {
            ensure!(!bool::from(point.is_identity()), "identity audit key");
        }
        Ok(())
    }

    pub fn points(&self) -> [SubgroupPoint; 4] {
        [self.amount, self.sender, self.receiver, self.checking]
    }

    pub fn validate_registered(&self) -> Result<()> {
        ensure!(self.epoch > 0, "registered audit epoch must be nonzero");
        let points = self.points();
        for (i, point) in points.iter().enumerate() {
            ensure!(!bool::from(point.is_identity()), "identity audit key");
            ensure!(
                *point != *UNREGULATED_RING,
                "registered audit key is a sink"
            );
            ensure!(
                !points[i + 1..].contains(point),
                "audit roles require distinct keys"
            );
        }
        Ok(())
    }

    pub fn unregulated() -> Self {
        Self {
            epoch: 0,
            amount: *UNREGULATED_RING,
            sender: *UNREGULATED_RING,
            receiver: *UNREGULATED_RING,
            checking: *UNREGULATED_RING,
        }
    }

    pub fn commitment(&self) -> Fq {
        let mut fields = vec![Fq::from(self.epoch)];
        for point in self.points() {
            fields.extend(point_fields(&point));
        }
        poseidon::hash(domains::AUDIT_KEYS, &fields)
    }

    pub fn to_bytes(&self) -> [u8; Self::BYTES] {
        let mut bytes = [0; Self::BYTES];
        bytes[0] = SUITE;
        bytes[1..9].copy_from_slice(&self.epoch.to_le_bytes());
        for (slot, point) in bytes[9..].chunks_exact_mut(32).zip(self.points()) {
            slot.copy_from_slice(&point.to_bytes());
        }
        bytes
    }

    pub fn from_bytes(bytes: &[u8]) -> Result<Self> {
        ensure!(
            bytes.len() == Self::BYTES && bytes[0] == SUITE,
            "invalid audit key suite or length"
        );
        let point = |offset| encoding::nonidentity(bytes[offset..offset + 32].try_into()?);
        Ok(Self {
            epoch: u64::from_le_bytes(bytes[1..9].try_into()?),
            amount: point(9)?,
            sender: point(41)?,
            receiver: point(73)?,
            checking: point(105)?,
        })
    }
}

pub fn point_fields(point: &SubgroupPoint) -> [Fq; 2] {
    let Coordinates { x, y } = coordinates(point);
    [Fq::from_bytes(&x).unwrap(), Fq::from_bytes(&y).unwrap()]
}
use crate::Coordinates;

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct AddressPoints {
    diversified: SubgroupPoint,
    transmission: SubgroupPoint,
}

impl AddressPoints {
    pub fn new(diversified: SubgroupPoint, transmission: SubgroupPoint) -> Result<Self> {
        ensure!(
            !bool::from(diversified.is_identity()) && !bool::from(transmission.is_identity()),
            "identity address point"
        );
        Ok(Self {
            diversified,
            transmission,
        })
    }

    pub fn fingerprint(&self) -> SubgroupPoint {
        let mut fields = point_fields(&self.diversified).to_vec();
        fields.extend(point_fields(&self.transmission));
        map::to_subgroup(&poseidon::hash(domains::OWNERSHIP, &fields))
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct OwnershipCiphertext {
    pub r: SubgroupPoint,
    pub c: SubgroupPoint,
}

impl OwnershipCiphertext {
    pub fn encrypt(
        address: &AddressPoints,
        checking: SubgroupPoint,
        randomness: Fr,
    ) -> Result<Self> {
        ensure!(!bool::from(checking.is_identity()), "identity checking key");
        ensure!(randomness != Fr::ZERO, "zero ownership randomness");
        Ok(Self {
            r: *SPEND_AUTH * randomness,
            c: address.fingerprint() + checking * randomness,
        })
    }

    pub fn to_bytes(&self) -> [u8; 65] {
        let mut bytes = [0; 65];
        bytes[0] = SUITE;
        bytes[1..33].copy_from_slice(&self.r.to_bytes());
        bytes[33..].copy_from_slice(&self.c.to_bytes());
        bytes
    }

    pub fn from_bytes(bytes: &[u8]) -> Result<Self> {
        ensure!(
            bytes.len() == 65 && bytes[0] == SUITE,
            "invalid ownership suite or length"
        );
        Ok(Self {
            r: encoding::nonidentity(bytes[1..33].try_into()?)?,
            c: encoding::point(bytes[33..65].try_into()?)?,
        })
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn role_validation_and_encoding_bind_epoch_and_all_keys() {
        let point = |n| *SPEND_AUTH * Fr::from(n);
        let keys = AuditKeys {
            epoch: 1,
            amount: point(11),
            sender: point(13),
            receiver: point(17),
            checking: point(19),
        };
        keys.validate_registered().unwrap();
        assert_eq!(AuditKeys::from_bytes(&keys.to_bytes()).unwrap(), keys);
        for role in 0..4 {
            let mut bad = keys.clone();
            let key = match role {
                0 => &mut bad.amount,
                1 => &mut bad.sender,
                2 => &mut bad.receiver,
                _ => &mut bad.checking,
            };
            *key = *UNREGULATED_RING;
            assert!(bad.validate_registered().is_err());
            assert_ne!(bad.commitment(), keys.commitment());
        }
        let mut bad = keys.clone();
        bad.epoch = 0;
        assert!(bad.validate_registered().is_err());
        assert_ne!(bad.commitment(), keys.commitment());
        bad = keys.clone();
        bad.sender = bad.amount;
        assert!(bad.validate_registered().is_err());
        bad.amount = SubgroupPoint::identity();
        assert!(AuditKeys::from_bytes(&bad.to_bytes()).is_err());
        assert!(AuditKeys::from_bytes(&keys.to_bytes()[1..]).is_err());
        let sink = AuditKeys::unregulated();
        assert_eq!(AuditKeys::from_bytes(&sink.to_bytes()).unwrap(), sink);
        assert!(sink.validate_registered().is_err());
    }

    #[test]
    fn ownership_ciphertext_binds_both_address_points_and_preserves_identity_c() {
        let point = |n| *SPEND_AUTH * Fr::from(n);
        let address = AddressPoints::new(point(3), point(5)).unwrap();
        let key = point(7);
        let first = OwnershipCiphertext::encrypt(&address, key, Fr::from(11)).unwrap();
        let second = OwnershipCiphertext::encrypt(&address, key, Fr::from(13)).unwrap();
        assert_ne!(first, second);
        assert_eq!(first.c - first.r * Fr::from(7), address.fingerprint());
        assert_eq!(second.c - second.r * Fr::from(7), address.fingerprint());
        assert_eq!(
            OwnershipCiphertext::from_bytes(&first.to_bytes()).unwrap(),
            first
        );
        for different in [
            AddressPoints::new(point(17), point(5)).unwrap(),
            AddressPoints::new(point(3), point(19)).unwrap(),
        ] {
            assert_ne!(different.fingerprint(), address.fingerprint());
        }
        assert!(OwnershipCiphertext::encrypt(&address, key, Fr::ZERO).is_err());
        assert!(
            OwnershipCiphertext::encrypt(&address, SubgroupPoint::identity(), Fr::ONE).is_err()
        );
        let identity_c = OwnershipCiphertext {
            r: point(1),
            c: SubgroupPoint::identity(),
        };
        assert_eq!(
            OwnershipCiphertext::from_bytes(&identity_c.to_bytes()).unwrap(),
            identity_c
        );
        let mut bad = first.to_bytes();
        bad[0] = 0;
        assert!(OwnershipCiphertext::from_bytes(&bad).is_err());
        assert!(OwnershipCiphertext::from_bytes(&first.to_bytes()[1..]).is_err());
    }
}
