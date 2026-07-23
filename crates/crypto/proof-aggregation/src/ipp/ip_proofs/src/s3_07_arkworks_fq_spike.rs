//! Experimental MAC-campaign copy of executed BLS12-377 Fq arithmetic.
//!
//! Arkworks 0.5.0 instantiates `MontBackend<FqConfig, 6>::mul_assign`. On the
//! production x86_64 build BMI2/ADX are not target features, so execution uses
//! the safe-Rust no-carry CIOS branch followed by one conditional subtraction.
//! Addition, subtraction, negation, multiplication, the dedicated square,
//! Tonelli--Shanks square root, and canonical byte paths are spelled out
//! monomorphically for hax and parity testing.

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
const ONE: [u64; 6] = [
    0x02cd_ffff_ffff_ff68,
    0x5140_9f83_7fff_ffb1,
    0x9f7d_b3a9_8a7d_3ff2,
    0x7b4e_97b7_6e7c_6305,
    0x4cf4_95bf_803c_84e8,
    0x008d_6661_e2fd_f49a,
];
const TWO_ADIC_ROOT_OF_UNITY: [u64; 6] = [
    0xdfca_e622_791a_ab1e,
    0x720b_c7a4_bf05_c59c,
    0x259d_4186_0d78_82d6,
    0xd82b_4258_b1e4_da96,
    0xb7f9_a1cc_67b4_e064,
    0x00fd_a47f_566e_4289,
];
const TRACE_MINUS_ONE_DIV_TWO: [u64; 6] = [
    0xba88_6000_0001_0a11,
    0xc45f_7412_9000_2e16,
    0xb3e6_01ea_271e_3de6,
    0x0b80_d942_9276_3445,
    0x748c_2f8a_21d5_8c76,
    0x0000_0000_0000_035c,
];
const TWO_ADICITY: usize = 46;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FqMont(pub [u64; 6]);

pub type FqBytes = [u8; 48];

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
    [
        limb0.low, limb1.low, limb2.low, limb3.low, limb4.low, limb5.low,
    ]
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
                                        || (left[1] == right[1] && left[0] > right[0])))))))))
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

    if u == one {
        Some(FqMont(b))
    } else {
        Some(FqMont(c))
    }
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

#[inline(always)]
fn pow(a: FqMont, exponent: [u64; 6]) -> FqMont {
    let mut result = FqMont(ONE);
    let mut limb = 6_usize;
    while limb > 0 {
        limb -= 1;
        let mut bit = 64_usize;
        while bit > 0 {
            bit -= 1;
            result = square(result);
            if ((exponent[limb] >> bit) & 1) == 1 {
                result = mul(result, a);
            }
        }
    }
    result
}

#[derive(Clone, Copy)]
struct SqrtState {
    z: FqMont,
    x: FqMont,
    b: FqMont,
    v: usize,
}

#[inline(always)]
fn sqrt_find_k(mut value: FqMont) -> usize {
    let mut k = 0_usize;
    while value.0 != ONE {
        value = square(value);
        k += 1;
    }
    k
}

#[inline(always)]
fn sqrt_square_for(mut value: FqMont, j: usize) -> FqMont {
    let mut i = 1_usize;
    while i < j {
        value = square(value);
        i += 1;
    }
    value
}

#[inline(always)]
fn sqrt_step(state: SqrtState) -> Option<SqrtState> {
    let k = sqrt_find_k(state.b);
    if k == TWO_ADICITY {
        return None;
    }

    let w = sqrt_square_for(state.z, state.v - k);
    let z = square(w);
    let b = mul(state.b, z);
    let x = mul(state.x, w);
    Some(SqrtState { z, x, b, v: k })
}

/// Arkworks' BLS12-377 `Fq` Tonelli--Shanks path.
///
/// Arkworks returns the deterministic algorithm output without even or
/// lexicographically-small sign normalization.
pub fn sqrt(a: FqMont) -> Option<FqMont> {
    if a.0 == [0; 6] {
        return Some(a);
    }

    let w = pow(a, TRACE_MINUS_ONE_DIV_TWO);
    let x = mul(w, a);
    let b = mul(x, w);
    let mut state = SqrtState {
        z: FqMont(TWO_ADIC_ROOT_OF_UNITY),
        x,
        b,
        v: TWO_ADICITY,
    };
    let mut failed = false;

    while !failed && state.b.0 != ONE {
        match sqrt_step(state) {
            Some(next) => state = next,
            None => failed = true,
        }
    }

    if failed {
        None
    } else if square(state.x) == a {
        Some(state.x)
    } else {
        None
    }
}

#[inline(always)]
fn word_to_bytes(word: u64) -> [u8; 8] {
    [
        word as u8,
        (word >> 8) as u8,
        (word >> 16) as u8,
        (word >> 24) as u8,
        (word >> 32) as u8,
        (word >> 40) as u8,
        (word >> 48) as u8,
        (word >> 56) as u8,
    ]
}

#[inline(always)]
fn bytes_to_word(bytes: [u8; 8]) -> u64 {
    bytes[0] as u64
        | ((bytes[1] as u64) << 8)
        | ((bytes[2] as u64) << 16)
        | ((bytes[3] as u64) << 24)
        | ((bytes[4] as u64) << 32)
        | ((bytes[5] as u64) << 40)
        | ((bytes[6] as u64) << 48)
        | ((bytes[7] as u64) << 56)
}

#[inline(always)]
fn limbs_to_bytes(value: [u64; 6]) -> FqBytes {
    let w0 = word_to_bytes(value[0]);
    let w1 = word_to_bytes(value[1]);
    let w2 = word_to_bytes(value[2]);
    let w3 = word_to_bytes(value[3]);
    let w4 = word_to_bytes(value[4]);
    let w5 = word_to_bytes(value[5]);
    [
        w0[0], w0[1], w0[2], w0[3], w0[4], w0[5], w0[6], w0[7], w1[0], w1[1], w1[2], w1[3], w1[4],
        w1[5], w1[6], w1[7], w2[0], w2[1], w2[2], w2[3], w2[4], w2[5], w2[6], w2[7], w3[0], w3[1],
        w3[2], w3[3], w3[4], w3[5], w3[6], w3[7], w4[0], w4[1], w4[2], w4[3], w4[4], w4[5], w4[6],
        w4[7], w5[0], w5[1], w5[2], w5[3], w5[4], w5[5], w5[6], w5[7],
    ]
}

#[inline(always)]
fn bytes_to_limbs(bytes: FqBytes) -> [u64; 6] {
    [
        bytes_to_word([
            bytes[0], bytes[1], bytes[2], bytes[3], bytes[4], bytes[5], bytes[6], bytes[7],
        ]),
        bytes_to_word([
            bytes[8], bytes[9], bytes[10], bytes[11], bytes[12], bytes[13], bytes[14], bytes[15],
        ]),
        bytes_to_word([
            bytes[16], bytes[17], bytes[18], bytes[19], bytes[20], bytes[21], bytes[22], bytes[23],
        ]),
        bytes_to_word([
            bytes[24], bytes[25], bytes[26], bytes[27], bytes[28], bytes[29], bytes[30], bytes[31],
        ]),
        bytes_to_word([
            bytes[32], bytes[33], bytes[34], bytes[35], bytes[36], bytes[37], bytes[38], bytes[39],
        ]),
        bytes_to_word([
            bytes[40], bytes[41], bytes[42], bytes[43], bytes[44], bytes[45], bytes[46], bytes[47],
        ]),
    ]
}

/// Arkworks serialization without flags: 48 canonical little-endian bytes.
pub fn to_bytes(a: FqMont) -> FqBytes {
    let value = mul(a, FqMont([1, 0, 0, 0, 0, 0])).0;
    limbs_to_bytes(value)
}

/// Arkworks deserialization without flags: reject integers greater than or
/// equal to `q`, then convert the accepted integer into Montgomery form.
pub fn from_bytes(bytes: FqBytes) -> Option<FqMont> {
    let value = bytes_to_limbs(bytes);
    if geq_modulus(value) {
        None
    } else {
        Some(mul(FqMont(value), FqMont(R2)))
    }
}

/// Extraction root for the remaining F04B paths.
#[doc(hidden)]
pub fn extract_f04b2(a: FqMont, bytes: FqBytes) -> (Option<FqMont>, FqBytes, Option<FqMont>) {
    (sqrt(a), to_bytes(a), from_bytes(bytes))
}

/// Extraction root whose closure contains every S3-F03B operation.
#[doc(hidden)]
pub fn extract_f03b(a: FqMont, b: FqMont) -> (FqMont, FqMont, FqMont, FqMont) {
    (add(a, b), sub(a, b), neg(a), square(a))
}

// ===== S3-16: executed Fq2 layer (tower degree 2, nonresidue -5) =====
//
// Faithful monomorphic copies of the ark-ff 0.5.0 executed paths:
// `Fp::double_in_place` (limb shift + conditional subtraction),
// `Fp::sum_of_products` M = 2 fused branch (two interleaved product MAC
// chains, inline Montgomery reduction), the four pinned `Fq2Config`
// nonresidue helpers, and the `QuadExtField` add/sub/neg/mul (degree-2
// sum-of-products branch), general-branch square, and norm-route inverse.

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Fq2Mont {
    pub c0: FqMont,
    pub c1: FqMont,
}

#[inline(always)]
fn shl_join(high: u64, low: u64) -> u64 {
    (high << 1) | (low >> 63)
}

/// `BigInt::mul2` followed by the Montgomery conditional subtraction.
pub fn double(a: FqMont) -> FqMont {
    let v = a.0;
    let shifted = [
        v[0] << 1,
        shl_join(v[1], v[0]),
        shl_join(v[2], v[1]),
        shl_join(v[3], v[2]),
        shl_join(v[4], v[3]),
        shl_join(v[5], v[4]),
    ];
    FqMont(subtract_modulus(shifted))
}

/// `Fp::sum_of_products` M = 2 fused branch: per outer limb `j`, two
/// interleaved product MAC chains accumulate into one register with dual
/// carry words, then one Montgomery reduction step and shift.
pub fn sum_of_products2(a0: FqMont, b0: FqMont, a1: FqMont, b1: FqMont) -> FqMont {
    let mut result = [0u64; 6];
    for j in 0..6 {
        let p0 = mac(result[0], a0.0[j], b0.0[0], 0);
        let p1 = mac(result[1], a0.0[j], b0.0[1], p0.carry);
        let p2 = mac(result[2], a0.0[j], b0.0[2], p1.carry);
        let p3 = mac(result[3], a0.0[j], b0.0[3], p2.carry);
        let p4 = mac(result[4], a0.0[j], b0.0[4], p3.carry);
        let p5 = mac(result[5], a0.0[j], b0.0[5], p4.carry);
        let sum0 = adc(0, 0, p5.carry);
        let q0 = mac(p0.low, a1.0[j], b1.0[0], 0);
        let q1 = mac(p1.low, a1.0[j], b1.0[1], q0.carry);
        let q2 = mac(p2.low, a1.0[j], b1.0[2], q1.carry);
        let q3 = mac(p3.low, a1.0[j], b1.0[3], q2.carry);
        let q4 = mac(p4.low, a1.0[j], b1.0[4], q3.carry);
        let q5 = mac(p5.low, a1.0[j], b1.0[5], q4.carry);
        let sum1 = adc(sum0.low, sum0.carry, q5.carry);
        let carry_a = sum1.low;
        let carry_b = sum1.carry;
        let k = q0.low.wrapping_mul(INV);
        let r0 = mac(q0.low, k, MODULUS[0], 0);
        let r1 = mac(q1.low, k, MODULUS[1], r0.carry);
        let r2 = mac(q2.low, k, MODULUS[2], r1.carry);
        let r3 = mac(q3.low, k, MODULUS[3], r2.carry);
        let r4 = mac(q4.low, k, MODULUS[4], r3.carry);
        let r5 = mac(q5.low, k, MODULUS[5], r4.carry);
        let top = adc(carry_a, carry_b, r5.carry);
        result = [r1.low, r2.low, r3.low, r4.low, r5.low, top.low];
    }
    FqMont(subtract_modulus(result))
}

/// Pinned `Fq2Config::mul_fp_by_nonresidue_in_place`: `x -> -5 x`.
pub fn mul_by_nonresidue(a: FqMont) -> FqMont {
    let negated = neg(a);
    add(negated, double(double(negated)))
}

