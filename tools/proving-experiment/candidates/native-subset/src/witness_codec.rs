//! Canonical complete logical-witness bytes for the development proving API.
use crate::{
    authorization, compliance, encryption, group, note, recovery, registry, routing, scalar,
    transfer, tree, volume,
};
use anyhow::{Result, ensure};
use commonware_codec::{Encode, Read};
use commonware_cryptography::bls12381::primitives::group::{Scalar, ScalarReadCfg};

trait Wire: Sized {
    fn write(&self, out: &mut Vec<u8>);
    fn read(input: &mut &[u8]) -> Result<Self>;
}
fn take<const N: usize>(input: &mut &[u8]) -> Result<[u8; N]> {
    ensure!(input.len() >= N, "truncated witness");
    let (head, rest) = input.split_at(N);
    *input = rest;
    Ok(head.try_into()?)
}
impl Wire for Scalar {
    fn write(&self, out: &mut Vec<u8>) {
        out.extend_from_slice(&self.encode());
    }
    fn read(input: &mut &[u8]) -> Result<Self> {
        Ok(Scalar::read_cfg(input, &ScalarReadCfg::AllowZero)?)
    }
}
impl Wire for bool {
    fn write(&self, out: &mut Vec<u8>) {
        out.push(u8::from(*self));
    }
    fn read(input: &mut &[u8]) -> Result<Self> {
        let [b] = take(input)?;
        ensure!(b <= 1, "noncanonical boolean");
        Ok(b == 1)
    }
}
macro_rules! integer {
    ($t:ty, $size:expr) => {
        impl Wire for $t {
            fn write(&self, out: &mut Vec<u8>) {
                out.extend_from_slice(&self.to_be_bytes());
            }
            fn read(input: &mut &[u8]) -> Result<Self> {
                Ok(Self::from_be_bytes(take::<$size>(input)?))
            }
        }
    };
}
integer!(u8, 1);
integer!(u64, 8);
integer!(u128, 16);
impl<T: Wire, const N: usize> Wire for [T; N] {
    fn write(&self, out: &mut Vec<u8>) {
        for value in self {
            value.write(out);
        }
    }
    fn read(input: &mut &[u8]) -> Result<Self> {
        let values = (0..N).map(|_| T::read(input)).collect::<Result<Vec<_>>>()?;
        values
            .try_into()
            .map_err(|_| anyhow::anyhow!("fixed array length"))
    }
}
macro_rules! record {
    ($t:ty, $($field:ident),+ $(,)?) => { impl Wire for $t {
        fn write(&self, out: &mut Vec<u8>) { $(self.$field.write(out);)+ }
        fn read(input: &mut &[u8]) -> Result<Self> { Ok(Self { $($field: Wire::read(input)?,)+ }) }
    }};
}
impl<const D: usize> Wire for tree::Path<Scalar, D> {
    fn write(&self, out: &mut Vec<u8>) {
        self.position.write(out);
        self.siblings.write(out);
    }
    fn read(input: &mut &[u8]) -> Result<Self> {
        Ok(Self {
            position: Wire::read(input)?,
            siblings: Wire::read(input)?,
        })
    }
}
record!(group::Point<Scalar>, x, y);
record!(encryption::Address<Scalar>, diversified, transmission);
record!(
    encryption::Policy<Scalar>,
    ring_id,
    policy_id,
    resource,
    permission,
    timestamp
);
record!(encryption::Core<Scalar>, epk, c2, confirmation, ciphertext);
record!(encryption::Extended<Scalar>, epk, c2, ciphertext);
record!(encryption::Metadata<Scalar>, policy, salts);
record!(
    encryption::Published<Scalar>,
    detection,
    sender_core,
    sender_ext,
    output_core,
    output_ext,
    metadata
);
record!(encryption::Witness, ephemeral, published);
record!(scalar::Reduction, remainder, quotient);
record!(authorization::Witness, ak, ak_preimage, nk, ivk);
record!(
    compliance::Leaf<Scalar>,
    address,
    capk,
    rnk_dh,
    rnk_commitment,
    lifecycle
);
record!(compliance::Witness, leaf, path);
record!(
    registry::Leaf<Scalar>,
    value,
    next_index,
    next_value,
    dk,
    daily_limit,
    route_policy,
    ring,
    ring_id,
    policy_id,
    permission,
    resource
);
record!(registry::Witness, leaf, path);
record!(note::Note<Scalar>, blinding, amount, recovery);
record!(
    note::SpendWitness,
    note,
    path,
    randomizer,
    nullifier,
    rk,
    history_required
);
record!(note::OptionalWitness, is_dummy, seed);
record!(note::OutputWitness, note, commitment, capsule);
record!(
    recovery::Capsule<Scalar>,
    commitment,
    epk,
    c2,
    salt,
    confirmation,
    encrypted_amount,
    encrypted_blinding
);
record!(recovery::Witness, capsule, seed, randomizer);
record!(
    routing::Witness,
    regulated_precision,
    unregulated_precision,
    as_of_height,
    parameter_set,
    tags
);
record!(
    volume::Witness,
    nullifier,
    commitment,
    day_start,
    proof_context,
    use_real,
    starts_new_day,
    timestamp_day_index,
    timestamp_second,
    subject,
    prior_volume,
    prior_blinding,
    prior_commitment,
    prior_path,
    successor_volume,
    successor_blinding
);
record!(
    transfer::Witness,
    anchor,
    asset_anchor,
    compliance_anchor,
    asset,
    regulated,
    timestamp,
    recent_floor,
    nonce_root,
    balance_blinding,
    auth,
    registry,
    sender,
    receiver,
    spends,
    optional,
    outputs,
    volume,
    encryption,
    routing,
    claimed_statement
);

