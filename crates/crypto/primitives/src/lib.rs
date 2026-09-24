//! Jubjub arithmetic and canonical encodings for the Shieldd cryptographic suite.
pub use jubjub::{Fq, Fr, SubgroupPoint};
pub use reddsa::{sapling, Signature, SigningKey, VerificationKey};

/// Identifies the Jubjub/Poseidon-381/Pari protocol at serialized boundaries.
pub const SUITE: u8 = 1;
pub const SUITE_NAME: &str = "shieldd-jubjub-pari-v1";

pub mod audit;
pub mod domains;
pub mod encoding;
pub mod generators;
pub mod ka;
pub mod map;
pub mod poseidon;

pub struct Coordinates {
    pub x: [u8; 32],
    pub y: [u8; 32],
}

pub fn coordinates(point: &SubgroupPoint) -> Coordinates {
    let affine = jubjub::AffinePoint::from(jubjub::ExtendedPoint::from(*point));
    Coordinates {
        x: affine.get_u().to_bytes(),
        y: affine.get_v().to_bytes(),
    }
}
