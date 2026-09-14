//! Constraint-system shape checks run at key generation.
//!
//! ZK-Pari accepts any arkworks [`ConstraintSynthesizer`]: circuits that
//! natively register the SR1CS predicate are used as-is, everything else is
//! converted by `ark_relations::sr1cs::Sr1csAdapter`. After instance
//! outlining, the verifier reconstructs the public contribution as a
//! Lagrange sum over the trailing `instance_len` rows and takes `x_B = 0`
//! outright — the checks in this module pin the matrices to exactly that
//! shape, once, at key generation.
//!
//! [`ConstraintSynthesizer`]: ark_relations::gr1cs::ConstraintSynthesizer

use ark_ff::Field;
use ark_relations::gr1cs::Matrix;

/// Panic unless instance outlining left the matrices in the shape the verifier
/// assumes: every instance column confined to the trailing `num_instance`
/// rows (the outlining equality rows).
///
/// The verifier reconstructs the public contribution as
/// `x_A(r) = sum_i x_i L_{outline_start + i}(r)` — a Lagrange sum over those
/// trailing rows only — and takes `x_B = 0` outright. An instance column
/// anywhere else is silently unaccounted for, so honest proofs fail to verify
/// with no other symptom.
///
/// This is reachable through a live bug in `ark-relations` 0.6.0:
/// `ConstraintSystem::new_lc_add_helper` returns a coefficient-1
/// single-variable linear combination as the bare `Variable` instead of
/// interning it in `lc_map`, while `perform_instance_outlining` rewrites
/// instance variables *only* by iterating `lc_map`. A constraint side written
/// as exactly `lc!() + <public input>` therefore keeps a live instance column.
/// Writing that side with two or more terms (or a non-unit coefficient) routes
/// it through `lc_map` and outlines correctly.
///
/// Circuits reaching ZK-Pari through the R1CS-to-SR1CS adapter are unaffected:
/// the adapter rebuilds the witness space from the matrices, so instance
/// variables never survive into the converted linear combinations.
///
/// Checked once at key generation, over matrices key generation already
/// materializes, so it costs nothing per proof.
pub(crate) fn assert_instance_outlining_complete<F: Field>(
    matrices: &[Matrix<F>],
    num_instance: usize,
    num_constraints: usize,
) {
    let outline_start = num_constraints.saturating_sub(num_instance);
    for (matrix, side) in matrices.iter().zip(["A", "B"]) {
        for (row, terms) in matrix.iter().enumerate().take(outline_start) {
            for &(_, index) in terms {
                assert!(
                    index >= num_instance,
                    "instance outlining did not remove instance variable {index} from row \
                     {row} of the {side} matrix (outlining rows start at {outline_start}). \
                     The verifier only accounts for instance columns in the trailing \
                     {num_instance} rows, so this circuit would produce proofs that fail to \
                     verify. Cause: a constraint side written as a bare `lc!() + <variable>` \
                     is not interned into the constraint system's LC map and so escapes \
                     outlining; rewrite that side with two or more terms (for example \
                     `lc!() + x - y`) so it is outlined."
                );
            }
        }
    }
    assert_outlining_rows_shape(matrices, num_instance, num_constraints);
}

/// The positive counterpart to [`assert_instance_outlining_complete`]: the
/// trailing `num_instance` rows must be *exactly* the outlining equalities,
/// in instance order — row `outline_start + i` of the A matrix is
/// `x_i - w_i` (coefficient `+1` on instance variable `i`, `-1` on its
/// witness copy) with an empty B side.
///
/// `ark-relations` 0.6.0's `perform_instance_outlining` always builds the
/// outline map with one entry per instance variable (constant included) and
/// `outline_sr1cs` appends exactly this shape, so this is hardening against
/// upstream drift rather than a live hole. The verifier's `x_A`
/// reconstruction assumes the `+1` coefficient and the row order; the `x_B =
/// 0` shortcut assumes the empty B rows.
fn assert_outlining_rows_shape<F: Field>(
    matrices: &[Matrix<F>],
    num_instance: usize,
    num_constraints: usize,
) {
    let outline_start = num_constraints.saturating_sub(num_instance);
    let (a, b) = (&matrices[0], &matrices[1]);
    for i in 0..num_instance {
        let row = outline_start + i;
        assert!(
            b[row].is_empty(),
            "outlining row {row} has a nonempty B side; the verifier assumes x_B = 0"
        );
        let terms = &a[row];
        assert_eq!(
            terms.len(),
            2,
            "outlining row {row} of the A matrix must be exactly `x_{i} - w` (2 terms), \
             found {} terms",
            terms.len()
        );
        let instance_term = terms.iter().find(|&&(_, idx)| idx == i);
        let witness_term = terms.iter().find(|&&(_, idx)| idx >= num_instance);
        match (instance_term, witness_term) {
            (Some((ci, _)), Some((cw, _))) => {
                assert!(
                    *ci == F::one() && *cw == -F::one(),
                    "outlining row {row} must be `x_{i} - w` with coefficients (+1, -1); \
                     the verifier's public-input reconstruction assumes the +1 on x_{i}"
                );
            }
            _ => panic!(
                "outlining row {row} of the A matrix is not `x_{i} - w`: expected one term \
                 on instance variable {i} and one on its witness copy"
            ),
        }
    }
}
