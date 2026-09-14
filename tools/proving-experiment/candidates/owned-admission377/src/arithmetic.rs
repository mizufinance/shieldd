//! Owned child transport; bootstrap has no caller-controlled point ingestion route.
use crate::bridge;
use anyhow::{ensure, Context, Result};
use ark_bls12_377::{Fq, Fr, G1Affine};
use ark_ec::AffineRepr;
use ark_ff::PrimeField;
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{
    io::{BufReader, BufWriter, Read, Write},
    path::Path,
    process::{Child, ChildStdout, Command, Stdio},
};
const SCHEMA: &str = "shieldd.proving_experiment.owned_msm_worker.v1";
pub(crate) fn sha(bytes: &[u8]) -> String {
    hex::encode(Sha256::digest(bytes))
}
fn append_field<const N: usize>(out: &mut Vec<u8>, limbs: &[u64; N]) {
    for limb in limbs.iter().rev() {
        out.extend_from_slice(&limb.to_be_bytes());
    }
}
pub(crate) fn point_bytes(point: &G1Affine) -> Vec<u8> {
    let mut out = Vec::with_capacity(97);
    if point.is_zero() {
        out.resize(97, 0);
        return out;
    }
    out.push(1);
    append_field(&mut out, &point.x.into_bigint().0);
    append_field(&mut out, &point.y.into_bigint().0);
    out
}
pub(crate) fn point(bytes: &[u8]) -> Result<G1Affine> {
    ensure!(bytes.len() == 97, "point size");
    if bytes[0] == 0 {
        ensure!(bytes[1..].iter().all(|v| *v == 0), "noncanonical identity");
        return Ok(G1Affine::identity());
    }
    ensure!(bytes[0] == 1, "point tag");
    let x = bridge::decode::<Fq>(&bytes[1..49].iter().rev().copied().collect::<Vec<_>>())?;
    let y = bridge::decode::<Fq>(&bytes[49..].iter().rev().copied().collect::<Vec<_>>())?;
    let p = G1Affine::new_unchecked(x, y);
    ensure!(
        !p.is_zero() && p.is_on_curve() && p.is_in_correct_subgroup_assuming_on_curve(),
        "invalid finite subgroup point"
    );
    Ok(p)
}
pub(crate) fn scalar_bytes(scalars: &[Fr]) -> Vec<u8> {
    let mut out = Vec::with_capacity(32 * scalars.len());
    for s in scalars {
        append_field(&mut out, &s.into_bigint().0);
    }
    out
}
#[derive(Serialize)]
struct Request<'a> {
    schema: &'static str,
    op: &'static str,
    name: &'a str,
    payload_bytes: usize,
}
#[derive(Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub(crate) struct Response {
    pub(crate) schema: String,
    pub(crate) op: String,
    pub(crate) name: String,
    pub(crate) payload_bytes: usize,
    pub(crate) error: String,
    pub(crate) workers: usize,
    pub(crate) initialization_ns: u64,
    pub(crate) resident_base_bytes: usize,
    pub(crate) payload_read_ns: u64,
    pub(crate) scalar_decode_ns: u64,
    pub(crate) msm_ns: u64,
    pub(crate) encoding_ns: u64,
    pub(crate) worker_ns: u64,
    pub(crate) msm_allocated_bytes: u64,
    pub(crate) peak_rss_bytes: u64,
    pub(crate) heap_alloc_bytes: u64,
    pub(crate) heap_sys_bytes: u64,
}
pub(crate) struct Go {
    child: Child,
    input: Option<BufWriter<std::os::unix::net::UnixStream>>,
    output: BufReader<ChildStdout>,
    ready: bool,
}
impl Drop for Go {
    fn drop(&mut self) {
        drop(self.input.take());
        if self.child.try_wait().ok().flatten().is_none() {
            let _ = self.child.kill();
            let _ = self.child.wait();
        }
    }
}
impl Go {
    pub(crate) fn admit(binary:&Path,prover:&mut crate::protocol::PreparedProver)->Result<(Self,Response)> {
        use crate::protocol::Query;
        use std::os::fd::AsRawFd;
        use std::os::unix::{net::UnixStream,process::CommandExt};
        let admission=prover.begin_transfer()?;
        let header=serde_json::to_vec(&admission)?;let binding=sha(&header);
        let (parent,child_channel)=UnixStream::pair()?;let child_fd=child_channel.as_raw_fd();
        let mut command=Command::new(binary);
        command.stdin(Stdio::piped()).stdout(Stdio::piped()).stderr(Stdio::inherit());
        // Only async-signal-safe descriptor operations run between fork and exec.
        unsafe {command.pre_exec(move || {
            if libc::dup2(child_fd,3)<0 || libc::fcntl(3,libc::F_SETFD,0)<0 {return Err(std::io::Error::last_os_error());}Ok(())
        });}
        let mut child=command.spawn()?;drop(child_channel);
        let mut bootstrap=BufWriter::with_capacity(65536,child.stdin.take().context("private bootstrap stdin")?);
        let output=BufReader::with_capacity(65536,child.stdout.take().context("private stdout")?);
        let mut worker=Self{child,input:Some(BufWriter::with_capacity(65536,parent)),output,ready:false};
        send_header_bytes(&mut bootstrap,&header)?;
        for query in Query::ALL {
            send_header(&mut bootstrap,&QueryFrame{op:"query",name:query,count:prover.query_count(query)})?;
            prover.write_query(query,&mut bootstrap)?;
        }
        send_header(&mut bootstrap,&FinishFrame{op:"admit",binding:&binding})?;
        bootstrap.flush()?;drop(bootstrap); // EOF is part of admission, before readiness.
        let (ready,payload)=worker.read()?;
        ensure!(ready.op=="ready" && ready.name==binding && payload.is_empty() && ready.resident_base_bytes==Query::ALL.iter().map(|q|prover.query_count(*q)*96).sum::<usize>(),"owned readiness binding/count");
        prover.finish_transfer(&AdmissionReceipt{binding})?;
        worker.ready=true;Ok((worker,ready))
    }
    pub(crate) fn poison(&mut self) {
        self.ready=false;drop(self.input.take());let _=self.child.kill();let _=self.child.wait();
    }
    fn read(&mut self) -> Result<(Response, Vec<u8>)> {
        let mut length = [0; 4];
        self.output.read_exact(&mut length)?;
        let n = u32::from_be_bytes(length) as usize;
        ensure!((1..=4096).contains(&n), "Go header size");
        let mut bytes = vec![0; n];
        self.output.read_exact(&mut bytes)?;
        let response: Response = serde_json::from_slice(&bytes)?;
        ensure!(
            response.schema == SCHEMA
                && response.workers == 2
                && response.payload_bytes <= 97
                && response.error.is_empty(),
            "Go response: {}",
            response.error
        );
        let mut payload = vec![0; response.payload_bytes];
        self.output.read_exact(&mut payload)?;
        Ok((response, payload))
    }
    pub(crate) fn call(&mut self,name:&str,scalars:&[u8])->Result<(Response,Vec<u8>)>{
        let result=self.exchange(name,scalars);if result.is_err(){self.poison();}result
    }
    fn exchange(&mut self, name: &str, scalars: &[u8]) -> Result<(Response, Vec<u8>)> {
        ensure!(self.ready,"owned arithmetic admission incomplete or poisoned");
        let header = serde_json::to_vec(&Request {
            schema: SCHEMA,
            op: "msm",
            name,
            payload_bytes: scalars.len(),
        })?;
        let input = self.input.as_mut().context("closed worker")?;
        input.write_all(&(header.len() as u32).to_be_bytes())?;
        input.write_all(&header)?;
        input.write_all(scalars)?;
        input.flush()?;
        let (r, b) = self.read()?;
        ensure!(
            r.op == "msm" && r.name == name && b.len() == 97,
            "MSM response mismatch"
        );
        Ok((r, b))
    }
    pub(crate) fn close(mut self) -> Result<()> {
        drop(self.input.take());
        let status = self.child.wait()?;
        ensure!(status.success(), "Go worker exit");
        Ok(())
    }
}

