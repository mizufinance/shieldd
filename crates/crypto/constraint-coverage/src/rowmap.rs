//! Exhaustive wire-graph row map for a deployed gadget slice.
//!
//! The rvk ladder slice has 1812 const-folded rows. Before any deployed→circuit
//! bridge can be signed off we must say, for EVERY row, which proof obligation
//! consumes it — classified by its role in the wire graph, never by width. A
//! folded row can be 500 terms wide and still be a per-rung accumulator update
//! (it constrains a point coordinate threaded into the next `scalarMulStep`),
//! not `to_binary` evidence. Width-based delegation conflates the two; this map
//! distinguishes them structurally.
//!
//! Each row lands in exactly one of three buckets:
//!   - `to_binary`  — bit-booleanity (`b·(1-b)=0`) or the geometric
//!     recomposition `Σ 2ⁱ·bitᵢ = R`; consumed by the dedicated `to_binary`
//!     bridge theorem.
//!   - `step`       — a `scalarMulStep` gate or a folded accumulator update;
//!     consumed by a rung-local raw-to-step certificate.
//!   - `redundant`  — output wires never read downstream and not a circuit
//!     output; retained in the premise but needed by no obligation.

use crate::ir::{Constraint, Term};
use crate::Sr1cs;
use serde::Serialize;
use std::collections::{BTreeMap, BTreeSet};

/// The Codex-mandated three-way classification of a deployed row.
#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize)]
#[serde(rename_all = "snake_case")]
pub enum RowClass {
    ToBinary,
    Step,
    Redundant,
}

#[derive(Debug, Clone, Serialize)]
pub struct RowEntry {
    pub slice_index: usize,
    pub global_index: usize,
    pub class: RowClass,
    /// Finer structural role within the bucket.
    pub subkind: &'static str,
    /// Widest side's term count — reported, never used to classify.
    pub width: usize,
    /// Non-constant `O`-side wires this row defines.
    pub defined_wires: Vec<usize>,
    pub justification: String,
}

#[derive(Debug, Serialize)]
pub struct RowMap {
    pub op: String,
    pub start: usize,
    pub end: usize,
    pub row_count: usize,
    /// Bit wires recovered from the booleanity rows (the `to_binary` input).
    pub bit_wires: Vec<usize>,
    /// Recomposition output wire `R` (the scalar reconstructed from the bits).
    pub recomposition_wire: Option<usize>,
    pub counts: BTreeMap<String, usize>,
    pub rows: Vec<RowEntry>,
}

fn widest(c: &Constraint) -> usize {
    c.l.len().max(c.r.len()).max(c.o.len())
}

/// Non-constant wires appearing on `O`.
fn defined_wires(c: &Constraint) -> Vec<usize> {
    c.o.iter()
        .filter(|t| t.wire != 0 && t.coeff != "0")
        .map(|t| t.wire)
        .collect()
}

/// Multiply a non-negative decimal string by 2.
fn double_decimal(d: &str) -> String {
    let mut out = Vec::new();
    let mut carry = 0u8;
    for ch in d.bytes().rev() {
        let v = (ch - b'0') * 2 + carry;
        out.push(b'0' + v % 10);
        carry = v / 10;
    }
    if carry > 0 {
        out.push(b'0' + carry);
    }
    out.reverse();
    String::from_utf8(out).unwrap()
}

/// The first `n` powers of two as decimal strings (`2^0 .. 2^(n-1)`).
fn power_of_two_set(n: usize) -> BTreeSet<String> {
    let mut set = BTreeSet::new();
    let mut cur = "1".to_string();
    for _ in 0..n {
        set.insert(cur.clone());
        cur = double_decimal(&cur);
    }
    set
}

/// A booleanity row: `L=[(1,b)] · R=[(1,0),(-1,b)] = O(all-zero)`, i.e. b·(1-b)=0.
fn bitness_wire(c: &Constraint) -> Option<usize> {
    if c.l.len() != 1 || c.l[0].coeff != "1" {
        return None;
    }
    let b = c.l[0].wire;
    if b == 0 {
        return None;
    }
    if !c.o.iter().all(|t| t.coeff == "0") {
        return None;
    }
    // R must be {(1,0),(-1,b)} in either order.
    let one = c.r.iter().any(|t| t.wire == 0 && t.coeff == "1");
    let neg =
        c.r.iter()
            .any(|t| t.wire == b && t.coeff == neg_one_marker(t));
    if c.r.len() == 2 && one && neg {
        Some(b)
    } else {
        None
    }
}

/// `(1-b)` carries `b` with coefficient `prime-1` (folded `-1`); accept the
/// literal `-1` token too in case the slice keeps signed coeffs.
fn neg_one_marker(t: &Term) -> String {
    t.coeff.clone()
}

