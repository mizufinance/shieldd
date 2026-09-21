use crate::{
    encryption,
    group::{self, Point},
    hash::Parameters,
    scalar,
};
use anyhow::{Result, ensure};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{Context, Var},
};
use commonware_math::algebra::Additive;

use shieldd_sdk_crypto::domains::RECOVERY_COMMITMENT as COMMITMENT;
use shieldd_sdk_crypto::domains::RECOVERY_CONFIRMATION as CONFIRMATION;

#[derive(Clone)]
pub struct Capsule<F> {
    pub commitment: F,
    pub epk: Point<F>,
    pub c2: F,
    pub salt: F,
    pub confirmation: F,
    pub encrypted_amount: F,
    pub encrypted_blinding: F,
}
impl<F: Clone> Capsule<F> {
    pub fn commitment_inputs(&self) -> [F; 7] {
        [
            self.epk.x.clone(),
            self.epk.y.clone(),
            self.c2.clone(),
            self.salt.clone(),
            self.confirmation.clone(),
            self.encrypted_amount.clone(),
            self.encrypted_blinding.clone(),
        ]
    }
}

#[derive(Clone)]
pub struct Witness {
    pub capsule: Capsule<Scalar>,
    pub seed: Scalar,
    pub randomizer: Scalar,
}

/// Caller supplies a validated capability key and freshly sampled encryption randomness.
pub fn encrypt(
    params: &Parameters,
    capk: &Point<Scalar>,
    amount: &Scalar,
    blinding: &Scalar,
    randomizer: Scalar,
    seed: Scalar,
    salt: Scalar,
) -> Result<Witness> {
    ensure!(
        randomizer != Scalar::zero() && randomizer < Scalar::from_limbs(scalar::ORDER),
        "recovery randomizer must be canonical and nonzero"
    );
    let epk = group::generator().multiply(&randomizer);
    let mut capsule = Capsule {
        commitment: Scalar::zero(),
        c2: seed.clone() + &encryption::native_secret(params, &capk.multiply(&randomizer)),
        confirmation: params.native(
            CONFIRMATION,
            &[seed.clone(), epk.x.clone(), epk.y.clone(), salt.clone()],
        ),
        epk,
        salt,
        encrypted_amount: amount.clone() + &encryption::native_stream(params, &seed, 0),
        encrypted_blinding: blinding.clone() + &encryption::native_stream(params, &seed, 1),
    };
    capsule.commitment = params.native(COMMITMENT, &capsule.commitment_inputs());
    Ok(Witness {
        capsule,
        seed,
        randomizer,
    })
}

/// Preserves EPK/DH, plaintext, confirmation and complete capsule commitment binding.
pub fn constrain<'ctx>(
    ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    capk: &Point<Var<'ctx, Scalar>>,
    amount: &Var<'ctx, Scalar>,
    blinding: &Var<'ctx, Scalar>,
    witness: &Witness,
) -> Capsule<Var<'ctx, Scalar>> {
    let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
    let out = witness.capsule.witness_fields(ctx);
    let seed = var(&witness.seed);
    let bits = scalar::canonical_bits(ctx, &var(&witness.randomizer));
    group::generator()
        .multiply_fixed(&bits)
        .assert_equal(&out.epk);
    out.epk.assert_non_identity();
    let shared = capk.multiply_bits(&bits);
    (seed.clone() + &encryption::secret(params, &shared)).assert_eq(&out.c2);
    constrain_plaintext(params, amount, blinding, &out, &seed);
    out
}

impl Capsule<Scalar> {
    pub fn witness<'a>(&self, ctx: Context<'a, Scalar>) -> Capsule<Var<'a, Scalar>> {
        let mut out = self.witness_fields(ctx);
        out.epk = group::witness_subgroup(ctx, &self.epk, &self.epk.cofactor_preimage());
        out
    }

    fn witness_fields<'a>(&self, ctx: Context<'a, Scalar>) -> Capsule<Var<'a, Scalar>> {
        let var = |s: &Scalar| Var::witness(ctx, |_| s.clone());
        Capsule {
            commitment: var(&self.commitment),
            epk: Point {
                x: var(&self.epk.x),
                y: var(&self.epk.y),
            },
            c2: var(&self.c2),
            salt: var(&self.salt),
            confirmation: var(&self.confirmation),
            encrypted_amount: var(&self.encrypted_amount),
            encrypted_blinding: var(&self.encrypted_blinding),
        }
    }
}

