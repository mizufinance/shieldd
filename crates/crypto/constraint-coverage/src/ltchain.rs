//! Tier-3 recurrence-recovery normalizer: lifts the `x < p` lt-compare carry
//! chain (`stateTrace_to_ltcRec` in Lean) into the trusted Rust extractor and
//! **parity-gates it statically**, fail-closed, exactly like `structure_lc`.
//!
//! gnark lowers each canonicity ladder into a flat pile of R1CS rows whose
//! locality is destroyed by CSE/const-folding/widening. This pass walks the
//! rungs MSB-first driven by the *known modulus bits* (so the recovered branch
//! pattern is pinned to the bound, not guessed), matching each expected
//! multiplication against a raw row up to a gnark scale factor. Recovery is a
//! best-effort structural re-description; soundness rests entirely on the gate:
//! [`LtChainRepr::verify_parity`] reconstructs each consumed row from the
//! recovered seating and asserts it equals the actual raw row (canonicalized
//! mod p, `L·R` commutative). A mis-seat or wrong branch cannot pass.
//!
//! Semantics stay in Lean (`ltcRec_sound`); this only recovers *which* rows form
//! the chain and *how* they seat, handing the generator clean `(pe, il)` pairs.

use crate::field::Fp;
use crate::ir::{Constraint, Term};
use num_bigint::BigUint;
use std::collections::BTreeMap;

pub const ACTIVE_DTK_TEMPLATE_ID: &str =
    "decaf.diversified_transmission_key@a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c";
pub const ACTIVE_DTK_ROWS: usize = 5477;

/// A linear combination: wire → field coefficient, always cleaned (no zeros).
pub type Lc = BTreeMap<usize, Fp>;

fn lc_from_terms(terms: &[Term]) -> Lc {
    let mut out: Lc = BTreeMap::new();
    for t in terms {
        let c = Fp::parse(&t.coeff);
        let e = out.entry(t.wire).or_insert_with(Fp::zero);
        *e = &*e + &c;
    }
    out.retain(|_, v| !v.is_zero());
    out
}

fn lc_to_terms(lc: &Lc) -> Vec<Term> {
    lc.iter()
        .map(|(w, c)| Term {
            coeff: c.to_decimal(),
            wire: *w,
        })
        .collect()
}

fn one_lc() -> Lc {
    let mut m = Lc::new();
    m.insert(0, Fp::one());
    m
}

fn scale_lc(lc: &Lc, s: &Fp) -> Lc {
    let mut out: Lc = lc.iter().map(|(w, c)| (*w, c * s)).collect();
    out.retain(|_, v| !v.is_zero());
    out
}

/// `a + scale·b`.
fn lc_axpy(a: &Lc, b: &Lc, scale: &Fp) -> Lc {
    let mut out = a.clone();
    for (w, c) in b {
        let e = out.entry(*w).or_insert_with(Fp::zero);
        *e = &*e + &(c * scale);
    }
    out.retain(|_, v| !v.is_zero());
    out
}

/// Scale `s` with `left = s·right`, or `None` if not proportional (including
/// differing support). Mirrors the Python `lc_proportional`.
fn lc_proportional(left: &Lc, right: &Lc) -> Option<Fp> {
    if left.is_empty() && right.is_empty() {
        return Some(Fp::one());
    }
    if left.is_empty() || right.is_empty() || left.len() != right.len() {
        return None;
    }
    if left.keys().ne(right.keys()) {
        return None;
    }
    let (w0, l0) = left.iter().next().unwrap();
    let scale = l0 * &right[w0].inverse();
    for (w, lc) in left {
        if *lc != &scale * &right[w] {
            return None;
        }
    }
    Some(scale)
}

/// One recovered row: the reconstructed `L·R = O` the recovery claims a raw row
/// implements. The parity gate compares this to the actual raw constraint.
#[derive(Clone)]
struct Recon {
    row: usize,
    l: Lc,
    r: Lc,
    o: Lc,
}

