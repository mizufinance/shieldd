use anyhow::Result;
use commonware_cryptography::bls12381::primitives::group::Scalar;
use native::group::generator;
use serde::Serialize;
use shieldd_hinted_jubjub_screen::{Hint, screen};
use std::time::Instant;

#[derive(Serialize)]
struct Report {
    schema: &'static str,
    hint_ns: u128,
    costs: Vec<screen::Cost>,
    limits: &'static str,
}

fn main() -> Result<()> {
    let base = generator();
    let value = Scalar::from_limbs([
        0x17dc66c391b32393,
        0xdda171300f770223,
        0x3166d3580b91400e,
        0x017472248d61333a,
    ]);
    let now = Instant::now();
    let hint = Hint::generate(&base, &value)?;
    let hint_ns = now.elapsed().as_nanos();
    let costs = [false, true]
        .into_iter()
        .map(|hinted| screen::check(&base, &value, &hint, hinted))
        .collect::<Result<Vec<_>>>()?;
    assert!(costs.iter().all(|c| c.original_valid && c.converted_valid));
    let output = std::env::args().nth(1).expect("output JSON path required");
    let file = std::fs::OpenOptions::new()
        .write(true)
        .create_new(true)
        .open(output)?;
    serde_json::to_writer_pretty(
        file,
        &Report {
            schema: "shieldd.hinted_jubjub_screen.v1",
            hint_ns,
            costs,
            limits: "Complete gadget counts with shared canonical scalar/input-subgroup boundary and equal output binding. Single observations of construction/compile/assignment; host hint generation separate. No full Transfer integration, setup or proving measurement.",
        },
    )?;
    Ok(())
}