/// Pinned `Fq2Config::sub_and_mul_fp_by_nonresidue`: `(y, x) -> x + 5 y`.
pub fn sub_and_mul_by_nonresidue(y: FqMont, x: FqMont) -> FqMont {
    let original = add(y, x);
    add(double(double(y)), original)
}

/// Pinned `Fq2Config::mul_fp_by_nonresidue_plus_one_and_add`:
/// `(y, x) -> x - 4 y`.
pub fn mul_by_nonresidue_plus_one_and_add(y: FqMont, x: FqMont) -> FqMont {
    add(neg(double(double(y))), x)
}

pub fn fq2_add(a: Fq2Mont, b: Fq2Mont) -> Fq2Mont {
    Fq2Mont {
        c0: add(a.c0, b.c0),
        c1: add(a.c1, b.c1),
    }
}

pub fn fq2_sub(a: Fq2Mont, b: Fq2Mont) -> Fq2Mont {
    Fq2Mont {
        c0: sub(a.c0, b.c0),
        c1: sub(a.c1, b.c1),
    }
}

pub fn fq2_neg(a: Fq2Mont) -> Fq2Mont {
    Fq2Mont {
        c0: neg(a.c0),
        c1: neg(a.c1),
    }
}

/// Degree-2 `mul_assign`: nonresidue premultiplication plus two fused
/// sum-of-products calls.
pub fn fq2_mul(a: Fq2Mont, b: Fq2Mont) -> Fq2Mont {
    let c1_nr = mul_by_nonresidue(a.c1);
    Fq2Mont {
        c0: sum_of_products2(a.c0, b.c0, c1_nr, b.c1),
        c1: sum_of_products2(a.c0, b.c1, a.c1, b.c0),
    }
}

/// General-branch (`beta != -1`) `square_in_place`.
pub fn fq2_square(a: Fq2Mont) -> Fq2Mont {
    let v0 = sub(a.c0, a.c1);
    let v3 = sub_and_mul_by_nonresidue(a.c1, a.c0);
    let v2 = mul(a.c0, a.c1);
    let v0 = mul(v0, v3);
    Fq2Mont {
        c0: mul_by_nonresidue_plus_one_and_add(v2, v0),
        c1: double(v2),
    }
}

/// Norm-route `inverse`: `None` exactly on zero.
pub fn fq2_inv(a: Fq2Mont) -> Option<Fq2Mont> {
    if a.c0.0 == [0; 6] && a.c1.0 == [0; 6] {
        return None;
    }
    let v1 = square(a.c1);
    let v0 = sub_and_mul_by_nonresidue(v1, square(a.c0));
    match inv(v0) {
        None => None,
        Some(norm_inv) => Some(Fq2Mont {
            c0: mul(a.c0, norm_inv),
            c1: neg(mul(a.c1, norm_inv)),
        }),
    }
}

/// `(q - 1) / 2`, the base-field Legendre exponent.
const LEGENDRE_EXP: [u64; 6] = [
    0x4284_6000_0000_0000,
    0x0b85_aea2_1800_0000,
    0x8f79_b117_dd04_a400,
    0x8d11_6cf9_807a_89c7,
    0x631d_82e0_3650_a49d,
    0x00d7_1d23_0be2_8875,
];

/// Base-field Legendre residue test: `a^((q-1)/2) == 1`.
fn fq_is_qr(a: FqMont) -> bool {
    pow(a, LEGENDRE_EXP).0 == ONE
}

/// Base-field Legendre nonresidue test: `a^((q-1)/2) == -1`.
fn fq_is_qnr(a: FqMont) -> bool {
    pow(a, LEGENDRE_EXP).0 == neg(FqMont(ONE)).0
}

/// Arkworks' `QuadExtField::sqrt` (complex method, eprint 2012/685 alg. 8),
/// specialized to Fq2 with `NONRESIDUE = -5`. Every returned candidate is
/// validated by an Fq2 square, so a `Some` result is a genuine square root.
/// The `-5`, `-1`, and `1/2` constants are derived from the proven base ops
/// (`mul_by_nonresidue(1)`, `neg(1)`, `inv(1+1)`) rather than re-pinned.
pub fn fq2_sqrt(a: Fq2Mont) -> Option<Fq2Mont> {
    if a.c1.0 == [0; 6] {
        if fq_is_qr(a.c0) {
            match sqrt(a.c0) {
                None => None,
                Some(root) => Some(Fq2Mont {
                    c0: root,
                    c1: FqMont([0; 6]),
                }),
            }
        } else {
            let nr = mul_by_nonresidue(FqMont(ONE));
            match inv(nr) {
                None => None,
                Some(nr_inv) => match sqrt(mul(a.c0, nr_inv)) {
                    None => None,
                    Some(res) => Some(Fq2Mont {
                        c0: FqMont([0; 6]),
                        c1: res,
                    }),
                },
            }
        }
    } else {
        let alpha = sub_and_mul_by_nonresidue(square(a.c1), square(a.c0));
        let two = add(FqMont(ONE), FqMont(ONE));
        match inv(two) {
            None => None,
            Some(two_inv) => match sqrt(alpha) {
                None => None,
                Some(alpha_root) => {
                    let first = mul(add(alpha_root, a.c0), two_inv);
                    let delta = if fq_is_qnr(first) {
                        sub(first, alpha_root)
                    } else {
                        first
                    };
                    match sqrt(delta) {
                        None => None,
                        Some(c0_new) => match inv(c0_new) {
                            None => None,
                            Some(c0_inv) => {
                                let c1_new = mul(mul(a.c1, two_inv), c0_inv);
                                let cand = Fq2Mont {
                                    c0: c0_new,
                                    c1: c1_new,
                                };
                                let sq = fq2_square(cand);
                                if sq.c0.0 == a.c0.0 && sq.c1.0 == a.c1.0 {
                                    Some(cand)
                                } else {
                                    None
                                }
                            }
                        },
                    }
                }
            },
        }
    }
}

/// `into_bigint`: leave Montgomery form, yielding the canonical integer limbs
/// (`mul` by the integer `1` runs one Montgomery reduction).
fn into_bigint(x: FqMont) -> [u64; 6] {
    mul(x, FqMont([1, 0, 0, 0, 0, 0])).0
}

/// Arkworks Fq2 compression ordering: compare canonical `c1` first, then `c0`
/// (`a < b` iff `a.c1 < b.c1`, or `a.c1 == b.c1` and `a.c0 < b.c0`), on the
/// canonical integer representatives.
pub fn fq2_less(a: Fq2Mont, b: Fq2Mont) -> bool {
    let ac1 = into_bigint(a.c1);
    let bc1 = into_bigint(b.c1);
    if gt(bc1, ac1) {
        true
    } else if ac1 == bc1 {
        gt(into_bigint(b.c0), into_bigint(a.c0))
    } else {
        false
    }
}

/// Pinned `Fq2Config` Frobenius (`FROBENIUS_COEFF_FP2_C1 = [1, -1]`): the
/// degree-2 Frobenius map raises to the `q`-th power, i.e. conjugation
/// `c0 + c1*u -> c0 - c1*u`. `frobenius_map(power)` multiplies `c1` by
/// `FROBENIUS_COEFF_FP2_C1[power % 2]`; for the only nontrivial residue the
/// coefficient is `-1`, so the executed effect is `neg` on the `c1` lane.
pub fn fq2_frobenius(a: Fq2Mont) -> Fq2Mont {
    Fq2Mont {
        c0: a.c0,
        c1: neg(a.c1),
    }
}

/// Extraction root whose closure contains the S3-17 Fq2 Frobenius, square
/// root, and compression-ordering operations.
#[doc(hidden)]
pub fn extract_s3_17(a: Fq2Mont, b: Fq2Mont) -> (Fq2Mont, Option<Fq2Mont>, bool) {
    (fq2_frobenius(a), fq2_sqrt(a), fq2_less(a, b))
}

