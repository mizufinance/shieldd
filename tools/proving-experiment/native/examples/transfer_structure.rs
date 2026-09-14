use anyhow::{Result, ensure};
use commonware_cryptography::zk::{circuit::build, pari};
use serde::Serialize;
use shieldd_native_proving_experiment::{fixtures, hash::Parameters, map::Generators, transfer};
use std::time::Instant;

#[derive(Serialize)]
struct Inventory {
    schema: &'static str,
    relation_digest: String,
    rows: usize,
    variables: usize,
    domain: usize,
    witnesses: usize,
    additions_without_rows: usize,
    constant_products_without_rows: usize,
    fused_squares_in_assertion_rows: usize,
    materialized_square_rows: usize,
    general_products: usize,
    general_product_rows: usize,
    affine_general_products: usize,
    assertion_rows: usize,
    input_link_rows: usize,
    diagnostic_compile_ns: u128,
    next_smaller_domain: usize,
    minimum_rows_to_remove: usize,
    minimum_columns_to_remove: usize,
}

fn main() -> Result<()> {
    let p = Parameters::load()?;
    let g = Generators::derive(&p);
    let facts = fixtures::load()?;
    let w = fixtures::build(&p, &g, &facts[0])?;
    let (c, selected) = build(|ctx| transfer::constrain(ctx, &p, &g, &w));
    let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]])?;
    let start = Instant::now();
    let (relation, counts) = pari::Relation::compile_diagnostic(&c, &layout)?;
    let diagnostic_compile_ns = start.elapsed().as_nanos();
    let reference = pari::Relation::compile(&c, &layout)?;
    ensure!(
        reference.digest() == relation.digest(),
        "diagnostic compiler changed the relation"
    );
    ensure!(
        relation.constraint_count()
            == counts.materialized_squares
                + 2 * counts.general_products
                + counts.assertions
                + counts.input_links,
        "row attribution does not add up"
    );
    ensure!(
        relation.variable_count()
            == 1 + counts.input_links
                + counts.witnesses
                + counts.materialized_squares
                + 2 * counts.general_products,
        "column attribution does not add up"
    );
    let domain = relation.domain_size();
    let record = Inventory {
        schema: "shieldd.native_experiment.compiler_inventory.v1",
        relation_digest: hex::encode(relation.digest()),
        rows: relation.constraint_count(),
        variables: relation.variable_count(),
        domain,
        witnesses: counts.witnesses,
        additions_without_rows: counts.additions,
        constant_products_without_rows: counts.constant_products,
        fused_squares_in_assertion_rows: counts.fused_squares,
        materialized_square_rows: counts.materialized_squares,
        general_products: counts.general_products,
        general_product_rows: 2 * counts.general_products,
        affine_general_products: counts.affine_general_products,
        assertion_rows: counts.assertions,
        input_link_rows: counts.input_links,
        diagnostic_compile_ns,
        next_smaller_domain: domain / 2,
        minimum_rows_to_remove: relation.constraint_count().saturating_sub(domain / 2),
        minimum_columns_to_remove: relation.variable_count().saturating_sub(domain / 2),
    };
    serde_json::to_writer_pretty(std::io::stdout(), &record)?;
    println!();
    Ok(())
}
