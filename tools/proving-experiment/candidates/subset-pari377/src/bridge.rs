use anyhow::{bail, ensure, Context, Result};
use ark_bls12_377::{Bls12_377, Fr};
use ark_ff::{Field, PrimeField};
use ark_relations::gr1cs::{
    ConstraintSynthesizer, ConstraintSystemRef, LinearCombination, SynthesisError, Variable,
};
use ark_serialize::{CanonicalDeserialize, CanonicalSerialize};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{
    fs::File,
    io::{BufRead, BufReader},
    path::Path,
    sync::Arc,
};

#[derive(Clone, Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
pub struct Metadata {
    pub schema: String,
    pub modulus: String,
    pub constraints: usize,
    pub public: usize,
    pub secret: usize,
    pub internal: usize,
    pub circuit_sha256: String,
}
impl Metadata {
    pub fn wires(&self) -> usize {
        self.public + self.secret + self.internal
    }
}

#[derive(Clone)]
pub struct Term {
    pub coefficient: Fr,
    pub wire: usize,
}
#[derive(Clone)]
pub struct Row {
    pub a: Vec<Term>,
    pub b: Vec<Term>,
    pub c: Vec<Term>,
}
pub struct Relation {
    pub metadata: Metadata,
    pub rows: Vec<Row>,
}

struct Tokens<'a> {
    tokens: std::str::SplitWhitespace<'a>,
}
impl<'a> Tokens<'a> {
    fn next(&mut self) -> Result<&'a str> {
        self.tokens.next().context("unexpected end of row")
    }
    fn expect(&mut self, expected: &str) -> Result<()> {
        ensure!(self.next()? == expected, "expected {expected}");
        Ok(())
    }
    fn expression(&mut self, wires: usize) -> Result<Vec<Term>> {
        self.expect("[")?;
        let mut terms = Vec::new();
        loop {
            match self.next()? {
                "]" => return Ok(terms),
                "(" => {
                    let coefficient = self
                        .next()?
                        .parse::<Fr>()
                        .map_err(|_| anyhow::anyhow!("invalid field coefficient"))?;
                    let wire = self.next()?.parse::<usize>()?;
                    ensure!(wire < wires, "wire outside full assignment");
                    self.expect(")")?;
                    terms.push(Term { coefficient, wire });
                }
                _ => bail!("invalid expression token"),
            }
        }
    }
}

impl Relation {
    pub fn read(path: &Path, metadata: Metadata) -> Result<Self> {
        ensure!(
            metadata.schema == "shieldd.proof_spike.assignment.v1",
            "wrong schema"
        );
        ensure!(
            metadata.modulus == Fr::MODULUS.to_string(),
            "BLS12-377 scalar modulus mismatch"
        );
        ensure!(
            metadata.public == 2,
            "expected constant and single statement hash"
        );
        let mut rows = Vec::with_capacity(metadata.constraints);
        let mut digest = Sha256::new();
        let mut inputs = Vec::new();
        let mut outputs = Vec::new();
        let mut reader = BufReader::new(File::open(path)?);
        let mut line = String::new();
        let mut number = 0;
        while reader.read_line(&mut line)? != 0 {
            digest.update(line.as_bytes());
            let spaced = line
                .replace('(', " ( ")
                .replace(')', " ) ")
                .replace('[', " [ ")
                .replace(']', " ] ");
            let mut t = Tokens {
                tokens: spaced.split_whitespace(),
            };
            t.expect("(")?;
            match t.next()? {
                "prime-number" => {
                    ensure!(
                        number == 0 && t.next()? == metadata.modulus,
                        "incorrect field header"
                    );
                }
                "in" => inputs.push(t.next()?.parse::<usize>()?),
                "out" => outputs.push(t.next()?.parse::<usize>()?),
                "constraint" => rows.push(Row {
                    a: t.expression(metadata.wires())?,
                    b: t.expression(metadata.wires())?,
                    c: t.expression(metadata.wires())?,
                }),
                _ => bail!("unrecognized canonical export record"),
            }
            t.expect(")")?;
            ensure!(t.tokens.next().is_none(), "trailing row tokens");
            number += 1;
            line.clear();
        }
        ensure!(
            hex::encode(digest.finalize()) == metadata.circuit_sha256,
            "canonical circuit hash mismatch"
        );
        ensure!(
            inputs == (metadata.public..metadata.public + metadata.secret).collect::<Vec<_>>(),
            "secret wire order mismatch"
        );
        ensure!(outputs == vec![1], "public wire order mismatch");
        ensure!(
            rows.len() == metadata.constraints,
            "constraint count mismatch"
        );
        Ok(Self { metadata, rows })
    }

