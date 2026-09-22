use shieldd_sdk_keys::{test_keys, Address, FullViewingKey};
use shieldd_sdk_proto::shieldd::core::keys::v1 as pb;

#[test]
fn address_and_viewing_key_import_require_suite_context() {
    let address = &*test_keys::ADDRESS_0;
    let mut raw = address.diversifier().0.to_vec();
    raw.extend_from_slice(&address.transmission_key().to_bytes());
    assert!(Address::try_from(f4jumble::f4jumble(&raw).unwrap()).is_err());
    let fvk = &*test_keys::FULL_VIEWING_KEY;
    let mut raw = <[u8; 32]>::from(*fvk.spend_verification_key()).to_vec();
    raw.extend_from_slice(&fvk.nullifier_key().0.to_bytes());
    assert!(FullViewingKey::try_from(raw.as_slice()).is_err());
    let encoded: pb::FullViewingKey = fvk.clone().into();
    assert_eq!(FullViewingKey::try_from(encoded).unwrap(), *fvk);
}