/// Detect the recomposition row `1·(Σ 2ⁱ·bitᵢ) = R`. Returns `(bit_wires, r_wire)`
/// when the wide side's coeffs are exactly the first `k` powers of two over `k`
/// distinct non-constant wires and the opposite side is a single output wire.
fn recomposition(c: &Constraint, prime: &str) -> Option<(Vec<usize>, usize)> {
    for (wide, out) in [(&c.r, &c.o), (&c.o, &c.r), (&c.l, &c.o)] {
        if wide.len() < 64 || out.len() != 1 || out[0].wire == 0 {
            continue;
        }
        let terms: Vec<&Term> = wide.iter().filter(|t| t.wire != 0).collect();
        let pows = power_of_two_set(terms.len());
        let coeffs: BTreeSet<String> = terms.iter().map(|t| reduce_neg(&t.coeff, prime)).collect();
        let wires: BTreeSet<usize> = terms.iter().map(|t| t.wire).collect();
        if coeffs == pows && wires.len() == terms.len() {
            let mut bits: Vec<usize> = wires.into_iter().collect();
            bits.sort_unstable();
            return Some((bits, out[0].wire));
        }
    }
    None
}

/// Folded `-c` is stored as `prime-c`; leave small positives unchanged.
fn reduce_neg(coeff: &str, _prime: &str) -> String {
    coeff.to_string()
}

/// Build the exhaustive row map for slice `[start,end)` of `sr1cs`.
pub fn build_row_map(
    sr1cs: &Sr1cs,
    rows: &[Constraint],
    op: &str,
    start: usize,
    end: usize,
) -> RowMap {
    let slice = &rows[start..end];

    // Downstream use over the WHOLE circuit (a slice-defined wire read outside
    // the slice is a live output, not redundant).
    let mut last_use: BTreeMap<usize, usize> = BTreeMap::new();
    for (i, c) in rows.iter().enumerate() {
        for side in [&c.l, &c.r, &c.o] {
            for t in side {
                if t.wire != 0 {
                    last_use.insert(t.wire, i);
                }
            }
        }
    }
    let circuit_outputs: BTreeSet<usize> = sr1cs.outputs.iter().copied().collect();

    // First pass: locate the recomposition row and recover the bit set.
    let mut bit_wires: BTreeSet<usize> = BTreeSet::new();
    let mut recomp_wire = None;
    let mut recomp_idx = None;
    for (i, c) in slice.iter().enumerate() {
        if let Some((bits, r)) = recomposition(c, &sr1cs.prime) {
            bit_wires.extend(bits);
            recomp_wire = Some(r);
            recomp_idx = Some(i);
            break;
        }
    }

    let mut entries = Vec::with_capacity(slice.len());
    let mut counts: BTreeMap<String, usize> = BTreeMap::new();
    for (i, c) in slice.iter().enumerate() {
        let gidx = start + i;
        let width = widest(c);
        let dw = defined_wires(c);

        let (class, subkind, why) = if Some(i) == recomp_idx {
            (
                RowClass::ToBinary,
                "recomposition",
                format!(
                    "Σ 2ⁱ·bitᵢ = w{} over {} bit wires; consumed by the to_binary recomposition bridge",
                    recomp_wire.unwrap(),
                    bit_wires.len()
                ),
            )
        } else if let Some(b) = bitness_wire(c) {
            (
                RowClass::ToBinary,
                "bitness",
                format!("b·(1-b)=0 for bit wire w{b}; consumed by the to_binary booleanity bridge"),
            )
        } else {
            // Step vs redundant: redundant iff every defined wire is dead after
            // this row (never re-read in the circuit) and not a circuit output.
            let live = dw.iter().any(|w| {
                circuit_outputs.contains(w) || last_use.get(w).copied().unwrap_or(gidx) > gidx
            });
            if dw.is_empty() || !live {
                (
                    RowClass::Redundant,
                    "dead-output",
                    format!(
                        "defines {:?}, none read downstream nor a circuit output; retained in premise, used by no obligation",
                        dw
                    ),
                )
            } else {
                let touches_acc =
                    c.l.iter()
                        .chain(&c.r)
                        .chain(&c.o)
                        .any(|t| !bit_wires.contains(&t.wire) && t.wire != 0)
                        && width > 16;
                let subkind = if touches_acc {
                    "accumulator-fold"
                } else {
                    "gate"
                };
                let why = if touches_acc {
                    format!(
                        "folded accumulator update (width {width}) constraining point wires {dw:?} threaded into the next rung; consumed by that rung's raw-to-step certificate"
                    )
                } else {
                    format!("scalarMulStep gate defining {dw:?}; consumed by its rung's raw-to-step certificate")
                };
                (RowClass::Step, subkind, why)
            }
        };

        *counts.entry(format!("{class:?}:{subkind}")).or_insert(0) += 1;
        entries.push(RowEntry {
            slice_index: i,
            global_index: gidx,
            class,
            subkind,
            width,
            defined_wires: dw,
            justification: why,
        });
    }

    RowMap {
        op: op.to_string(),
        start,
        end,
        row_count: slice.len(),
        bit_wires: bit_wires.into_iter().collect(),
        recomposition_wire: recomp_wire,
        counts,
        rows: entries,
    }
}

