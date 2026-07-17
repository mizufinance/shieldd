//! Experimental MAC-campaign copy of executed BLS12-377 Fq arithmetic.
//!
//! Arkworks 0.5.0 instantiates `MontBackend<FqConfig, 6>::mul_assign`. On the
//! production x86_64 build BMI2/ADX are not target features, so execution uses
//! the safe-Rust no-carry CIOS branch followed by one conditional subtraction.
//! Addition, subtraction, negation, multiplication, and the dedicated square
//! path are spelled out monomorphically for hax and parity testing.

const MODULUS: [u64; 6] = [
    0x8508_c000_0000_0001,
    0x170b_5d44_3000_0000,
    0x1ef3_622f_ba09_4800,
    0x1a22_d9f3_00f5_138f,
    0xc63b_05c0_6ca1_493b,
    0x01ae_3a46_17c5_10ea,
];
const INV: u64 = 0x8508_bfff_ffff_ffff;
const R2: [u64; 6] = [
    0xb786_686c_9400_cd22,
    0x0329_fcaa_b004_31b1,
    0x22a5_f111_62d6_b46d,
    0xbfdf_7d03_827d_c3ac,
    0x837e_92f0_4179_0bf9,
    0x006d_fccb_1e91_4b88,
];

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FqMont(pub [u64; 6]);

#[derive(Clone, Copy)]
struct Mac {
    low: u64,
    carry: u64,
}

#[inline(always)]
fn mac(accumulator: u64, left: u64, right: u64, carry: u64) -> Mac {
    let value = accumulator as u128 + left as u128 * right as u128 + carry as u128;
    Mac {
        low: value as u64,
        carry: (value >> 64) as u64,
    }
}

#[inline(always)]
fn adc(left: u64, right: u64, carry: u64) -> Mac {
    let value = left as u128 + right as u128 + carry as u128;
    Mac {
        low: value as u64,
        carry: (value >> 64) as u64,
    }
}

#[inline(always)]
fn add_raw(left: [u64; 6], right: [u64; 6]) -> [u64; 6] {
    let limb0 = adc(left[0], right[0], 0);
    let limb1 = adc(left[1], right[1], limb0.carry);
    let limb2 = adc(left[2], right[2], limb1.carry);
    let limb3 = adc(left[3], right[3], limb2.carry);
    let limb4 = adc(left[4], right[4], limb3.carry);
    let limb5 = adc(left[5], right[5], limb4.carry);
    [limb0.low, limb1.low, limb2.low, limb3.low, limb4.low, limb5.low]
}

#[inline(always)]
fn round(r: [u64; 6], a: [u64; 6], b: u64) -> [u64; 6] {
    let product0 = mac(r[0], a[0], b, 0);
    let k = product0.low.wrapping_mul(INV);
    let reduction0 = mac(product0.low, k, MODULUS[0], 0);

    let product1 = mac(r[1], a[1], b, product0.carry);
    let reduction1 = mac(product1.low, k, MODULUS[1], reduction0.carry);
    let product2 = mac(r[2], a[2], b, product1.carry);
    let reduction2 = mac(product2.low, k, MODULUS[2], reduction1.carry);
    let product3 = mac(r[3], a[3], b, product2.carry);
    let reduction3 = mac(product3.low, k, MODULUS[3], reduction2.carry);
    let product4 = mac(r[4], a[4], b, product3.carry);
    let reduction4 = mac(product4.low, k, MODULUS[4], reduction3.carry);
    let product5 = mac(r[5], a[5], b, product4.carry);
    let reduction5 = mac(product5.low, k, MODULUS[5], reduction4.carry);

    [
        reduction1.low,
        reduction2.low,
        reduction3.low,
        reduction4.low,
        reduction5.low,
        product5.carry + reduction5.carry,
    ]
}

#[inline(always)]
fn geq_modulus(value: [u64; 6]) -> bool {
    value[5] > MODULUS[5]
        || (value[5] == MODULUS[5]
            && (value[4] > MODULUS[4]
                || (value[4] == MODULUS[4]
                    && (value[3] > MODULUS[3]
                        || (value[3] == MODULUS[3]
                            && (value[2] > MODULUS[2]
                                || (value[2] == MODULUS[2]
                                    && (value[1] > MODULUS[1]
                                        || (value[1] == MODULUS[1]
                                            && value[0] >= MODULUS[0])))))))))
}

#[inline(always)]
fn sbb(left: u64, right: u64, borrow: u64) -> (u64, u64) {
    let value = (left as u128).wrapping_sub(right as u128 + borrow as u128);
    (value as u64, (value >> 127) as u64)
}

