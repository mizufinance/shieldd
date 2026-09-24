use shieldd_sdk_circuits::{catalogue, proof::Family};
fn main() -> anyhow::Result<()> {
    for family in Family::ALL {
        let compiled = catalogue::compile(family)?;
        let relation = compiled.relation;
        println!(
            "{} domain={} public={} blocks={:?} relation={}",
            family.label(),
            relation.domain_size(),
            relation.public_inputs(),
            relation.blocks(),
            hex::encode(relation.digest())
        );
    }
    Ok(())
}
