use crate::bridge::{Circuit, Relation};
use anyhow::{ensure, Result};
use ark_bls12_377::Fr;
use ark_ff::Field;
use ark_relations::gr1cs::{
    ConstraintSynthesizer, ConstraintSystem, OptimizationGoal, SynthesisMode, R1CS_PREDICATE_LABEL,
};
use std::{collections::BTreeMap, sync::Arc};

enum Source {
    Wire(usize),
    Difference(Vec<(Fr, usize)>),
}
pub struct GenericPlan {
    wires: usize,
    sources: Vec<Source>,
}

impl GenericPlan {
    pub fn compile(relation: Arc<Relation>) -> Result<Self> {
        let cs = ConstraintSystem::new_ref();
        cs.set_mode(SynthesisMode::Setup);
        cs.set_optimization_goal(OptimizationGoal::Constraints);
        Circuit {
            relation: relation.clone(),
            values: None,
        }
        .generate_constraints(cs.clone())?;
        cs.finalize();
        let matrices = &cs.to_matrices()?[R1CS_PREDICATE_LABEL];
        let mut seen = BTreeMap::new();
        let mut sources = Vec::new();
        for row in 0..relation.metadata.constraints {
            for side in matrices {
                for (_, wire) in &side[row] {
                    if *wire != 0 && !seen.contains_key(wire) {
                        seen.insert(*wire, sources.len());
                        sources.push(Source::Wire(*wire));
                    }
                }
            }
            let difference = matrices[0][row]
                .iter()
                .copied()
                .chain(matrices[1][row].iter().map(|(c, i)| (-*c, *i)))
                .collect();
            sources.push(Source::Difference(difference));
        }
        ensure!(
            seen.contains_key(&1),
            "adapter must bind the single statement hash"
        );
        sources.extend([Source::Wire(0), Source::Wire(1)]);
        Ok(Self {
            wires: relation.metadata.wires(),
            sources,
        })
    }
    pub fn witness(&self, original: &[Fr]) -> Result<Vec<Fr>> {
        ensure!(
            original.len() == self.wires && original[0] == Fr::ONE,
            "assignment shape/constant mismatch"
        );
        Ok(self
            .sources
            .iter()
            .map(|s| match s {
                Source::Wire(i) => original[*i],
                Source::Difference(e) => e
                    .iter()
                    .map(|(c, i)| *c * original[*i])
                    .sum::<Fr>()
                    .square(),
            })
            .collect())
    }
}
