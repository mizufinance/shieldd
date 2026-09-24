use group::GroupEncoding;
use shieldd_sdk_asset::{asset::Id, Value};
use shieldd_sdk_circuits::{
    balance, encoding, group as circuit_group,
    hash::Parameters,
    map::{self, Generators},
};
use shieldd_sdk_crypto::{Fq, Fr};

#[test]
fn runtime_value_commitments_match_the_pari_gadget() {
    let params = Parameters::load().unwrap();
    let generators = Generators::derive(&params);
    for asset in [Fq::from(7), -Fq::from(1)] {
        let id = Id(asset);
        let asset = encoding::field(&asset);
        assert_eq!(
            circuit_group::native_point(&id.value_generator()),
            map::asset(&params, &asset)
        );
        for amount in [0, 1, u128::MAX] {
            let blinding = Fr::from(11);
            let value = Value {
                amount: amount.into(),
                asset_id: id,
            };
            let expected = balance::native(
                &params,
                &generators,
                &asset,
                [amount, 0],
                [0, 0],
                &encoding::field(&Fq::from(11)),
            )
            .unwrap();
            assert_eq!(
                circuit_group::native_point(&value.commit(blinding).0),
                expected
            );
            let bytes = value.commit(blinding).0.to_bytes();
            assert_eq!(
                shieldd_sdk_asset::balance::Commitment::try_from(bytes).unwrap(),
                value.commit(blinding)
            );
        }
    }
    assert!(Id::try_from([255; 32]).is_err());
    assert!(Id::try_from([0; 31].as_slice()).is_err());
}
