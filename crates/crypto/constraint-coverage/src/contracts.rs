//! Generate exact deployed-slice Lean contracts from the checked IR.
//!
//! Contract files are not semantic proofs. They are deterministic Lean modules
//! containing the exact row relation and fingerprints for one deployed segment.
//! The gate exact-compares regenerated files and typechecks discharging theorems
//! against these contract constants.

use crate::ir::{parse_rows, CircuitIr, Constraint, SegmentIr, Term};
use crate::{CoverageError, Sr1cs};

pub struct ContractFile {
    pub segment_index: usize,
    pub module: String,
    pub file_name: String,
    pub contents: String,
}

fn circuit_module(circuit: &str) -> String {
    let mut out = String::new();
    let mut upper = true;
    for ch in circuit.chars() {
        if ch == '_' || ch == '-' {
            upper = true;
            continue;
        }
        if upper {
            out.extend(ch.to_uppercase());
            upper = false;
        } else {
            out.push(ch);
        }
    }
    out
}

pub fn contract_module(circuit: &str, segment_index: usize) -> String {
    format!(
        "Shieldd.GnarkFormal.Deployed.Contracts.{}.Seg{}",
        circuit_module(circuit),
        segment_index
    )
}

pub fn contract_file_name(circuit: &str, segment_index: usize) -> String {
    format!("{}/Seg{}.lean", circuit_module(circuit), segment_index)
}

fn render_lc(terms: &[Term]) -> String {
    if terms.is_empty() {
        return "(0 : F)".to_owned();
    }
    terms
        .iter()
        .map(|term| {
            let coeff = format!("({} : F)", term.coeff);
            if term.wire == 0 {
                coeff
            } else {
                format!("{coeff} * rho {}", term.wire)
            }
        })
        .collect::<Vec<_>>()
        .join(" + ")
}

fn render_row(row: &Constraint) -> String {
    format!(
        "({}) * ({}) = ({})",
        render_lc(&row.l),
        render_lc(&row.r),
        render_lc(&row.o)
    )
}

fn render_rows(rows: &[Constraint]) -> String {
    if rows.is_empty() {
        return "True".to_owned();
    }
    let mut out = String::new();
    for (idx, row) in rows.iter().enumerate() {
        if idx > 0 {
            out.push_str(" ∧\n    ");
        }
        out.push_str(&render_row(row));
    }
    out
}

fn render_lc_factored(terms: &[Term], defs: &mut String, next_lc: &mut usize) -> String {
    const LC_CHUNK_SIZE: usize = 32;

    if terms.len() <= LC_CHUNK_SIZE {
        return render_lc(terms);
    }

    let lc_idx = *next_lc;
    *next_lc += 1;
    let mut parts = Vec::new();
    for (part_idx, chunk) in terms.chunks(LC_CHUNK_SIZE).enumerate() {
        let name = format!("relationLc{lc_idx}Part{part_idx}");
        defs.push_str(&format!(
            "def {name} (rho : Nat -> F) : F :=\n    {}\n\n",
            render_lc(chunk)
        ));
        parts.push(format!("{name} rho"));
    }

    let name = format!("relationLc{lc_idx}");
    defs.push_str(&format!(
        "def {name} (rho : Nat -> F) : F :=\n    {}\n\n",
        parts.join(" +\n    ")
    ));
    format!("{name} rho")
}

fn render_row_factored(row: &Constraint, defs: &mut String, next_lc: &mut usize) -> String {
    let l = render_lc_factored(&row.l, defs, next_lc);
    let r = render_lc_factored(&row.r, defs, next_lc);
    let o = render_lc_factored(&row.o, defs, next_lc);
    format!("({l}) * ({r}) = ({o})")
}

