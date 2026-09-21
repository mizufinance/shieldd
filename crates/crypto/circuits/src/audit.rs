use crate::{
    encryption::Address,
    group::{self, Point},
    hash::Parameters,
    map, range, scalar,
};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::Additive;
use shieldd_sdk_crypto::domains;

#[derive(Clone)]
pub struct Keys<F> {
    pub epoch: F,
    pub amount: Point<F>,
    pub sender: Point<F>,
    pub receiver: Point<F>,
    pub checking: Point<F>,
}

impl<F: Clone> Keys<F> {
    pub fn fields(&self) -> Vec<F> {
        let mut fields = vec![self.epoch.clone()];
        for point in [&self.amount, &self.sender, &self.receiver, &self.checking] {
            fields.extend([point.x.clone(), point.y.clone()]);
        }
        fields
    }
}

impl Keys<Scalar> {
    pub fn from_native(keys: &shieldd_sdk_crypto::audit::AuditKeys) -> Self {
        Self {
            epoch: Scalar::from(keys.epoch),
            amount: group::native_point(&keys.amount),
            sender: group::native_point(&keys.sender),
            receiver: group::native_point(&keys.receiver),
            checking: group::native_point(&keys.checking),
        }
    }

    pub fn witness<'a>(&self, ctx: Context<'a, Scalar>) -> Keys<Var<'a, Scalar>> {
        let point = |p: &Point<Scalar>| group::witness_subgroup(ctx, p, &p.cofactor_preimage());
        Keys {
            epoch: Var::witness(ctx, |_| self.epoch.clone()),
            amount: point(&self.amount),
            sender: point(&self.sender),
            receiver: point(&self.receiver),
            checking: point(&self.checking),
        }
    }
}

impl<'a> Keys<Var<'a, Scalar>> {
    pub fn constrain_registered(&self, ctx: Context<'a, Scalar>, regulated: &BoolVar<'a, Scalar>) {
        range::decompose(ctx, &self.epoch, 64);
        (regulated.clone() & range::is_zero(ctx, &self.epoch)).assert_eq(&BoolVar::constant(false));
        let sink = group::native_point(&shieldd_sdk_crypto::audit::UNREGULATED_RING);
        let points = [&self.amount, &self.sender, &self.receiver, &self.checking];
        let equal = |a: &Point<Var<'a, Scalar>>, b: &Point<Var<'a, Scalar>>| {
            range::is_zero(ctx, &(a.x.clone() - &b.x)) & range::is_zero(ctx, &(a.y.clone() - &b.y))
        };
        let sink = Point {
            x: Var::native(sink.x),
            y: Var::native(sink.y),
        };
        for (i, point) in points.iter().enumerate() {
            for forbidden in [Point::identity(), sink.clone()] {
                (regulated.clone() & equal(point, &forbidden)).assert_eq(&BoolVar::constant(false));
            }
            for other in &points[i + 1..] {
                (regulated.clone() & equal(point, other)).assert_eq(&BoolVar::constant(false));
            }
        }
    }
}

#[derive(Clone)]
pub struct Ciphertext<F> {
    pub r: Point<F>,
    pub c: Point<F>,
}

impl<F: Clone> Ciphertext<F> {
    pub fn fields(&self) -> [F; 4] {
        [
            self.r.x.clone(),
            self.r.y.clone(),
            self.c.x.clone(),
            self.c.y.clone(),
        ]
    }
}

#[derive(Clone)]
pub struct Ownership {
    pub randomness: Scalar,
    pub published: Ciphertext<Scalar>,
}

pub fn fingerprint(params: &Parameters, address: &Address<Scalar>) -> Point<Scalar> {
    map::to_prime(&params.native(
        domains::OWNERSHIP,
        &[
            address.diversified.x.clone(),
            address.diversified.y.clone(),
            address.transmission.x.clone(),
            address.transmission.y.clone(),
        ],
    ))
}

pub fn encrypt(
    params: &Parameters,
    address: &Address<Scalar>,
    checking: &Point<Scalar>,
    randomness: Scalar,
) -> anyhow::Result<Ownership> {
    anyhow::ensure!(
        randomness != Scalar::zero() && randomness < Scalar::from_limbs(scalar::ORDER),
        "ownership scalar must be canonical and nonzero"
    );
    anyhow::ensure!(*checking != Point::identity(), "identity ownership key");
    let published = Ciphertext {
        r: group::generator().multiply(&randomness),
        c: fingerprint(params, address)
            .add(&checking.multiply(&randomness), &group::coefficient_d()),
    };
    Ok(Ownership {
        randomness,
        published,
    })
}

/// Address and checking points must already be validated, authenticated subgroup points.
pub fn constrain<'a>(
    ctx: Context<'a, Scalar>,
    params: &Parameters,
    address: &Address<Var<'a, Scalar>>,
    checking: &Point<Var<'a, Scalar>>,
    witness: &Ownership,
) -> Ciphertext<Var<'a, Scalar>> {
    let var = |v: &Scalar| Var::witness(ctx, |_| v.clone());
    let point = |p: &Point<Scalar>| Point {
        x: var(&p.x),
        y: var(&p.y),
    };
    let result = Ciphertext {
        r: point(&witness.published.r),
        c: point(&witness.published.c),
    };
    let bits = scalar::canonical_bits(ctx, &var(&witness.randomness));
    group::generator()
        .multiply_fixed(&bits)
        .assert_equal(&result.r);
    result.r.assert_non_identity();
    checking.assert_non_identity();
    let hash = params.circuit(
        domains::OWNERSHIP,
        &[
            address.diversified.x.clone(),
            address.diversified.y.clone(),
            address.transmission.x.clone(),
            address.transmission.y.clone(),
        ],
    );
    map::circuit(ctx, &hash)
        .add(
            &checking.multiply_bits(&bits),
            &Var::native(group::coefficient_d()),
        )
        .assert_equal(&result.c);
    result
}

#[cfg(test)]
mod tests;