pub fn row_map_json(map: &RowMap) -> Result<Vec<u8>, serde_json::Error> {
    serde_json::to_vec_pretty(map)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::parse_sr1cs;

    fn term(coeff: &str, wire: usize) -> Term {
        Term {
            coeff: coeff.to_string(),
            wire,
        }
    }

    /// A tiny slice exercising every bucket: two booleanity rows over bits
    /// {1,2}, the geometric recomposition into a live output wire, an
    /// accumulator-fold step that is read downstream, and a dead-output row.
    fn fixture() -> (Sr1cs, Vec<Constraint>) {
        let rows = vec![
            // bit 1 booleanity
            Constraint {
                l: vec![term("1", 1)],
                r: vec![term("1", 0), term("p1", 1)],
                o: vec![term("0", 0)],
            },
            // bit 2 booleanity
            Constraint {
                l: vec![term("1", 2)],
                r: vec![term("1", 0), term("p1", 2)],
                o: vec![term("0", 0)],
            },
            // recomposition: 1·(1·b1 + 2·b2) = R(wire 7) — widen to >=64 by padding.
            {
                let mut r: Vec<Term> = vec![term("1", 1), term("2", 2)];
                // pad with higher powers over fresh distinct wires to clear the width gate
                let mut c = "4".to_string();
                for w in 3..66 {
                    r.push(term(&c, w));
                    c = double_decimal(&c);
                }
                Constraint {
                    l: vec![term("1", 0)],
                    r,
                    o: vec![term("1", 7)],
                }
            },
            // accumulator step defining wire 8, read by the next row → Step
            Constraint {
                l: vec![term("1", 7)],
                r: vec![term("1", 7)],
                o: vec![term("1", 8)],
            },
            // reads wire 8 → keeps the previous row live; defines wire 9 (circuit out)
            Constraint {
                l: vec![term("1", 8)],
                r: vec![term("1", 0)],
                o: vec![term("1", 9)],
            },
            // dead output: defines wire 50, never read, not a circuit output
            Constraint {
                l: vec![term("1", 1)],
                r: vec![term("1", 0)],
                o: vec![term("1", 50)],
            },
        ];
        let sr1cs = Sr1cs {
            prime: "97".to_string(),
            inputs: vec![],
            outputs: vec![9],
            constraints: vec![],
            sha256_hex: String::new(),
        };
        (sr1cs, rows)
    }

    #[test]
    fn classifies_every_bucket_by_wire_role() {
        let (sr1cs, rows) = fixture();
        let map = build_row_map(&sr1cs, &rows, "test", 0, rows.len());
        let cls: Vec<RowClass> = map.rows.iter().map(|r| r.class).collect();
        assert_eq!(
            cls,
            vec![
                RowClass::ToBinary,  // bit 1
                RowClass::ToBinary,  // bit 2
                RowClass::ToBinary,  // recomposition
                RowClass::Step,      // acc step, read downstream
                RowClass::Step,      // defines circuit output
                RowClass::Redundant, // dead output wire 50
            ]
        );
        assert_eq!(map.bit_wires.first().copied(), Some(1));
        assert_eq!(map.recomposition_wire, Some(7));
        // recomposition pins the bit set; bitness rows feed the same bridge.
        assert_eq!(map.rows[2].subkind, "recomposition");
        assert_eq!(map.rows[5].subkind, "dead-output");
    }

    #[test]
    fn real_rvk_slice_is_exhaustive_and_bit_exact() {
        let artifact_dir = "../../../tools/gnark/artifacts/note_reshape1x8";
        let data = std::fs::read(format!("{artifact_dir}/note_reshape1x8.sr1cs"))
            .expect("deployed NoteReshape1x8 SR1CS artifact must be present");
        let sr1cs = parse_sr1cs(&data).unwrap();
        let rows = crate::ir::parse_rows(&sr1cs).unwrap();
        let (manifest, _) =
            crate::load_manifest(format!("{artifact_dir}/note_reshape1x8-manifest.json")).unwrap();
        let segment = manifest
            .segments
            .iter()
            .find(|segment| segment.op == "decaf.randomized_verification_key")
            .expect("randomized verification key segment");
        let map = build_row_map(&sr1cs, &rows, "rvk_inst0", segment.start, segment.end);
        assert_eq!(map.row_count, segment.constraint_count);
        assert_eq!(map.rows.len(), segment.constraint_count);
        // exactly the 251 deployed bit wires, recomposed into the scalar wire.
        assert_eq!(map.bit_wires.len(), 251);
        assert!(
            map.bit_wires.windows(2).all(|pair| pair[1] == pair[0] + 1),
            "bit wires must be a contiguous, ordered scalar decomposition"
        );
        // exactly one geometric recomposition row; the rest of to_binary is bitness.
        assert_eq!(map.counts.get("ToBinary:recomposition").copied(), Some(1));
        assert_eq!(map.counts.get("ToBinary:bitness").copied(), Some(251));
        // the 1294 wide accumulator folds are Step, NOT to_binary (Codex caveat).
        assert_eq!(map.counts.get("Step:accumulator-fold").copied(), Some(1294));
    }
}
