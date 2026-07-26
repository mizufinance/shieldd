// Re-seating locator for the note_reshape2x1 DTK R/Q4 lt-ladders: finds
// (bit_base, start, end) in the current .sr1cs by first-rung shape
// (1 x (1 - bit_252)) and confirms via full recovery + parity gate. Run this
// whenever `note_reshape2x1_ladders()` constants go stale after a circuit
// change; the printed seatings are parity-verified, not heuristic.
use shieldd_constraint_coverage::{ir::parse_rows, load_sr1cs, ltchain};

fn main() {
    let path = concat!(
        env!("CARGO_MANIFEST_DIR"),
        "/../../../tools/gnark/artifacts/note_reshape2x1/note_reshape2x1.sr1cs"
    );
    let sr1cs = load_sr1cs(path).unwrap();
    let rows = parse_rows(&sr1cs).unwrap();
    // DTK segment bounds: read from the manifest (op
    // decaf.diversified_transmission_key) when re-running after a reshape.
    let (seg_start, seg_len) = (1058usize, 6077usize);
    let dtk = &rows[seg_start..seg_start + seg_len];
    let r = ltchain::scalar_order();
    let q4 = shieldd_constraint_coverage::field::modulus() - &r * 4u32;
    for (start, row) in dtk.iter().enumerate() {
        // candidate first rung: a side of form c0*1 - c*w (const wire 0 + one bit wire)
        for side in [&row.l, &row.r] {
            if side.len() == 2 && side.iter().any(|t| t.wire == 0) {
                let w = side.iter().find(|t| t.wire != 0).unwrap().wire;
                if w < 252 {
                    continue;
                }
                let bit_base = w - 252;
                for (label, bound) in [("R", &r), ("Q4", &q4)] {
                    if let Ok(repr) = ltchain::recover_lt_chain(dtk, bound, bit_base, start) {
                        if repr.bit_wires_affine() && repr.verify_parity(dtk) {
                            println!(
                                "{label}: bit_base={bit_base} start={start} end={}",
                                repr.end_row
                            );
                        }
                    }
                }
            }
        }
    }
}
