use crate::{group::Point, range::less_or_equal};
use commonware_codec::Encode;
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::{Additive, Ring};

/// Converts the shared field's canonical little-endian encoding to Commonware's big-endian codec.
pub fn field(value: &shieldd_sdk_crypto::Fq) -> Scalar {
    use commonware_codec::Read;
    use commonware_cryptography::bls12381::primitives::group::ScalarReadCfg;
    let mut bytes = value.to_bytes();
    bytes.reverse();
    Scalar::read_cfg(&mut bytes.as_slice(), &ScalarReadCfg::AllowZero)
        .expect("same BLS12-381 scalar field")
}

pub fn native_field(value: &Scalar) -> shieldd_sdk_crypto::Fq {
    let mut bytes: [u8; 32] = value.encode().as_ref().try_into().expect("32-byte scalar");
    bytes.reverse();
    shieldd_sdk_crypto::encoding::field(&bytes).expect("same BLS12-381 scalar field")
}

fn native_bits(value: &Scalar) -> Vec<bool> {
    let encoded = value.encode();
    (0..255)
        .map(|i| encoded[31 - i / 8] >> (i % 8) & 1 == 1)
        .collect()
}

fn constrain_bits<'ctx>(value: &Var<'ctx, Scalar>, bits: &[BoolVar<'ctx, Scalar>]) {
    assert_eq!(bits.len(), 255);
    let mut sum = Var::zero();
    let mut weight = Scalar::one();
    for bit in bits {
        sum += &(bit.var().clone() * &Var::native(weight.clone()));
        weight = weight.clone() + &weight;
    }
    sum.assert_eq(value);
    let maximum = native_bits(&(-Scalar::one()))
        .into_iter()
        .map(BoolVar::constant)
        .collect::<Vec<_>>();
    less_or_equal(bits, &maximum).assert_eq(&BoolVar::constant(true));
}

/// Canonical 255-bit field representation, including the strict modulus bound.
pub fn canonical_bits<'ctx>(
    ctx: Context<'ctx, Scalar>,
    value: &Var<'ctx, Scalar>,
) -> Vec<BoolVar<'ctx, Scalar>> {
    let bits = (0..255)
        .map(|i| {
            BoolVar::witness(ctx, |values| {
                let encoded = value.value(values).encode();
                encoded[31 - i / 8] >> (i % 8) & 1 == 1
            })
        })
        .collect::<Vec<_>>();
    constrain_bits(value, &bits);
    bits
}

/// Canonical Jubjub point encoding: canonical little-endian y, with x parity in bit 255.
pub fn point_bytes(point: &Point<Scalar>) -> [u8; 32] {
    let mut out: [u8; 32] = point
        .y
        .encode()
        .as_ref()
        .try_into()
        .expect("32-byte scalar");
    out.reverse();
    out[31] |= (point.x.encode()[31] & 1) << 7;
    out
}

fn point_bits<'ctx>(
    ctx: Context<'ctx, Scalar>,
    point: &Point<Var<'ctx, Scalar>>,
) -> Vec<BoolVar<'ctx, Scalar>> {
    let mut bits = canonical_bits(ctx, &point.y);
    bits.push(canonical_bits(ctx, &point.x)[0].clone());
    bits
}

pub fn pack_bytes(bytes: &[u8]) -> Vec<Scalar> {
    bytes
        .chunks(31)
        .map(|chunk| {
            chunk.iter().rev().fold(Scalar::zero(), |acc, byte| {
                acc * &Scalar::from(256) + &Scalar::from(u64::from(*byte))
            })
        })
        .collect()
}

/// Packs the exact two-point address bytes into 31-byte little-endian field words.
pub fn address_words<'ctx>(
    ctx: Context<'ctx, Scalar>,
    generator: &Point<Var<'ctx, Scalar>>,
    transmission: &Point<Var<'ctx, Scalar>>,
) -> Vec<Var<'ctx, Scalar>> {
    let mut bits = point_bits(ctx, generator);
    bits.extend(point_bits(ctx, transmission));
    bits.chunks(248)
        .map(|word| {
            let mut sum = Var::zero();
            let mut weight = Scalar::one();
            for bit in word {
                sum += &(bit.var().clone() * &Var::native(weight.clone()));
                weight = weight.clone() + &weight;
            }
            sum
        })
        .collect()
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::group::{coefficient_d, generator, witness_subgroup};
    use commonware_cryptography::zk::circuit::build_with_values;

    #[test]
    fn modulus_representative_cannot_encode_zero() {
        let mut modulus = native_bits(&(-Scalar::one()));
        let mut carry = true;
        for bit in &mut modulus {
            let next = *bit && carry;
            *bit ^= carry;
            carry = next;
        }
        let (invalid, _) = build_with_values(|ctx| {
            let value = Var::witness(ctx, |_| Scalar::zero());
            let bits = modulus
                .iter()
                .map(|bit| BoolVar::witness(ctx, |_| *bit))
                .collect::<Vec<_>>();
            constrain_bits(&value, &bits);
            Vec::new()
        });
        assert!(!invalid.is_satisfied());
        for scalar in [Scalar::zero(), Scalar::one(), -Scalar::one()] {
            let (valid, _) = build_with_values(|ctx| {
                let v = Var::witness(ctx, |_| scalar.clone());
                canonical_bits(ctx, &v);
                Vec::new()
            });
            assert!(valid.is_satisfied());
        }
    }

    #[test]
    fn encrypted_address_words_match_exact_native_bytes() {
        let q = generator();
        let p = q.multiply_constant(&[8], &coefficient_d());
        let r = q.multiply_constant(&[2], &coefficient_d());
        let s = r.multiply_constant(&[8], &coefficient_d());
        let bytes = [point_bytes(&p), point_bytes(&s)].concat();
        let expected = pack_bytes(&bytes);
        let (valid, _) = build_with_values(|ctx| {
            let pv = witness_subgroup(ctx, &p, &q);
            let sv = witness_subgroup(ctx, &s, &r);
            let words = address_words(ctx, &pv, &sv);
            for (word, expected) in words.iter().zip(&expected) {
                word.assert_eq(&Var::native(expected.clone()));
            }
            Vec::new()
        });
        assert!(valid.is_satisfied());
        assert_eq!(expected.len(), 3);
        let mut neg = p.clone();
        neg.x = -neg.x;
        assert_ne!(point_bytes(&p), point_bytes(&neg));
    }
}