/// Release verification supplies the seed; this relation does not assert knowledge of the encryption secret.
pub fn constrain_plaintext<'a>(
    params: &Parameters,
    amount: &Var<'a, Scalar>,
    blinding: &Var<'a, Scalar>,
    capsule: &Capsule<Var<'a, Scalar>>,
    seed: &Var<'a, Scalar>,
) {
    capsule.epk.assert_non_identity();
    params
        .circuit(
            CONFIRMATION,
            &[
                seed.clone(),
                capsule.epk.x.clone(),
                capsule.epk.y.clone(),
                capsule.salt.clone(),
            ],
        )
        .assert_eq(&capsule.confirmation);
    (amount.clone() + &encryption::stream(params, seed, 0)).assert_eq(&capsule.encrypted_amount);
    (blinding.clone() + &encryption::stream(params, seed, 1))
        .assert_eq(&capsule.encrypted_blinding);
    params
        .circuit(COMMITMENT, &capsule.commitment_inputs())
        .assert_eq(&capsule.commitment);
}

#[cfg(test)]
mod tests {
    use super::*;
    use commonware_cryptography::zk::circuit::build_with_values;
    use commonware_math::algebra::Ring;

    fn satisfied(
        params: &Parameters,
        capk: &Point<Scalar>,
        amount: &Scalar,
        blinding: &Scalar,
        w: &Witness,
    ) -> bool {
        let (c, _) = build_with_values(|ctx| {
            let key = group::witness_subgroup(ctx, capk, &capk.cofactor_preimage());
            key.assert_non_identity();
            let amount = Var::witness(ctx, |_| amount.clone());
            let blinding = Var::witness(ctx, |_| blinding.clone());
            constrain(ctx, params, &key, &amount, &blinding, w);
            Vec::new()
        });
        c.is_satisfied()
    }

    #[test]
    fn capsule_binds_every_word_and_private_value_for_zero_and_full_u128_amounts() {
        let params = Parameters::load().unwrap();
        let capk = group::generator().multiply(&Scalar::from(7));
        let blinding = -Scalar::one();
        for amount in [
            Scalar::zero(),
            Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0]),
        ] {
            let w = encrypt(
                &params,
                &capk,
                &amount,
                &blinding,
                Scalar::from(11),
                Scalar::from(13),
                Scalar::from(17),
            )
            .unwrap();
            assert!(satisfied(&params, &capk, &amount, &blinding, &w));
            let seed = w.capsule.c2.clone()
                - &encryption::native_secret(&params, &w.capsule.epk.multiply(&Scalar::from(7)));
            assert_eq!(seed, w.seed);
            assert_eq!(
                w.capsule.encrypted_amount.clone() - &encryption::native_stream(&params, &seed, 0),
                amount
            );
            assert_eq!(
                w.capsule.encrypted_blinding.clone()
                    - &encryption::native_stream(&params, &seed, 1),
                blinding
            );
            for i in 0..10 {
                let mut bad = w.clone();
                let c = &mut bad.capsule;
                let fields = [
                    &mut c.commitment,
                    &mut c.epk.x,
                    &mut c.epk.y,
                    &mut c.c2,
                    &mut c.salt,
                    &mut c.confirmation,
                    &mut c.encrypted_amount,
                    &mut c.encrypted_blinding,
                    &mut bad.seed,
                    &mut bad.randomizer,
                ];
                *fields[i] += &Scalar::one();
                assert!(
                    !satisfied(&params, &capk, &amount, &blinding, &bad),
                    "field {i}"
                );
            }
            let mut bad = w.clone();
            bad.randomizer += &Scalar::from_limbs(scalar::ORDER);
            assert!(!satisfied(&params, &capk, &amount, &blinding, &bad));
            let mut bad = w.clone();
            bad.randomizer = Scalar::zero();
            bad.capsule.epk = Point::identity();
            assert!(!satisfied(&params, &capk, &amount, &blinding, &bad));
            assert!(!satisfied(
                &params,
                &capk,
                &(amount.clone() + &Scalar::one()),
                &blinding,
                &w
            ));
            assert!(!satisfied(
                &params,
                &capk,
                &amount,
                &(blinding.clone() + &Scalar::one()),
                &w
            ));
            let other_key = group::generator().multiply(&Scalar::from(19));
            assert!(!satisfied(&params, &other_key, &amount, &blinding, &w));
        }
    }
}
