use crate::{encoding::canonical_bits, group::Point, hash::Parameters, range::decompose};
use anyhow::{Result, ensure};
use commonware_codec::Encode;
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::{Additive, Ring};

use shieldd_sdk_crypto::domains::ROUTE;
use shieldd_sdk_crypto::domains::ROUTE_PARAMETERS as PARAMETER_SET;
use shieldd_sdk_crypto::domains::ROUTE_PERMUTATION as PERMUTATION;
use shieldd_sdk_crypto::domains::ROUTE_RANDOMNESS as RANDOM;

#[derive(Clone)]
pub struct Witness {
    pub regulated_precision: u8,
    pub unregulated_precision: u8,
    pub as_of_height: Scalar,
    pub parameter_set: Scalar,
    pub tags: [Scalar; 2],
}
pub struct Output<'ctx> {
    pub parameter_set: Var<'ctx, Scalar>,
    pub tags: [Var<'ctx, Scalar>; 2],
    pub swapped: BoolVar<'ctx, Scalar>,
}

fn low_word(value: &Scalar) -> u32 {
    u32::from_be_bytes(value.encode()[28..32].try_into().expect("32-bit suffix"))
}

pub fn build_tags(
    params: &Parameters,
    regulated: bool,
    has_change: bool,
    sender: &Point<Scalar>,
    receiver: &Point<Scalar>,
    nonce: &Scalar,
    regulated_precision: u8,
    unregulated_precision: u8,
    as_of_height: Scalar,
) -> Result<Witness> {
    ensure!(
        regulated_precision <= unregulated_precision && unregulated_precision <= 32,
        "invalid routing precisions"
    );
    let parameter_set = params.native(
        PARAMETER_SET,
        &[
            Scalar::from(u64::from(regulated_precision)),
            Scalar::from(u64::from(unregulated_precision)),
            as_of_height.clone(),
        ],
    );
    let precision = if regulated {
        regulated_precision
    } else {
        unregulated_precision
    };
    let mask = ((1u64 << precision) - 1) as u32;
    let sender_word = low_word(&params.native(ROUTE, &[sender.x.clone(), sender.y.clone()]));
    let receiver_word = low_word(&params.native(ROUTE, &[receiver.x.clone(), receiver.y.clone()]));
    let swapped = low_word(&params.native(PERMUTATION, &[nonce.clone()])) & 1 == 1;
    let sender_meaningful = regulated || has_change;
    let words = if swapped {
        [receiver_word, sender_word]
    } else {
        [sender_word, receiver_word]
    };
    let meaningful = if swapped {
        [true, sender_meaningful]
    } else {
        [sender_meaningful, true]
    };
    let tags = std::array::from_fn(|i| {
        let random = low_word(&params.native(RANDOM, &[nonce.clone(), Scalar::from(i as u64)]));
        let word = if meaningful[i] {
            (words[i] & mask) | (random & !mask)
        } else {
            random
        };
        Scalar::from(u64::from(word))
    });
    Ok(Witness {
        regulated_precision,
        unregulated_precision,
        as_of_height,
        parameter_set,
        tags,
    })
}

use crate::range::is_zero;

fn precision<'ctx>(
    ctx: Context<'ctx, Scalar>,
    value: &Var<'ctx, Scalar>,
) -> ([Var<'ctx, Scalar>; 32], [BoolVar<'ctx, Scalar>; 33]) {
    let matches: [BoolVar<'ctx, Scalar>; 33] = std::array::from_fn(|i| {
        is_zero(ctx, &(value.clone() - &Var::native(Scalar::from(i as u64))))
    });
    matches
        .iter()
        .fold(Var::zero(), |sum, bit| sum + bit.var())
        .assert_eq(&Var::one());
    let active = std::array::from_fn(|i| {
        matches[i + 1..]
            .iter()
            .fold(Var::zero(), |sum, bit| sum + bit.var())
    });
    (active, matches)
}

