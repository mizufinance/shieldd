//! The external proof API admits only the complete checked owned-child session.
use crate::{arithmetic::{point,scalar_bytes,Go},protocol::{PreparedProver,Query},worker};
use anyhow::{ensure,Context,Result};
use ark_bls12_377::{Bls12_377,Fr,G1Affine,G1Projective};
use ark_ec::{AffineRepr,VariableBaseMSM};
use ark_ff::AdditiveGroup;
use ark_std::rand::rngs::OsRng;
use serde::Serialize;
use std::{path::PathBuf,time::Instant};
use zkpari::Proof;
#[path="../../../transport.rs"] mod transport;

pub(crate) struct Foreign {
    go:Go,binding:String,audit:Option<Vec<Vec<u8>>>,counts:[usize;5],masks:[G1Affine;2],pending:Option<Vec<u8>>,next:usize,poisoned:bool,
}
impl Foreign {
    pub(crate) fn start(prover:&mut PreparedProver,binary:&std::path::Path)->Result<(Self,crate::arithmetic::Response)>{
        let counts=Query::ALL.map(|q|prover.query_count(q));let masks=prover.mask_points();
        let (go,ready)=Go::admit(binary,prover)?;
        let binding=prover.delegated_binding()?.to_owned();
        Ok((Self{go,binding,audit:None,counts,masks,pending:None,next:0,poisoned:false},ready))
    }
    fn msm(&mut self,query:Query,scalars:&[Fr])->Result<G1Projective>{
        ensure!(!self.poisoned && query.index()==self.next && scalars.len()<=self.counts[query.index()],"owned MSM order/length/state");
        let index=query.index();self.next+=1;
        if query==Query::Masks {ensure!(scalars.len()==2,"mask scalar count");let p=G1Projective::msm_unchecked(&self.masks,scalars);if let Some(audit)=&mut self.audit {use ark_ec::CurveGroup;audit.push(crate::arithmetic::point_bytes(&p.into_affine()));}return Ok(p);}
        let mut bytes=scalar_bytes(scalars);bytes.resize(32*self.counts[index],0);
        if query==Query::Witness || query==Query::OpeningA {
            ensure!(self.pending.is_none(),"unfinished combined MSM");self.pending=Some(bytes);return Ok(G1Projective::ZERO);
        }
        let mut prefix=self.pending.take().context("missing combined prefix")?;prefix.extend(bytes);
        let name=if query==Query::Quotient {"commitment"} else {"opening"};
        let (_,output)=self.go.call(name,&prefix)?;
        // The two returned points still receive complete canonical/curve/subgroup checks.
        let p=point(&output)?;if let Some(audit)=&mut self.audit {audit.push(output);}Ok(p.into_group())
    }
    pub(crate) fn prove(&mut self,prover:&PreparedProver,public:&[Fr],witness:&[Fr],rng:&mut(impl rand::RngCore+rand::CryptoRng))->Result<Proof<Bls12_377>>{
        ensure!(!self.poisoned && self.pending.is_none() && prover.delegated_binding()?==self.binding,"owned prover poisoned, incomplete or bound to another session");self.next=0;
        let proof=prover.prove_with_msm(public,witness,rng,&mut |query,scalars|{
            let result=self.msm(query,scalars);
            if result.is_err(){self.poisoned=true;self.pending=None;self.go.poison();}
            result
        })?;
        if self.pending.is_some() || self.next!=5 {self.poisoned=true;self.pending=None;self.go.poison();anyhow::bail!("incomplete owned MSM schedule");}
        Ok(proof)
    }
    pub(crate) fn prove_audited(&mut self,prover:&PreparedProver,public:&[Fr],witness:&[Fr],rng:&mut(impl rand::RngCore+rand::CryptoRng))->Result<(Proof<Bls12_377>,Vec<Vec<u8>>)>{
        ensure!(self.audit.is_none(),"audit already active");self.audit=Some(Vec::new());let proof=self.prove(prover,public,witness,rng);let audit=self.audit.take().unwrap();Ok((proof?,audit))
    }
    pub(crate) fn close(self)->Result<()>{self.go.close()}
}
#[derive(Serialize)]
struct Initialization {prover:worker::Initialization,arithmetic_preparation_ns:u128,go_initialization_ns:u64,resident_base_bytes:usize,total_ns:u128}
pub fn serve(args:&[PathBuf])->Result<()> {
    ensure!(args.len()==5,"serve RELATION KEY SOLVER ARTIFACTS PRIVATE_CHILD");
    let total=Instant::now();let (mut api,prover)=worker::Worker::new(&args[0],&args[1],&args[2],&args[3])?;
    let start=Instant::now();let (mut foreign,ready)=Foreign::start(&mut api.prover,&args[4])?;
    let init=Initialization{prover,arithmetic_preparation_ns:start.elapsed().as_nanos(),go_initialization_ns:ready.initialization_ns,resident_base_bytes:ready.resident_base_bytes,total_ns:total.elapsed().as_nanos()};
    transport::serve("shieldd.proving_experiment.selected_b.v1",init,|request,payload|match request.op.as_str(){
        "prove"=>{let (bytes,statement,timing)=api.prove_using(payload,|prover,public,witness|foreign.prove(prover,public,witness,&mut OsRng))?;Ok(transport::Outcome{bytes,statement:Some(statement),verified:false,timing:Some(timing)})},
        "verify_wrong_domain"=>Ok(transport::Outcome{bytes:Vec::new(),statement:None,verified:api.verify_other_domain(payload,&request.statement)?,timing:None}),
        "verify"=>Ok(transport::Outcome{bytes:Vec::new(),statement:None,verified:api.verify(payload,&request.statement)?,timing:None}),
        _=>anyhow::bail!("unknown operation"),
    })?;foreign.close()
}

#[cfg(test)] mod tests {
    use super::*;
    use ark_std::rand::{SeedableRng,rngs::StdRng};
    #[test]
    #[ignore="requires the separately built private Go child"]
    fn actual_child_admission_exact_proof_and_poisoned_failure() {
        let binary=std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../../cache/b-owned-private-child");
        let mut p=crate::protocol::checked_fixture();let public=[Fr::from(1),Fr::from(4)];let witness=[3,9,4,16,1].map(Fr::from);
        let expected=p.prove(&public,&witness,&mut StdRng::seed_from_u64(778)).unwrap();
        let (mut owned,_)=Foreign::start(&mut p,&binary).unwrap();
        let got=owned.prove(&p,&public,&witness,&mut StdRng::seed_from_u64(778)).unwrap();assert_eq!(crate::encode(&expected).unwrap(),crate::encode(&got).unwrap());
        let other=crate::protocol::checked_fixture();assert!(owned.prove(&other,&public,&witness,&mut StdRng::seed_from_u64(778)).is_err());
        assert!(owned.go.call("unknown-class",&[0u8;32]).is_err());
        assert!(owned.prove(&p,&public,&witness,&mut StdRng::seed_from_u64(779)).is_err());assert!(owned.poisoned);
        assert!(owned.prove(&p,&public,&witness,&mut StdRng::seed_from_u64(780)).is_err());
    }
}