#[inline(always)]
fn sub_raw(left: [u64; 6], right: [u64; 6]) -> [u64; 6] {
    let limb0 = sbb(left[0], right[0], 0);
    let limb1 = sbb(left[1], right[1], limb0.1);
    let limb2 = sbb(left[2], right[2], limb1.1);
    let limb3 = sbb(left[3], right[3], limb2.1);
    let limb4 = sbb(left[4], right[4], limb3.1);
    let limb5 = sbb(left[5], right[5], limb4.1);
    [limb0.0, limb1.0, limb2.0, limb3.0, limb4.0, limb5.0]
}

#[inline(always)]
fn gt(left: [u64; 6], right: [u64; 6]) -> bool {
    left[5] > right[5]
        || (left[5] == right[5]
            && (left[4] > right[4]
                || (left[4] == right[4]
                    && (left[3] > right[3]
                        || (left[3] == right[3]
                            && (left[2] > right[2]
                                || (left[2] == right[2]
                                    && (left[1] > right[1]
                                        || (left[1] == right[1]
                                            && left[0] > right[0])))))))))
}

#[inline(always)]
fn shr_join(low: u64, high: u64) -> u64 {
    (low >> 1) | (high << 63)
}

#[inline(always)]
fn div2(value: [u64; 6]) -> [u64; 6] {
    [
        shr_join(value[0], value[1]),
        shr_join(value[1], value[2]),
        shr_join(value[2], value[3]),
        shr_join(value[3], value[4]),
        shr_join(value[4], value[5]),
        value[5] >> 1,
    ]
}

#[inline(always)]
fn is_even(value: [u64; 6]) -> bool {
    (value[0] >> 1) << 1 == value[0]
}

#[inline(always)]
fn add_modulus_raw(value: [u64; 6]) -> [u64; 6] {
    add_raw(value, MODULUS)
}

#[inline(always)]
fn half_coefficient_odd(value: [u64; 6]) -> [u64; 6] {
    div2(add_modulus_raw(value))
}

#[inline(always)]
fn half_coefficient(value: [u64; 6]) -> [u64; 6] {
    if is_even(value) {
        div2(value)
    } else {
        half_coefficient_odd(value)
    }
}

#[inline(always)]
fn subtract_modulus(value: [u64; 6]) -> [u64; 6] {
    if !geq_modulus(value) {
        return value;
    }
    let limb0 = sbb(value[0], MODULUS[0], 0);
    let limb1 = sbb(value[1], MODULUS[1], limb0.1);
    let limb2 = sbb(value[2], MODULUS[2], limb1.1);
    let limb3 = sbb(value[3], MODULUS[3], limb2.1);
    let limb4 = sbb(value[4], MODULUS[4], limb3.1);
    let limb5 = sbb(value[5], MODULUS[5], limb4.1);
    [limb0.0, limb1.0, limb2.0, limb3.0, limb4.0, limb5.0]
}

/// The exact safe-Rust CIOS closure selected for reduced BLS12-377 Fq inputs.
pub fn mul(a: FqMont, b: FqMont) -> FqMont {
    let r0 = round([0; 6], a.0, b.0[0]);
    let r1 = round(r0, a.0, b.0[1]);
    let r2 = round(r1, a.0, b.0[2]);
    let r3 = round(r2, a.0, b.0[3]);
    let r4 = round(r3, a.0, b.0[4]);
    let r5 = round(r4, a.0, b.0[5]);
    FqMont(subtract_modulus(r5))
}

/// Arkworks `add_assign`: six-word ADC followed by conditional subtraction.
pub fn add(a: FqMont, b: FqMont) -> FqMont {
    FqMont(subtract_modulus(add_raw(a.0, b.0)))
}

/// Arkworks `sub_assign`: conditional modulus addition followed by subtraction.
pub fn sub(a: FqMont, b: FqMont) -> FqMont {
    let left = if gt(b.0, a.0) {
        add_raw(a.0, MODULUS)
    } else {
        a.0
    };
    FqMont(sub_raw(left, b.0))
}

/// Arkworks `neg_in_place`: preserve zero, otherwise compute `q - a`.
pub fn neg(a: FqMont) -> FqMont {
    if a.0 == [0; 6] {
        a
    } else {
        FqMont(sub_raw(MODULUS, a.0))
    }
}

