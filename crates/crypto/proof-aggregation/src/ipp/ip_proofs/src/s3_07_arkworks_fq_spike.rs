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
        let mut carry_a: u64 = 0;
        let mut carry_b: u64 = 0;
        for (a, b) in [(a0.0, b0.0), (a1.0, b1.0)] {
            let m0 = mac(result[0], a[j], b[0], 0);
            result[0] = m0.low;
            let mut carry2 = m0.carry;
            for k in 1..6 {
                let mk = mac(result[k], a[j], b[k], carry2);
                result[k] = mk.low;
                carry2 = mk.carry;
            }
            let sum = adc(carry_a, carry_b, carry2);
            carry_a = sum.low;
            carry_b = sum.carry;
        }
        let k = result[0].wrapping_mul(INV);
        let r0 = mac(result[0], k, MODULUS[0], 0);
        let mut carry2 = r0.carry;
        for i in 1..6 {
            let ri = mac(result[i], k, MODULUS[i], carry2);
            result[i - 1] = ri.low;
            carry2 = ri.carry;
        }
        let top = adc(carry_a, carry_b, carry2);
        result[5] = top.low;
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
    Fq2Mont { c0: add(a.c0, b.c0), c1: add(a.c1, b.c1) }
}

pub fn fq2_sub(a: Fq2Mont, b: Fq2Mont) -> Fq2Mont {
    Fq2Mont { c0: sub(a.c0, b.c0), c1: sub(a.c1, b.c1) }
}

pub fn fq2_neg(a: Fq2Mont) -> Fq2Mont {
    Fq2Mont { c0: neg(a.c0), c1: neg(a.c1) }
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
    inv(v0).map(|norm_inv| Fq2Mont {
        c0: mul(a.c0, norm_inv),
        c1: neg(mul(a.c1, norm_inv)),
    })
}

/// Extraction root whose closure contains every S3-16 Fq2 operation.
#[doc(hidden)]
pub fn extract_s3_16(a: Fq2Mont, b: Fq2Mont) -> (Fq2Mont, Fq2Mont, Fq2Mont, Fq2Mont, Fq2Mont, Option<Fq2Mont>) {
    (
        fq2_add(a, b),
        fq2_sub(a, b),
        fq2_neg(a),
        fq2_mul(a, b),
        fq2_square(a),
        fq2_inv(a),
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