struct BoundParameters<'a> {
    parameter_set: Var<'a, Scalar>,
    active: [BoolVar<'a, Scalar>; 32],
}
fn constrain_parameters<'a>(
    ctx: Context<'a, Scalar>,
    params: &Parameters,
    regulated: &BoolVar<'a, Scalar>,
    regulated_precision: u8,
    unregulated_precision: u8,
    height: &Scalar,
    expected: &Scalar,
) -> BoundParameters<'a> {
    let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
    let regulated_value = var(&Scalar::from(u64::from(regulated_precision)));
    let unregulated_value = var(&Scalar::from(u64::from(unregulated_precision)));
    let (regulated_bits, _) = precision(ctx, &regulated_value);
    let (unregulated_bits, _) = precision(ctx, &unregulated_value);
    for i in 0..32 {
        (regulated_bits[i].clone() * &(Var::one() - &unregulated_bits[i]))
            .assert_eq(&Var::zero());
    }
    let parameter_set = var(expected);
    params
        .circuit(
            PARAMETER_SET,
            &[regulated_value, unregulated_value, var(height)],
        )
        .assert_eq(&parameter_set);
    let active: [BoolVar<'a, Scalar>; 32] = std::array::from_fn(|i| {
        BoolVar::assert(regulated.select(&regulated_bits[i], &unregulated_bits[i]))
    });
    BoundParameters {
        parameter_set,
        active,
    }
}

