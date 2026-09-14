use anyhow::Result;
use commonware_cryptography::bls12381::primitives::group::Scalar;
use commonware_math::algebra::Ring;
use serde::Serialize;
use shieldd_native_comparator_screen::screen;

#[derive(Serialize)]
struct Report {
    schema: &'static str,
    costs: Vec<screen::Cost>,
    limits: &'static str,
}
fn main() -> Result<()> {
    let mut costs = Vec::new();
    for (width, bound) in [
        (128, Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0])),
        (
            252,
            Scalar::from_limbs(native::scalar::ORDER) - &Scalar::one(),
        ),
    ] {
        for constant in [false, true] {
            for candidate in [false, true] {
                costs.push(screen::check(
                    &Scalar::from(100),
                    &bound,
                    width,
                    constant,
                    candidate,
                    false,
                )?);
            }
        }
    }
    let path = std::env::args().nth(1).expect("output JSON path required");
    serde_json::to_writer_pretty(
        std::fs::OpenOptions::new()
            .write(true)
            .create_new(true)
            .open(path)?,
        &Report {
            schema: "shieldd.native_comparator_cost.v1",
            costs,
            limits: "Complete inclusive-comparator constraints, unchanged bit/range input checks. No full Transfer or proving measurement.",
        },
    )?;
    Ok(())
}