fn render_relation_defs(rows: &[Constraint]) -> (String, String) {
    const CHUNK_THRESHOLD: usize = 100;
    const SMALL_CHUNK_SIZE: usize = 5;
    const LARGE_CHUNK_SIZE: usize = 80;

    if rows.len() <= CHUNK_THRESHOLD {
        return (String::new(), render_rows(rows));
    }

    let factor_lc = rows.len() > 1_200;
    let mut defs = String::new();
    let mut next_lc = 0usize;
    for (idx, row) in rows.iter().enumerate() {
        let row_body = if factor_lc {
            render_row_factored(row, &mut defs, &mut next_lc)
        } else {
            render_row(row)
        };
        defs.push_str(&format!(
            "def relationRow{idx} (rho : Nat -> F) : Prop :=\n    {}\n\n",
            row_body
        ));
    }

    let mut parts = Vec::new();
    let chunk_size = if rows.len() <= 1_200 {
        SMALL_CHUNK_SIZE
    } else {
        LARGE_CHUNK_SIZE
    };
    for (idx, chunk) in (0..rows.len()).collect::<Vec<_>>().chunks(chunk_size).enumerate() {
        let name = format!("relationPart{idx}");
        let body = chunk
            .iter()
            .map(|row_idx| format!("relationRow{row_idx} rho"))
            .collect::<Vec<_>>()
            .join(" ∧\n    ");
        defs.push_str(&format!(
            "def {name} (rho : Nat -> F) : Prop :=\n    {body}\n\n"
        ));
        parts.push(format!("{name} rho"));
    }

    (defs, parts.join(" ∧\n    "))
}

fn render_contract(circuit: &str, segment: &SegmentIr, rows: &[Constraint]) -> ContractFile {
    let module_tail = format!("{}.Seg{}", circuit_module(circuit), segment.index);
    let module = contract_module(circuit, segment.index);
    let file_name = contract_file_name(circuit, segment.index);
    let circuit_mod = circuit_module(circuit);
    let (relation_defs, relation_body) = render_relation_defs(rows);
    let contents = format!(
         "import ShielddGnarkFormal.Deployed.Contract\n\
         import ShielddGnarkFormal.Deployed.Contracts.{circuit_mod}.Specs\n\
         import Mathlib.Data.ZMod.Basic\n\n\
         set_option maxRecDepth 1000000\n\
         set_option maxHeartbeats 0\n\n\
         namespace Shieldd.GnarkFormal.Deployed.Contracts.{module_tail}\n\n\
         def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041\n\
         abbrev F := ZMod Order\n\n\
         {relation_defs}\
         def relation (rho : Nat -> F) : Prop :=\n    {relation}\n\n\
         /-- Semantic projection: the hand-authored Layer-2 endpoint for this\n\
         deployed segment, seated on this slice's wire roles. -/\n\
         def spec (rho : Nat -> F) : Prop := Specs.deployedSpec{segment_index} rho\n\n\
         def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {{\n\
           segmentIndex := {segment_index},\n\
           relationSha256Hex := \"{relation_hash}\",\n\
           wireRoleSha256Hex := \"{wire_role_hash}\",\n\
           relation := relation,\n\
           spec := spec\n\
         }}\n\n\
         end Shieldd.GnarkFormal.Deployed.Contracts.{module_tail}\n",
        relation_defs = relation_defs,
        relation = relation_body,
        segment_index = segment.index,
        relation_hash = segment.relation_sha256_hex,
        wire_role_hash = segment.wire_role_sha256_hex,
    );
    ContractFile {
        segment_index: segment.index,
        module,
        file_name,
        contents,
    }
}

