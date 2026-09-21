use group::GroupEncoding;
use jubjub::SubgroupPoint;
use reddsa::{
    sapling::{Binding, SpendAuth},
    SigningKey, VerificationKey,
};
use std::sync::LazyLock;

/// RedJubjub's SpendAuth base also defines authorization-key randomization.
pub static SPEND_AUTH: LazyLock<SubgroupPoint> = LazyLock::new(|| {
    let mut one = [0; 32];
    one[0] = 1;
    let sk = SigningKey::<SpendAuth>::try_from(one).expect("canonical scalar one");
    let bytes: [u8; 32] = VerificationKey::from(&sk).into();
    SubgroupPoint::from_bytes(&bytes).unwrap()
});

/// The value blinding base must match RedJubjub binding signatures exactly.
pub static VALUE_BLINDING: LazyLock<SubgroupPoint> = LazyLock::new(|| {
    let mut one = [0; 32];
    one[0] = 1;
    let sk = SigningKey::<Binding>::try_from(one).expect("canonical scalar one");
    let bytes: [u8; 32] = VerificationKey::from(&sk).into();
    SubgroupPoint::from_bytes(&bytes).unwrap()
});

#[cfg(test)]
mod tests {
    use super::*;
    use group::Group;
    use jubjub::Fr;

    #[test]
    fn signature_bases_match_native_multiplication() {
        assert_ne!(*SPEND_AUTH, *VALUE_BLINDING);
        assert!(!bool::from(SPEND_AUTH.is_identity()));
        assert!(!bool::from(VALUE_BLINDING.is_identity()));
        let scalar = Fr::from(37);
        let spend = SigningKey::<SpendAuth>::try_from(scalar.to_bytes()).unwrap();
        let binding = SigningKey::<Binding>::try_from(scalar.to_bytes()).unwrap();
        assert_eq!(
            <[u8; 32]>::from(VerificationKey::from(&spend)),
            (*SPEND_AUTH * scalar).to_bytes()
        );
        assert_eq!(
            <[u8; 32]>::from(VerificationKey::from(&binding)),
            (*VALUE_BLINDING * scalar).to_bytes()
        );
    }
}
