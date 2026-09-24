use anyhow::{ensure, Result};
use ff::Field;
use jubjub::Fq;
use serde::Deserialize;
use std::sync::LazyLock;

#[derive(Deserialize)]
struct Artifact {
    schema: String,
    modulus: String,
    alpha: u64,
    full_rounds: usize,
    partial_rounds: usize,
    skip_matrices: u64,
    ark: Vec<Vec<String>>,
    mds: Vec<Vec<String>>,
}

struct Permutation<const N: usize> {
    ark: Vec<[Fq; N]>,
    mds: [[Fq; N]; N],
}

fn field(value: &str) -> Result<Fq> {
    let mut bytes: [u8; 32] = hex::decode(value)?
        .try_into()
        .map_err(|_| anyhow::anyhow!("Poseidon field length"))?;
    bytes.reverse();
    crate::encoding::field(&bytes)
}

fn row<const N: usize>(values: &[String]) -> Result<[Fq; N]> {
    values
        .iter()
        .map(|x| field(x))
        .collect::<Result<Vec<_>>>()?
        .try_into()
        .map_err(|_| anyhow::anyhow!("Poseidon row width"))
}

impl<const N: usize> Permutation<N> {
    fn load(bytes: &str) -> Result<Self> {
        let artifact: Artifact = serde_json::from_str(bytes)?;
        ensure!(artifact.schema == "shieldd.poseidon381.v1"
            && artifact.skip_matrices == 0
            && artifact.modulus == "52435875175126190479447740508185965837690552500527637822603658699938581184513"
            && artifact.alpha == 5 && artifact.full_rounds == 8
            && artifact.partial_rounds == 57 && artifact.ark.len() == 65,
            "invalid Poseidon parameter recipe");
        Ok(Self {
            ark: artifact.ark.iter().map(|r| row(r)).collect::<Result<_>>()?,
            mds: artifact
                .mds
                .iter()
                .map(|r| row(r))
                .collect::<Result<Vec<_>>>()?
                .try_into()
                .map_err(|_| anyhow::anyhow!("Poseidon MDS height"))?,
        })
    }

    fn permute(&self, state: &mut [Fq; N]) {
        for (round, constants) in self.ark.iter().enumerate() {
            for (i, value) in state.iter_mut().enumerate() {
                *value += constants[i];
                if round < 4 || round >= 61 || i == 0 {
                    *value = value.square().square() * *value;
                }
            }
            *state = std::array::from_fn(|i| {
                self.mds[i]
                    .iter()
                    .zip(state.iter())
                    .fold(Fq::ZERO, |sum, (a, b)| sum + a * b)
            });
        }
    }

    fn hash(&self, domain: u8, inputs: &[Fq]) -> Fq {
        let iv = u64::try_from(inputs.len())
            .expect("hash input length fits u64")
            .checked_mul(256)
            .and_then(|n| n.checked_add(u64::from(domain)))
            .expect("hash input length bound");
        let mut state = [Fq::ZERO; N];
        state[0] = Fq::from(iv);
        if inputs.is_empty() {
            self.permute(&mut state);
        }
        for chunk in inputs.chunks(N - 1) {
            for (i, value) in chunk.iter().enumerate() {
                state[i + 1] += value;
            }
            self.permute(&mut state);
        }
        state[1]
    }
}

static SMALL: LazyLock<Permutation<3>> = LazyLock::new(|| {
    Permutation::load(include_str!("../params/poseidon381.json"))
        .expect("embedded Poseidon parameters")
});
static WIDE: LazyLock<Permutation<6>> = LazyLock::new(|| {
    Permutation::load(include_str!("../params/poseidon381-wide.json"))
        .expect("embedded Poseidon parameters")
});

pub fn hash(domain: u8, inputs: &[Fq]) -> Fq {
    if inputs.len() <= 2 {
        SMALL.hash(domain, inputs)
    } else {
        WIDE.hash(domain, inputs)
    }
}

/// Hashes policy identifiers as exact bytes, including their length.
pub fn policy_identifier(bytes: &[u8]) -> Fq {
    let mut fields = vec![Fq::from(
        u64::try_from(bytes.len()).expect("policy identifier length"),
    )];
    fields.extend(crate::encoding::pack(bytes));
    hash(crate::domains::POLICY_IDENTIFIER, &fields)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn independent_parameter_vectors_and_domains() {
        for source in [
            include_str!("../params/poseidon381.json"),
            include_str!("../params/poseidon381-wide.json"),
        ] {
            let artifact: serde_json::Value = serde_json::from_str(source).unwrap();
            let width = artifact["mds"].as_array().unwrap().len();
            for vector in artifact["vectors"].as_array().unwrap() {
                let inputs: Vec<_> = vector["inputs"]
                    .as_array()
                    .unwrap()
                    .iter()
                    .map(|v| field(v.as_str().unwrap()).unwrap())
                    .collect();
                if (inputs.len() <= 2) != (width == 3) {
                    continue;
                }
                let domain = vector["domain"].as_u64().unwrap() as u8;
                assert_eq!(
                    hash(domain, &inputs),
                    field(vector["output"].as_str().unwrap()).unwrap()
                );
            }
        }
        assert_ne!(hash(1, &[Fq::ONE]), hash(2, &[Fq::ONE]));
        assert_ne!(hash(1, &[Fq::ONE]), hash(1, &[Fq::ONE, Fq::ZERO]));
    }
}