/// Extraction root whose closure contains every S3-16 Fq2 operation.
#[doc(hidden)]
pub fn extract_s3_16(
    a: Fq2Mont,
    b: Fq2Mont,
) -> (Fq2Mont, Fq2Mont, Fq2Mont, Fq2Mont, Fq2Mont, Option<Fq2Mont>) {
    (
        fq2_add(a, b),
        fq2_sub(a, b),
        fq2_neg(a),
        fq2_mul(a, b),
        fq2_square(a),
        fq2_inv(a),
    )
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Fq6Mont {
    pub c0: Fq2Mont,
    pub c1: Fq2Mont,
    pub c2: Fq2Mont,
}

const FQ_ZERO: FqMont = FqMont([0; 6]);
const FQ_ONE: FqMont = FqMont(ONE);
const FQ2_ZERO: Fq2Mont = Fq2Mont {
    c0: FQ_ZERO,
    c1: FQ_ZERO,
};
const FQ2_ONE: Fq2Mont = Fq2Mont {
    c0: FQ_ONE,
    c1: FQ_ZERO,
};
const FQ_NEG_ONE: FqMont = FqMont([
    0x823a_c000_0000_0099,
    0xc5ca_bdc0_b000_004f,
    0x7f75_ae86_2f8c_080d,
    0x9ed4_423b_9278_b089,
    0x7946_7000_ec64_c452,
    0x0120_d3e4_34c7_1c50,
]);

const FROBENIUS_COEFF_FP6_C1: [FqMont; 6] = [
    FQ_ONE,
    FqMont([
        0x5892_506d_a584_78da,
        0x1333_6694_0ac2_a74b,
        0x9b64_a150_cdf7_26cf,
        0x5cc4_2609_0a9c_587e,
        0x5cf8_48ad_fdcd_640c,
        0x0047_02bf_3ac0_2380,
    ]),
    FqMont([
        0xdacd_106d_a584_7973,
        0xd8fe_2454_bac2_a79a,
        0x1ada_4fd6_fd83_2edc,
        0xfb98_6844_9d15_0908,
        0xd63e_b8ae_ea32_285e,
        0x0167_d6a3_6f87_3fd0,
    ]),
    FQ_NEG_ONE,
    FqMont([
        0x2c76_6f92_5a7b_8727,
        0x03d7_f6b0_253d_58b5,
        0x838e_c0de_ec12_2131,
        0xbd5e_b3e9_f658_bb10,
        0x6942_bd12_6ed3_e52e,
        0x0167_3786_dd04_ed6a,
    ]),
    FqMont([
        0xaa3b_af92_5a7b_868e,
        0x3e0d_38ef_753d_5865,
        0x0419_1258_bc86_1923,
        0x1e8a_71ae_63e0_0a87,
        0xeffc_4d11_826f_20dc,
        0x0046_63a2_a83d_d119,
    ]),
];

const FROBENIUS_COEFF_FP6_C2: [FqMont; 6] = [
    FQ_ONE,
    FROBENIUS_COEFF_FP6_C1[2],
    FROBENIUS_COEFF_FP6_C1[4],
    FQ_ONE,
    FROBENIUS_COEFF_FP6_C1[2],
    FROBENIUS_COEFF_FP6_C1[4],
];

pub fn fq2_double(a: Fq2Mont) -> Fq2Mont {
    Fq2Mont {
        c0: double(a.c0),
        c1: double(a.c1),
    }
}

fn fq2_frobenius_power(a: Fq2Mont, power: usize) -> Fq2Mont {
    if power % 2 == 0 {
        a
    } else {
        fq2_frobenius(a)
    }
}

/// `Fq6Config::mul_fp2_by_nonresidue_in_place`: multiplication by `u`.
pub fn fq6_mul_base_field_by_nonresidue(a: Fq2Mont) -> Fq2Mont {
    Fq2Mont {
        c0: mul_by_nonresidue(a.c1),
        c1: a.c0,
    }
}

pub fn fq6_add(a: Fq6Mont, b: Fq6Mont) -> Fq6Mont {
    Fq6Mont {
        c0: fq2_add(a.c0, b.c0),
        c1: fq2_add(a.c1, b.c1),
        c2: fq2_add(a.c2, b.c2),
    }
}

pub fn fq6_sub(a: Fq6Mont, b: Fq6Mont) -> Fq6Mont {
    Fq6Mont {
        c0: fq2_sub(a.c0, b.c0),
        c1: fq2_sub(a.c1, b.c1),
        c2: fq2_sub(a.c2, b.c2),
    }
}

pub fn fq6_neg(a: Fq6Mont) -> Fq6Mont {
    Fq6Mont {
        c0: fq2_neg(a.c0),
        c1: fq2_neg(a.c1),
        c2: fq2_neg(a.c2),
    }
}

pub fn fq6_double(a: Fq6Mont) -> Fq6Mont {
    Fq6Mont {
        c0: fq2_double(a.c0),
        c1: fq2_double(a.c1),
        c2: fq2_double(a.c2),
    }
}

/// `CubicExtField::mul_assign`, using its three-product Karatsuba chain.
pub fn fq6_mul(a: Fq6Mont, b: Fq6Mont) -> Fq6Mont {
    let ad = fq2_mul(a.c0, b.c0);
    let be = fq2_mul(a.c1, b.c1);
    let cf = fq2_mul(a.c2, b.c2);
    let x = fq2_sub(
        fq2_sub(fq2_mul(fq2_add(a.c1, a.c2), fq2_add(b.c1, b.c2)), be),
        cf,
    );
    let y = fq2_sub(
        fq2_sub(fq2_mul(fq2_add(a.c0, a.c1), fq2_add(b.c0, b.c1)), ad),
        be,
    );
    let z = fq2_sub(
        fq2_add(
            fq2_sub(fq2_mul(fq2_add(a.c0, a.c2), fq2_add(b.c0, b.c2)), ad),
            be,
        ),
        cf,
    );
    Fq6Mont {
        c0: fq2_add(ad, fq6_mul_base_field_by_nonresidue(x)),
        c1: fq2_add(y, fq6_mul_base_field_by_nonresidue(cf)),
        c2: z,
    }
}

/// `CubicExtField::square_in_place`, CH-SQR2.
pub fn fq6_square(a: Fq6Mont) -> Fq6Mont {
    let s0 = fq2_square(a.c0);
    let s1 = fq2_double(fq2_mul(a.c0, a.c1));
    let s2 = fq2_square(fq2_add(fq2_sub(a.c0, a.c1), a.c2));
    let s3 = fq2_double(fq2_mul(a.c1, a.c2));
    let s4 = fq2_square(a.c2);
    Fq6Mont {
        c0: fq2_add(fq6_mul_base_field_by_nonresidue(s3), s0),
        c1: fq2_add(fq6_mul_base_field_by_nonresidue(s4), s1),
        c2: fq2_sub(fq2_sub(fq2_add(fq2_add(s1, s2), s3), s0), s4),
    }
}

/// `CubicExtField::inverse`, Algorithm 17's norm route.
pub fn fq6_inv(a: Fq6Mont) -> Option<Fq6Mont> {
    if a.c0 == FQ2_ZERO && a.c1 == FQ2_ZERO && a.c2 == FQ2_ZERO {
        return None;
    }
    let t0 = fq2_square(a.c0);
    let t1 = fq2_square(a.c1);
    let t2 = fq2_square(a.c2);
    let t3 = fq2_mul(a.c0, a.c1);
    let t4 = fq2_mul(a.c0, a.c2);
    let t5 = fq2_mul(a.c1, a.c2);
    let s0 = fq2_sub(t0, fq6_mul_base_field_by_nonresidue(t5));
    let s1 = fq2_sub(fq6_mul_base_field_by_nonresidue(t2), t3);
    let s2 = fq2_sub(t1, t4);
    let a3 = fq6_mul_base_field_by_nonresidue(fq2_add(fq2_mul(a.c2, s1), fq2_mul(a.c1, s2)));
    match fq2_inv(fq2_add(fq2_mul(a.c0, s0), a3)) {
        None => None,
        Some(t6) => Some(Fq6Mont {
            c0: fq2_mul(t6, s0),
            c1: fq2_mul(t6, s1),
            c2: fq2_mul(t6, s2),
        }),
    }
}

pub fn fq6_frobenius(a: Fq6Mont, power: usize) -> Fq6Mont {
    let index = power % 6;
    let c1_coeff = Fq2Mont {
        c0: FROBENIUS_COEFF_FP6_C1[index],
        c1: FQ_ZERO,
    };
    let c2_coeff = Fq2Mont {
        c0: FROBENIUS_COEFF_FP6_C2[index],
        c1: FQ_ZERO,
    };
    Fq6Mont {
        c0: fq2_frobenius_power(a.c0, power),
        c1: fq2_mul(fq2_frobenius_power(a.c1, power), c1_coeff),
        c2: fq2_mul(fq2_frobenius_power(a.c2, power), c2_coeff),
    }
}

pub fn fq6_mul_by_01(a: Fq6Mont, c0: Fq2Mont, c1: Fq2Mont) -> Fq6Mont {
    let aa = fq2_mul(a.c0, c0);
    let bb = fq2_mul(a.c1, c1);
    let t1 = fq2_add(
        fq6_mul_base_field_by_nonresidue(fq2_sub(fq2_mul(c1, fq2_add(a.c1, a.c2)), bb)),
        aa,
    );
    let t3 = fq2_add(fq2_sub(fq2_mul(c0, fq2_add(a.c0, a.c2)), aa), bb);
    let t2 = fq2_sub(
        fq2_sub(fq2_mul(fq2_add(c0, c1), fq2_add(a.c0, a.c1)), aa),
        bb,
    );
    Fq6Mont {
        c0: t1,
        c1: t2,
        c2: t3,
    }
}

/// Extraction root whose closure contains every reached S3-19 Fq6 routine.
#[doc(hidden)]
pub fn extract_s3_19(
    a: Fq6Mont,
    b: Fq6Mont,
    c0: Fq2Mont,
    c1: Fq2Mont,
    power: usize,
) -> (
    Fq6Mont,
    Fq6Mont,
    Fq6Mont,
    Fq6Mont,
    Fq6Mont,
    Fq6Mont,
    Option<Fq6Mont>,
    Fq6Mont,
    Fq6Mont,
    Fq2Mont,
) {
    (
        fq6_add(a, b),
        fq6_sub(a, b),
        fq6_neg(a),
        fq6_double(a),
        fq6_mul(a, b),
        fq6_square(a),
        fq6_inv(a),
        fq6_frobenius(a, power),
        fq6_mul_by_01(a, c0, c1),
        fq6_mul_base_field_by_nonresidue(c0),
    )
}

// ===== S3-21: executed Fq12 layer (quadratic over Fq6, nonresidue v) =====

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Fq12Mont {
    pub c0: Fq6Mont,
    pub c1: Fq6Mont,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Fq2Bytes {
    pub c0: FqBytes,
    pub c1: FqBytes,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Fq6Bytes {
    pub c0: Fq2Bytes,
    pub c1: Fq2Bytes,
    pub c2: Fq2Bytes,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Fq12Bytes {
    pub c0: Fq6Bytes,
    pub c1: Fq6Bytes,
}

const FQ6_ZERO: Fq6Mont = Fq6Mont {
    c0: FQ2_ZERO,
    c1: FQ2_ZERO,
    c2: FQ2_ZERO,
};
const FQ6_ONE: Fq6Mont = Fq6Mont {
    c0: Fq2Mont {
        c0: FQ_ONE,
        c1: FQ_ZERO,
    },
    c1: FQ2_ZERO,
    c2: FQ2_ZERO,
};
const FQ12_ONE: Fq12Mont = Fq12Mont {
    c0: FQ6_ONE,
    c1: FQ6_ZERO,
};

/// Ark-bls12-377 0.5.0 `FROBENIUS_COEFF_FP12_C1`, in Montgomery form.
const FROBENIUS_COEFF_FP12_C1: [FqMont; 12] = [
    FQ_ONE,
    FqMont([
        0x6ec4_7a04_a3f7_ca9e,
        0xa42e_0cb9_68c1_fa44,
        0x578d_5187_fbd2_bd23,
        0x930e_eb0a_c79d_d4bd,
        0xa248_83de_1e09_a9ee,
        0x00da_a705_8067_d46f,
    ]),
    FROBENIUS_COEFF_FP6_C1[1],
    FqMont([
        0x982c_13d9_d084_771f,
        0xfd49_de0c_6da3_4a32,
        0x61a5_30d1_83ab_0e53,
        0xdf8f_e441_06dd_9879,
        0x40f2_9b58_d884_72bc,
        0x0158_7231_9904_6d5d,
    ]),
    FROBENIUS_COEFF_FP6_C1[2],
    FqMont([
        0x2967_99d5_2c8c_ac81,
        0x591b_d153_04e1_4fee,
        0x0a17_df49_87d8_5130,
        0x4c80_f936_3f3f_c3bc,
        0x9eaa_177a_ba7a_c8ce,
        0x007d_cb2c_189c_98ed,
    ]),
    FQ_NEG_ONE,
    FqMont([
        0x1644_45fb_5c08_3563,
        0x72dd_508a_c73e_05bc,
        0xc766_10a7_be36_8adc,
        0x8713_eee8_3957_3ed1,
        0x23f2_81e2_4e97_9f4c,
        0x00d3_9340_975d_3c7b,
    ]),
    FROBENIUS_COEFF_FP6_C1[4],
    FqMont([
        0xecdc_ac26_2f7b_88e2,
        0x19c1_7f37_c25c_b5cd,
        0xbd4e_315e_365e_39ac,
        0x3a92_f5b1_fa17_7b15,
        0x8548_6a67_941c_d67e,
        0x0055_c814_7ec0_a38d,
    ]),
    FROBENIUS_COEFF_FP6_C1[5],
    FqMont([
        0x5ba1_262a_d373_5380,
        0xbdef_8bf1_2b1e_b012,
        0x14db_82e6_3230_f6cf,
        0xcda1_e0bc_c1b5_4fd3,
        0x2790_ee45_b226_806c,
        0x0130_6f19_ff28_77fd,
    ]),
];

/// Big-endian NAF digits returned by arkworks `find_naf([X]).rev()`.
const X_NAF_BE: [i8; 64] = [
    1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    1,
];

/// `Fp12Config::mul_fp6_by_nonresidue_in_place`: multiplication by `v`.
pub fn fq12_mul_base_field_by_nonresidue(a: Fq6Mont) -> Fq6Mont {
    Fq6Mont {
        c0: fq6_mul_base_field_by_nonresidue(a.c2),
        c1: a.c0,
        c2: a.c1,
    }
}

fn fq6_mul_by_fp2(a: Fq6Mont, b: Fq2Mont) -> Fq6Mont {
    Fq6Mont {
        c0: fq2_mul(a.c0, b),
        c1: fq2_mul(a.c1, b),
        c2: fq2_mul(a.c2, b),
    }
}

/// `QuadExtField::mul_assign`, Algorithm 5.16's Karatsuba branch.
pub fn fq12_mul(a: Fq12Mont, b: Fq12Mont) -> Fq12Mont {
    let v0 = fq6_mul(a.c0, b.c0);
    let v1 = fq6_mul(a.c1, b.c1);
    let c1 = fq6_sub(
        fq6_sub(fq6_mul(fq6_add(a.c1, a.c0), fq6_add(b.c0, b.c1)), v0),
        v1,
    );
    let c0 = fq6_add(fq12_mul_base_field_by_nonresidue(v1), v0);
    Fq12Mont { c0, c1 }
}

/// `QuadExtField::square_in_place`, nonresidue-generic branch.
pub fn fq12_square(a: Fq12Mont) -> Fq12Mont {
    let v0 = fq6_sub(a.c0, a.c1);
    let v3 = fq6_sub(a.c0, fq12_mul_base_field_by_nonresidue(a.c1));
    let v2 = fq6_mul(a.c0, a.c1);
    let v0 = fq6_mul(v0, v3);
    Fq12Mont {
        c0: fq6_add(fq6_add(fq12_mul_base_field_by_nonresidue(v2), v0), v2),
        c1: fq6_double(v2),
    }
}

/// `Fp12::mul_by_034`, the sparse D-twist Miller-line multiplication.
pub fn fq12_mul_by_034(a: Fq12Mont, c0: Fq2Mont, c3: Fq2Mont, c4: Fq2Mont) -> Fq12Mont {
    let aa = Fq6Mont {
        c0: fq2_mul(a.c0.c0, c0),
        c1: fq2_mul(a.c0.c1, c0),
        c2: fq2_mul(a.c0.c2, c0),
    };
    let bb = fq6_mul_by_01(a.c1, c3, c4);
    let e = fq6_mul_by_01(fq6_add(a.c0, a.c1), fq2_add(c0, c3), c4);
    Fq12Mont {
        c0: fq6_add(fq12_mul_base_field_by_nonresidue(bb), aa),
        c1: fq6_sub(e, fq6_add(aa, bb)),
    }
}

/// BLS12-377's finite-G1 D-twist line evaluation. The caller has already
/// filtered G1 infinity, matching the multi-Miller traversal.
pub fn g1_ell(
    f: Fq12Mont,
    coeffs: G2EllCoeffMont,
    p: G1AffineMont,
) -> (Fq2Mont, Fq2Mont, Fq2Mont, Fq12Mont) {
    let c0 = fq2_mul_fp(coeffs.0, p.y);
    let c1 = fq2_mul_fp(coeffs.1, p.x);
    let c2 = coeffs.2;
    let output = fq12_mul_by_034(f, c0, c1, c2);
    (c0, c1, c2, output)
}

/// Extraction root for the executed finite-G1 D-twist line evaluation.
#[doc(hidden)]
pub fn extract_s3_35(
    f: Fq12Mont,
    coeffs: G2EllCoeffMont,
    p: G1AffineMont,
) -> (Fq2Mont, Fq2Mont, Fq2Mont, Fq12Mont) {
    g1_ell(f, coeffs, p)
}

/// Faithful single-pair BLS12-377 Miller accumulation over prepared lines.
/// Coefficients are consumed MSB-first: doubling, then addition when the ate
/// bit is set, for each of the 63 bits after the leading one.
pub fn miller_schedule(coeffs: Vec<G2EllCoeffMont>, p: G1AffineMont) -> Fq12Mont {
    let mut f = FQ12_ONE;
    let mut coeff_index = 0_usize;
    let mut bit_index = 63_usize;
    while bit_index > 0 {
        bit_index -= 1;
        f = fq12_square(f);
        let double_coeff = coeffs[coeff_index];
        coeff_index += 1;
        f = g1_ell(f, double_coeff, p).3;
        if ((0x8508_c000_0000_0001_u64 >> bit_index) & 1) != 0 {
            let add_coeff = coeffs[coeff_index];
            coeff_index += 1;
            f = g1_ell(f, add_coeff, p).3;
        }
    }
    f
}

/// Extraction root for the single-pair Miller schedule.
#[doc(hidden)]
pub fn extract_s3_36(
    coeffs: Vec<G2EllCoeffMont>,
    p: G1AffineMont,
) -> Fq12Mont {
    miller_schedule(coeffs, p)
}

/// Faithful BLS12-377 multi-Miller accumulation, including arkworks' chunks of
/// four. An empty coefficient vector represents a zero prepared G2.
pub fn multi_miller_schedule(
    pairs: Vec<(Vec<G2EllCoeffMont>, G1AffineMont)>,
) -> Fq12Mont {
    let mut filtered = Vec::new();
    let mut pair_index = 0_usize;
    while pair_index < pairs.len() {
        let pair = pairs[pair_index].clone();
        if !pair.1.infinity && pair.0.len() != 0 {
            filtered.push(pair);
        }
        pair_index += 1;
    }

    let mut result = FQ12_ONE;
    let mut chunk_start = 0_usize;
    while chunk_start < filtered.len() {
        let mut chunk_end = chunk_start + 4;
        if chunk_end > filtered.len() {
            chunk_end = filtered.len();
        }
        let mut cursors = Vec::new();
        let mut cursor_index = chunk_start;
        while cursor_index < chunk_end {
            cursors.push(0_usize);
            cursor_index += 1;
        }

        let mut f = FQ12_ONE;
        let mut bit_index = 63_usize;
        while bit_index > 0 {
            bit_index -= 1;
            f = fq12_square(f);

            let mut local_index = 0_usize;
            while local_index < cursors.len() {
                let pair_position = chunk_start + local_index;
                let coeff_index = cursors[local_index];
                let coeff = filtered[pair_position].0[coeff_index];
                cursors[local_index] += 1;
                f = g1_ell(f, coeff, filtered[pair_position].1).3;
                local_index += 1;
            }

            if ((0x8508_c000_0000_0001_u64 >> bit_index) & 1) != 0 {
                let mut local_index = 0_usize;
                while local_index < cursors.len() {
                    let pair_position = chunk_start + local_index;
                    let coeff_index = cursors[local_index];
                    let coeff = filtered[pair_position].0[coeff_index];
                    cursors[local_index] += 1;
                    f = g1_ell(f, coeff, filtered[pair_position].1).3;
                    local_index += 1;
                }
            }
        }
        result = fq12_mul(result, f);
        chunk_start = chunk_end;
    }
    result
}

/// Extraction root for the faithful multi-pair Miller schedule.
#[doc(hidden)]
pub fn extract_s3_37(
    pairs: Vec<(Vec<G2EllCoeffMont>, G1AffineMont)>,
) -> Fq12Mont {
    multi_miller_schedule(pairs)
}

/// Sequential model of the prepared multi-pairing wrapper. The production
/// path partitions prepared pairs by the rayon thread count, multiplies the
/// chunk Miller outputs, then performs one final exponentiation. The model
/// uses four as the fixed partition representative; only the partition fold
/// is modeled sequentially because rayon is outside the extraction boundary.
pub fn multi_pairing(
    pairs: Vec<(Vec<G2EllCoeffMont>, G1AffineMont)>,
) -> Option<Fq12Mont> {
    let mut result = FQ12_ONE;
    let mut chunk_start = 0_usize;
    while chunk_start < pairs.len() {
        let mut chunk_end = chunk_start + 4;
        if chunk_end > pairs.len() {
            chunk_end = pairs.len();
        }
        let mut chunk = Vec::new();
        let mut index = chunk_start;
        while index < chunk_end {
            let pair = pairs[index].clone();
            if !pair.1.infinity && pair.0.len() != 0 {
                chunk.push(pair);
            }
            index += 1;
        }
        result = fq12_mul(result, multi_miller_schedule(chunk));
        chunk_start = chunk_end;
    }
    final_exp(result)
}

/// Extraction root for the sequential multi-pairing model.
#[doc(hidden)]
pub fn extract_s3_40(
    pairs: Vec<(Vec<G2EllCoeffMont>, G1AffineMont)>,
) -> Option<Fq12Mont> {
    multi_pairing(pairs)
}

/// Quadratic-extension conjugation, also the nonzero unitary inverse.
pub fn fq12_conjugate(a: Fq12Mont) -> Fq12Mont {
    Fq12Mont {
        c0: a.c0,
        c1: fq6_neg(a.c1),
    }
}

pub fn fq12_cyclotomic_inverse(a: Fq12Mont) -> Option<Fq12Mont> {
    if a.c0 == FQ6_ZERO && a.c1 == FQ6_ZERO {
        None
    } else {
        Some(fq12_conjugate(a))
    }
}

/// `QuadExtField::inverse`, Algorithm 5.19's norm route.
pub fn fq12_inv(a: Fq12Mont) -> Option<Fq12Mont> {
    if a.c0 == FQ6_ZERO && a.c1 == FQ6_ZERO {
        return None;
    }
    let v1 = fq6_square(a.c1);
    let norm = fq6_sub(fq6_square(a.c0), fq12_mul_base_field_by_nonresidue(v1));
    match fq6_inv(norm) {
        None => None,
        Some(norm_inv) => Some(Fq12Mont {
            c0: fq6_mul(a.c0, norm_inv),
            c1: fq6_neg(fq6_mul(a.c1, norm_inv)),
        }),
    }
}

pub fn fq12_frobenius(a: Fq12Mont, power: usize) -> Fq12Mont {
    let coefficient = Fq2Mont {
        c0: FROBENIUS_COEFF_FP12_C1[power % 12],
        c1: FQ_ZERO,
    };
    Fq12Mont {
        c0: fq6_frobenius(a.c0, power),
        c1: fq6_mul_by_fp2(fq6_frobenius(a.c1, power), coefficient),
    }
}

/// Arkworks BLS12 easy final-exponentiation part, preserving inverse failure.
pub fn final_exp_easy(f: Fq12Mont) -> Option<Fq12Mont> {
    let f1 = fq12_conjugate(f);
    match fq12_inv(f) {
        None => None,
        Some(mut f2) => {
            let mut r = fq12_mul(f1, f2);
            f2 = r;
            r = fq12_frobenius(r, 2);
            Some(fq12_mul(r, f2))
        }
    }
}

/// Extraction root for the faithful easy final-exponentiation sequence.
#[doc(hidden)]
pub fn extract_s3_38(f: Fq12Mont) -> Option<Fq12Mont> {
    final_exp_easy(f)
}

/// Arkworks BLS12 hard final-exponentiation chain for positive `X`.
pub fn final_exp_hard(mut r: Fq12Mont) -> Fq12Mont {
    let mut y0 = fq12_cyclotomic_square(r);
    let mut y1 = fq12_cyclotomic_exp(r);
    let mut y2 = fq12_conjugate(r);
    y1 = fq12_mul(y1, y2);
    y2 = fq12_cyclotomic_exp(y1);
    y1 = fq12_conjugate(y1);
    y1 = fq12_mul(y1, y2);
    y2 = fq12_cyclotomic_exp(y1);
    y1 = fq12_frobenius(y1, 1);
    y1 = fq12_mul(y1, y2);
    r = fq12_mul(r, y0);
    y0 = fq12_cyclotomic_exp(y1);
    y2 = fq12_cyclotomic_exp(y0);
    y0 = fq12_frobenius(y1, 2);
    y1 = fq12_conjugate(y1);
    y1 = fq12_mul(y1, y2);
    y1 = fq12_mul(y1, y0);
    fq12_mul(r, y1)
}

/// Full BLS12-377 final exponentiation, preserving inverse failure.
pub fn final_exp(f: Fq12Mont) -> Option<Fq12Mont> {
    match final_exp_easy(f) {
        None => None,
        Some(r) => Some(final_exp_hard(r)),
    }
}

/// Extraction root for the faithful full final-exponentiation sequence.
#[doc(hidden)]
pub fn extract_s3_39(f: Fq12Mont) -> Option<Fq12Mont> {
    final_exp(f)
}

/// Granger--Scott cyclotomic squaring for the `q^2 = 1 (mod 6)` branch.
pub fn fq12_cyclotomic_square(a: Fq12Mont) -> Fq12Mont {
    let r0 = a.c0.c0;
    let r4 = a.c0.c1;
    let r3 = a.c0.c2;
    let r2 = a.c1.c0;
    let r1 = a.c1.c1;
    let r5 = a.c1.c2;

    let mut tmp = fq2_mul(r0, r1);
    let t0 = fq2_sub(
        fq2_sub(
            fq2_mul(
                fq2_add(r0, r1),
                fq2_add(fq6_mul_base_field_by_nonresidue(r1), r0),
            ),
            tmp,
        ),
        fq6_mul_base_field_by_nonresidue(tmp),
    );
    let t1 = fq2_double(tmp);

    tmp = fq2_mul(r2, r3);
    let t2 = fq2_sub(
        fq2_sub(
            fq2_mul(
                fq2_add(r2, r3),
                fq2_add(fq6_mul_base_field_by_nonresidue(r3), r2),
            ),
            tmp,
        ),
        fq6_mul_base_field_by_nonresidue(tmp),
    );
    let t3 = fq2_double(tmp);

    tmp = fq2_mul(r4, r5);
    let t4 = fq2_sub(
        fq2_sub(
            fq2_mul(
                fq2_add(r4, r5),
                fq2_add(fq6_mul_base_field_by_nonresidue(r5), r4),
            ),
            tmp,
        ),
        fq6_mul_base_field_by_nonresidue(tmp),
    );
    let t5 = fq2_double(tmp);

    let z0 = fq2_add(fq2_double(fq2_sub(t0, r0)), t0);
    let z1 = fq2_add(fq2_double(fq2_add(t1, r1)), t1);
    tmp = fq6_mul_base_field_by_nonresidue(t5);
    let z2 = fq2_add(fq2_double(fq2_add(r2, tmp)), tmp);
    let z3 = fq2_add(fq2_double(fq2_sub(t4, r3)), t4);
    let z4 = fq2_add(fq2_double(fq2_sub(t2, r4)), t2);
    let z5 = fq2_add(fq2_double(fq2_add(r5, t3)), t3);

    Fq12Mont {
        c0: Fq6Mont {
            c0: z0,
            c1: z4,
            c2: z3,
        },
        c1: Fq6Mont {
            c0: z2,
            c1: z1,
            c2: z5,
        },
    }
}

/// Arkworks' NAF `cyclotomic_exp` specialized to positive BLS12-377 `X`.
pub fn fq12_cyclotomic_exp(a: Fq12Mont) -> Fq12Mont {
    if a.c0 == FQ6_ZERO && a.c1 == FQ6_ZERO {
        return a;
    }
    let inverse = fq12_conjugate(a);
    let mut result = FQ12_ONE;
    let mut found_nonzero = false;
    let mut index = 0_usize;
    while index < 64 {
        let digit = X_NAF_BE[index];
        if found_nonzero {
            result = fq12_cyclotomic_square(result);
        }
        if digit != 0 {
            found_nonzero = true;
            if digit > 0 {
                result = fq12_mul(result, a);
            } else {
                result = fq12_mul(result, inverse);
            }
        }
        index += 1;
    }
    result
}

fn fq2_to_bytes(a: Fq2Mont) -> Fq2Bytes {
    Fq2Bytes {
        c0: to_bytes(a.c0),
        c1: to_bytes(a.c1),
    }
}

fn fq6_to_bytes(a: Fq6Mont) -> Fq6Bytes {
    Fq6Bytes {
        c0: fq2_to_bytes(a.c0),
        c1: fq2_to_bytes(a.c1),
        c2: fq2_to_bytes(a.c2),
    }
}

/// Arkworks canonical uncompressed Fq12 encoding, component order c0 then c1.
pub fn fq12_to_bytes(a: Fq12Mont) -> Fq12Bytes {
    Fq12Bytes {
        c0: fq6_to_bytes(a.c0),
        c1: fq6_to_bytes(a.c1),
    }
}

fn fq2_from_bytes(bytes: Fq2Bytes) -> Option<Fq2Mont> {
    match from_bytes(bytes.c0) {
        None => None,
        Some(c0) => match from_bytes(bytes.c1) {
            None => None,
            Some(c1) => Some(Fq2Mont { c0, c1 }),
        },
    }
}

fn fq6_from_bytes(bytes: Fq6Bytes) -> Option<Fq6Mont> {
    match fq2_from_bytes(bytes.c0) {
        None => None,
        Some(c0) => match fq2_from_bytes(bytes.c1) {
            None => None,
            Some(c1) => match fq2_from_bytes(bytes.c2) {
                None => None,
                Some(c2) => Some(Fq6Mont { c0, c1, c2 }),
            },
        },
    }
}

/// Arkworks canonical Fq12 decoding before the separate PairingOutput validity check.
pub fn fq12_from_bytes(bytes: Fq12Bytes) -> Option<Fq12Mont> {
    match fq6_from_bytes(bytes.c0) {
        None => None,
        Some(c0) => match fq6_from_bytes(bytes.c1) {
            None => None,
            Some(c1) => Some(Fq12Mont { c0, c1 }),
        },
    }
}

/// Extraction root whose closure contains every reached S3-21 Fq12 routine.
#[doc(hidden)]
pub fn extract_s3_21(
    a: Fq12Mont,
    b: Fq12Mont,
    c0: Fq2Mont,
    c3: Fq2Mont,
    c4: Fq2Mont,
    power: usize,
    bytes: Fq12Bytes,
) -> (
    Fq12Mont,
    Fq12Mont,
    Fq12Mont,
    Fq12Mont,
    Option<Fq12Mont>,
    Option<Fq12Mont>,
    Fq12Mont,
    Fq12Mont,
    Fq12Mont,
    Fq12Bytes,
    Option<Fq12Mont>,
) {
    (
        fq12_mul(a, b),
        fq12_square(a),
        fq12_mul_by_034(a, c0, c3, c4),
        fq12_conjugate(a),
        fq12_cyclotomic_inverse(a),
        fq12_inv(a),
        fq12_frobenius(a, power),
        fq12_cyclotomic_square(a),
        fq12_cyclotomic_exp(a),
        fq12_to_bytes(a),
        fq12_from_bytes(bytes),
    )
}

/// Monomorphic Jacobian representation used by BLS12-377 G1.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct G1ProjMont {
    pub x: FqMont,
    pub y: FqMont,
    pub z: FqMont,
}

/// Monomorphic affine representation used by mixed G1 addition.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct G1AffineMont {
    pub x: FqMont,
    pub y: FqMont,
    pub infinity: bool,
}

fn g1_zero() -> G1ProjMont {
    G1ProjMont {
        x: FQ_ONE,
        y: FQ_ONE,
        z: FQ_ZERO,
    }
}

/// BLS12-377's `Projective::double_in_place`, specialized to `COEFF_A = 0`
/// and base-field extension degree one.
pub fn g1_double(a: G1ProjMont) -> G1ProjMont {
    if a.z == FQ_ZERO {
        return a;
    }

    let aa = square(a.x);
    let b = square(a.y);
    let mut c = square(b);
    let mut d = mul(a.x, b);
    d = double(double(d));
    let e = add(aa, double(aa));
    let z = double(mul(a.z, a.y));
    let x = sub(square(e), double(d));
    c = double(double(double(c)));
    let y = sub(mul(sub(d, x), e), c);
    G1ProjMont { x, y, z }
}

/// Arkworks' complete control-flow wrapper around `add-2007-bl` Jacobian
/// addition, including identity, equal-point, and opposite-point branches.
pub fn g1_add(a: G1ProjMont, b: G1ProjMont) -> G1ProjMont {
    if a.z == FQ_ZERO {
        return b;
    }
    if b.z == FQ_ZERO {
        return a;
    }

    let z1z1 = square(a.z);
    let z2z2 = square(b.z);
    let u1 = mul(a.x, z2z2);
    let u2 = mul(b.x, z1z1);
    let s1 = mul(mul(a.y, b.z), z2z2);
    let s2 = mul(mul(b.y, a.z), z1z1);

    if u1 == u2 {
        if s1 == s2 {
            return g1_double(a);
        }
        return g1_zero();
    }

    let h = sub(u2, u1);
    let i = square(double(h));
    let j = mul(neg(h), i);
    let r = double(sub(s2, s1));
    let mut v = mul(u1, i);
    let x = sub(add(square(r), j), double(v));
    v = sub(v, x);
    let y = sum_of_products2(r, v, double(s1), j);
    let z = mul(double(mul(a.z, b.z)), h);
    G1ProjMont { x, y, z }
}

/// Arkworks' `madd-2007-bl` mixed addition, including affine infinity and all
/// exceptional branches.
pub fn g1_add_mixed(a: G1ProjMont, b: G1AffineMont) -> G1ProjMont {
    if b.infinity {
        return a;
    }
    if a.z == FQ_ZERO {
        return G1ProjMont {
            x: b.x,
            y: b.y,
            z: FQ_ONE,
        };
    }

    let z1z1 = square(a.z);
    let u2 = mul(b.x, z1z1);
    let s2 = mul(mul(a.z, b.y), z1z1);
    if a.x == u2 {
        if a.y == s2 {
            return g1_double(a);
        }
        return g1_zero();
    }

    let h = sub(u2, a.x);
    let hh = square(h);
    let i = double(double(hh));
    let j = mul(neg(h), i);
    let r = double(sub(s2, a.y));
    let mut v = mul(a.x, i);
    let x = sub(add(square(r), j), double(v));
    v = sub(v, x);
    let y = sum_of_products2(r, v, double(a.y), j);
    let z = double(mul(a.z, h));
    G1ProjMont { x, y, z }
}

/// Arkworks projective negation changes only the Jacobian Y coordinate.
pub fn g1_neg(a: G1ProjMont) -> G1ProjMont {
    G1ProjMont {
        x: a.x,
        y: neg(a.y),
        z: a.z,
    }
}

/// Arkworks affine negation changes only Y and preserves the infinity flag.
pub fn g1_affine_neg(a: G1AffineMont) -> G1AffineMont {
    G1AffineMont {
        x: a.x,
        y: neg(a.y),
        infinity: a.infinity,
    }
}

/// Extraction root whose closure contains every reached S3-26 G1 formula.
#[doc(hidden)]
pub fn extract_s3_26(
    a: G1ProjMont,
    b: G1ProjMont,
    affine: G1AffineMont,
) -> (G1ProjMont, G1ProjMont, G1ProjMont, G1ProjMont, G1AffineMont) {
    (
        g1_add(a, b),
        g1_add_mixed(a, affine),
        g1_double(a),
        g1_neg(a),
        g1_affine_neg(affine),
    )
}

/// Monomorphic Jacobian representation used by BLS12-377 G2.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct G2ProjMont {
    pub x: Fq2Mont,
    pub y: Fq2Mont,
    pub z: Fq2Mont,
}

/// Monomorphic affine representation used by mixed G2 addition.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct G2AffineMont {
    pub x: Fq2Mont,
    pub y: Fq2Mont,
    pub infinity: bool,
}

