use anyhow::{ensure, Result};
use shieldd_sdk_circuits::proof::{Envelope, Family};
pub(crate) fn decode(bytes: &[u8], family: Family) -> Result<Envelope> {
    let proof = Envelope::from_bytes(bytes)?;
    ensure!(proof.family() == family, "unexpected proof family");
    Ok(proof)
}
