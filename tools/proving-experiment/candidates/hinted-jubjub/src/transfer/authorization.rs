use crate::{
    encryption::Address,
    group::{self, Point},
    hash::Parameters,
    scalar::{self, Reduction},
};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::{Additive, Field};

const IVK: u8 = 16;
const RNK: u8 = 17;
pub const RNK_COMMITMENT: u8 = 18;

#[derive(Clone)]
pub struct Witness {
    pub ak: Point<Scalar>,
    pub ak_preimage: Point<Scalar>,
    pub nk: Scalar,
    pub ivk: Reduction,
}

/// Address and issuer points must already be constrained to the prime subgroup.
pub struct Shared<'ctx> {
    pub address: Address<Var<'ctx, Scalar>>,
    pub asset: Var<'ctx, Scalar>,
    pub rnk_dh: Point<Var<'ctx, Scalar>>,
    pub ring: Point<Var<'ctx, Scalar>>,
    pub regulated: BoolVar<'ctx, Scalar>,
    pub registered_rnk_commitment: Var<'ctx, Scalar>,
}

pub struct Output<'ctx> {
    pub ak: Point<Var<'ctx, Scalar>>,
    pub nk: Var<'ctx, Scalar>,
    pub effective_nk: Var<'ctx, Scalar>,
}

pub fn viewing_key(params: &Parameters, nk: &Scalar, ak: &Point<Scalar>) -> Reduction {
    scalar::reduce(&params.native(IVK, &[nk.clone(), ak.x.clone(), ak.y.clone()]))
}

fn rnk_inputs<F: Clone>(
    shared: &Point<F>,
    address: &Address<F>,
    asset: &F,
    ring: &Point<F>,
) -> [F; 9] {
    [
        shared.x.clone(),
        shared.y.clone(),
        address.diversified.x.clone(),
        address.diversified.y.clone(),
        address.transmission.x.clone(),
        address.transmission.y.clone(),
        asset.clone(),
        ring.x.clone(),
        ring.y.clone(),
    ]
}

pub fn regulated_key(
    params: &Parameters,
    ivk: &Scalar,
    address: &Address<Scalar>,
    asset: &Scalar,
    rnk_dh: &Point<Scalar>,
    ring: &Point<Scalar>,
) -> Scalar {
    params.native(
        RNK,
        &rnk_inputs(&rnk_dh.multiply(ivk), address, asset, ring),
    )
}