fn g2_zero() -> G2ProjMont {
    G2ProjMont {
        x: FQ2_ONE,
        y: FQ2_ONE,
        z: FQ2_ZERO,
    }
}

/// BLS12-377's `Projective::double_in_place`, specialized to `COEFF_A = 0`
/// and base-field extension degree two.
pub fn g2_double(a: G2ProjMont) -> G2ProjMont {
    if a.z == FQ2_ZERO {
        return a;
    }

    let aa = fq2_square(a.x);
    let b = fq2_square(a.y);
    let mut c = fq2_square(b);
    let mut d = fq2_mul(a.x, b);
    d = fq2_double(fq2_double(d));
    let e = fq2_add(aa, fq2_double(aa));
    let z = fq2_double(fq2_mul(a.z, a.y));
    let x = fq2_sub(fq2_square(e), fq2_double(d));
    c = fq2_double(fq2_double(fq2_double(c)));
    let y = fq2_sub(fq2_mul(fq2_sub(d, x), e), c);
    G2ProjMont { x, y, z }
}

/// Arkworks' complete control-flow wrapper around `add-2007-bl` Jacobian
/// addition, including identity, equal-point, and opposite-point branches.
pub fn g2_add(a: G2ProjMont, b: G2ProjMont) -> G2ProjMont {
    if a.z == FQ2_ZERO {
        return b;
    }
    if b.z == FQ2_ZERO {
        return a;
    }

    let z1z1 = fq2_square(a.z);
    let z2z2 = fq2_square(b.z);
    let u1 = fq2_mul(a.x, z2z2);
    let u2 = fq2_mul(b.x, z1z1);
    let s1 = fq2_mul(fq2_mul(a.y, b.z), z2z2);
    let s2 = fq2_mul(fq2_mul(b.y, a.z), z1z1);

    if u1 == u2 {
        if s1 == s2 {
            return g2_double(a);
        }
        return g2_zero();
    }

    let h = fq2_sub(u2, u1);
    let i = fq2_square(fq2_double(h));
    let j = fq2_mul(fq2_neg(h), i);
    let r = fq2_double(fq2_sub(s2, s1));
    let mut v = fq2_mul(u1, i);
    let x = fq2_sub(fq2_add(fq2_square(r), j), fq2_double(v));
    v = fq2_sub(v, x);
    let y = fq2_add(fq2_mul(r, v), fq2_mul(fq2_double(s1), j));
    let z = fq2_mul(fq2_double(fq2_mul(a.z, b.z)), h);
    G2ProjMont { x, y, z }
}

