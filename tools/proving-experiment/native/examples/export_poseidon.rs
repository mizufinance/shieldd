use ark_bls12_381::Fr;
use ark_crypto_primitives::sponge::{
    CryptographicSponge, FieldBasedCryptographicSponge,
    poseidon::{PoseidonConfig, PoseidonSponge, find_poseidon_ark_and_mds},
};
use ark_ff::{BigInteger, PrimeField};
use serde::Serialize;

#[derive(Serialize)]
struct Vector {
    domain: u8,
    inputs: Vec<String>,
    output: String,
}
#[derive(Serialize)]
struct Parameters {
    schema: &'static str,
    modulus: String,
    alpha: u64,
    full_rounds: usize,
    partial_rounds: usize,
    skip_matrices: u64,
    ark: Vec<Vec<String>>,
    mds: Vec<Vec<String>>,
    vectors: Vec<Vector>,
}
fn encoded(x: &Fr) -> String {
    let mut bytes = x.into_bigint().to_bytes_be();
    while bytes.len() < 32 {
        bytes.insert(0, 0);
    }
    hex::encode(bytes)
}
fn main() -> anyhow::Result<()> {
    let width: usize = std::env::args()
        .nth(1)
        .unwrap_or_else(|| "3".into())
        .parse()?;
    anyhow::ensure!([3, 6].contains(&width), "only the two reviewed widths");
    let rate = width - 1;
    let (ark, mds) = find_poseidon_ark_and_mds::<Fr>(255, rate, 8, 57, 0);
    let params = PoseidonConfig::new(8, 57, 5, mds.clone(), ark.clone(), rate, 1);
    let mut vectors = Vec::new();
    for domain in [1u8, 7, 255] {
        for len in [0usize, 1, 2, 3, 4, 5, 6, 7, 9, 11, 17, 53, 60] {
            let inputs: Vec<_> = (0..len).map(|i| Fr::from(i as u64 + 1)).collect();
            let mut sponge = PoseidonSponge::new(&params);
            sponge.state[0] = Fr::from(u64::from(domain) + ((len as u64) << 8));
            sponge.absorb(&inputs.as_slice());
            vectors.push(Vector {
                domain,
                inputs: inputs.iter().map(encoded).collect(),
                output: encoded(&sponge.squeeze_native_field_elements(1)[0]),
            });
        }
    }
    let out = Parameters {
        schema: "shieldd.native_experiment.poseidon.v1",
        modulus: Fr::MODULUS.to_string(),
        alpha: 5,
        full_rounds: 8,
        partial_rounds: 57,
        skip_matrices: 0,
        ark: ark
            .iter()
            .map(|r| r.iter().map(encoded).collect())
            .collect(),
        mds: mds
            .iter()
            .map(|r| r.iter().map(encoded).collect())
            .collect(),
        vectors,
    };
    println!("{}", serde_json::to_string_pretty(&out)?);
    Ok(())
}
