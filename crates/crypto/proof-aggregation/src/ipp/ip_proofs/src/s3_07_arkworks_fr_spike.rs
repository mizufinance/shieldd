//! Experimental campaign copy of executed BLS12-377 Fr arithmetic (S3-F05B).
//!
//! Arkworks 0.5.0 instantiates `MontBackend<FrConfig, 4>` via
//! `#[derive(MontConfig)]`; the production x86_64 build executes the safe-Rust
//! no-carry CIOS branch (top modulus limb `0x12ab655e9a2ca556 < 2^62`) followed
//! by one conditional subtraction. Multiplication, addition, subtraction,
//! negation, GKP binary extended-Euclidean inversion, and canonical byte paths
//! are spelled out monomorphically for hax and parity testing. Square root and
//! dedicated squaring are intentionally excluded: the verifier never
//! square-roots scalars, and its scalar squarings execute the generic `mul`
//! path.

const MODULUS: [u64; 4] = [
    0x0a11_8000_0000_0001,
    0x59aa_76fe_d000_0001,
    0x60b4_4d1e_5c37_b001,
    0x12ab_655e_9a2c_a556,
];

const INV: u64 = 0x0a11_7fff_ffff_ffff;

const R2: [u64; 4] = [
    0x25d5_77ba_b861_857b,
    0xcc2c_27b5_8860_591f,
    0xa7cc_008f_e5dc_8593,
    0x011f_dae7_eff1_c939,
];

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FrMont(pub [u64; 4]);

pub type FrBytes = [u8; 32];

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
fn add_raw(left: [u64; 4], right: [u64; 4]) -> [u64; 4] {
    let limb0 = adc(left[0], right[0], 0);
    let limb1 = adc(left[1], right[1], limb0.carry);
    let limb2 = adc(left[2], right[2], limb1.carry);
    let limb3 = adc(left[3], right[3], limb2.carry);
    [limb0.low, limb1.low, limb2.low, limb3.low]
}

#[inline(always)]
fn round(r: [u64; 4], a: [u64; 4], b: u64) -> [u64; 4] {
    let product0 = mac(r[0], a[0], b, 0);
    let k = product0.low.wrapping_mul(INV);
    let reduction0 = mac(product0.low, k, MODULUS[0], 0);

    let product1 = mac(r[1], a[1], b, product0.carry);
    let reduction1 = mac(product1.low, k, MODULUS[1], reduction0.carry);
    let product2 = mac(r[2], a[2], b, product1.carry);
    let reduction2 = mac(product2.low, k, MODULUS[2], reduction1.carry);
    let product3 = mac(r[3], a[3], b, product2.carry);
    let reduction3 = mac(product3.low, k, MODULUS[3], reduction2.carry);

    [
        reduction1.low,
        reduction2.low,
        reduction3.low,
        product3.carry + reduction3.carry,
    ]
}

#[inline(always)]
fn geq_modulus(value: [u64; 4]) -> bool {
    value[3] > MODULUS[3]
        || (value[3] == MODULUS[3]
            && (value[2] > MODULUS[2]
                || (value[2] == MODULUS[2]
                    && (value[1] > MODULUS[1]
                        || (value[1] == MODULUS[1] && value[0] >= MODULUS[0])))))
}

#[inline(always)]
fn sbb(left: u64, right: u64, borrow: u64) -> (u64, u64) {
    let value = (left as u128).wrapping_sub(right as u128 + borrow as u128);
    (value as u64, (value >> 127) as u64)
}

#[inline(always)]
fn sub_raw(left: [u64; 4], right: [u64; 4]) -> [u64; 4] {
    let limb0 = sbb(left[0], right[0], 0);
    let limb1 = sbb(left[1], right[1], limb0.1);
    let limb2 = sbb(left[2], right[2], limb1.1);
    let limb3 = sbb(left[3], right[3], limb2.1);
    [limb0.0, limb1.0, limb2.0, limb3.0]
}

#[inline(always)]
fn gt(left: [u64; 4], right: [u64; 4]) -> bool {
    left[3] > right[3]
        || (left[3] == right[3]
            && (left[2] > right[2]
                || (left[2] == right[2]
                    && (left[1] > right[1] || (left[1] == right[1] && left[0] > right[0])))))
}

#[inline(always)]
fn shr_join(low: u64, high: u64) -> u64 {
    (low >> 1) | (high << 63)
}

#[inline(always)]
fn div2(value: [u64; 4]) -> [u64; 4] {
    [
        shr_join(value[0], value[1]),
        shr_join(value[1], value[2]),
        shr_join(value[2], value[3]),
        value[3] >> 1,
    ]
}