/// Arkworks' `madd-2007-bl` mixed addition, including affine infinity and all
/// exceptional branches.
pub fn g2_add_mixed(a: G2ProjMont, b: G2AffineMont) -> G2ProjMont {
    if b.infinity {
        return a;
    }
    if a.z == FQ2_ZERO {
        return G2ProjMont {
            x: b.x,
            y: b.y,
            z: FQ2_ONE,
        };
    }

    let z1z1 = fq2_square(a.z);
    let u2 = fq2_mul(b.x, z1z1);
    let s2 = fq2_mul(fq2_mul(a.z, b.y), z1z1);
    if a.x == u2 {
        if a.y == s2 {
            return g2_double(a);
        }
        return g2_zero();
    }

    let h = fq2_sub(u2, a.x);
    let hh = fq2_square(h);
    let i = fq2_double(fq2_double(hh));
    let j = fq2_mul(fq2_neg(h), i);
    let r = fq2_double(fq2_sub(s2, a.y));
    let mut v = fq2_mul(a.x, i);
    let x = fq2_sub(fq2_add(fq2_square(r), j), fq2_double(v));
    v = fq2_sub(v, x);
    let y = fq2_add(fq2_mul(r, v), fq2_mul(fq2_double(a.y), j));
    let z = fq2_double(fq2_mul(a.z, h));
    G2ProjMont { x, y, z }
}