    pub fn validate(&self, values: &[Fr]) -> Result<()> {
        ensure!(
            values.len() == self.metadata.wires(),
            "full assignment length mismatch"
        );
        ensure!(values[0] == Fr::ONE, "constant wire is not one");
        let eval =
            |terms: &[Term]| -> Fr { terms.iter().map(|t| t.coefficient * values[t.wire]).sum() };
        for (i, row) in self.rows.iter().enumerate() {
            ensure!(
                eval(&row.a) * eval(&row.b) == eval(&row.c),
                "original constraint {i} failed"
            );
        }
        Ok(())
    }
}

#[derive(Clone)]
pub struct Circuit {
    pub relation: Arc<Relation>,
    pub values: Option<Arc<Vec<Fr>>>,
}
impl ConstraintSynthesizer<Fr> for Circuit {
    fn generate_constraints(
        self,
        cs: ConstraintSystemRef<Fr>,
    ) -> std::result::Result<(), SynthesisError> {
        let mut wires = Vec::with_capacity(self.relation.metadata.wires());
        wires.push(Variable::One);
        for i in 1..self.relation.metadata.wires() {
            let value = || {
                self.values
                    .as_ref()
                    .map(|v| v[i])
                    .ok_or(SynthesisError::AssignmentMissing)
            };
            wires.push(if i < self.relation.metadata.public {
                cs.new_input_variable(value)?
            } else {
                cs.new_witness_variable(value)?
            });
        }
        let lc = |terms: &[Term]| {
            LinearCombination(
                terms
                    .iter()
                    .map(|t| (t.coefficient, wires[t.wire]))
                    .collect(),
            )
        };
        for row in &self.relation.rows {
            cs.enforce_r1cs_constraint(|| lc(&row.a), || lc(&row.b), || lc(&row.c))?;
        }
        Ok(())
    }
}

pub fn decode<T: CanonicalDeserialize + CanonicalSerialize>(bytes: &[u8]) -> Result<T> {
    let mut input = bytes;
    let value = T::deserialize_compressed(&mut input)
        .map_err(|e| anyhow::anyhow!("checked decoding: {e}"))?;
    ensure!(input.is_empty(), "trailing bytes");
    let mut canonical = Vec::new();
    value
        .serialize_compressed(&mut canonical)
        .map_err(|e| anyhow::anyhow!("encoding: {e}"))?;
    ensure!(bytes == canonical, "noncanonical encoding");
    Ok(value)
}
pub fn assignment(hex_values: &str, relation: &Relation, statement: &str) -> Result<Vec<Fr>> {
    let bytes = hex::decode(hex_values)?;
    ensure!(
        bytes.len() == relation.metadata.wires() * 32,
        "assignment byte count"
    );
    let values = bytes
        .chunks_exact(32)
        .map(decode)
        .collect::<Result<Vec<Fr>>>()?;
    ensure!(
        values[1] == decode::<Fr>(&hex::decode(statement)?)?,
        "public statement mapping mismatch"
    );
    relation.validate(&values)?;
    Ok(values)
}

pub fn validate_converted(circuit: Circuit) -> Result<usize> {
    let cs = zkpari::ZkPari::<Bls12_377>::circuit_to_prover_cs(circuit)?;
    ensure!(cs.is_satisfied()?, "converted constraint failure");
    Ok(cs.num_constraints())
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn checked_scalar_rejects_modulus_and_trailing_bytes() {
        use ark_ff::BigInteger;
        assert!(decode::<Fr>(&Fr::MODULUS.to_bytes_le()).is_err());
        assert!(decode::<Fr>(&[0u8; 33]).is_err());
        assert!(decode::<Fr>(&[0u8; 31]).is_err());
    }
    #[test]
    fn expression_rejects_bad_mapping() {
        let mut tokens = Tokens {
            tokens: "[ ( 1 2 ) ]".split_whitespace(),
        };
        assert!(tokens.expression(2).is_err());
    }
}