/// Binds wallet ownership, canonical nonzero IVK and the address-scoped regulated nullifier key.
pub fn constrain<'ctx>(
    ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    w: &Witness,
    shared: &Shared<'ctx>,
) -> Output<'ctx> {
    let ak = group::witness_subgroup(ctx, &w.ak, &w.ak_preimage);
    ak.assert_non_identity();
    shared.address.diversified.assert_non_identity();
    shared.address.transmission.assert_non_identity();
    shared.rnk_dh.assert_non_identity();
    shared.ring.assert_non_identity();
    let _ = shared.asset.inv();
    let nk = Var::witness(ctx, |_| w.nk.clone());
    let hash = params.circuit(IVK, &[nk.clone(), ak.x.clone(), ak.y.clone()]);
    let bits = scalar::constrain_reduction(ctx, &hash, &w.ivk);
    bits.iter()
        .fold(BoolVar::constant(false), |any, bit| any | bit.clone())
        .assert_eq(&BoolVar::constant(true));
    shieldd_hinted_jubjub_screen::multiply_dynamic(ctx, &shared.address.diversified, &bits)
        .assert_equal(&shared.address.transmission);
    let dh = shieldd_hinted_jubjub_screen::multiply_dynamic(ctx, &shared.rnk_dh, &bits);
    dh.assert_non_identity();
    let rnk = params.circuit(
        RNK,
        &rnk_inputs(&dh, &shared.address, &shared.asset, &shared.ring),
    );
    let commitment = params.circuit(RNK_COMMITMENT, &[rnk.clone()]);
    (shared.regulated.var().clone() * &(commitment - &shared.registered_rnk_commitment))
        .assert_eq(&Var::zero());
    Output {
        ak,
        effective_nk: shared.regulated.select(&rnk, &nk),
        nk,
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use commonware_cryptography::zk::circuit::build_with_values;
    use commonware_math::algebra::Ring;

    #[derive(Clone)]
    struct Values {
        address: Address<Scalar>,
        asset: Scalar,
        rnk_dh: Point<Scalar>,
        ring: Point<Scalar>,
        registered: Scalar,
        regulated: bool,
        expected_nk: Scalar,
    }
    fn fixture(p: &Parameters, regulated: bool) -> (Witness, Values) {
        let g = group::generator();
        let ak = g.multiply(&Scalar::from(3));
        let nk = Scalar::from(5);
        let ivk = viewing_key(p, &nk, &ak);
        let diversified = g.multiply(&Scalar::from(7));
        let address = Address {
            transmission: diversified.multiply(&ivk.remainder),
            diversified,
        };
        let rnk_dh = g.multiply(&Scalar::from(11));
        let ring = g.multiply(&Scalar::from(13));
        let asset = Scalar::from(17);
        let rnk = regulated_key(p, &ivk.remainder, &address, &asset, &rnk_dh, &ring);
        let registered = p.native(RNK_COMMITMENT, &[rnk.clone()]);
        let expected_nk = if regulated { rnk } else { nk.clone() };
        (
            Witness {
                ak_preimage: ak.cofactor_preimage(),
                ak,
                nk,
                ivk,
            },
            Values {
                address,
                asset,
                rnk_dh,
                ring,
                registered,
                regulated,
                expected_nk,
            },
        )
    }
    fn satisfied(p: &Parameters, w: &Witness, values: &Values) -> bool {
        let (c, _) = build_with_values(|ctx| {
            let point = |p: &Point<Scalar>| group::witness_subgroup(ctx, p, &p.cofactor_preimage());
            let var = |v: &Scalar| Var::witness(ctx, |_| v.clone());
            let shared = Shared {
                address: Address {
                    diversified: point(&values.address.diversified),
                    transmission: point(&values.address.transmission),
                },
                asset: var(&values.asset),
                rnk_dh: point(&values.rnk_dh),
                ring: point(&values.ring),
                regulated: BoolVar::witness(ctx, |_| values.regulated),
                registered_rnk_commitment: var(&values.registered),
            };
            constrain(ctx, p, w, &shared)
                .effective_nk
                .assert_eq(&var(&values.expected_nk));
            Vec::new()
        });
        c.is_satisfied()
    }

    #[test]
    fn ownership_and_regulated_key_bind_all_inputs_in_both_branches() {
        let p = Parameters::load().unwrap();
        for regulated in [false, true] {
            let (w, v) = fixture(&p, regulated);
            assert!(satisfied(&p, &w, &v));
            for i in 0..5 {
                let mut bad = w.clone();
                match i {
                    0 => bad.nk += &Scalar::one(),
                    1 => {
                        bad.ak = group::generator();
                        bad.ak_preimage = bad.ak.cofactor_preimage();
                    }
                    2 => bad.ivk.remainder += &Scalar::one(),
                    3 => bad.ivk.quotient += 1,
                    _ => bad.ivk.remainder = Scalar::zero(),
                }
                assert!(!satisfied(&p, &bad, &v), "auth mutation {i}");
            }
            for i in 0..7 {
                let mut bad = v.clone();
                match i {
                    0 => bad.address.diversified = group::generator(),
                    1 => bad.address.transmission = group::generator(),
                    2 => bad.rnk_dh = Point::identity(),
                    3 => bad.ring = Point::identity(),
                    4 => bad.asset = Scalar::zero(),
                    5 => bad.expected_nk += &Scalar::one(),
                    _ => bad.regulated = !regulated,
                }
                assert!(!satisfied(&p, &w, &bad), "shared mutation {i}");
            }
            let mut changed_registration = v.clone();
            changed_registration.registered += &Scalar::one();
            assert_eq!(satisfied(&p, &w, &changed_registration), !regulated);
            if regulated {
                for i in 0..3 {
                    let mut bad = v.clone();
                    match i {
                        0 => bad.asset += &Scalar::one(),
                        1 => bad.ring = group::generator(),
                        _ => bad.rnk_dh = group::generator(),
                    }
                    assert!(!satisfied(&p, &w, &bad));
                }
            }
        }
    }
}