pub(crate) struct AdmissionReceipt {binding:String}
impl AdmissionReceipt {pub(crate) fn binding(&self)->&str{&self.binding}}
#[derive(Serialize)]
struct QueryFrame {op:&'static str,name:crate::protocol::Query,count:usize}
#[derive(Serialize)]
struct FinishFrame<'a> {op:&'static str,binding:&'a str}
fn send_header_bytes(out:&mut impl Write,bytes:&[u8])->Result<()> {
    ensure!(!bytes.is_empty() && bytes.len()<=4096,"bootstrap header length");
    out.write_all(&(bytes.len() as u32).to_be_bytes())?;out.write_all(bytes)?;Ok(())
}
fn send_header(out:&mut impl Write,header:&impl Serialize)->Result<()> {send_header_bytes(out,&serde_json::to_vec(header)?)}

#[cfg(test)] mod tests {
    use super::*;
    use std::os::unix::fs::PermissionsExt;
    #[test] fn child_failure_wrong_ack_and_foreign_receipt_never_admit() {
        let dir=std::env::temp_dir().join(format!("shieldd-owned-child-{}",std::process::id()));std::fs::create_dir_all(&dir).unwrap();
        for (name,body) in [("dead","#!/bin/sh\nexit 7\n"),("truncated","#!/bin/sh\ncat >/dev/null\nprintf '\\000\\000\\000\\040short'\n"),("wrong","#!/bin/sh\ncat >/dev/null\nprintf '\\000\\000\\000\\002{}'\n")] {
            let path=dir.join(name);std::fs::write(&path,body).unwrap();std::fs::set_permissions(&path,std::fs::Permissions::from_mode(0o700)).unwrap();
            let mut p=crate::protocol::checked_fixture();assert!(Go::admit(&path,&mut p).is_err());assert!(p.delegated_binding().is_err());assert!(p.begin_transfer().is_err());
        }
        let mut p=crate::protocol::checked_fixture();p.begin_transfer().unwrap();for q in crate::protocol::Query::ALL {p.write_query(q,&mut Vec::new()).unwrap();}
        assert!(p.finish_transfer(&AdmissionReceipt{binding:"wrong-session".into()}).is_err());
        std::fs::remove_dir_all(dir).unwrap();
    }
}