/// Arkworks' GKP binary extended-Euclidean `MontBackend::inverse` path.
pub fn inv(a: FqMont) -> Option<FqMont> {
    if a.0 == [0; 6] {
        return None;
    }

    let one = [1, 0, 0, 0, 0, 0];
    let mut u = a.0;
    let mut v = MODULUS;
    let mut b = R2;
    let mut c = [0; 6];

    while u != one && v != one {
        while is_even(u) {
            u = div2(u);
            b = half_coefficient(b);
        }
        while is_even(v) {
            v = div2(v);
            c = half_coefficient(c);
        }
        if gt(u, v) {
            u = sub_raw(u, v);
            b = sub(FqMont(b), FqMont(c)).0;
        } else {
            v = sub_raw(v, u);
            c = sub(FqMont(c), FqMont(b)).0;
        }
    }

    if u == one { Some(FqMont(b)) } else { Some(FqMont(c)) }
}

#[inline(always)]
fn square_reduce_round(mut r: [u64; 12], i: usize, carry2: u64) -> ([u64; 12], u64) {
    let k = r[i].wrapping_mul(INV);
    let reduction0 = mac(r[i], k, MODULUS[0], 0);
    let reduction1 = mac(r[i + 1], k, MODULUS[1], reduction0.carry);
    r[i + 1] = reduction1.low;
    let reduction2 = mac(r[i + 2], k, MODULUS[2], reduction1.carry);
    r[i + 2] = reduction2.low;
    let reduction3 = mac(r[i + 3], k, MODULUS[3], reduction2.carry);
    r[i + 3] = reduction3.low;
    let reduction4 = mac(r[i + 4], k, MODULUS[4], reduction3.carry);
    r[i + 4] = reduction4.low;
    let reduction5 = mac(r[i + 5], k, MODULUS[5], reduction4.carry);
    r[i + 5] = reduction5.low;
    let top = adc(r[i + 6], reduction5.carry, carry2);
    r[i + 6] = top.low;
    (r, top.carry)
}

/// Arkworks' safe-Rust doubled-cross-product `square_in_place` path.
pub fn square(a: FqMont) -> FqMont {
    let mut r = [0_u64; 12];
    let mut carry = 0_u64;

    for i in 0..5 {
        for j in (i + 1)..6 {
            let product = mac(r[i + j], a.0[i], a.0[j], carry);
            r[i + j] = product.low;
            carry = product.carry;
        }
        r[6 + i] = carry;
        carry = 0;
    }

    r[11] = r[10] >> 63;
    for i in 2..11 {
        r[12 - i] = (r[12 - i] << 1) | (r[11 - i] >> 63);
    }
    r[1] <<= 1;

    for i in 0..6 {
        let diagonal = mac(r[2 * i], a.0[i], a.0[i], carry);
        r[2 * i] = diagonal.low;
        let next = adc(r[2 * i + 1], 0, diagonal.carry);
        r[2 * i + 1] = next.low;
        carry = next.carry;
    }

    let mut carry2 = 0_u64;
    for i in 0..6 {
        let reduced = square_reduce_round(r, i, carry2);
        r = reduced.0;
        carry2 = reduced.1;
    }

    FqMont(subtract_modulus([r[6], r[7], r[8], r[9], r[10], r[11]]))
}

/// Extraction root whose closure contains every S3-F03B operation.
#[doc(hidden)]
pub fn extract_f03b(a: FqMont, b: FqMont) -> (FqMont, FqMont, FqMont, FqMont) {
    (add(a, b), sub(a, b), neg(a), square(a))
}

#[cfg(test)]
mod inversion_tests {
    use super::{inv, FqMont};
    use ark_bls12_377::Fq;
    use ark_ff::{BigInt, Field};
    use ark_std::{test_rng, UniformRand};

    fn mont(value: Fq) -> FqMont {
        FqMont(value.0 .0)
    }

    fn ark(value: FqMont) -> Fq {
        Fq::new_unchecked(BigInt(value.0))
    }

    fn check(value: Fq) {
        assert_eq!(inv(mont(value)).map(ark), value.inverse());
    }

    #[test]
    fn edge_and_512_random_vectors_match_arkworks_fq_inverse() {
        for value in [
            Fq::from(0_u64),
            Fq::from(1_u64),
            Fq::from(2_u64),
            -Fq::from(1_u64),
            -Fq::from(2_u64),
            Fq::from(u64::MAX),
        ] {
            check(value);
        }

        let mut rng = test_rng();
        for _ in 0..512 {
            check(Fq::rand(&mut rng));
        }
    }
}