pub fn generate(ir: &CircuitIr, sr1cs: &Sr1cs) -> Result<Vec<ContractFile>, CoverageError> {
    let rows = parse_rows(sr1cs)?;
    let mut files = Vec::new();
    for segment in &ir.segments {
        if segment.constraint_count == 0 || segment.class_key.is_empty() {
            continue;
        }
        let segment_rows =
            rows.get(segment.start..segment.end)
                .ok_or(CoverageError::SegmentBounds {
                    start: segment.start,
                    end: segment.end,
                    nb_constraints: rows.len(),
                })?;
        files.push(render_contract(&ir.circuit, segment, segment_rows));
    }
    Ok(files)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::ir::{CircuitIr, SegmentIr, WireRoles};
    use crate::Sr1cs;

    #[test]
    fn renders_exact_contract_for_constraint_segment() {
        let ir = CircuitIr {
            schema: "test".to_owned(),
            circuit: "consolidate2x1".to_owned(),
            sr1cs_sha256_hex: "sr1cs".to_owned(),
            nb_constraints: 1,
            classes: Vec::new(),
            segments: vec![SegmentIr {
                index: 8,
                op: "assert.eq".to_owned(),
                kind: "glue".to_owned(),
                start: 0,
                end: 1,
                constraint_count: 1,
                class_key: "assert.eq@test".to_owned(),
                wire_roles: WireRoles::default(),
                constant_vector_sha256_hex: "constants".to_owned(),
                relation_sha256_hex: "relation".to_owned(),
                wire_role_sha256_hex: "roles".to_owned(),
            }],
        };
        let sr1cs = Sr1cs {
            prime: "17".to_owned(),
            inputs: Vec::new(),
            outputs: Vec::new(),
            constraints: vec!["(constraint [(2 1)] [(3 2)] [(6 3)])".to_owned()],
            sha256_hex: "sr1cs".to_owned(),
        };

        let files = generate(&ir, &sr1cs).expect("generate contract");
        assert_eq!(files.len(), 1);
        let file = &files[0];
        assert_eq!(file.segment_index, 8);
        assert_eq!(file.file_name, "Consolidate2x1/Seg8.lean");
        assert_eq!(
            file.module,
            "Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg8"
        );
        assert!(file.contents.contains("segmentIndex := 8"));
        assert!(file.contents.contains("relationSha256Hex := \"relation\""));
        assert!(file.contents.contains("wireRoleSha256Hex := \"roles\""));
        assert!(file
            .contents
            .contains("((2 : F) * rho 1) * ((3 : F) * rho 2) = ((6 : F) * rho 3)"));
        assert!(file
            .contents
            .contains("import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs"));
        assert!(file
            .contents
            .contains("def spec (rho : Nat -> F) : Prop := Specs.deployedSpec8 rho"));
        assert!(file.contents.contains("set_option maxRecDepth 1000000"));
        assert!(!file.contents.contains(":= False"));
    }

    #[test]
    fn chunks_large_contract_relations() {
        let rows = (0..1501)
            .map(|idx| Constraint {
                l: vec![Term {
                    coeff: "1".to_owned(),
                    wire: idx + 1,
                }],
                r: vec![Term {
                    coeff: "1".to_owned(),
                    wire: idx + 2,
                }],
                o: vec![Term {
                    coeff: "1".to_owned(),
                    wire: idx + 3,
                }],
            })
            .collect::<Vec<_>>();

        let (defs, relation) = render_relation_defs(&rows);
        assert!(defs.contains("def relationRow0"));
        assert!(defs.contains("def relationRow1500"));
        assert!(defs.contains("def relationPart0"));
        assert!(defs.contains("def relationPart18"));
        assert!(defs.contains("relationRow0 rho"));
        assert!(relation.contains("relationPart0 rho"));
        assert!(relation.contains("relationPart18 rho"));
        assert!(!relation.contains("* rho 1"));
    }

    #[test]
    fn chunks_medium_contract_relations_by_poseidon_rung() {
        let rows = (0..310)
            .map(|idx| Constraint {
                l: vec![Term {
                    coeff: "1".to_owned(),
                    wire: idx + 1,
                }],
                r: vec![Term {
                    coeff: "1".to_owned(),
                    wire: idx + 2,
                }],
                o: vec![Term {
                    coeff: "1".to_owned(),
                    wire: idx + 3,
                }],
            })
            .collect::<Vec<_>>();

        let (defs, relation) = render_relation_defs(&rows);
        assert!(defs.contains("def relationRow0"));
        assert!(defs.contains("def relationRow309"));
        assert!(defs.contains("def relationPart0"));
        assert!(defs.contains("def relationPart61"));
        assert!(defs.contains("relationRow0 rho ∧\n    relationRow1 rho"));
        assert!(relation.contains("relationPart0 rho"));
        assert!(relation.contains("relationPart61 rho"));
        assert!(!relation.contains("relationPart62 rho"));
    }

    #[test]
    fn factors_large_linear_combinations() {
        let terms = (1..=65)
            .map(|wire| Term {
                coeff: "1".to_owned(),
                wire,
            })
            .collect::<Vec<_>>();
        let mut defs = String::new();
        let mut next_lc = 0;

        let rendered = render_lc_factored(&terms, &mut defs, &mut next_lc);

        assert_eq!(rendered, "relationLc0 rho");
        assert_eq!(next_lc, 1);
        assert!(defs.contains("def relationLc0Part0"));
        assert!(defs.contains("def relationLc0Part1"));
        assert!(defs.contains("def relationLc0Part2"));
        assert!(defs.contains("def relationLc0"));
    }
}
