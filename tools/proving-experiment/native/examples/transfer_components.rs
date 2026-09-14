use anyhow::{Result, ensure};
use commonware_cryptography::zk::{circuit::build, pari};
use serde::Serialize;
use shieldd_native_proving_experiment::{
    diagnostics::{self, Event},
    fixtures,
    hash::Parameters,
    map::Generators,
    transfer,
};
use std::collections::BTreeMap;

#[derive(Default, Serialize)]
struct Cost {
    calls: usize,
    rows: usize,
    columns: usize,
    permutations: usize,
}
#[derive(Serialize)]
struct Span {
    event: Event,
    rows: usize,
    columns: usize,
}
#[derive(Serialize)]
struct Inventory {
    schema: &'static str,
    relation: String,
    rows: usize,
    columns: usize,
    domain: usize,
    input_links: usize,
    components: BTreeMap<String, Cost>,
    operations: BTreeMap<String, Cost>,
    residual_rows: usize,
    residual_columns: usize,
    spans: Vec<Span>,
}
fn prefix(values: &[usize]) -> Vec<usize> {
    let mut out = vec![0];
    for value in values {
        out.push(out.last().unwrap() + value);
    }
    out
}
fn main() -> Result<()> {
    let p = Parameters::load()?;
    let g = Generators::derive(&p);
    let facts = fixtures::load()?;
    let w = fixtures::build(&p, &g, &facts[0])?;
    diagnostics::begin();
    let (c, selected) = build(|ctx| transfer::constrain(ctx, &p, &g, &w));
    let events = diagnostics::finish();
    let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]])?;
    let (relation, counts) = pari::Relation::compile_diagnostic(&c, &layout)?;
    let reference = pari::Relation::compile(&c, &layout)?;
    ensure!(
        reference.digest() == relation.digest(),
        "diagnostic compiler changed the relation"
    );
    let rows = prefix(&counts.node_rows);
    let columns = prefix(&counts.node_columns);
    let mut components = BTreeMap::<String, Cost>::new();
    let mut operations = BTreeMap::<String, Cost>::new();
    let mut spans = Vec::new();
    let mut prior_component = (0, 0, 0);
    let mut operation_ranges = Vec::new();
    for event in events {
        let row = rows[event.end.nodes] - rows[event.start.nodes] + event.end.assertions
            - event.start.assertions;
        let column = columns[event.end.nodes] - columns[event.start.nodes] + event.end.witnesses
            - event.start.witnesses;
        let (table, label) = if event.category == "component" {
            ensure!(
                prior_component
                    == (
                        event.start.nodes,
                        event.start.witnesses,
                        event.start.assertions
                    ),
                "component gap or overlap"
            );
            prior_component = (event.end.nodes, event.end.witnesses, event.end.assertions);
            (&mut components, event.label.clone())
        } else {
            operation_ranges.push((event.start.nodes, event.end.nodes));
            let label = match event.category {
                "hash" => format!(
                    "hash/domain={}/arity={}",
                    event.domain.unwrap(),
                    event.arity.unwrap()
                ),
                "scalar_multiplication" => format!(
                    "scalar/fixed={}/bits={}",
                    event.fixed_base.unwrap(),
                    event.scalar_bits.unwrap()
                ),
                "subgroup" => "subgroup/cofactor_preimage".into(),
                _ => anyhow::bail!("unrecognized category"),
            };
            (&mut operations, label)
        };
        let cost = table.entry(label).or_default();
        cost.calls += 1;
        cost.rows += row;
        cost.columns += column;
        cost.permutations += event.permutations;
        spans.push(Span {
            event,
            rows: row,
            columns: column,
        });
    }
    operation_ranges.sort_unstable();
    ensure!(
        operation_ranges.windows(2).all(|p| p[0].1 <= p[1].0),
        "operation spans overlap"
    );
    let component_rows: usize = components.values().map(|c| c.rows).sum();
    let component_columns: usize = components.values().map(|c| c.columns).sum();
    ensure!(
        component_rows + counts.input_links == relation.constraint_count(),
        "component rows do not sum"
    );
    ensure!(
        component_columns + counts.input_links + 1 == relation.variable_count(),
        "component columns do not sum"
    );
    let record = Inventory {
        schema: "shieldd.native_experiment.component_inventory.v1",
        relation: hex::encode(relation.digest()),
        rows: relation.constraint_count(),
        columns: relation.variable_count(),
        domain: relation.domain_size(),
        input_links: counts.input_links,
        residual_rows: component_rows - operations.values().map(|c| c.rows).sum::<usize>(),
        residual_columns: component_columns - operations.values().map(|c| c.columns).sum::<usize>(),
        components,
        operations,
        spans,
    };
    serde_json::to_writer_pretty(std::io::stdout(), &record)?;
    println!();
    Ok(())
}
