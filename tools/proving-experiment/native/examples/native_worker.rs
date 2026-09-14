use anyhow::{Context, Result, ensure};
use commonware_codec::{Encode, Read as CodecRead};
use commonware_cryptography::bls12381::primitives::group::{Scalar, ScalarReadCfg};
use serde::{Deserialize, Serialize};
use shieldd_native_proving_experiment::{
    api::{Initialization, Prover, RequestTimings},
    witness_codec,
};
use std::{
    fs,
    io::{self, BufRead, BufReader, BufWriter, Read, Write},
    path::Path,
};

const SCHEMA: &str = "shieldd.proving_experiment.native_worker.v1";
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Request {
    schema: String,
    op: String,
    payload_bytes: u32,
    #[serde(default)]
    statement: String,
}
#[derive(Serialize)]
struct Response {
    schema: &'static str,
    op: String,
    payload_bytes: usize,
    error: Option<String>,
    statement: Option<String>,
    verified: bool,
    initialization: Option<Initialization>,
    request: Option<RequestTimings>,
}
impl Response {
    fn new(op: &str) -> Self {
        Self {
            schema: SCHEMA,
            op: op.into(),
            payload_bytes: 0,
            error: None,
            statement: None,
            verified: false,
            initialization: None,
            request: None,
        }
    }
}
fn read_request(input: &mut impl Read) -> Result<(Request, Vec<u8>)> {
    let mut size = [0; 4];
    input.read_exact(&mut size)?;
    let size = u32::from_be_bytes(size) as usize;
    ensure!((1..=4096).contains(&size), "invalid header length");
    let mut header = vec![0; size];
    input.read_exact(&mut header)?;
    let header: Request = serde_json::from_slice(&header)?;
    ensure!(
        header.schema == SCHEMA && header.payload_bytes <= 1024 * 1024,
        "invalid request schema or size"
    );
    let mut payload = vec![0; header.payload_bytes as usize];
    input.read_exact(&mut payload)?;
    Ok((header, payload))
}
fn write_response(output: &mut impl Write, response: &Response, payload: &[u8]) -> Result<()> {
    let header = serde_json::to_vec(response)?;
    ensure!(
        header.len() <= 4096 && response.payload_bytes == payload.len(),
        "response framing mismatch"
    );
    output.write_all(&(header.len() as u32).to_be_bytes())?;
    output.write_all(&header)?;
    output.write_all(payload)?;
    output.flush()?;
    Ok(())
}
fn main() -> Result<()> {
    let args: Vec<_> = std::env::args_os().collect();
    ensure!(args.len() == 3, "usage: native_worker KEY TEMPLATE_WITNESS");
    let template = fs::read(&args[2])?;
    let (prover, initialization) = Prover::new(&template, Path::new(&args[1]))?;
    drop(template);
    let mut input = BufReader::new(io::stdin().lock());
    let mut output = BufWriter::new(io::stdout().lock());
    let mut ready = Response::new("ready");
    ready.initialization = Some(initialization);
    write_response(&mut output, &ready, &[])?;
    while !input.fill_buf()?.is_empty() {
        let (request, payload) = read_request(&mut input)?;
        let mut response = Response::new(&request.op);
        let result = (|| -> Result<Vec<u8>> {
            match request.op.as_str() {
                "prove" => {
                    let proved = prover.prove(&payload)?;
                    response.request = Some(proved.timings);
                    response.statement = Some(hex::encode(
                        witness_codec::decode(&payload)?.claimed_statement.encode(),
                    ));
                    Ok(proved.bytes)
                }
                "verify" => {
                    let bytes = hex::decode(&request.statement).context("statement hex")?;
                    let mut field = bytes.as_slice();
                    let statement = Scalar::read_cfg(&mut field, &ScalarReadCfg::AllowZero)?;
                    ensure!(
                        field.is_empty() && statement.encode().as_ref() == bytes,
                        "noncanonical statement"
                    );
                    response.verified = prover.verify_statement(&payload, &statement)?;
                    Ok(Vec::new())
                }
                _ => anyhow::bail!("unknown request operation"),
            }
        })();
        let bytes = match result {
            Ok(bytes) => bytes,
            Err(error) => {
                response.error = Some(format!("{error:#}"));
                Vec::new()
            }
        };
        response.payload_bytes = bytes.len();
        write_response(&mut output, &response, &bytes)?;
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn checked_transport_rejects_incomplete_unknown_and_oversized_requests() {
        for body in [
            format!(r#"{{"schema":"{SCHEMA}","op":"prove","payload_bytes":1048577}}"#),
            format!(r#"{{"schema":"{SCHEMA}","op":"prove","payload_bytes":0,"extra":1}}"#),
            format!(r#"{{"schema":"{SCHEMA}","op":"prove","payload_bytes":1}}"#),
        ] {
            let mut bytes = (body.len() as u32).to_be_bytes().to_vec();
            bytes.extend(body.as_bytes());
            assert!(read_request(&mut bytes.as_slice()).is_err());
        }
        assert!(read_request(&mut &[0, 0][..]).is_err());
        assert!(read_request(&mut 4097u32.to_be_bytes().as_slice()).is_err());
    }
}
