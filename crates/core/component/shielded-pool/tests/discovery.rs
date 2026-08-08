use rand_core::OsRng;
use shieldd_sdk_asset::{Value, BASE_ASSET_ID};
use shieldd_sdk_keys::test_keys;
use shieldd_sdk_num::Amount;
use shieldd_sdk_proto::core::component::shielded_pool::v1 as pb;
use shieldd_sdk_shielded_pool::{
    discovery::{Parameters, Precision, Tag},
    Note,
};

#[test]
fn tag_masks_every_precision_canonically() {
    for bits in 0..=32 {
        let tag = Tag::for_address(&test_keys::ADDRESS_0, Precision::new(bits).unwrap());
        assert!(tag.is_canonical());
    }
}

#[test]
fn decoding_rejects_non_canonical_unused_bits() {
    assert!(Tag::try_from(pb::DiscoveryTag {
        precision_bits: 8,
        value: 0x0100_0001,
    })
    .is_err());
}

#[test]
fn malformed_tag_does_not_prevent_full_scan_recovery() {
    let precision = Precision::new(16).unwrap();
    let note = Note::generate(
        &mut OsRng,
        &test_keys::ADDRESS_0,
        Value {
            amount: Amount::from(1u64),
            asset_id: *BASE_ASSET_ID,
        },
    );
    let mut payload = note.payload(precision);
    payload.discovery_tag.value ^= 0x8000_0000;

    assert_ne!(
        payload.discovery_tag,
        Tag::for_address(&test_keys::ADDRESS_0, precision)
    );
    assert_eq!(
        payload.trial_decrypt(&test_keys::FULL_VIEWING_KEY),
        Some(note)
    );
}

#[test]
fn tag_prefixes_are_stable_across_precision_changes() {
    let short = Tag::for_address(&test_keys::ADDRESS_0, Precision::new(12).unwrap());
    let long = Tag::for_address(&test_keys::ADDRESS_0, Precision::new(20).unwrap());

    assert_eq!(short.value, long.value & 0x0000_0fff);
}

#[test]
fn current_precision_is_always_accepted() {
    let previous = Parameters {
        precision: Precision::new(16).unwrap(),
        as_of_block_height: 1,
    };
    let current = Parameters {
        precision: Precision::new(20).unwrap(),
        as_of_block_height: 100,
    };

    assert!(current.accepts_precision(&previous, 10, u64::MAX, Precision::new(20).unwrap(),));
}

#[test]
fn previous_precision_expires_at_grace_boundary() {
    let previous = Parameters {
        precision: Precision::new(16).unwrap(),
        as_of_block_height: 1,
    };
    let current = Parameters {
        precision: Precision::new(20).unwrap(),
        as_of_block_height: 100,
    };

    assert!(current.accepts_precision(&previous, 10, 109, previous.precision));
    assert!(!current.accepts_precision(&previous, 10, 110, previous.precision));
    assert!(!current.accepts_precision(&previous, 10, 105, Precision::new(12).unwrap(),));
}

#[test]
fn grace_period_end_saturates_at_maximum_height() {
    let previous = Parameters {
        precision: Precision::new(16).unwrap(),
        as_of_block_height: 1,
    };
    let current = Parameters {
        precision: Precision::new(20).unwrap(),
        as_of_block_height: u64::MAX - 5,
    };

    assert!(current.accepts_precision(&previous, 10, u64::MAX - 1, previous.precision,));
    assert!(!current.accepts_precision(&previous, 10, u64::MAX, previous.precision));
}