const MAGIC: &[u8; 8] = b"SHNCW001";
/// Encodes all logical inputs, including hints, without any solved intermediate wires.
pub fn encode(witness: &transfer::Witness) -> Vec<u8> {
    let mut out = MAGIC.to_vec();
    witness.write(&mut out);
    out
}
/// Checks framing and canonical primitive encodings; the prover checks the relation.
pub fn decode(bytes: &[u8]) -> Result<transfer::Witness> {
    let mut input = bytes;
    ensure!(
        &take::<8>(&mut input)? == MAGIC,
        "wrong native witness schema"
    );
    let witness = transfer::Witness::read(&mut input)?;
    ensure!(input.is_empty(), "trailing native witness bytes");
    Ok(witness)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{fixtures, hash::Parameters, map::Generators};
    use commonware_cryptography::zk::{
        circuit::{build, build_with_values},
        pari,
    };
    #[test]
    fn complete_witness_roundtrip_and_malformed_inputs() {
        let p = Parameters::load().unwrap();
        let g = Generators::derive(&p);
        for f in fixtures::load().unwrap() {
            let original = fixtures::build(&p, &g, &f).unwrap();
            let bytes = encode(&original);
            let decoded = decode(&bytes).unwrap();
            assert_eq!(encode(&decoded), bytes);
            let (c, selected) = build(|ctx| transfer::constrain(ctx, &p, &g, &original));
            let layout =
                pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]]).unwrap();
            let relation = pari::Relation::compile(&c, &layout).unwrap();
            let (v, _) = build_with_values(|ctx| transfer::constrain(ctx, &p, &g, &decoded));
            assert!(v.is_satisfied());
            let witness = relation
                .witness(&v, &layout, vec![pari::Opening::random(&mut rand::rng())])
                .unwrap();
            assert!(relation.check_witness(&witness));
            let prepared = relation
                .witness_prepared(&v, &layout, vec![pari::Opening::random(&mut rand::rng())])
                .unwrap();
            assert!(relation.check_witness(&prepared));
            assert!(decode(&bytes[..bytes.len() - 1]).is_err());
            let mut trailing = bytes.clone();
            trailing.push(0);
            assert!(decode(&trailing).is_err());
            let mut bad = bytes.clone();
            bad[0] ^= 1;
            assert!(decode(&bad).is_err());
            let mut bad = bytes.clone();
            bad[8..40].copy_from_slice(
                &hex::decode("73eda753299d7d483339d80809a1d80553bda402fffe5bfeffffffff00000001")
                    .unwrap(),
            );
            assert!(decode(&bad).is_err());
            let mut bad = bytes;
            bad[8 + 4 * 32] = 2;
            assert!(decode(&bad).is_err());
        }
    }
}