/// The caller passes the encryption component's same bound nonce, not a second witness copy.
pub fn constrain<'ctx>(
    ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    w: &Witness,
    regulated: &BoolVar<'ctx, Scalar>,
    change_amount: &Var<'ctx, Scalar>,
    sender: &Point<Var<'ctx, Scalar>>,
    receiver: &Point<Var<'ctx, Scalar>>,
    nonce: &Var<'ctx, Scalar>,
) -> Output<'ctx> {
    let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
    let BoundParameters {
        parameter_set,
        active,
    } = constrain_parameters(
        ctx,
        params,
        regulated,
        w.regulated_precision,
        w.unregulated_precision,
        &w.as_of_height,
        &w.parameter_set,
    );
    let sender_word = params.circuit(ROUTE, &[sender.x.clone(), sender.y.clone()]);
    let receiver_word = params.circuit(ROUTE, &[receiver.x.clone(), receiver.y.clone()]);
    let permutation = params.circuit(PERMUTATION, &[nonce.clone()]);
    let swapped = canonical_bits(ctx, &permutation)[0].clone();
    let has_change = !is_zero(ctx, change_amount);
    let sender_meaningful = regulated.clone() | has_change;
    let words = [
        swapped.select(&receiver_word, &sender_word),
        swapped.select(&sender_word, &receiver_word),
    ];
    let meaningful = [
        swapped.clone() | sender_meaningful.clone(),
        !swapped.clone() | sender_meaningful,
    ];
    let tags = w.tags.each_ref().map(var);
    for slot in 0..2 {
        let public_bits = decompose(ctx, &tags[slot], 32);
        let route_bits = canonical_bits(ctx, &words[slot]);
        let random_word = params.circuit(
            RANDOM,
            &[nonce.clone(), Var::native(Scalar::from(slot as u64))],
        );
        let random_bits = canonical_bits(ctx, &random_word);
        for i in 0..32 {
            let prefix = active[i].select(route_bits[i].var(), random_bits[i].var());
            meaningful[slot]
                .select(&prefix, random_bits[i].var())
                .assert_eq(public_bits[i].var());
        }
    }
    Output {
        parameter_set,
        tags,
        swapped,
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::group::{generator, witness_subgroup};
    use commonware_cryptography::zk::circuit::build_with_values;
    fn satisfied(
        p: &Parameters,
        w: &Witness,
        regulated: bool,
        change: bool,
        nonce: &Scalar,
        sender: &Point<Scalar>,
        receiver: &Point<Scalar>,
    ) -> bool {
        let (c, _) = build_with_values(|ctx| {
            let point = |p: &Point<Scalar>| witness_subgroup(ctx, p, &p.cofactor_preimage());
            let regulated = BoolVar::witness(ctx, |_| regulated);
            let change = Var::witness(ctx, |_| Scalar::from(u64::from(change)));
            let nonce = Var::witness(ctx, |_| nonce.clone());
            constrain(
                ctx,
                p,
                w,
                &regulated,
                &change,
                &point(sender),
                &point(receiver),
                &nonce,
            );
            Vec::new()
        });
        c.is_satisfied()
    }
    #[test]
    fn both_permutations_and_precision_boundaries_match_native_tags() {
        let p = Parameters::load().unwrap();
        let sender = generator().multiply(&Scalar::from(7));
        let receiver = generator().multiply(&Scalar::from(11));
        let mut seen = [false; 2];
        for n in 0..8 {
            let nonce = Scalar::from(n);
            seen[(low_word(&p.native(PERMUTATION, &[nonce.clone()])) & 1) as usize] = true;
            for (rp, up) in [(0, 0), (0, 32), (1, 1), (7, 19), (32, 32)] {
                for regulated in [false, true] {
                    for change in [false, true] {
                        let w = build_tags(
                            &p,
                            regulated,
                            change,
                            &sender,
                            &receiver,
                            &nonce,
                            rp,
                            up,
                            Scalar::from(13),
                        )
                        .unwrap();
                        assert!(satisfied(
                            &p, &w, regulated, change, &nonce, &sender, &receiver
                        ));
                    }
                }
            }
        }
        assert_eq!(seen, [true, true]);
    }
    #[test]
    fn tags_parameters_nonce_and_sender_relevance_are_bound() {
        let p = Parameters::load().unwrap();
        let sender = generator().multiply(&Scalar::from(7));
        let receiver = generator().multiply(&Scalar::from(11));
        let nonce = Scalar::from(17);
        let w = build_tags(
            &p,
            false,
            false,
            &sender,
            &receiver,
            &nonce,
            16,
            32,
            Scalar::from(19),
        )
        .unwrap();
        for i in 0..7 {
            let mut bad = w.clone();
            match i {
                0 => bad.tags[0] += &Scalar::one(),
                1 => bad.tags[1] += &Scalar::one(),
                2 => bad.parameter_set += &Scalar::one(),
                3 => bad.as_of_height += &Scalar::one(),
                4 => bad.regulated_precision = 33,
                5 => bad.unregulated_precision = 15,
                _ => bad.tags[0] += &Scalar::from(1u64 << 32),
            }
            assert!(
                !satisfied(&p, &bad, false, false, &nonce, &sender, &receiver),
                "mutation {i}"
            );
        }
        assert!(!satisfied(&p, &w, false, true, &nonce, &sender, &receiver));
        assert!(!satisfied(&p, &w, true, false, &nonce, &sender, &receiver));
        assert!(!satisfied(
            &p,
            &w,
            false,
            false,
            &(nonce + &Scalar::one()),
            &sender,
            &receiver
        ));
        let replacement = generator().multiply(&Scalar::from(23));
        assert!(satisfied(
            &p,
            &w,
            false,
            false,
            &Scalar::from(17),
            &replacement,
            &receiver
        ));
        assert!(!satisfied(
            &p,
            &w,
            false,
            false,
            &Scalar::from(17),
            &sender,
            &replacement
        ));
        // Ordered precision remains enforced even with a recomputed parameter-set hash.
        let mut bad = w.clone();
        bad.regulated_precision = 17;
        bad.unregulated_precision = 16;
        bad.parameter_set = p.native(
            PARAMETER_SET,
            &[Scalar::from(17), Scalar::from(16), bad.as_of_height.clone()],
        );
        assert!(!satisfied(
            &p,
            &bad,
            false,
            false,
            &Scalar::from(17),
            &sender,
            &receiver
        ));
    }
}

#[derive(Clone)]
pub struct SingleWitness {
    pub regulated_precision: u8,
    pub unregulated_precision: u8,
    pub as_of_height: Scalar,
    pub parameter_set: Scalar,
    pub tag: Scalar,
}

pub struct Single<'a> {
    pub parameter_set: Var<'a, Scalar>,
    pub tag: Var<'a, Scalar>,
}