/// Arkworks projective negation changes only the Jacobian Y coordinate.
pub fn g2_neg(a: G2ProjMont) -> G2ProjMont {
    G2ProjMont {
        x: a.x,
        y: fq2_neg(a.y),
        z: a.z,
    }
}

/// Arkworks affine negation changes only Y and preserves the infinity flag.
pub fn g2_affine_neg(a: G2AffineMont) -> G2AffineMont {
    G2AffineMont {
        x: a.x,
        y: fq2_neg(a.y),
        infinity: a.infinity,
    }
}

pub type G2EllCoeffMont = (Fq2Mont, Fq2Mont, Fq2Mont);

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct G2PreparedMont {
    pub ell_coeffs: Vec<G2EllCoeffMont>,
    pub infinity: bool,
}

const G2_COEFF_B: Fq2Mont = Fq2Mont {
    c0: FQ_ZERO,
    c1: FqMont([
        9255502405446297221,
        10229180150694123945,
        9215585410771530959,
        13357015519562362907,
        5437107869987383107,
        16259554076827459,
    ]),
};

fn fq2_mul_fp(a: Fq2Mont, b: FqMont) -> Fq2Mont {
    Fq2Mont { c0: mul(a.c0, b), c1: mul(a.c1, b) }
}

fn g2_double_line(mut a: G2ProjMont, two_inv: FqMont) -> (G2ProjMont, G2EllCoeffMont) {
    let mut aa = fq2_mul(a.x, a.y);
    aa = fq2_mul_fp(aa, two_inv);
    let b = fq2_square(a.y);
    let c = fq2_square(a.z);
    let e = fq2_mul(G2_COEFF_B, fq2_add(fq2_double(c), c));
    let f = fq2_add(fq2_double(e), e);
    let mut g = fq2_add(b, f);
    g = fq2_mul_fp(g, two_inv);
    let h = fq2_sub(fq2_square(fq2_add(a.y, a.z)), fq2_add(b, c));
    let i = fq2_sub(e, b);
    let j = fq2_square(a.x);
    let e_square = fq2_square(e);
    a.x = fq2_mul(aa, fq2_sub(b, f));
    a.y = fq2_sub(fq2_square(g), fq2_add(fq2_double(e_square), e_square));
    a.z = fq2_mul(b, h);
    (a, (fq2_neg(h), fq2_add(fq2_double(j), j), i))
}

fn g2_add_line(mut a: G2ProjMont, q: G2AffineMont) -> (G2ProjMont, G2EllCoeffMont) {
    let theta = fq2_sub(a.y, fq2_mul(q.y, a.z));
    let lambda = fq2_sub(a.x, fq2_mul(q.x, a.z));
    let c = fq2_square(theta);
    let d = fq2_square(lambda);
    let e = fq2_mul(lambda, d);
    let f = fq2_mul(a.z, c);
    let g = fq2_mul(a.x, d);
    let h = fq2_sub(fq2_add(e, f), fq2_double(g));
    a.x = fq2_mul(lambda, h);
    a.y = fq2_sub(fq2_mul(theta, fq2_sub(g, h)), fq2_mul(e, a.y));
    a.z = fq2_mul(a.z, e);
    let j = fq2_sub(fq2_mul(theta, q.x), fq2_mul(lambda, q.y));
    (a, (lambda, fq2_neg(theta), j))
}

/// Faithful BLS12-377 `G2Prepared::from` construction through the D-twist
/// homogeneous double/add line schedule.
pub fn g2_prepared(q: G2AffineMont) -> G2PreparedMont {
    if q.infinity {
        return G2PreparedMont { ell_coeffs: Vec::new(), infinity: true };
    }
    let two_inv = match inv(double(FQ_ONE)) {
        Some(value) => value,
        None => FQ_ZERO,
    };
    let mut r = G2ProjMont { x: q.x, y: q.y, z: FQ2_ONE };
    let mut ell_coeffs = Vec::with_capacity(95);
    let mut i = 63_usize;
    while i > 0 {
        i -= 1;
        let bit = ((0x8508_c000_0000_0001_u64 >> i) & 1) != 0;
        let (next, coeff) = g2_double_line(r, two_inv);
        r = next;
        ell_coeffs.push(coeff);
        if bit {
            let (next, coeff) = g2_add_line(r, q);
            r = next;
            ell_coeffs.push(coeff);
        }
    }
    G2PreparedMont { ell_coeffs, infinity: false }
}

#[doc(hidden)]
pub fn extract_s3_33(q: G2AffineMont) -> G2PreparedMont {
    g2_prepared(q)
}

/// Extraction root whose closure contains every reached S3-27 G2 formula.
#[doc(hidden)]
pub fn extract_s3_27(
    a: G2ProjMont,
    b: G2ProjMont,
    affine: G2AffineMont,
) -> (G2ProjMont, G2ProjMont, G2ProjMont, G2ProjMont, G2AffineMont) {
    (
        g2_add(a, b),
        g2_add_mixed(a, affine),
        g2_double(a),
        g2_neg(a),
        g2_affine_neg(affine),
    )
}

/// Non-executed generic G1 reference step retained by the landed proof graph.
/// Ordinary BLS12-377 G1 multiplication executes the GLV joint loop below.
pub fn g1_mul_projective_step(accumulator: G1ProjMont, base: G1ProjMont, bit: bool) -> G1ProjMont {
    let doubled = g1_double(accumulator);
    if bit {
        g1_add(doubled, base)
    } else {
        doubled
    }
}

/// One generic affine-base scalar bit step for BLS12-377 G1.
pub fn g1_mul_affine_step(accumulator: G1ProjMont, base: G1AffineMont, bit: bool) -> G1ProjMont {
    let doubled = g1_double(accumulator);
    if bit {
        g1_add_mixed(doubled, base)
    } else {
        doubled
    }
}

/// Arkworks' generic big-endian, leading-zero-skipping affine loop for G1.
pub fn g1_mul_affine(base: G1AffineMont, scalar: [u64; 4]) -> G1ProjMont {
    let mut accumulator = g1_zero();
    let mut started = false;
    let mut limb = 4_usize;
    while limb > 0 {
        limb -= 1;
        let mut bit_index = 64_usize;
        while bit_index > 0 {
            bit_index -= 1;
            let bit = ((scalar[limb] >> bit_index) & 1) == 1;
            if started || bit {
                started = true;
                accumulator = g1_mul_affine_step(accumulator, base, bit);
            }
        }
    }
    accumulator
}

const FR_MODULUS: [u64; 4] = [
    0x0a11_8000_0000_0001,
    0x59aa_76fe_d000_0001,
    0x60b4_4d1e_5c37_b001,
    0x12ab_655e_9a2c_a556,
];

// The pinned LLL basis is [[a + 1, 1], [-1, a]].
const GLV_A: [u64; 2] = [0x0a11_8000_0000_0000, 0x4522_17cc_9000_0001];
const GLV_A_PLUS_ONE: [u64; 2] = [0x0a11_8000_0000_0001, 0x4522_17cc_9000_0001];

// Montgomery encoding of ark-bls12-377 G1's configured endomorphism coefficient.
const G1_ENDOMORPHISM_COEFF: FqMont = FqMont([
    0x2c76_6f92_5a7b_8727,
    0x03d7_f6b0_253d_58b5,
    0x838e_c0de_ec12_2131,
    0xbd5e_b3e9_f658_bb10,
    0x6942_bd12_6ed3_e52e,
    0x0167_3786_dd04_ed6a,
]);

/// Signed magnitudes returned by BLS12-377 G1's pinned GLV decomposition.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct GlvDecomposition {
    pub k1_positive: bool,
    pub k1: [u64; 4],
    pub k2_positive: bool,
    pub k2: [u64; 4],
}

#[derive(Clone, Copy)]
struct WideDivRem {
    quotient: [u64; 6],
    remainder: [u64; 4],
}

#[inline(always)]
fn geq_4(left: [u64; 4], right: [u64; 4]) -> bool {
    left[3] > right[3]
        || (left[3] == right[3]
            && (left[2] > right[2]
                || (left[2] == right[2]
                    && (left[1] > right[1] || (left[1] == right[1] && left[0] >= right[0])))))
}

#[inline(always)]
fn gt_4(left: [u64; 4], right: [u64; 4]) -> bool {
    left[3] > right[3]
        || (left[3] == right[3]
            && (left[2] > right[2]
                || (left[2] == right[2]
                    && (left[1] > right[1] || (left[1] == right[1] && left[0] > right[0])))))
}

#[inline(always)]
fn sub_4(left: [u64; 4], right: [u64; 4]) -> [u64; 4] {
    let limb0 = sbb(left[0], right[0], 0);
    let limb1 = sbb(left[1], right[1], limb0.1);
    let limb2 = sbb(left[2], right[2], limb1.1);
    let limb3 = sbb(left[3], right[3], limb2.1);
    [limb0.0, limb1.0, limb2.0, limb3.0]
}

#[inline(always)]
fn gt_6(left: [u64; 6], right: [u64; 6]) -> bool {
    left[5] > right[5]
        || (left[5] == right[5]
            && (left[4] > right[4]
                || (left[4] == right[4]
                    && (left[3] > right[3]
                        || (left[3] == right[3]
                            && (left[2] > right[2]
                                || (left[2] == right[2]
                                    && (left[1] > right[1]
                                        || (left[1] == right[1] && left[0] > right[0])))))))))
}

#[inline(always)]
fn sub_6(left: [u64; 6], right: [u64; 6]) -> [u64; 6] {
    let limb0 = sbb(left[0], right[0], 0);
    let limb1 = sbb(left[1], right[1], limb0.1);
    let limb2 = sbb(left[2], right[2], limb1.1);
    let limb3 = sbb(left[3], right[3], limb2.1);
    let limb4 = sbb(left[4], right[4], limb3.1);
    let limb5 = sbb(left[5], right[5], limb4.1);
    [limb0.0, limb1.0, limb2.0, limb3.0, limb4.0, limb5.0]
}

#[inline(always)]
fn mul_4_by_2(left: [u64; 4], right: [u64; 2]) -> [u64; 6] {
    let p0 = mac(0, left[0], right[0], 0);
    let p1 = mac(0, left[1], right[0], p0.carry);
    let p2 = mac(0, left[2], right[0], p1.carry);
    let p3 = mac(0, left[3], right[0], p2.carry);

    let q1 = mac(p1.low, left[0], right[1], 0);
    let q2 = mac(p2.low, left[1], right[1], q1.carry);
    let q3 = mac(p3.low, left[2], right[1], q2.carry);
    let q4 = mac(p3.carry, left[3], right[1], q3.carry);
    [p0.low, q1.low, q2.low, q3.low, q4.low, q4.carry]
}

#[inline(always)]
fn shl_4_add_bit(value: [u64; 4], bit: bool) -> [u64; 4] {
    let carry0 = if bit { 1 } else { 0 };
    let limb0 = adc(value[0], value[0], carry0);
    let limb1 = adc(value[1], value[1], limb0.carry);
    let limb2 = adc(value[2], value[2], limb1.carry);
    let limb3 = adc(value[3], value[3], limb2.carry);
    [limb0.low, limb1.low, limb2.low, limb3.low]
}

#[inline(always)]
fn increment_6(value: [u64; 6]) -> [u64; 6] {
    let limb0 = adc(value[0], 1, 0);
    let limb1 = adc(value[1], 0, limb0.carry);
    let limb2 = adc(value[2], 0, limb1.carry);
    let limb3 = adc(value[3], 0, limb2.carry);
    let limb4 = adc(value[4], 0, limb3.carry);
    let limb5 = adc(value[5], 0, limb4.carry);
    [
        limb0.low, limb1.low, limb2.low, limb3.low, limb4.low, limb5.low,
    ]
}

/// Fixed-width long division used for arkworks' nearest-integer `k*a/r`.
fn rounded_div_6_by_fr(numerator: [u64; 6]) -> [u64; 6] {
    let mut quotient = [0_u64; 6];
    let mut remainder = [0_u64; 4];
    let mut bit_index = 384_usize;
    while bit_index > 0 {
        bit_index -= 1;
        let limb = bit_index / 64;
        let bit = ((numerator[limb] >> (bit_index % 64)) & 1) == 1;
        remainder = shl_4_add_bit(remainder, bit);
        if geq_4(remainder, FR_MODULUS) {
            remainder = sub_4(remainder, FR_MODULUS);
            quotient[limb] |= 1_u64 << (bit_index % 64);
        }
    }

    let division = WideDivRem {
        quotient,
        remainder,
    };
    let twice_remainder = shl_4_add_bit(division.remainder, false);
    if gt_4(twice_remainder, FR_MODULUS) {
        increment_6(division.quotient)
    } else {
        division.quotient
    }
}