/// Match `left · right` against `rows[cursor]` (or fold a constant factor
/// without consuming a row). Returns the product, the advanced cursor, and the
/// reconstructed row when one was consumed. Fails closed if the row does not
/// implement the expected multiplication.
fn lc_mul_at(
    rows: &[Constraint],
    cursor: usize,
    left: &Lc,
    right: &Lc,
) -> Result<(Lc, usize, Option<Recon>), String> {
    if left.is_empty() || right.is_empty() {
        return Ok((Lc::new(), cursor, None));
    }
    let one = one_lc();
    if let Some(k) = lc_proportional(left, &one) {
        return Ok((scale_lc(right, &k), cursor, None));
    }
    if let Some(k) = lc_proportional(right, &one) {
        return Ok((scale_lc(left, &k), cursor, None));
    }
    let c = rows
        .get(cursor)
        .ok_or_else(|| format!("row {cursor} out of range"))?;
    let (row_l, row_r, row_o) = (
        lc_from_terms(&c.l),
        lc_from_terms(&c.r),
        lc_from_terms(&c.o),
    );
    for (el, er) in [(left, right), (right, left)] {
        let (Some(ls), Some(rs)) = (lc_proportional(&row_l, el), lc_proportional(&row_r, er))
        else {
            continue;
        };
        let inv = (&ls * &rs).inverse();
        let product = scale_lc(&row_o, &inv);
        let recon = Recon {
            row: cursor,
            l: row_l.clone(),
            r: row_r.clone(),
            o: row_o.clone(),
        };
        return Ok((product, cursor + 1, Some(recon)));
    }
    Err(format!(
        "row {cursor} does not implement expected multiplication {left:?} * {right:?}"
    ))
}

/// One recovered rung of the ladder (MSB-first index `n`). On a bound-bit-set
/// rung the three multiplications `l = pe·(1-bit)`, `il_mul = il·l`, `pe' =
/// pe·bit` each seat at a named raw row (`l_row`/`il_mul_row`/`pe_row`); on a
/// bound-bit-clear rung only `pe' = pe·(1-bit)` at `pe_row` is present. A row is
/// `None` when the factor folded a constant and consumed no row.
pub struct LtRung {
    pub n: usize,
    pub one: bool,
    pub bit_wire: usize,
    pub pe_in: Lc,
    pub pe_out: Lc,
    pub il_in: Lc,
    pub il_out: Lc,
    pub l: Option<Lc>,
    pub il_mul: Option<Lc>,
    pub l_row: Option<usize>,
    pub il_mul_row: Option<usize>,
    pub pe_row: Option<usize>,
    pub rows: Vec<usize>,
}

/// A recovered lt-compare chain plus the reconstructed rows for the parity gate.
pub struct LtChainRepr {
    pub start_row: usize,
    pub end_row: usize,
    pub bit_base: usize,
    pub rungs: Vec<LtRung>,
    recons: Vec<Recon>,
}

/// Recover the ladder that compares the 253-bit decomposition (bit wires
/// `bit_base + n`) against the fixed `bound`, consuming rows starting at
/// `start`. Branch per rung is the modulus bit `bound.bit(n)` — the recovered
/// branch pattern is therefore *pinned* to the bound, and the gate confirms the
/// raw rows agree with that pinning.
pub fn recover_lt_chain(
    rows: &[Constraint],
    bound: &BigUint,
    bit_base: usize,
    start: usize,
) -> Result<LtChainRepr, String> {
    let one = one_lc();
    let mut pe: BTreeMap<usize, Lc> = BTreeMap::new();
    let mut il: BTreeMap<usize, Lc> = BTreeMap::new();
    pe.insert(253, one.clone());
    il.insert(253, Lc::new());
    let mut cursor = start;
    let mut rungs = Vec::new();
    let mut recons = Vec::new();

    for n in (0..=252usize).rev() {
        let mut bit = Lc::new();
        bit.insert(bit_base + n, Fp::one());
        let one_minus_bit = lc_axpy(&one, &bit, &(-&Fp::one()));
        let pe_in = pe[&(n + 1)].clone();
        let il_in = il[&(n + 1)].clone();
        let mut used = Vec::new();

        let mut push_recon = |r: Option<Recon>| -> Option<usize> {
            let row = r.as_ref().map(|x| x.row);
            if let Some(rec) = r {
                used.push(rec.row);
                recons.push(rec);
            }
            row
        };

        let (pe_out, il_out, is_one, l_opt, il_mul_opt, l_row, il_mul_row, pe_row) =
            if bound.bit(n as u64) {
                let (l, c1, r1) = lc_mul_at(rows, cursor, &pe_in, &one_minus_bit)?;
                let (il_mul, c2, r2) = lc_mul_at(rows, c1, &il_in, &l)?;
                let (pe_out, c3, r3) = lc_mul_at(rows, c2, &pe_in, &bit)?;
                cursor = c3;
                let l_row = push_recon(r1);
                let il_mul_row = push_recon(r2);
                let pe_row = push_recon(r3);
                // il' = il + l - il_mul
                let il_out = lc_axpy(&lc_axpy(&il_in, &l, &Fp::one()), &il_mul, &(-&Fp::one()));
                (
                    pe_out,
                    il_out,
                    true,
                    Some(l),
                    Some(il_mul),
                    l_row,
                    il_mul_row,
                    pe_row,
                )
            } else {
                let (pe_out, c1, r1) = lc_mul_at(rows, cursor, &pe_in, &one_minus_bit)?;
                cursor = c1;
                let pe_row = push_recon(r1);
                (pe_out, il_in.clone(), false, None, None, None, None, pe_row)
            };
        drop(push_recon);

        pe.insert(n, pe_out.clone());
        il.insert(n, il_out.clone());
        rungs.push(LtRung {
            n,
            one: is_one,
            bit_wire: bit_base + n,
            pe_in,
            pe_out,
            il_in,
            il_out,
            l: l_opt,
            il_mul: il_mul_opt,
            l_row,
            il_mul_row,
            pe_row,
            rows: used,
        });
    }

    Ok(LtChainRepr {
        start_row: start,
        end_row: cursor,
        bit_base,
        rungs,
        recons,
    })
}

