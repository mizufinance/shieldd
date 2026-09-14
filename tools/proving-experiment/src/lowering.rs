use crate::bridge::{Relation, Row, Term};
use anyhow::{ensure, Result};
use ark_bls12_377::Fr;
use ark_ff::{AdditiveGroup, Field, Zero};
use ark_relations::gr1cs::{
    predicate::{polynomial_constraint::SR1CS_PREDICATE_LABEL, PredicateConstraintSystem},
    ConstraintSynthesizer, ConstraintSystemRef, LinearCombination, SynthesisError, Variable,
    R1CS_PREDICATE_LABEL,
};
use serde::Serialize;
use std::{collections::BTreeMap, sync::Arc};

type Expression = Vec<(Fr, usize)>;

#[derive(Clone)]
struct SquareRow {
    squared: Expression,
    linear: Expression,
}

#[derive(Clone, Default, Serialize)]
pub struct Counts {
    pub exact_square: usize,
    pub affine_product: usize,
    pub linear: usize,
    pub general_product: usize,
}

/// Every derived wire is a deterministic square of an original-wire expression.
pub struct Lowered {
    original_wires: usize,
    rows: Vec<SquareRow>,
    derived: Vec<Expression>,
    pub counts: Counts,
}

fn normalize(terms: impl IntoIterator<Item = (Fr, usize)>) -> Expression {
    let mut out = BTreeMap::<usize, Fr>::new();
    for (coefficient, wire) in terms {
        *out.entry(wire).or_default() += coefficient;
    }
    out.into_iter()
        .filter(|(_, c)| !c.is_zero())
        .map(|(i, c)| (c, i))
        .collect()
}
fn expression(terms: &[Term]) -> Expression {
    normalize(terms.iter().map(|t| (t.coefficient, t.wire)))
}
fn combine(a: &Expression, ka: Fr, b: &Expression, kb: Fr) -> Expression {
    normalize(
        a.iter()
            .map(|(c, i)| (*c * ka, *i))
            .chain(b.iter().map(|(c, i)| (*c * kb, *i))),
    )
}
fn constant(a: &Expression) -> Option<Fr> {
    if a.iter().any(|(_, i)| *i != 0) {
        None
    } else {
        Some(a.iter().map(|(c, _)| *c).sum())
    }
}
fn evaluate(a: &Expression, values: &[Fr]) -> Fr {
    a.iter().map(|(c, i)| *c * values[*i]).sum()
}

impl Lowered {
    pub fn compile(relation: &Relation) -> Self {
        let mut out = Self {
            original_wires: relation.metadata.wires(),
            rows: Vec::new(),
            derived: Vec::new(),
            counts: Counts::default(),
        };
        for Row { a, b, c } in &relation.rows {
            let (a, b, c) = (expression(a), expression(b), expression(c));
            let row = if let Some(k) = constant(&a) {
                out.counts.linear += 1;
                SquareRow {
                    squared: vec![],
                    linear: combine(&b, k, &c, -Fr::ONE),
                }
            } else if let Some(k) = constant(&b) {
                out.counts.linear += 1;
                SquareRow {
                    squared: vec![],
                    linear: combine(&a, k, &c, -Fr::ONE),
                }
            } else if a == b {
                out.counts.exact_square += 1;
                SquareRow {
                    squared: a,
                    linear: c,
                }
            } else {
                let an: Vec<_> = a.iter().filter(|(_, i)| *i != 0).collect();
                let bn: Vec<_> = b.iter().filter(|(_, i)| *i != 0).collect();
                let k = bn[0].0 / an[0].0;
                if an.len() == bn.len()
                    && an
                        .iter()
                        .zip(&bn)
                        .all(|(x, y)| x.1 == y.1 && x.0 * k == y.0)
                {
                    out.counts.affine_product += 1;
                    let a0 = a
                        .iter()
                        .find(|(_, i)| *i == 0)
                        .map_or(Fr::ZERO, |(c, _)| *c);
                    let b0 = b
                        .iter()
                        .find(|(_, i)| *i == 0)
                        .map_or(Fr::ZERO, |(c, _)| *c);
                    let d = b0 - k * a0;
                    SquareRow {
                        squared: combine(&a, k.double(), &vec![(d, 0)], Fr::ONE),
                        linear: combine(&c, k.double().double(), &vec![(d.square(), 0)], Fr::ONE),
                    }
                } else {
                    out.counts.general_product += 1;
                    let wire = out.original_wires + out.derived.len();
                    let difference = combine(&a, Fr::ONE, &b, -Fr::ONE);
                    out.derived.push(difference.clone());
                    out.rows.push(SquareRow {
                        squared: difference,
                        linear: vec![(Fr::ONE, wire)],
                    });
                    SquareRow {
                        squared: combine(&a, Fr::ONE, &b, Fr::ONE),
                        linear: combine(&c, Fr::from(4u64), &vec![(Fr::ONE, wire)], Fr::ONE),
                    }
                }
            };
            out.rows.push(row);
        }
        out
    }
    pub fn body_rows(&self) -> usize {
        self.rows.len()
    }
    pub fn witness(&self, original: &[Fr]) -> Result<Vec<Fr>> {
        ensure!(
            original.len() == self.original_wires && original[0] == Fr::ONE,
            "original wire shape or constant mismatch"
        );
        let mut values = original.to_vec();
        values.extend(self.derived.iter().map(|e| evaluate(e, original).square()));
        // Arkworks outlines the constant and public statement after our witness allocation.
        values.extend_from_slice(&original[..2]);
        Ok(values)
    }
    pub fn validate(&self, original: &[Fr]) -> Result<()> {
        let values = self.witness(original)?;
        for (i, row) in self.rows.iter().enumerate() {
            ensure!(
                evaluate(&row.squared, &values).square() == evaluate(&row.linear, &values),
                "lowered constraint {i} failed"
            );
        }
        Ok(())
    }
}