#[inline(always)]
fn reduce_fr(mut scalar: [u64; 4]) -> [u64; 4] {
    while geq_4(scalar, FR_MODULUS) {
        scalar = sub_4(scalar, FR_MODULUS);
    }
    scalar
}

/// Arkworks' BLS12-377 GLV scalar decomposition specialized to its pinned basis.
pub fn g1_glv_scalar_decomposition(scalar: [u64; 4]) -> GlvDecomposition {
    let scalar = reduce_fr(scalar);

    // For the pinned n12 = 1 and canonical 0 <= k < r, truncating -k/r is
    // zero, including k = 0. Thus beta2 is zero exactly as in arkworks.
    let beta1_wide = rounded_div_6_by_fr(mul_4_by_2(scalar, GLV_A));
    let beta1 = [beta1_wide[0], beta1_wide[1], beta1_wide[2], beta1_wide[3]];
    let b1 = mul_4_by_2(beta1, GLV_A_PLUS_ONE);
    let scalar_wide = [scalar[0], scalar[1], scalar[2], scalar[3], 0, 0];

    let (k1_positive, k1_wide) = if gt_6(scalar_wide, b1) {
        (true, sub_6(scalar_wide, b1))
    } else {
        (false, sub_6(b1, scalar_wide))
    };
    let k1 = [k1_wide[0], k1_wide[1], k1_wide[2], k1_wide[3]];

    GlvDecomposition {
        k1_positive,
        k1,
        // k2 = -(beta1*n12) and n12 = 1. BigInt zero has `NoSign`, so the
        // sign flag is false both for zero and for a negative magnitude.
        k2_positive: false,
        k2: beta1,
    }
}

/// Configured BLS12-377 G1 endomorphism: multiply projective X only.
pub fn g1_glv_endomorphism(point: G1ProjMont) -> G1ProjMont {
    G1ProjMont {
        x: mul(point.x, G1_ENDOMORPHISM_COEFF),
        y: point.y,
        z: point.z,
    }
}

/// One executed GLV joint step: double, then the arkworks choice-add.
pub fn g1_glv_joint_step(
    accumulator: G1ProjMont,
    b1: G1ProjMont,
    b2: G1ProjMont,
    b1b2: G1ProjMont,
    bit1: bool,
    bit2: bool,
) -> G1ProjMont {
    let doubled = g1_double(accumulator);
    if bit1 {
        if bit2 {
            g1_add(doubled, b1b2)
        } else {
            g1_add(doubled, b1)
        }
    } else if bit2 {
        g1_add(doubled, b2)
    } else {
        doubled
    }
}

/// Select one little-endian scalar limb bit by its global index.
pub fn g1_glv_scalar_bit(scalar: [u64; 4], bit_index: usize) -> bool {
    let limb = bit_index / 64;
    ((scalar[limb] >> (bit_index % 64)) & 1) == 1
}

/// Arkworks' paired 256-bit GLV schedule, including its single leading `00` skip.
pub fn g1_glv_joint_loop(
    b1: G1ProjMont,
    b2: G1ProjMont,
    b1b2: G1ProjMont,
    k1: [u64; 4],
    k2: [u64; 4],
) -> G1ProjMont {
    let mut accumulator = g1_zero();
    let mut skip_zeros = true;
    let mut bit_index = 256_usize;
    while bit_index > 0 {
        bit_index -= 1;
        let bit1 = g1_glv_scalar_bit(k1, bit_index);
        let bit2 = g1_glv_scalar_bit(k2, bit_index);
        if skip_zeros && !bit1 && !bit2 {
            skip_zeros = false;
        } else {
            accumulator = g1_glv_joint_step(accumulator, b1, b2, b1b2, bit1, bit2);
        }
    }
    accumulator
}

/// Faithful monomorphic copy of BLS12-377 G1's `glv_mul_projective` override.
pub fn g1_glv_mul_projective(base: G1ProjMont, scalar: [u64; 4]) -> G1ProjMont {
    let decomposition = g1_glv_scalar_decomposition(scalar);
    let mut b1 = base;
    let mut b2 = g1_glv_endomorphism(base);

    if !decomposition.k1_positive {
        b1 = g1_neg(b1);
    }
    if !decomposition.k2_positive {
        b2 = g1_neg(b2);
    }

    let b1b2 = g1_add(b1, b2);
    g1_glv_joint_loop(b1, b2, b1b2, decomposition.k1, decomposition.k2)
}

/// Extraction root for the executed BLS12-377 G1 GLV override.
#[doc(hidden)]
pub fn extract_s3_28_glv(base: G1ProjMont, scalar: [u64; 4]) -> G1ProjMont {
    g1_glv_mul_projective(base, scalar)
}

/// One generic projective-base scalar bit step for BLS12-377 G2.
pub fn g2_mul_projective_step(accumulator: G2ProjMont, base: G2ProjMont, bit: bool) -> G2ProjMont {
    let doubled = g2_double(accumulator);
    if bit {
        g2_add(doubled, base)
    } else {
        doubled
    }
}

/// One generic affine-base scalar bit step for BLS12-377 G2.
pub fn g2_mul_affine_step(accumulator: G2ProjMont, base: G2AffineMont, bit: bool) -> G2ProjMont {
    let doubled = g2_double(accumulator);
    if bit {
        g2_add_mixed(doubled, base)
    } else {
        doubled
    }
}

/// Arkworks' generic big-endian, leading-zero-skipping projective loop for G2.
pub fn g2_mul_projective(base: G2ProjMont, scalar: [u64; 4]) -> G2ProjMont {
    let mut accumulator = g2_zero();
    let mut started = false;
    let mut limb = 4_usize;
    while limb > 0 {
        limb -= 1;
        let mut bit_index = 64_usize;
        while bit_index > 0 {
            bit_index -= 1;
            let bit = ((scalar[limb] >> bit_index) & 1) == 1;
            if started || bit {
                started = true;
                accumulator = g2_mul_projective_step(accumulator, base, bit);
            }
        }
    }
    accumulator
}

/// Arkworks' generic big-endian, leading-zero-skipping affine loop for G2.
pub fn g2_mul_affine(base: G2AffineMont, scalar: [u64; 4]) -> G2ProjMont {
    let mut accumulator = g2_zero();
    let mut started = false;
    let mut limb = 4_usize;
    while limb > 0 {
        limb -= 1;
        let mut bit_index = 64_usize;
        while bit_index > 0 {
            bit_index -= 1;
            let bit = ((scalar[limb] >> bit_index) & 1) == 1;
            if started || bit {
                started = true;
                accumulator = g2_mul_affine_step(accumulator, base, bit);
            }
        }
    }
    accumulator
}

/// Extraction root for the generic scalar loops actually reached in S3-28.
#[doc(hidden)]
pub fn extract_s3_28(
    g1_affine: G1AffineMont,
    g2_projective: G2ProjMont,
    g2_affine: G2AffineMont,
    scalar: [u64; 4],
) -> (G1ProjMont, G2ProjMont, G2ProjMont) {
    (
        g1_mul_affine(g1_affine, scalar),
        g2_mul_projective(g2_projective, scalar),
        g2_mul_affine(g2_affine, scalar),
    )
}

/// Faithful Jacobian-to-affine conversion used by `Projective::into_affine`.
pub fn g1_into_affine(a: G1ProjMont) -> G1AffineMont {
    if a.z == FQ_ZERO {
        return G1AffineMont {
            x: FQ_ZERO,
            y: FQ_ONE,
            infinity: true,
        };
    }
    if a.z == FQ_ONE {
        return G1AffineMont {
            x: a.x,
            y: a.y,
            infinity: false,
        };
    }
    let zinv = match inv(a.z) {
        Some(value) => value,
        None => {
            return G1AffineMont {
                x: FQ_ZERO,
                y: FQ_ONE,
                infinity: true,
            }
        }
    };
    let z2 = square(zinv);
    G1AffineMont {
        x: mul(a.x, z2),
        y: mul(mul(a.y, z2), zinv),
        infinity: false,
    }
}

/// Montgomery batch inversion, including arkworks' zero-skipping behavior.
fn g1_batch_invert_reversed(values: &[G1ProjMont]) -> Vec<FqMont> {
    let mut products = Vec::with_capacity(values.len());
    let mut product = FQ_ONE;
    let mut i = 0_usize;
    while i < values.len() {
        let value = values[i].z;
        if value == FQ_ZERO {
        } else {
            products.push(product);
            product = mul(product, value);
        }
        i += 1;
    }
    let mut inverse = match inv(product) {
        Some(value) => value,
        None => FQ_ZERO,
    };
    let mut result = Vec::with_capacity(values.len());
    i = values.len();
    while i > 0 {
        i -= 1;
        let value = values[i].z;
        if value == FQ_ZERO {
            result.push(FQ_ZERO);
        } else {
            let prefix = match products.pop() {
                Some(value) => value,
                None => FQ_ZERO,
            };
            let next = mul(inverse, value);
            result.push(mul(inverse, prefix));
            inverse = next;
        }
    }
    result
}

/// Faithful `short_weierstrass::Projective::normalize_batch` for G1.
pub fn g1_normalize_batch(values: &[G1ProjMont]) -> Vec<G1AffineMont> {
    let mut inverses = g1_batch_invert_reversed(values);
    let mut result = Vec::with_capacity(values.len());
    let mut i = 0_usize;
    while i < values.len() {
        let value = values[i];
        let zinv = match inverses.pop() {
            Some(value) => value,
            None => FQ_ZERO,
        };
        if value.z == FQ_ZERO {
            result.push(G1AffineMont {
                x: FQ_ZERO,
                y: FQ_ONE,
                infinity: true,
            });
        } else {
            let z2 = square(zinv);
            result.push(G1AffineMont {
                x: mul(value.x, z2),
                y: mul(mul(value.y, z2), zinv),
                infinity: false,
            });
        }
        i += 1;
    }
    result
}

/// Faithful Jacobian-to-affine conversion used by `Projective::into_affine`.
pub fn g2_into_affine(a: G2ProjMont) -> G2AffineMont {
    if a.z == FQ2_ZERO {
        return G2AffineMont {
            x: FQ2_ZERO,
            y: FQ2_ONE,
            infinity: true,
        };
    }
    if a.z == FQ2_ONE {
        return G2AffineMont {
            x: a.x,
            y: a.y,
            infinity: false,
        };
    }
    let zinv = match fq2_inv(a.z) {
        Some(value) => value,
        None => {
            return G2AffineMont {
                x: FQ2_ZERO,
                y: FQ2_ONE,
                infinity: true,
            }
        }
    };
    let z2 = fq2_square(zinv);
    G2AffineMont {
        x: fq2_mul(a.x, z2),
        y: fq2_mul(fq2_mul(a.y, z2), zinv),
        infinity: false,
    }
}

/// Montgomery batch inversion for Fq2, with zero entries skipped.
fn g2_batch_invert_reversed(values: &[G2ProjMont]) -> Vec<Fq2Mont> {
    let mut products = Vec::with_capacity(values.len());
    let mut product = FQ2_ONE;
    let mut i = 0_usize;
    while i < values.len() {
        let value = values[i].z;
        if value == FQ2_ZERO {
        } else {
            products.push(product);
            product = fq2_mul(product, value);
        }
        i += 1;
    }
    let mut inverse = match fq2_inv(product) {
        Some(value) => value,
        None => FQ2_ZERO,
    };
    let mut result = Vec::with_capacity(values.len());
    i = values.len();
    while i > 0 {
        i -= 1;
        let value = values[i].z;
        if value == FQ2_ZERO {
            result.push(FQ2_ZERO);
        } else {
            let prefix = match products.pop() {
                Some(value) => value,
                None => FQ2_ZERO,
            };
            let next = fq2_mul(inverse, value);
            result.push(fq2_mul(inverse, prefix));
            inverse = next;
        }
    }
    result
}