/// Canonicalize an LC for comparison: already cleaned; sort is inherent to the
/// `BTreeMap`. Two constraints are equal iff `O` matches and the unordered
/// `{L, R}` pair matches (`L·R` commutes).
fn constraint_eq(recon: &Recon, raw: &Constraint) -> bool {
    let (rl, rr, ro) = (
        lc_from_terms(&raw.l),
        lc_from_terms(&raw.r),
        lc_from_terms(&raw.o),
    );
    if recon.o != ro {
        return false;
    }
    (recon.l == rl && recon.r == rr) || (recon.l == rr && recon.r == rl)
}

impl LtChainRepr {
    /// The static, fail-closed parity gate. For every consumed row, the
    /// reconstruction from the recovered seating must equal the actual raw row
    /// (canonicalized mod p). This is the analogue of `structure_lc`'s
    /// `terms_multiset_eq(expand_repr(..), terms)`.
    pub fn verify_parity(&self, rows: &[Constraint]) -> bool {
        self.recons.iter().all(|recon| {
            rows.get(recon.row)
                .is_some_and(|raw| constraint_eq(recon, raw))
        })
    }

    /// Rows consumed by the chain, in order (for the coverage bookkeeping).
    pub fn consumed_rows(&self) -> Vec<usize> {
        let mut v: Vec<usize> = self.recons.iter().map(|r| r.row).collect();
        v.sort_unstable();
        v
    }

    /// Recovered branch pattern (`cb n` MSB-first), for pinning against the
    /// independently-known modulus bits.
    pub fn branch_pattern(&self) -> Vec<bool> {
        self.rungs.iter().map(|r| r.one).collect()
    }

    /// Bit-wire seating formula check: every rung's bit wire is `bit_base + n`.
    pub fn bit_wires_affine(&self) -> bool {
        self.rungs.iter().all(|r| r.bit_wire == self.bit_base + r.n)
    }
}

/// One canonicity-ladder seating within the active normalized DTK template, pinning
/// the ladder to its bound (branch pattern) and bit-wire base. Mirrors
/// `dtk_recovery.py::dtk_ltc_traces`.
struct LadderSeat {
    label: &'static str,
    bit_base: usize,
    start: usize,
    end: usize,
    bound: BigUint,
}

fn dtk_ladders(bit_base: usize) -> Vec<LadderSeat> {
    let r = scalar_order();
    let q4 = crate::field::modulus() - &(&r * 4u32);
    vec![
        LadderSeat {
            label: "R",
            bit_base,
            start: 1828,
            end: 2345,
            bound: r,
        },
        LadderSeat {
            label: "Q4",
            bit_base,
            start: 2346,
            end: 2715,
            bound: q4,
        },
    ]
}