#[inline(always)]
fn is_even(value: [u64; 4]) -> bool {
    (value[0] >> 1) << 1 == value[0]
}

#[inline(always)]
fn add_modulus_raw(value: [u64; 4]) -> [u64; 4] {
    add_raw(value, MODULUS)
}

#[inline(always)]
fn half_coefficient_odd(value: [u64; 4]) -> [u64; 4] {
    div2(add_modulus_raw(value))
}

#[inline(always)]
fn half_coefficient(value: [u64; 4]) -> [u64; 4] {
    if is_even(value) {
        div2(value)
    } else {
        half_coefficient_odd(value)
    }
}

#[inline(always)]
fn subtract_modulus(value: [u64; 4]) -> [u64; 4] {
    if !geq_modulus(value) {
        return value;
    }
    let limb0 = sbb(value[0], MODULUS[0], 0);
    let limb1 = sbb(value[1], MODULUS[1], limb0.1);
    let limb2 = sbb(value[2], MODULUS[2], limb1.1);
    let limb3 = sbb(value[3], MODULUS[3], limb2.1);
    [limb0.0, limb1.0, limb2.0, limb3.0]
}

/// The exact safe-Rust CIOS closure selected for reduced BLS12-377 Fr inputs.
pub fn mul(a: FrMont, b: FrMont) -> FrMont {
    let r0 = round([0; 4], a.0, b.0[0]);
    let r1 = round(r0, a.0, b.0[1]);
    let r2 = round(r1, a.0, b.0[2]);
    let r3 = round(r2, a.0, b.0[3]);
    FrMont(subtract_modulus(r3))
}

/// Arkworks `add_assign`: four-word ADC followed by conditional subtraction.
pub fn add(a: FrMont, b: FrMont) -> FrMont {
    FrMont(subtract_modulus(add_raw(a.0, b.0)))
}

/// Arkworks `sub_assign`: conditional modulus addition followed by subtraction.
pub fn sub(a: FrMont, b: FrMont) -> FrMont {
    let left = if gt(b.0, a.0) {
        add_raw(a.0, MODULUS)
    } else {
        a.0
    };
    FrMont(sub_raw(left, b.0))
}

/// Arkworks `neg_in_place`: preserve zero, otherwise compute `r - a`.
pub fn neg(a: FrMont) -> FrMont {
    if a.0 == [0; 4] {
        a
    } else {
        FrMont(sub_raw(MODULUS, a.0))
    }
}

/// Arkworks' GKP binary extended-Euclidean `MontBackend::inverse` path.
pub fn inv(a: FrMont) -> Option<FrMont> {
    if a.0 == [0; 4] {
        return None;
    }

    let one = [1, 0, 0, 0];
    let mut u = a.0;
    let mut v = MODULUS;
    let mut b = R2;
    let mut c = [0; 4];

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
            b = sub(FrMont(b), FrMont(c)).0;
        } else {
            v = sub_raw(v, u);
            c = sub(FrMont(c), FrMont(b)).0;
        }
    }

    if u == one {
        Some(FrMont(b))
    } else {
        Some(FrMont(c))
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
fn limbs_to_bytes(value: [u64; 4]) -> FrBytes {
    let w0 = word_to_bytes(value[0]);
    let w1 = word_to_bytes(value[1]);
    let w2 = word_to_bytes(value[2]);
    let w3 = word_to_bytes(value[3]);
    [
        w0[0], w0[1], w0[2], w0[3], w0[4], w0[5], w0[6], w0[7], w1[0], w1[1], w1[2], w1[3], w1[4],
        w1[5], w1[6], w1[7], w2[0], w2[1], w2[2], w2[3], w2[4], w2[5], w2[6], w2[7], w3[0], w3[1],
        w3[2], w3[3], w3[4], w3[5], w3[6], w3[7],
    ]
}

#[inline(always)]
fn bytes_to_limbs(bytes: FrBytes) -> [u64; 4] {
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
    ]
}

/// Arkworks serialization without flags: 32 canonical little-endian bytes.
pub fn to_bytes(a: FrMont) -> FrBytes {
    let value = mul(a, FrMont([1, 0, 0, 0])).0;
    limbs_to_bytes(value)
}

/// Arkworks deserialization without flags: reject integers greater than or
/// equal to the modulus, then convert into Montgomery form.
pub fn from_bytes(bytes: FrBytes) -> Option<FrMont> {
    let value = bytes_to_limbs(bytes);
    if geq_modulus(value) {
        return None;
    }
    Some(mul(FrMont(value), FrMont(R2)))
}