/// Faithful `short_weierstrass::Projective::normalize_batch` for G2.
pub fn g2_normalize_batch(values: &[G2ProjMont]) -> Vec<G2AffineMont> {
    let mut inverses = g2_batch_invert_reversed(values);
    let mut result = Vec::with_capacity(values.len());
    let mut i = 0_usize;
    while i < values.len() {
        let value = values[i];
        let zinv = match inverses.pop() {
            Some(value) => value,
            None => FQ2_ZERO,
        };
        if value.z == FQ2_ZERO {
            result.push(G2AffineMont {
                x: FQ2_ZERO,
                y: FQ2_ONE,
                infinity: true,
            });
        } else {
            let z2 = fq2_square(zinv);
            result.push(G2AffineMont {
                x: fq2_mul(value.x, z2),
                y: fq2_mul(fq2_mul(value.y, z2), zinv),
                infinity: false,
            });
        }
        i += 1;
    }
    result
}

/// Extraction root for single and batch G1/G2 normalization.
#[doc(hidden)]
pub fn extract_s3_29(
    g1: G1ProjMont,
    g1_batch: &[G1ProjMont],
    g2: G2ProjMont,
    g2_batch: &[G2ProjMont],
) -> (
    G1AffineMont,
    Vec<G1AffineMont>,
    G2AffineMont,
    Vec<G2AffineMont>,
) {
    (
        g1_into_affine(g1),
        g1_normalize_batch(g1_batch),
        g2_into_affine(g2),
        g2_normalize_batch(g2_batch),
    )
}

fn msm_window_size(size: usize) -> usize {
    if size < 32 {
        3
    } else {
        let mut n = size;
        let mut log = 0_usize;
        while n > 1 {
            n >>= 1;
            log += 1;
        }
        log + 2
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
struct WnafDigit {
    negative: bool,
    magnitude: u64,
}

/// Faithful ark-ec 0.5.0 `make_digits`, specialized to BLS12-377 `Fr`.
fn make_wnaf_digits(scalar: [u64; 4], w: usize, num_bits: usize) -> Vec<WnafDigit> {
    let radix: u64 = 1_u64 << w;
    let window_mask = radix - 1;
    let digits_count = (num_bits + w - 1) / w;
    let mut carry = 0_u64;
    let mut digits = Vec::with_capacity(digits_count);
    let mut i = 0_usize;
    while i < digits_count {
        let bit_offset = i * w;
        let u64_idx = bit_offset / 64;
        let bit_idx = bit_offset % 64;
        let bit_buf = if bit_idx < 64 - w || u64_idx == scalar.len() - 1 {
            scalar[u64_idx] >> bit_idx
        } else {
            (scalar[u64_idx] >> bit_idx) | (scalar[1 + u64_idx] << (64 - bit_idx))
        };
        let coef = carry + (bit_buf & window_mask);
        let next_carry = (coef + radix / 2) >> w;
        let last = i == digits_count - 1;
        let magnitude = if last || next_carry == 0 { coef } else { radix - coef };
        let negative = !last && next_carry != 0 && magnitude != 0;
        digits.push(WnafDigit { negative, magnitude });
        carry = next_carry;
        i += 1;
    }
    digits
}

fn g1_msm_unchecked(bases: &[G1AffineMont], scalars: &[[u64; 4]]) -> G1ProjMont {
    let size = if bases.len() < scalars.len() { bases.len() } else { scalars.len() };
    if size == 0 {
        return g1_zero();
    }
    let c = msm_window_size(size);
    let num_bits = 253_usize;
    let digits_count = (num_bits + c - 1) / c;
    let mut all_digits = Vec::with_capacity(size * digits_count);
    let mut i = 0_usize;
    while i < size {
        let digits = make_wnaf_digits(scalars[i], c, num_bits);
        let mut j = 0_usize;
        while j < digits.len() {
            all_digits.push(digits[j]);
            j += 1;
        }
        i += 1;
    }
    let mut window_sums = Vec::with_capacity(digits_count);
    let bucket_count = 1_usize << c;
    let mut window = 0_usize;
    while window < digits_count {
        let mut buckets = vec![g1_zero(); bucket_count];
        let mut point = 0_usize;
        while point < size {
            let digit = all_digits[point * digits_count + window];
            if digit.magnitude != 0 {
                let bucket = (digit.magnitude - 1) as usize;
                let base = if digit.negative {
                    g1_affine_neg(bases[point])
                } else {
                    bases[point]
                };
                buckets[bucket] = g1_add_mixed(buckets[bucket], base);
            }
            point += 1;
        }
        let mut running_sum = g1_zero();
        let mut result = g1_zero();
        let mut bucket = bucket_count;
        while bucket > 0 {
            bucket -= 1;
            running_sum = g1_add(running_sum, buckets[bucket]);
            result = g1_add(result, running_sum);
        }
        window_sums.push(result);
        window += 1;
    }
    let lowest = window_sums[0];
    let mut result = g1_zero();
    let mut window = digits_count;
    while window > 1 {
        window -= 1;
        result = g1_add(result, window_sums[window]);
        let mut bit = 0_usize;
        while bit < c {
            result = g1_double(result);
            bit += 1;
        }
    }
    g1_add(lowest, result)
}

fn g2_msm_unchecked(bases: &[G2AffineMont], scalars: &[[u64; 4]]) -> G2ProjMont {
    let size = if bases.len() < scalars.len() { bases.len() } else { scalars.len() };
    if size == 0 {
        return g2_zero();
    }
    let c = msm_window_size(size);
    let num_bits = 253_usize;
    let digits_count = (num_bits + c - 1) / c;
    let mut all_digits = Vec::with_capacity(size * digits_count);
    let mut i = 0_usize;
    while i < size {
        let digits = make_wnaf_digits(scalars[i], c, num_bits);
        let mut j = 0_usize;
        while j < digits.len() {
            all_digits.push(digits[j]);
            j += 1;
        }
        i += 1;
    }
    let mut window_sums = Vec::with_capacity(digits_count);
    let bucket_count = 1_usize << c;
    let mut window = 0_usize;
    while window < digits_count {
        let mut buckets = vec![g2_zero(); bucket_count];
        let mut point = 0_usize;
        while point < size {
            let digit = all_digits[point * digits_count + window];
            if digit.magnitude != 0 {
                let bucket = (digit.magnitude - 1) as usize;
                let base = if digit.negative {
                    g2_affine_neg(bases[point])
                } else {
                    bases[point]
                };
                buckets[bucket] = g2_add_mixed(buckets[bucket], base);
            }
            point += 1;
        }
        let mut running_sum = g2_zero();
        let mut result = g2_zero();
        let mut bucket = bucket_count;
        while bucket > 0 {
            bucket -= 1;
            running_sum = g2_add(running_sum, buckets[bucket]);
            result = g2_add(result, running_sum);
        }
        window_sums.push(result);
        window += 1;
    }
    let lowest = window_sums[0];
    let mut result = g2_zero();
    let mut window = digits_count;
    while window > 1 {
        window -= 1;
        result = g2_add(result, window_sums[window]);
        let mut bit = 0_usize;
        while bit < c {
            result = g2_double(result);
            bit += 1;
        }
    }
    g2_add(lowest, result)
}

pub fn g1_msm(bases: &[G1AffineMont], scalars: &[[u64; 4]]) -> Result<G1ProjMont, usize> {
    if bases.len() != scalars.len() {
        return Err(if bases.len() < scalars.len() { bases.len() } else { scalars.len() });
    }
    Ok(g1_msm_unchecked(bases, scalars))
}

pub fn g2_msm(bases: &[G2AffineMont], scalars: &[[u64; 4]]) -> Result<G2ProjMont, usize> {
    if bases.len() != scalars.len() {
        return Err(if bases.len() < scalars.len() { bases.len() } else { scalars.len() });
    }
    Ok(g2_msm_unchecked(bases, scalars))
}

/// Extraction root for the sequential signed-digit bucket MSM copies.
pub fn extract_s3_30(
    g1_bases: &[G1AffineMont],
    g1_scalars: &[[u64; 4]],
    g2_bases: &[G2AffineMont],
    g2_scalars: &[[u64; 4]],
) -> (Result<G1ProjMont, usize>, Result<G2ProjMont, usize>) {
    (
        g1_msm(g1_bases, g1_scalars),
        g2_msm(g2_bases, g2_scalars),
    )
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

#[cfg(test)]
mod wnaf_tests {
    use super::{make_wnaf_digits, msm_window_size};
    use ark_bls12_377::Fr;
    use ark_ff::PrimeField;
    use ark_std::{test_rng, UniformRand};

    fn literal_i64_digits(scalar: [u64; 4], w: usize, num_bits: usize) -> Vec<i64> {
        let radix = 1_u64 << w;
        let window_mask = radix - 1;
        let digits_count = (num_bits + w - 1) / w;
        let mut carry = 0_u64;
        let mut digits = Vec::with_capacity(digits_count);
        let mut i = 0_usize;
        while i < digits_count {
            let bit_offset = i * w;
            let u64_idx = bit_offset / 64;
            let bit_idx = bit_offset % 64;
            let bit_buf = if bit_idx < 64 - w || u64_idx == scalar.len() - 1 {
                scalar[u64_idx] >> bit_idx
            } else {
                (scalar[u64_idx] >> bit_idx) | (scalar[1 + u64_idx] << (64 - bit_idx))
            };
            let coef = carry + (bit_buf & window_mask);
            carry = (coef + radix / 2) >> w;
            let mut digit = (coef as i64) - ((carry << w) as i64);
            if i == digits_count - 1 {
                digit += (carry << w) as i64;
            }
            digits.push(digit);
            i += 1;
        }
        digits
    }

    #[test]
    fn sign_magnitude_digits_match_literal_i64_arkworks_reference() {
        let mut modulus_minus_one = <Fr as PrimeField>::MODULUS;
        modulus_minus_one.0[0] -= 1;
        let edge_scalars = [
            [0_u64; 4],
            [1, 0, 0, 0],
            modulus_minus_one.0,
            [u64::MAX, 1, 0, 0],
            [u64::MAX - 1, 0, 1, 0],
            [0, u64::MAX, 0, 1],
        ];
        let windows = [3_usize, 4, 5, 7, 8, 11, 16];
        let mut checked = 0_usize;
        let mut scalar_index = 0_usize;
        while scalar_index < edge_scalars.len() {
            let mut window_index = 0_usize;
            while window_index < windows.len() {
                let w = windows[window_index];
                let actual = make_wnaf_digits(edge_scalars[scalar_index], w, 253);
                let expected = literal_i64_digits(edge_scalars[scalar_index], w, 253);
                assert_eq!(actual.len(), expected.len());
                let mut i = 0_usize;
                while i < actual.len() {
                    let value = if actual[i].negative {
                        -(actual[i].magnitude as i128)
                    } else {
                        actual[i].magnitude as i128
                    };
                    assert_eq!(value, expected[i] as i128);
                    if actual[i].magnitude == 0 {
                        assert!(!actual[i].negative);
                    }
                    checked += 1;
                    i += 1;
                }
                window_index += 1;
            }
            scalar_index += 1;
        }

        let mut rng = test_rng();
        let mut random_index = 0_usize;
        while random_index < 512 {
            let scalar = Fr::rand(&mut rng).into_bigint().0;
            let mut window_index = 0_usize;
            while window_index < windows.len() {
                let w = windows[window_index];
                let actual = make_wnaf_digits(scalar, w, 253);
                let expected = literal_i64_digits(scalar, w, 253);
                let mut i = 0_usize;
                while i < actual.len() {
                    let value = if actual[i].negative {
                        -(actual[i].magnitude as i128)
                    } else {
                        actual[i].magnitude as i128
                    };
                    assert_eq!(value, expected[i] as i128);
                    checked += 1;
                    i += 1;
                }
                window_index += 1;
            }
            random_index += 1;
        }
        assert!(checked > 7 * (6 + 512)); // every generated window was checked above
    }

    #[test]
    fn msm_window_selection_matches_boundary_rule() {
        let sizes = [
            1_usize, 2, 3, 4, 7, 8, 15, 16, 31, 32, 33, 34, 63, 64, 65, 127, 128, 129,
        ];
        let mut checked = 0_usize;
        let mut i = 0_usize;
        while i < sizes.len() {
            let size = sizes[i];
            let expected = if size < 32 {
                3
            } else {
                let mut n = size;
                let mut log = 0_usize;
                while n > 1 {
                    n >>= 1;
                    log += 1;
                }
                log + 2
            };
            assert_eq!(msm_window_size(size), expected);
            checked += 1;
            i += 1;
        }
        assert_eq!(checked, 18);
    }
}