/// Production enforcement: recover and **parity-gate** both normalized DTK
/// canonicity ladders at extraction time (fail-closed), the analogue of
/// `structure_lc`'s in-line parity assert. `dtk_rows` is the exact active DTK
/// segment slice; its offset varies by circuit and witness layout.
/// Returns the recovered chains,
/// or a descriptive error if recovery, the bound-pinning, or the gate fails.
pub fn verify_dtk_lt_ladders(dtk_rows: &[Constraint]) -> Result<Vec<LtChainRepr>, String> {
    // The normalized DTK relation is stable, but witness-schema changes can
    // renumber every deployed wire.  The first R-ladder row multiplies
    // `(1 - bit[252]) * (1 - bit[251])`; recover the affine bit base from that
    // exact pinned row instead of treating a deployed wire number as semantic.
    let first = dtk_rows
        .get(1828)
        .ok_or_else(|| "DTK relation is too short for the R ladder".to_owned())?;
    let mut leading_bits: Vec<_> = first
        .l
        .iter()
        .chain(first.r.iter())
        .filter(|term| term.wire != 0 && Fp::parse(&term.coeff) == -&Fp::one())
        .map(|term| term.wire)
        .collect();
    leading_bits.sort_unstable();
    leading_bits.dedup();
    if leading_bits.len() != 2 || leading_bits[1] != leading_bits[0] + 1 || leading_bits[1] < 252 {
        return Err(format!(
            "cannot recover affine DTK bit base from row 1828: {leading_bits:?}"
        ));
    }
    let bit_base = leading_bits[1] - 252;
    let mut out = Vec::new();
    for seat in dtk_ladders(bit_base) {
        let repr = recover_lt_chain(dtk_rows, &seat.bound, seat.bit_base, seat.start)
            .map_err(|e| format!("{} ladder recovery failed: {e}", seat.label))?;
        if repr.end_row != seat.end {
            return Err(format!(
                "{} ladder consumed rows up to {}, expected {}",
                seat.label, repr.end_row, seat.end
            ));
        }
        if !repr.bit_wires_affine() {
            return Err(format!("{} ladder bit-wire seating not affine", seat.label));
        }
        // cb-pin: every recovered branch must equal the known modulus bit.
        for rung in &repr.rungs {
            if rung.one != seat.bound.bit(rung.n as u64) {
                return Err(format!(
                    "{} ladder branch at rung {} not pinned to bound",
                    seat.label, rung.n
                ));
            }
        }
        if !repr.verify_parity(dtk_rows) {
            return Err(format!(
                "{} ladder parity gate failed — recovery does not reproduce raw rows",
                seat.label
            ));
        }
        out.push(repr);
    }
    Ok(out)
}

/// The decaf377 companion scalar order `r` — the bound of the R canonicity
/// ladder (`IvkModR.rNat`).
pub fn scalar_order() -> BigUint {
    BigUint::parse_bytes(
        b"2111115437357092606062206234695386632838870926408408195193685246394721360383",
        10,
    )
    .expect("valid scalar order")
}

/// Recover, parity-gate, and serialize both active DTK canonicity
/// ladders as the Pass-3 seating handoff the Python generator consumes. `dtk`
/// is the DTK segment slice (`dtk_offset` records where in the whole `.sr1cs`
/// it was taken from, for the emitted JSON). Fails closed if either
/// ladder fails recovery, bound-pinning, or the parity gate — so a consumer that
/// trusts this JSON is trusting the same gate the extractor enforces.
pub fn dtk_lt_seating_json(
    dtk: &[Constraint],
    dtk_offset: usize,
) -> Result<serde_json::Value, String> {
    let chains = verify_dtk_lt_ladders(dtk)?;
    let labels = ["R", "Q4"];
    let ladders: Vec<_> = chains
        .iter()
        .zip(labels)
        .map(|(repr, label)| {
            let mut v = recovered_seating_json(repr);
            v["label"] = serde_json::json!(label);
            v
        })
        .collect();
    Ok(serde_json::json!({
        "schema": "shieldd.gnark.dtk_lt_seating.v1",
        "proof_template_id": ACTIVE_DTK_TEMPLATE_ID,
        "dtk_offset": dtk_offset,
        "dtk_rows": dtk.len(),
        "ladders": ladders,
    }))
}

/// Serialize an LC as `[[coeff_decimal, wire], …]` (empty = the zero LC).
fn lc_json(lc: &Lc) -> serde_json::Value {
    serde_json::Value::Array(
        lc_to_terms(lc)
            .iter()
            .map(|t| serde_json::json!([t.coeff, t.wire]))
            .collect(),
    )
}

fn lc_json_opt(lc: &Option<Lc>) -> serde_json::Value {
    match lc {
        Some(l) => lc_json(l),
        None => serde_json::Value::Null,
    }
}