#[derive(Clone)]
pub struct Circuit {
    pub relation: Arc<Lowered>,
    pub original: Option<Arc<Vec<Fr>>>,
}
impl ConstraintSynthesizer<Fr> for Circuit {
    fn generate_constraints(self, cs: ConstraintSystemRef<Fr>) -> Result<(), SynthesisError> {
        cs.remove_predicate(R1CS_PREDICATE_LABEL);
        cs.register_predicate(
            SR1CS_PREDICATE_LABEL,
            PredicateConstraintSystem::new_sr1cs_predicate()?,
        )?;
        let values = self
            .original
            .as_ref()
            .map(|v| self.relation.witness(v).expect("checked assignment"));
        let statement = cs.new_input_variable(|| {
            self.original
                .as_ref()
                .map(|v| v[1])
                .ok_or(SynthesisError::AssignmentMissing)
        })?;
        let mut vars = Vec::new();
        for i in 0..self.relation.original_wires + self.relation.derived.len() {
            vars.push(cs.new_witness_variable(|| {
                values
                    .as_ref()
                    .map(|v| v[i])
                    .ok_or(SynthesisError::AssignmentMissing)
            })?);
        }
        let lc =
            |e: &Expression| LinearCombination(e.iter().map(|(c, i)| (*c, vars[*i])).collect());
        for row in &self.relation.rows {
            cs.enforce_sr1cs_constraint(|| lc(&row.squared), || lc(&row.linear))?;
        }
        // Two-term equalities are interned, ensuring no bare public variable escapes outlining.
        cs.enforce_sr1cs_constraint(
            || LinearCombination(vec![(Fr::ONE, vars[0]), (-Fr::ONE, Variable::One)]),
            LinearCombination::default,
        )?;
        cs.enforce_sr1cs_constraint(
            || LinearCombination(vec![(Fr::ONE, vars[1]), (-Fr::ONE, statement)]),
            LinearCombination::default,
        )?;
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::bridge::Metadata;
    fn terms(e: &[(u64, usize)]) -> Vec<Term> {
        e.iter()
            .map(|(c, i)| Term {
                coefficient: Fr::from(*c),
                wire: *i,
            })
            .collect()
    }
    #[test]
    fn square_affine_linear_and_general_preserve_rejection() {
        let rows = vec![
            Row {
                a: terms(&[(1, 2)]),
                b: terms(&[(1, 2)]),
                c: terms(&[(1, 3)]),
            },
            Row {
                a: terms(&[(1, 2)]),
                b: terms(&[(2, 2), (3, 0)]),
                c: terms(&[(1, 4)]),
            },
            Row {
                a: terms(&[(2, 0)]),
                b: terms(&[(1, 2)]),
                c: terms(&[(1, 5)]),
            },
            Row {
                a: terms(&[(1, 2)]),
                b: terms(&[(1, 5)]),
                c: terms(&[(1, 6)]),
            },
        ];
        let r = Relation {
            metadata: Metadata {
                schema: String::new(),
                modulus: String::new(),
                constraints: 4,
                public: 2,
                secret: 5,
                internal: 0,
                circuit_sha256: String::new(),
            },
            rows,
        };
        let l = Lowered::compile(&r);
        let values: Vec<_> = [1, 7, 3, 9, 27, 6, 18].into_iter().map(Fr::from).collect();
        assert_eq!(l.body_rows(), 5);
        r.validate(&values).unwrap();
        l.validate(&values).unwrap();
        for i in 2..values.len() {
            let mut bad = values.clone();
            bad[i] += Fr::ONE;
            assert!(r.validate(&bad).is_err());
            assert!(l.validate(&bad).is_err());
        }
    }
}
