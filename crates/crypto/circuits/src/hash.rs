use anyhow::{Result, ensure};
use commonware_codec::Read;
use commonware_cryptography::{
    bls12381::primitives::group::{Scalar, ScalarReadCfg},
    zk::circuit::Var,
};
use commonware_math::algebra::Field;
use serde::Deserialize;

#[derive(Deserialize)]
#[cfg_attr(not(test), allow(dead_code))]
#[serde(deny_unknown_fields)]
struct Vector {
    domain: u8,
    inputs: Vec<String>,
    output: String,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Artifact {
    schema: String,
    modulus: String,
    alpha: u64,
    full_rounds: usize,
    partial_rounds: usize,
    skip_matrices: u64,
    ark: Vec<Vec<String>>,
    mds: Vec<Vec<String>>,
    #[cfg_attr(not(test), allow(dead_code))]
    vectors: Vec<Vector>,
}

pub struct Parameters {
    pub(crate) generators: std::sync::OnceLock<crate::map::Generators>,
    small: Permutation<3>,
    wide: Permutation<6>,
}
struct Permutation<const WIDTH: usize> {
    ark: Vec<[Scalar; WIDTH]>,
    mds: [[Scalar; WIDTH]; WIDTH],
}
fn scalar(encoded: &str) -> Result<Scalar> {
    let bytes = hex::decode(encoded)?;
    ensure!(bytes.len() == 32, "scalar length");
    let mut input = bytes.as_slice();
    Ok(Scalar::read_cfg(&mut input, &ScalarReadCfg::AllowZero)?)
}
fn row<const WIDTH: usize>(values: Vec<String>) -> Result<[Scalar; WIDTH]> {
    let values = values
        .iter()
        .map(|s| scalar(s))
        .collect::<Result<Vec<_>>>()?;
    values
        .try_into()
        .map_err(|_| anyhow::anyhow!("parameter row width"))
}
impl<const WIDTH: usize> Permutation<WIDTH> {
    fn load(source: &str) -> Result<Self> {
        let artifact: Artifact = serde_json::from_str(source)?;
        ensure!(
            artifact.schema == "shieldd.poseidon381.v1"
                && artifact.modulus
                    == "52435875175126190479447740508185965837690552500527637822603658699938581184513"
                && artifact.alpha == 5
                && artifact.full_rounds == 8
                && artifact.partial_rounds == 57
                && artifact.skip_matrices == 0
                && artifact.ark.len() == 65,
            "wrong Poseidon recipe"
        );
        let ark = artifact
            .ark
            .into_iter()
            .map(row)
            .collect::<Result<Vec<_>>>()?;
        let mds: [[Scalar; WIDTH]; WIDTH] = artifact
            .mds
            .into_iter()
            .map(row)
            .collect::<Result<Vec<_>>>()?
            .try_into()
            .map_err(|_| anyhow::anyhow!("MDS height"))?;
        Ok(Self { ark, mds })
    }
    fn permute<F: Field>(&self, state: &mut [F; WIDTH], lift: &impl Fn(&Scalar) -> F) {
        for (round, constants) in self.ark.iter().enumerate() {
            for (value, constant) in state.iter_mut().zip(constants) {
                *value += &lift(constant);
            }
            for (i, value) in state.iter_mut().enumerate() {
                if round < 4 || round >= 61 || i == 0 {
                    let square = value.clone() * &*value;
                    *value = square.clone() * &square * &*value;
                }
            }
            let next = std::array::from_fn(|i| {
                self.mds[i]
                    .iter()
                    .zip(state.iter())
                    .fold(F::zero(), |sum, (coefficient, value)| {
                        sum + &(lift(coefficient) * value)
                    })
            });
            *state = next;
        }
    }
    fn hash<F: Field>(&self, domain: u8, inputs: &[F], lift: impl Fn(&Scalar) -> F) -> F {
        let arity = u64::try_from(inputs.len()).expect("arity fits u64");
        let iv = arity
            .checked_mul(256)
            .and_then(|n| n.checked_add(u64::from(domain)))
            .expect("hash arity bound");
        let mut state = std::array::from_fn(|_| F::zero());
        state[0] = lift(&Scalar::from(iv));
        if inputs.is_empty() {
            self.permute(&mut state, &lift);
        }
        for chunk in inputs.chunks(WIDTH - 1) {
            for (i, input) in chunk.iter().enumerate() {
                state[i + 1] += input;
            }
            self.permute(&mut state, &lift);
        }
        state[1].clone()
    }
}
impl Parameters {
    pub fn load() -> Result<&'static Self> {
        static PARAMETERS: std::sync::OnceLock<Result<Parameters, String>> =
            std::sync::OnceLock::new();
        PARAMETERS
            .get_or_init(|| {
                (|| -> Result<Self> {
                    Ok(Self {
                        generators: std::sync::OnceLock::new(),
                        small: Permutation::load(include_str!(
                            "../../primitives/params/poseidon381.json"
                        ))?,
                        wide: Permutation::load(include_str!(
                            "../../primitives/params/poseidon381-wide.json"
                        ))?,
                    })
                })()
                .map_err(|error| error.to_string())
            })
            .as_ref()
            .map_err(|error| anyhow::anyhow!(error.clone()))
    }
    fn hash<F: Field>(&self, domain: u8, inputs: &[F], lift: impl Fn(&Scalar) -> F) -> F {
        if inputs.len() <= 2 {
            self.small.hash(domain, inputs, lift)
        } else {
            self.wide.hash(domain, inputs, lift)
        }
    }
    pub fn native(&self, domain: u8, inputs: &[Scalar]) -> Scalar {
        self.hash(domain, inputs, Clone::clone)
    }
    pub fn circuit<'ctx>(&self, domain: u8, inputs: &[Var<'ctx, Scalar>]) -> Var<'ctx, Scalar> {
        let output = self.hash(domain, inputs, |value| Var::native(value.clone()));
        output
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use commonware_cryptography::zk::circuit::{Var, build_with_values};
    use commonware_math::algebra::{Additive, Ring};

    #[test]
    fn immutable_parameters_and_generators_are_shared() {
        let first = Parameters::load().unwrap();
        let second = Parameters::load().unwrap();
        assert!(std::ptr::eq(first, second));
        assert!(std::ptr::eq(
            crate::map::Generators::derive(first),
            crate::map::Generators::derive(second)
        ));
    }

    #[test]
    fn native_and_circuit_match_pinned_arkworks_vectors() {
        let p = Parameters::load().unwrap();
        for (source, wide) in [
            (
                include_str!("../../primitives/params/poseidon381.json"),
                false,
            ),
            (
                include_str!("../../primitives/params/poseidon381-wide.json"),
                true,
            ),
        ] {
            let artifact: Artifact = serde_json::from_str(source).unwrap();
            for vector in artifact.vectors {
                if (vector.inputs.len() > 2) != wide {
                    continue;
                }
                let inputs = vector
                    .inputs
                    .iter()
                    .map(|v| scalar(v).unwrap())
                    .collect::<Vec<_>>();
                let expected = scalar(&vector.output).unwrap();
                assert_eq!(p.native(vector.domain, &inputs), expected);
                let (valid, _) = build_with_values(|ctx| {
                    let vars = inputs
                        .iter()
                        .map(|v| Var::witness(ctx, |_| v.clone()))
                        .collect::<Vec<_>>();
                    let claimed = Var::witness(ctx, |_| expected.clone());
                    p.circuit(vector.domain, &vars).assert_eq(&claimed);
                    Vec::new()
                });
                assert!(valid.is_satisfied());
            }
        }
    }

    #[test]
    fn wrong_hash_and_cross_domain_are_rejected() {
        let p = Parameters::load().unwrap();
        let inputs = vec![Scalar::from(1), Scalar::from(2)];
        let expected = p.native(1, &inputs);
        assert_ne!(p.native(2, &inputs), expected);
        assert_ne!(
            p.native(1, &[inputs.clone(), vec![Scalar::zero()]].concat()),
            expected
        );
        let (invalid, _) = build_with_values(|ctx| {
            let vars = inputs
                .iter()
                .map(|v| Var::witness(ctx, |_| v.clone()))
                .collect::<Vec<_>>();
            p.circuit(1, &vars)
                .assert_eq(&Var::witness(ctx, |_| expected.clone() + &Scalar::one()));
            Vec::new()
        });
        assert!(!invalid.is_satisfied());
    }

    #[test]
    fn matrix_has_no_singular_minor() {
        let p = Parameters::load().unwrap();
        let m = &p.small.mds;
        for row in m {
            for x in row {
                assert_ne!(*x, Scalar::zero());
            }
        }
        for r0 in 0..3 {
            for r1 in r0 + 1..3 {
                for c0 in 0..3 {
                    for c1 in c0 + 1..3 {
                        assert_ne!(
                            m[r0][c0].clone() * &m[r1][c1] - &(m[r0][c1].clone() * &m[r1][c0]),
                            Scalar::zero()
                        );
                    }
                }
            }
        }
        let det = m[0][0].clone() * &(m[1][1].clone() * &m[2][2] - &(m[1][2].clone() * &m[2][1]))
            - &(m[0][1].clone() * &(m[1][0].clone() * &m[2][2] - &(m[1][2].clone() * &m[2][0])))
            + &(m[0][2].clone() * &(m[1][0].clone() * &m[2][1] - &(m[1][1].clone() * &m[2][0])));
        assert_ne!(det, Scalar::zero());
    }
}
