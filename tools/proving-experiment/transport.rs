//! Bounded typed transport for the selected development workers.
use anyhow::{Result, ensure};
use serde::{Deserialize, Serialize};
use std::io::{self, BufRead, BufReader, BufWriter, Read, Write};

#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Request {
    pub schema: String,
    pub op: String,
    pub payload_bytes: usize,
    #[serde(default)]
    pub statement: String,
}
#[derive(Serialize)]
struct Response<'a, I, T> {
    schema: &'a str,
    op: &'a str,
    payload_bytes: usize,
    error: Option<String>,
    statement: Option<String>,
    verified: bool,
    initialization: Option<I>,
    request: Option<T>,
}
pub struct Outcome<T> {
    pub bytes: Vec<u8>,
    pub statement: Option<String>,
    pub verified: bool,
    pub timing: Option<T>,
}
fn read_request(input: &mut impl Read, schema: &str) -> Result<(Request, Vec<u8>)> {
    let mut size = [0; 4];
    input.read_exact(&mut size)?;
    let size = u32::from_be_bytes(size) as usize;
    ensure!((1..=4096).contains(&size), "invalid header length");
    let mut bytes = vec![0; size];
    input.read_exact(&mut bytes)?;
    let request: Request = serde_json::from_slice(&bytes)?;
    ensure!(request.schema == schema && request.payload_bytes <= 1024 * 1024, "invalid schema or payload size");
    let mut payload = vec![0; request.payload_bytes];
    input.read_exact(&mut payload)?;
    Ok((request, payload))
}
fn write_frame(output: &mut impl Write, response: &impl Serialize, payload: &[u8]) -> Result<()> {
    let header = serde_json::to_vec(response)?;
    ensure!(header.len() <= 4096, "response header too large");
    output.write_all(&(header.len() as u32).to_be_bytes())?;
    output.write_all(&header)?;
    output.write_all(payload)?;
    output.flush()?;
    Ok(())
}
pub fn serve<I: Serialize, T: Serialize>(schema: &str, initialization: I, mut handle: impl FnMut(&Request, &[u8]) -> Result<Outcome<T>>) -> Result<()> {
    let mut input = BufReader::new(io::stdin().lock());
    let mut output = BufWriter::new(io::stdout().lock());
    let ready = Response::<I, T> { schema, op: "ready", payload_bytes: 0, error: None, statement: None, verified: false, initialization: Some(initialization), request: None };
    write_frame(&mut output, &ready, &[])?;
    while !input.fill_buf()?.is_empty() {
        let (request, payload) = read_request(&mut input, schema)?;
        let mut response = Response::<I, T> { schema, op: &request.op, payload_bytes: 0, error: None, statement: None, verified: false, initialization: None, request: None };
        let bytes = match handle(&request, &payload) {
            Ok(result) => {
                response.statement = result.statement;
                response.verified = result.verified;
                response.request = result.timing;
                result.bytes
            }
            Err(error) => { response.error = Some(format!("{error:#}")); Vec::new() }
        };
        response.payload_bytes = bytes.len();
        write_frame(&mut output, &response, &bytes)?;
    }
    Ok(())
}
#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn rejects_wrong_schema_unknown_fields_large_and_partial_frames() {
        for body in [
            r#"{"schema":"wrong","op":"prove","payload_bytes":0}"#,
            r#"{"schema":"s","op":"prove","payload_bytes":0,"extra":true}"#,
            r#"{"schema":"s","op":"prove","payload_bytes":1048577}"#,
            r#"{"schema":"s","op":"prove","payload_bytes":1}"#,
        ] {
            let mut frame = (body.len() as u32).to_be_bytes().to_vec(); frame.extend(body.as_bytes());
            assert!(read_request(&mut frame.as_slice(), "s").is_err());
        }
        assert!(read_request(&mut &[0, 0][..], "s").is_err());
        assert!(read_request(&mut 4097u32.to_be_bytes().as_slice(), "s").is_err());
    }
}
