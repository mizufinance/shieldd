#![allow(unused_imports,dead_code)]
pub use shieldd_sdk_circuits::*;
use commonware_codec::Encode;
use commonware_cryptography::{bls12381::primitives::group::Scalar, zk::{circuit::{build,build_with_values},pari::{self,InputLayout,Relation}}};
use commonware_math::algebra::{Additive,Ring};
use commonware_parallel::Rayon;
use shieldd_sdk_crypto::domains;
use std::{time::Instant,num::NonZeroUsize};
#[path="../src/fixtures.rs"] mod fixtures;
mod disclosure_fixture {
use super::*;
use disclosure::*;
use encryption::Address;
use group::Point;
use hash::Parameters;
use note::Note;
fn zero_predicate() -> Predicate<Scalar> {
    Predicate {
        op: Scalar::zero(),
        lower: Scalar::zero(),
        upper: Scalar::zero(),
        result: Scalar::zero(),
    }
}
fn empty_address() -> Address<Scalar> {
    Address {
        diversified: Point {
            x: Scalar::zero(),
            y: Scalar::zero(),
        },
        transmission: Point {
            x: Scalar::zero(),
            y: Scalar::zero(),
        },
    }
}
pub(crate) fn fixture(p: &Parameters, count: usize, amount: Scalar) -> Witness {
    let notes = std::array::from_fn(|i| {
        if i < count {
            Opening {
                note: Note {
                    amount: amount.clone(),
                    blinding: Scalar::from(i as u64 + 1),
                    recovery: Scalar::from(3),
                },
                asset: Scalar::from(7),
                address: Address {
                    diversified: group::generator(),
                    transmission: group::generator().multiply(&Scalar::from(9)),
                },
            }
        } else {
            Opening {
                note: Note {
                    amount: Scalar::zero(),
                    blinding: Scalar::zero(),
                    recovery: Scalar::zero(),
                },
                asset: Scalar::zero(),
                address: empty_address(),
            }
        }
    });
    let context = [Scalar::from(17), Scalar::from(19)];
    Witness {
        statement: Statement {
            context_hash: p.native(domains::DISCLOSURE_CONTEXT, &context),
            context,
            slots: std::array::from_fn(|i| Slot {
                active: Scalar::from(u64::from(i < count)),
                commitment: if i < count {
                    notes[i]
                        .note
                        .commitment(p, &notes[i].asset, &notes[i].address)
                } else {
                    Scalar::zero()
                },
                reveal_amount: Scalar::zero(),
                reveal_asset: Scalar::zero(),
                reveal_recipient: Scalar::zero(),
                amount: Scalar::zero(),
                asset: Scalar::zero(),
                address: empty_address(),
                predicate: zero_predicate(),
            }),
            total_enabled: Scalar::zero(),
            total_reveal: Scalar::zero(),
            total_amount: Scalar::zero(),
            total_asset: Scalar::zero(),
            total_predicate: zero_predicate(),
        },
        notes,
    }
}
}
mod history_fixture {
use super::*;
use history::*;
use hash::Parameters;
use tree::{Path,Tree};
fn fixture(p: &Parameters, index: u64, head: Scalar) -> GenerationWitness {
    let leaf = Leaf {
        value: Scalar::zero(),
        next_index: 0,
        next_value: Scalar::zero(),
        lower_sentinel: true,
        terminal: true,
    };
    let path = Path {
        position: Scalar::zero(),
        siblings: std::array::from_fn(|_| std::array::from_fn(|_| Scalar::zero())),
    };
    let root = tree::native_root(p, Tree::History, leaf.commitment(p), 0, &path.siblings);
    let mut statement = GenerationStatement {
        version: VERSION,
        nullifier: Scalar::one(),
        index,
        root,
        start_position: 0,
        end_position: 1024,
        start_head: head,
        end_head: Scalar::zero(),
    };
    statement.end_head = statement.history_head(p);
    GenerationWitness {
        statement,
        leaf,
        path,
    }
}

pub(crate) fn chunk(p: &Parameters, index: u64) -> ChunkWitness {
    let start_head = p.native(domains::HISTORY_EMPTY, &[]);
    let mut head = start_head.clone();
    let generations = std::array::from_fn(|i| {
        let w = fixture(
            p,
            index.wrapping_mul(CHUNK_SIZE as u64).wrapping_add(i as u64),
            head.clone(),
        );
        head = w.statement.end_head.clone();
        w
    });
    ChunkWitness {
        statement: ChunkStatement {
            version: VERSION,
            index,
            nullifier: Scalar::one(),
            start_head,
            end_head: head,
        },
        generations,
    }
}

}
fn main()->anyhow::Result<()> {
 let which=std::env::args().nth(1).unwrap_or("disclosure".into());
 let p=hash::Parameters::load()?;let g=map::Generators::derive(&p);
 let w=match which.as_str(){
 "transfer"=>catalogue::Witness::Transfer(Box::new(fixtures::build(&p,&g,&fixtures::load()?.remove(2))?)),
 "disclosure"=>catalogue::Witness::Disclosure(Box::new(disclosure_fixture::fixture(&p,1,Scalar::from(5)))),
 "history"=>catalogue::Witness::HistoryChunk(Box::new(history_fixture::chunk(&p,1))),
 _=>anyhow::bail!("unknown family")};
 let family=w.family();let digest=w.digest(&p,&g)?;
 let strategy=Rayon::new(NonZeroUsize::new(2).unwrap())?;
 let now=Instant::now();let (c,selected)=build(|ctx|w.constrain(ctx,&p,&g,&digest));
 let layout=InputLayout::new(vec![selected[0]],vec![vec![selected[1]]])?;let relation=Relation::compile(&c,&layout)?;drop(c);
 println!("PROOF_BENCH family={} compile_ms={} domain={}",which,now.elapsed().as_millis(),relation.domain_size());
 let now=Instant::now();let(pk,vk)=pari::setup(&relation,&mut rand10::rng(),&strategy)?;
 println!("PROOF_BENCH setup_ms={} pk_bytes={}",now.elapsed().as_millis(),pk.encode().len());
 for run in 0..3 {
 let now=Instant::now();let(values,_)=build_with_values(|ctx|w.constrain(ctx,&p,&g,&digest));let witness_ms=now.elapsed().as_millis();assert!(values.is_satisfied());
 let total=Instant::now();let mut rng=rand10::rand_core::UnwrapErr(rand10::rngs::SysRng);
 let now=Instant::now();let assignment=relation.witness(&values,&layout,vec![pari::Opening::random(&mut rng)])?;drop(values);let assignment_ms=now.elapsed().as_millis();
 let now=Instant::now();let claim=assignment.claim(pk.commitment_keys(),&strategy)?;let claim_ms=now.elapsed().as_millis();
 let mut transcript=commonware_cryptography::transcript::Transcript::new(b"shieldd.pari.proof.v1",commonware_cryptography::transcript::Version::V1);transcript.commit([shieldd_sdk_crypto::SUITE,family as u8].as_slice());
 let now=Instant::now();let native_proof=pari::prove(&mut rng,&mut transcript,&pk,&relation,&claim,&assignment,&strategy)?;let native_prove_ms=now.elapsed().as_millis();
 let mut bytes=vec![shieldd_sdk_crypto::SUITE,family as u8];bytes.extend(relation.digest());bytes.extend(claim.encode());bytes.extend(native_proof.encode());let proof=proof::Envelope::from_bytes(&bytes)?;let prove_ms=total.elapsed().as_millis();
 let now=Instant::now();proof.verify(family,&vk,&digest)?;let verify_us=now.elapsed().as_micros();assert!(proof.verify(family,&vk,&(digest.clone()+&Scalar::one())).is_err());
 println!("PROOF_BENCH run={} witness_ms={} assignment_ms={} claim_ms={} native_prove_ms={} prove_pipeline_ms={} verify_us={} proof_bytes={}",run,witness_ms,assignment_ms,claim_ms,native_prove_ms,prove_ms,verify_us,proof.to_bytes().len());
 }
 Ok(())
}
