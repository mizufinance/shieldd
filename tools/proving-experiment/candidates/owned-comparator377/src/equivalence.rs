//! Actual-key seeded proof and combined-MSM oracle; ordinary serving uses OsRng.
#[path="../../prepared-key-pari377/src/protocol.rs"] mod reference;
use crate::{arithmetic,bridge,compile,encode,frontend,protocol,Solved};
use anyhow::{ensure,Result};
use ark_bls12_377::{Fr,G1Projective};
use ark_ec::{CurveGroup,VariableBaseMSM};
use ark_std::rand::{SeedableRng,rngs::StdRng};
use std::{fs,path::Path};
const NAMES:[&str;6]=["transfer","transfer_unregulated","transfer_flagged","transfer_accumulating","transfer_over_limit_disclosure","transfer_accumulator_continuation"];
pub(crate) fn run(args:&[String])->Result<()> {
    ensure!(args.len()==6,"owned-equivalence RELATION KEY PRIVATE_CHILD NEW_OUTPUT");
    let dir=Path::new(&args[2]);let out=Path::new(&args[5]);ensure!(!out.exists(),"preserve parity evidence");
    let compiled=compile(dir)?;let bytes=fs::read(&args[3])?;
    let oracle=reference::PreparedProver::new(reference::decode_key(&bytes)?,compiled.matrices.clone())?;
    let mut expected=Vec::new();
    for (i,name) in NAMES.iter().enumerate(){
        let solved:Solved=serde_json::from_slice(&fs::read(dir.join(format!("{name}.json")))?)?;
        let values=bridge::assignment(&solved.assignment,&compiled.original,&solved.statement)?;compiled.lowered.validate(&values)?;let witness=compiled.lowered.witness(&values)?;
        let mut rng=StdRng::seed_from_u64(7119+i as u64);let mut points=Vec::new();
        let proof=oracle.prove_with_msm(&values[..2],&witness,&mut rng,&mut |bases,scalars| {let p=G1Projective::msm_unchecked(bases,scalars);points.push(p);p})?;
        ensure!(points.len()==5 && reference::verify(&proof,oracle.verifying_key(),&values[1..2]),"reference proof/MSM gate");
        let combined=[points[1],points[0]+points[2],points[3]+points[4]].map(|p|arithmetic::point_bytes(&p.into_affine()));
        expected.push((encode(&proof)?,combined));println!("{name}: frozen reference proof/MSMs verified");
    }
    drop(oracle);
    let mut prover=protocol::PreparedProver::from_checked(protocol::CheckedKey::decode(&bytes)?,compiled.matrices)?;
    let (mut foreign,_)=frontend::Foreign::start(&mut prover,Path::new(&args[4]))?;fs::create_dir(out)?;let mut records=Vec::new();
    for (i,name) in NAMES.iter().enumerate(){
        let solved:Solved=serde_json::from_slice(&fs::read(dir.join(format!("{name}.json")))?)?;
        let values=bridge::assignment(&solved.assignment,&compiled.original,&solved.statement)?;compiled.lowered.validate(&values)?;let witness=compiled.lowered.witness(&values)?;
        let mut rng=StdRng::seed_from_u64(7119+i as u64);let (proof,msms)=foreign.prove_audited(&prover,&values[..2],&witness,&mut rng)?;let encoded=encode(&proof)?;
        ensure!(encoded==expected[i].0 && msms==expected[i].1 && protocol::verify(&proof,prover.verifying_key(),&values[1..2]),"owned exact proof/MSM mismatch");
        fs::write(out.join(format!("{name}.proof")),&encoded)?;
        records.push(serde_json::json!({"scenario":name,"proof_sha256":arithmetic::sha(&encoded),"proof_bytes":encoded.len(),"exact_seeded_proof_equal":true,"exact_mask_and_combined_msms_equal":true,"verified":true}));
        fs::write(out.join("records.json"),serde_json::to_vec_pretty(&records)?)?;println!("{name}: exact owned proof and three MSM outputs match");
    }
    foreign.close()?;Ok(())
}