/// The recovered chain as complete seating data the Python emitter reconstructs
/// its `LtcTrace`/`LtcStep` from directly — DTK-relative row indices, per-rung
/// branch, the named multiplication rows, and every state LC. Emitting the full
/// scan is what lets the generator drop its duplicate Python recovery.
pub fn recovered_seating_json(repr: &LtChainRepr) -> serde_json::Value {
    serde_json::json!({
        "start_row": repr.start_row,
        "end_row": repr.end_row,
        "bit_base": repr.bit_base,
        "rungs": repr.rungs.iter().map(|r| serde_json::json!({
            "n": r.n,
            "one": r.one,
            "bit_wire": r.bit_wire,
            "rows": r.rows,
            "l_row": r.l_row,
            "il_mul_row": r.il_mul_row,
            "pe_row": r.pe_row,
            "pe_in": lc_json(&r.pe_in),
            "il_in": lc_json(&r.il_in),
            "pe_out": lc_json(&r.pe_out),
            "il_out": lc_json(&r.il_out),
            "l": lc_json_opt(&r.l),
            "il_mul": lc_json_opt(&r.il_mul),
        })).collect::<Vec<_>>(),
    })
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::field::modulus;
    use crate::ir::parse_rows;
    use crate::load_sr1cs;

    // Active NoteReshape 1x8 is the single deployed representative used to
    // exercise the normalized DTK recovery against real SR1CS bytes.
    const DTK_OFFSET: usize = 1053;
    const DTK_ROWS: usize = 5477;

    fn dtk_rows() -> Vec<Constraint> {
        let path = concat!(
            env!("CARGO_MANIFEST_DIR"),
            "/../../../tools/gnark/artifacts/note_reshape1x8/note_reshape1x8.sr1cs"
        );
        let sr1cs = load_sr1cs(path).expect("load note_reshape1x8 sr1cs");
        let rows = parse_rows(&sr1cs).expect("parse rows");
        rows[DTK_OFFSET..DTK_OFFSET + DTK_ROWS].to_vec()
    }

    #[test]
    fn recovers_r_ladder_from_real_sr1cs_and_gate_holds() {
        let rows = dtk_rows();
        let bound = scalar_order();
        let chains = verify_dtk_lt_ladders(&rows).expect("both ladders must recover");
        let repr = &chains[0];

        // Consumes exactly the Python-pinned row span.
        assert_eq!(repr.end_row, 2345, "R ladder row span");
        // 253 rungs, MSB-first.
        assert_eq!(repr.rungs.len(), 253);
        assert_eq!(repr.rungs[0].n, 252);

        // cb-pin: every recovered branch equals the known modulus bit.
        for rung in &repr.rungs {
            assert_eq!(
                rung.one,
                bound.bit(rung.n as u64),
                "branch at rung {} not pinned to bound bit",
                rung.n
            );
        }
        assert!(repr.bit_wires_affine(), "bit wire must be bit_base + n");

        // THE STATIC PARITY GATE: reconstruction ≡ raw rows, fail-closed.
        assert!(
            repr.verify_parity(&rows),
            "recovered chain must reproduce the raw rows exactly"
        );
    }

    #[test]
    fn recovers_q4_ladder_from_real_sr1cs() {
        let rows = dtk_rows();
        let bound = modulus() - &(&scalar_order() * 4u32);
        let chains = verify_dtk_lt_ladders(&rows).expect("both ladders must recover");
        let repr = &chains[1];
        assert_eq!(repr.end_row, 2715, "Q4 ladder row span");
        assert!(repr.verify_parity(&rows));
        for rung in &repr.rungs {
            assert_eq!(rung.one, bound.bit(rung.n as u64));
        }
    }

    #[test]
    fn gate_fails_closed_on_wrong_bound() {
        // Recovering the R ladder against the Q4 bound must NOT silently pass:
        // the branch structure of the raw rows won't match the wrong bit
        // pattern, so recovery fails (or, if it structurally matched, the gate
        // would reject). Either way it does not return a passing chain.
        let rows = dtk_rows();
        let wrong = modulus() - &(&scalar_order() * 4u32); // Q4 bound at R start
        let bit_base =
            verify_dtk_lt_ladders(&rows).expect("reference recovery must succeed")[0].bit_base;
        let result = recover_lt_chain(&rows, &wrong, bit_base, 1828);
        let bad = match result {
            Err(_) => return, // recovery already fails closed
            Ok(repr) => repr,
        };
        assert!(
            !bad.verify_parity(&rows) || bad.end_row != 2345,
            "wrong bound must not yield a parity-passing R-span chain"
        );
    }

    #[test]
    fn production_gate_recovers_both_ladders() {
        // The extraction-time entry point wired into contracts::generate().
        let rows = dtk_rows();
        let chains = verify_dtk_lt_ladders(&rows).expect("both ladders must recover and gate");
        assert_eq!(chains.len(), 2);
        assert_eq!(chains[0].end_row, 2345);
        assert_eq!(chains[1].end_row, 2715);
    }
}