pub fn build_single(
    params: &Parameters,
    regulated: bool,
    owner: &Point<Scalar>,
    nonce: &Scalar,
    regulated_precision: u8,
    unregulated_precision: u8,
    as_of_height: Scalar,
) -> Result<SingleWitness> {
    ensure!(
        regulated_precision <= unregulated_precision && unregulated_precision <= 32,
        "invalid routing precisions"
    );
    let precision = if regulated {
        regulated_precision
    } else {
        unregulated_precision
    };
    let mask = ((1u64 << precision) - 1) as u32;
    let route = low_word(&params.native(ROUTE, &[owner.x.clone(), owner.y.clone()]));
    let random = low_word(&params.native(RANDOM, &[nonce.clone(), Scalar::zero()]));
    Ok(SingleWitness {
        regulated_precision,
        unregulated_precision,
        parameter_set: params.native(
            PARAMETER_SET,
            &[
                Scalar::from(u64::from(regulated_precision)),
                Scalar::from(u64::from(unregulated_precision)),
                as_of_height.clone(),
            ],
        ),
        as_of_height,
        tag: Scalar::from(u64::from((route & mask) | (random & !mask))),
    })
}

pub fn constrain_single<'a>(
    ctx: Context<'a, Scalar>,
    params: &Parameters,
    w: &SingleWitness,
    regulated: &BoolVar<'a, Scalar>,
    owner: &Point<Var<'a, Scalar>>,
    nonce: &Var<'a, Scalar>,
) -> Single<'a> {
    let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
    let BoundParameters {
        parameter_set,
        active,
    } = constrain_parameters(
        ctx,
        params,
        regulated,
        w.regulated_precision,
        w.unregulated_precision,
        &w.as_of_height,
        &w.parameter_set,
    );
    let route = canonical_bits(
        ctx,
        &params.circuit(ROUTE, &[owner.x.clone(), owner.y.clone()]),
    );
    let random = canonical_bits(ctx, &params.circuit(RANDOM, &[nonce.clone(), Var::zero()]));
    let tag = var(&w.tag);
    let bits = decompose(ctx, &tag, 32);
    for i in 0..32 {
        active[i]
            .select(route[i].var(), random[i].var())
            .assert_eq(bits[i].var());
    }
    Single { parameter_set, tag }
}

#[cfg(test)]
mod single_tests {
    use super::*;
    use crate::group;
    use commonware_cryptography::zk::circuit::build_with_values;
    #[test]
    fn single_route_preserves_precision_boundaries_and_parameter_binding() {
        let p = Parameters::load().unwrap();
        let owner = group::generator();
        let nonce = Scalar::from(7);
        for regulated in [false, true] {
            for (rp, up) in [(0, 0), (0, 32), (32, 32), (8, 16)] {
                let w =
                    build_single(&p, regulated, &owner, &nonce, rp, up, Scalar::from(11)).unwrap();
                let check = |w: &SingleWitness| {
                    build_with_values(|ctx| {
                        let point =
                            group::witness_subgroup(ctx, &owner, &owner.cofactor_preimage());
                        constrain_single(
                            ctx,
                            &p,
                            w,
                            &BoolVar::witness(ctx, |_| regulated),
                            &point,
                            &Var::witness(ctx, |_| nonce.clone()),
                        );
                        Vec::new()
                    })
                    .0
                    .is_satisfied()
                };
                assert!(check(&w));
                let mut wrong = w.clone();
                wrong.tag += &Scalar::one();
                assert!(!check(&wrong));
                wrong = w.clone();
                wrong.regulated_precision = 17;
                wrong.unregulated_precision = 16;
                wrong.parameter_set = p.native(
                    PARAMETER_SET,
                    &[
                        Scalar::from(17),
                        Scalar::from(16),
                        wrong.as_of_height.clone(),
                    ],
                );
                assert!(!check(&wrong));
                wrong = w;
                wrong.tag += &Scalar::from(1u64 << 32);
                assert!(!check(&wrong));
            }
        }
    }
}
