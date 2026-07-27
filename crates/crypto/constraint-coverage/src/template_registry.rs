//! Reviewed proof-template registry and R1CS-local equivalence witnesses.
//!
//! Matching is deliberately limited to presentation changes of one relation:
//! wire, term, and row permutations; swapping the multiplicative inputs; and
//! nonzero per-side scaling with the output scaled by their product.

use crate::{
    field::Fp,
    ir::{normalize_relation, parse_constraint, Constraint, Term},
    ConstraintManifest, CoverageError, Sr1cs,
};
use flate2::{read::GzDecoder, write::GzEncoder, Compression, GzBuilder};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{
    collections::{BTreeMap, BTreeSet},
    fs,
    io::{BufReader, BufWriter, Read, Write},
    path::{Path, PathBuf},
    sync::atomic::{AtomicU64, Ordering},
};

static RELATION_TEMP_COUNTER: AtomicU64 = AtomicU64::new(0);

pub const TEMPLATE_REGISTRY_SCHEMA: &str = "shieldd.gnark.proof_template_registry.v1";

#[derive(Debug, Clone, Deserialize, Serialize)]
pub struct TemplateRegistry {
    pub schema: String,
    pub field_modulus: String,
    pub templates: Vec<ProofTemplate>,
}

#[derive(Debug, Clone, Deserialize, Serialize)]
pub struct ProofTemplate {
    pub proof_template_id: String,
    pub op: String,
    pub coarse_shape_sha256_hex: String,
    pub local_wire_count: usize,
    pub row_count: usize,
    pub canonical_relation_sha256_hex: String,
    /// Path relative to the registry index. Relation payloads are separate so
    /// a 250 MiB deployed circuit does not coexist with a second in-memory copy
    /// of every reviewed template.
    pub canonical_relation_file: String,
    /// Tests and explicit in-memory callers may supply the relation directly.
    #[serde(skip)]
    canonical_relation_cache: Option<String>,
}

impl TemplateRegistry {
    pub fn empty() -> Self {
        Self {
            schema: TEMPLATE_REGISTRY_SCHEMA.to_owned(),
            field_modulus: crate::field::modulus().to_str_radix(10),
            templates: Vec::new(),
        }
    }
}

#[derive(Debug, Clone, PartialEq, Eq, Deserialize, Serialize)]
pub struct TemplateEquivalenceWitness {
    pub proof_template_id: String,
    /// Entry `i` seats canonical local wire `i` at a deployed absolute wire.
    pub canonical_local_to_deployed_wire_seating: Vec<usize>,
    pub canonical_row_to_deployed_row: RowPermutationWitness,
    /// Non-identity per-row transforms. Rows absent here have no L/R swap and
    /// unit L/R/O scales.
    pub row_transforms: Vec<RowTransform>,
    pub witness_sha256_hex: String,
}

#[derive(Debug, Clone, PartialEq, Eq, Deserialize, Serialize)]
#[serde(tag = "kind", rename_all = "snake_case")]
pub enum RowPermutationWitness {
    Identity { row_count: usize },
    Explicit { deployed_rows: Vec<usize> },
}

#[derive(Debug, Clone, PartialEq, Eq, Deserialize, Serialize)]
pub struct RowTransform {
    pub canonical_row: usize,
    pub swap_lr: bool,
    pub l_scale: String,
    pub r_scale: String,
    pub o_scale: String,
}

#[derive(Clone, Debug, PartialEq, Eq)]
struct LocalWitness {
    canonical_to_deployed_wire: Vec<usize>,
    canonical_to_deployed_row: Vec<usize>,
    transforms: Vec<RowTransform>,
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord)]
struct RowShape {
    inputs: [(usize, bool); 2],
    output: (usize, bool),
}

fn sha256_hex(data: &[u8]) -> String {
    let mut hasher = Sha256::new();
    hasher.update(data);
    hex::encode(hasher.finalize())
}

fn aggregate(side: &[Term]) -> BTreeMap<usize, Fp> {
    let mut result = BTreeMap::new();
    for term in side {
        let coeff = Fp::parse(&term.coeff);
        let next = result
            .get(&term.wire)
            .map_or(coeff.clone(), |current| current + &coeff);
        if next.is_zero() {
            result.remove(&term.wire);
        } else {
            result.insert(term.wire, next);
        }
    }
    result
}

fn row_shape(row: &Constraint) -> RowShape {
    let l = aggregate(&row.l);
    let r = aggregate(&row.r);
    let mut inputs = [(l.len(), l.contains_key(&0)), (r.len(), r.contains_key(&0))];
    inputs.sort_unstable();
    let o = aggregate(&row.o);
    RowShape {
        inputs,
        output: (o.len(), o.contains_key(&0)),
    }
}

pub fn coarse_shape_sha256(rows: &[Constraint]) -> String {
    let mut shapes = rows.iter().map(row_shape).collect::<Vec<_>>();
    shapes.sort_unstable();
    sha256_hex(format!("{shapes:?}").as_bytes())
}

fn encode_rows(rows: &[Constraint]) -> String {
    let mut encoded = String::new();
    for row in rows {
        encoded.push_str(&row.render());
        encoded.push('\n');
    }
    encoded
}

fn files_equal(left: &Path, right: &Path) -> std::io::Result<bool> {
    if fs::metadata(left)?.len() != fs::metadata(right)?.len() {
        return Ok(false);
    }
    let mut left = BufReader::new(fs::File::open(left)?);
    let mut right = BufReader::new(fs::File::open(right)?);
    let mut left_buf = [0u8; 64 * 1024];
    let mut right_buf = [0u8; 64 * 1024];
    loop {
        let left_n = left.read(&mut left_buf)?;
        let right_n = right.read(&mut right_buf)?;
        if left_n != right_n || left_buf[..left_n] != right_buf[..right_n] {
            return Ok(false);
        }
        if left_n == 0 {
            return Ok(true);
        }
    }
}

fn write_relation_if_changed(path: &Path, rows: &[Constraint]) -> Result<(), CoverageError> {
    let temp = path.with_extension(format!(
        "gz.tmp-{}-{}",
        std::process::id(),
        RELATION_TEMP_COUNTER.fetch_add(1, Ordering::Relaxed)
    ));
    {
        let file = fs::File::create(&temp).map_err(|error| {
            CoverageError::TemplateRegistry(format!(
                "create canonical relation temporary file {}: {error}",
                temp.display()
            ))
        })?;
        let writer = BufWriter::new(file);
        let mut writer: GzEncoder<_> = GzBuilder::new().mtime(0).write(writer, Compression::best());
        for row in rows {
            writeln!(writer, "{}", row.render()).map_err(|error| {
                CoverageError::TemplateRegistry(format!(
                    "write canonical relation temporary file {}: {error}",
                    temp.display()
                ))
            })?;
        }
        writer.try_finish().map_err(|error| {
            CoverageError::TemplateRegistry(format!(
                "flush canonical relation temporary file {}: {error}",
                temp.display()
            ))
        })?;
    }
    if path.exists() && files_equal(path, &temp).unwrap_or(false) {
        fs::remove_file(&temp).map_err(|error| {
            CoverageError::TemplateRegistry(format!(
                "remove unchanged canonical relation temporary file {}: {error}",
                temp.display()
            ))
        })?;
    } else {
        fs::rename(&temp, path).map_err(|error| {
            CoverageError::TemplateRegistry(format!(
                "install canonical relation {}: {error}",
                path.display()
            ))
        })?;
    }
    Ok(())
}

/// Load and authenticate one reviewed canonical relation.
pub fn load_template_rows(
    template: &ProofTemplate,
    registry_root: &Path,
) -> Result<Vec<Constraint>, CoverageError> {
    let relation = if let Some(relation) = &template.canonical_relation_cache {
        relation.clone()
    } else {
        let path = registry_root.join(&template.canonical_relation_file);
        let file = fs::File::open(&path).map_err(|error| {
            CoverageError::TemplateRegistry(format!(
                "open canonical relation {}: {error}",
                path.display()
            ))
        })?;
        let mut decoder = GzDecoder::new(BufReader::new(file));
        let mut relation = String::new();
        decoder.read_to_string(&mut relation).map_err(|error| {
            CoverageError::TemplateRegistry(format!(
                "decompress canonical relation {}: {error}",
                path.display()
            ))
        })?;
        relation
    };
    if sha256_hex(relation.as_bytes()) != template.canonical_relation_sha256_hex {
        return Err(CoverageError::TemplateRegistry(format!(
            "canonical relation digest mismatch for {}",
            template.proof_template_id
        )));
    }
    let rows = relation
        .lines()
        .enumerate()
        .map(|(index, row)| parse_constraint(row, index + 1))
        .collect::<Result<Vec<_>, _>>()?;
    if rows.len() != template.row_count {
        return Err(CoverageError::TemplateRegistry(format!(
            "template {} declares {} rows but encodes {}",
            template.proof_template_id,
            template.row_count,
            rows.len()
        )));
    }
    Ok(rows)
}

/// Add the exact local presentations of one reviewed circuit to a registry.
/// This is intentionally a separate review operation from normal extraction;
/// production matching never adds an unreviewed template implicitly.
pub fn seed_reviewed_templates(
    registry: &mut TemplateRegistry,
    manifest: &ConstraintManifest,
    sr1cs: &Sr1cs,
    registry_root: &Path,
    op_filter: Option<&str>,
) -> Result<(), CoverageError> {
    if registry.schema != TEMPLATE_REGISTRY_SCHEMA {
        return Err(CoverageError::TemplateRegistry(format!(
            "unsupported schema {:?}",
            registry.schema
        )));
    }
    for segment in &manifest.segments {
        if segment.constraint_count == 0 || op_filter.is_some_and(|op| segment.op != op) {
            continue;
        }
        let raw_rows = sr1cs.constraints.get(segment.start..segment.end).ok_or(
            CoverageError::SegmentBounds {
                start: segment.start,
                end: segment.end,
                nb_constraints: sr1cs.constraints.len(),
            },
        )?;
        let rows = raw_rows
            .iter()
            .enumerate()
            .map(|(offset, row)| parse_constraint(row, segment.start + offset + 1))
            .collect::<Result<Vec<_>, _>>()?;
        let normalized = normalize_relation(&rows);
        let proof_template_id = format!("{}@{}", segment.op, normalized.sha256_hex);
        let relation_file = PathBuf::from("proof-template-relations")
            .join(format!("{}.sr1cs.gz", normalized.sha256_hex));
        let relation_path = registry_root.join(&relation_file);
        if let Some(parent) = relation_path.parent() {
            fs::create_dir_all(parent).map_err(|error| {
                CoverageError::TemplateRegistry(format!(
                    "create canonical relation directory {}: {error}",
                    parent.display()
                ))
            })?;
        }
        write_relation_if_changed(&relation_path, &normalized.rows)?;
        let candidate = ProofTemplate {
            proof_template_id: proof_template_id.clone(),
            op: segment.op.clone(),
            coarse_shape_sha256_hex: coarse_shape_sha256(&normalized.rows),
            local_wire_count: normalized.wire_seating.len(),
            row_count: normalized.rows.len(),
            canonical_relation_sha256_hex: normalized.sha256_hex.clone(),
            canonical_relation_file: relation_file.to_string_lossy().into_owned(),
            canonical_relation_cache: None,
        };
        if let Some(existing) = registry
            .templates
            .iter()
            .find(|template| template.proof_template_id == proof_template_id)
        {
            if existing.op != candidate.op
                || existing.local_wire_count != candidate.local_wire_count
                || existing.row_count != candidate.row_count
                || existing.canonical_relation_sha256_hex != candidate.canonical_relation_sha256_hex
            {
                return Err(CoverageError::TemplateRegistry(format!(
                    "proof-template id collision for {proof_template_id}"
                )));
            }
        } else {
            registry.templates.push(candidate);
        }
    }
    registry
        .templates
        .sort_by(|left, right| left.proof_template_id.cmp(&right.proof_template_id));
    Ok(())
}

pub fn registry_json(registry: &TemplateRegistry) -> Result<Vec<u8>, serde_json::Error> {
    let mut data = serde_json::to_vec_pretty(registry)?;
    data.push(b'\n');
    Ok(data)
}

fn wire_count(rows: &[Constraint]) -> usize {
    rows.iter()
        .flat_map(|row| [&row.l, &row.r, &row.o])
        .flatten()
        .map(|term| term.wire)
        .max()
        .unwrap_or(0)
        + 1
}

/// Deterministic partition refinement over the row/wire incidence graph.
/// L/R are intentionally one edge color because rows may swap those inputs.
fn refined_wire_colors(rows: &[Constraint], n_wires: usize) -> Vec<usize> {
    let shapes = rows.iter().map(row_shape).collect::<Vec<_>>();
    let mut row_colors = rank(&shapes);
    let mut wire_colors = (0..n_wires)
        .map(|wire| usize::from(wire != 0))
        .collect::<Vec<_>>();
    for _ in 0..32 {
        let row_keys = rows
            .iter()
            .map(|row| {
                let mut l = aggregate(&row.l)
                    .keys()
                    .map(|wire| wire_colors[*wire])
                    .collect::<Vec<_>>();
                let mut r = aggregate(&row.r)
                    .keys()
                    .map(|wire| wire_colors[*wire])
                    .collect::<Vec<_>>();
                let mut o = aggregate(&row.o)
                    .keys()
                    .map(|wire| wire_colors[*wire])
                    .collect::<Vec<_>>();
                l.sort_unstable();
                r.sort_unstable();
                o.sort_unstable();
                if r < l {
                    std::mem::swap(&mut l, &mut r);
                }
                (row_shape(row), l, r, o)
            })
            .collect::<Vec<_>>();
        let next_rows = rank(&row_keys);
        let mut occurrences = vec![Vec::<(usize, u8)>::new(); n_wires];
        for (row_index, row) in rows.iter().enumerate() {
            for wire in aggregate(&row.l).keys().chain(aggregate(&row.r).keys()) {
                occurrences[*wire].push((next_rows[row_index], 0));
            }
            for wire in aggregate(&row.o).keys() {
                occurrences[*wire].push((next_rows[row_index], 1));
            }
        }
        let wire_keys = occurrences
            .into_iter()
            .enumerate()
            .map(|(wire, mut edges)| {
                edges.sort_unstable();
                (wire == 0, edges)
            })
            .collect::<Vec<_>>();
        let next_wires = rank(&wire_keys);
        if next_rows == row_colors && next_wires == wire_colors {
            break;
        }
        row_colors = next_rows;
        wire_colors = next_wires;
    }
    wire_colors
}

fn rank<T: Ord + Clone>(values: &[T]) -> Vec<usize> {
    let unique = values.iter().cloned().collect::<BTreeSet<_>>();
    let ranks = unique
        .into_iter()
        .enumerate()
        .map(|(rank, value)| (value, rank))
        .collect::<BTreeMap<_, _>>();
    values.iter().map(|value| ranks[value]).collect()
}

fn color_histogram(colors: &[usize]) -> BTreeMap<usize, usize> {
    let mut histogram = BTreeMap::new();
    for color in colors {
        *histogram.entry(*color).or_insert(0) += 1;
    }
    histogram
}

fn scale_side(
    canonical: &BTreeMap<usize, Fp>,
    deployed: &BTreeMap<usize, Fp>,
    wire_map: &[usize],
) -> Option<Fp> {
    if canonical.len() != deployed.len() {
        return None;
    }
    if canonical.is_empty() {
        return Some(Fp::one());
    }
    let mut scale = None;
    for (wire, coeff) in canonical {
        let target = *wire_map.get(*wire)?;
        let deployed_coeff = deployed.get(&target)?;
        let candidate = deployed_coeff * &coeff.inverse();
        if candidate.is_zero() || scale.as_ref().is_some_and(|value| value != &candidate) {
            return None;
        }
        scale = Some(candidate);
    }
    scale
}

fn verify_local(canonical: &[Constraint], deployed: &[Constraint], witness: &LocalWitness) -> bool {
    if canonical.len() != deployed.len()
        || witness.canonical_to_deployed_row.len() != canonical.len()
        || witness.transforms.len() != canonical.len()
    {
        return false;
    }
    let mut rows_seen = BTreeSet::new();
    for (canonical_row, row) in canonical.iter().enumerate() {
        let deployed_index = witness.canonical_to_deployed_row[canonical_row];
        if !rows_seen.insert(deployed_index) {
            return false;
        }
        let Some(target) = deployed.get(deployed_index) else {
            return false;
        };
        let transform = &witness.transforms[canonical_row];
        let (canonical_l, canonical_r) = if transform.swap_lr {
            (aggregate(&row.r), aggregate(&row.l))
        } else {
            (aggregate(&row.l), aggregate(&row.r))
        };
        let Some(l_scale) = scale_side(
            &canonical_l,
            &aggregate(&target.l),
            &witness.canonical_to_deployed_wire,
        ) else {
            return false;
        };
        let Some(r_scale) = scale_side(
            &canonical_r,
            &aggregate(&target.r),
            &witness.canonical_to_deployed_wire,
        ) else {
            return false;
        };
        let Some(o_scale) = scale_side(
            &aggregate(&row.o),
            &aggregate(&target.o),
            &witness.canonical_to_deployed_wire,
        ) else {
            return false;
        };
        if &l_scale * &r_scale != o_scale
            || l_scale.to_decimal() != transform.l_scale
            || r_scale.to_decimal() != transform.r_scale
            || o_scale.to_decimal() != transform.o_scale
        {
            return false;
        }
    }
    rows_seen.len() == deployed.len()
}

fn candidate_wire_maps(
    canonical_colors: &[usize],
    deployed_colors: &[usize],
    limit: usize,
) -> Vec<Vec<usize>> {
    let mut canonical_classes = BTreeMap::<usize, Vec<usize>>::new();
    let mut deployed_classes = BTreeMap::<usize, Vec<usize>>::new();
    for (wire, color) in canonical_colors.iter().enumerate() {
        canonical_classes.entry(*color).or_default().push(wire);
    }
    for (wire, color) in deployed_colors.iter().enumerate() {
        deployed_classes.entry(*color).or_default().push(wire);
    }
    if canonical_classes.keys().collect::<Vec<_>>() != deployed_classes.keys().collect::<Vec<_>>()
        || canonical_classes
            .iter()
            .any(|(color, wires)| deployed_classes[color].len() != wires.len())
    {
        return Vec::new();
    }
    let mut maps = vec![vec![usize::MAX; canonical_colors.len()]];
    for (color, canonical_wires) in canonical_classes {
        let deployed_wires = &deployed_classes[&color];
        let permutations =
            bounded_permutations(deployed_wires, limit.saturating_div(maps.len().max(1)));
        if permutations.is_empty() {
            return Vec::new();
        }
        let mut next = Vec::new();
        for map in &maps {
            for permutation in &permutations {
                if next.len() >= limit {
                    break;
                }
                let mut candidate = map.clone();
                for (canonical, deployed) in canonical_wires.iter().zip(permutation) {
                    candidate[*canonical] = *deployed;
                }
                next.push(candidate);
            }
        }
        maps = next;
    }
    maps
}

fn bounded_permutations(values: &[usize], limit: usize) -> Vec<Vec<usize>> {
    fn recurse(values: &mut [usize], index: usize, limit: usize, out: &mut Vec<Vec<usize>>) {
        if out.len() >= limit {
            return;
        }
        if index == values.len() {
            out.push(values.to_vec());
            return;
        }
        for next in index..values.len() {
            values.swap(index, next);
            recurse(values, index + 1, limit, out);
            values.swap(index, next);
            if out.len() >= limit {
                return;
            }
        }
    }
    let mut values = values.to_vec();
    let mut out = Vec::new();
    recurse(&mut values, 0, limit, &mut out);
    out
}

fn witness_for_wire_map(
    canonical: &[Constraint],
    deployed: &[Constraint],
    wire_map: Vec<usize>,
) -> Option<LocalWitness> {
    // Rare row shapes first makes the bounded search deterministic and small.
    let mut order = (0..canonical.len()).collect::<Vec<_>>();
    order.sort_by_key(|index| {
        let shape = row_shape(&canonical[*index]);
        (
            deployed
                .iter()
                .filter(|row| row_shape(row) == shape)
                .count(),
            *index,
        )
    });

    struct RowSearch<'a> {
        canonical: &'a [Constraint],
        deployed: &'a [Constraint],
        wire_map: &'a [usize],
        order: &'a [usize],
        remaining: usize,
    }

    impl RowSearch<'_> {
        fn run(
            &mut self,
            position: usize,
            used: &mut BTreeSet<usize>,
            row_map: &mut [usize],
            transforms: &mut [RowTransform],
        ) -> bool {
            if position == self.order.len() {
                return true;
            }
            if self.remaining == 0 {
                return false;
            }
            self.remaining -= 1;
            let canonical_index = self.order[position];
            let row = &self.canonical[canonical_index];
            for (deployed_index, target) in self.deployed.iter().enumerate() {
                if used.contains(&deployed_index) || row_shape(row) != row_shape(target) {
                    continue;
                }
                for swap_lr in [false, true] {
                    let (l, r) = if swap_lr {
                        (aggregate(&row.r), aggregate(&row.l))
                    } else {
                        (aggregate(&row.l), aggregate(&row.r))
                    };
                    let Some(l_scale) = scale_side(&l, &aggregate(&target.l), self.wire_map) else {
                        continue;
                    };
                    let Some(r_scale) = scale_side(&r, &aggregate(&target.r), self.wire_map) else {
                        continue;
                    };
                    let Some(o_scale) =
                        scale_side(&aggregate(&row.o), &aggregate(&target.o), self.wire_map)
                    else {
                        continue;
                    };
                    if &l_scale * &r_scale != o_scale {
                        continue;
                    }
                    used.insert(deployed_index);
                    row_map[canonical_index] = deployed_index;
                    transforms[canonical_index] = RowTransform {
                        canonical_row: canonical_index,
                        swap_lr,
                        l_scale: l_scale.to_decimal(),
                        r_scale: r_scale.to_decimal(),
                        o_scale: o_scale.to_decimal(),
                    };
                    if self.run(position + 1, used, row_map, transforms) {
                        return true;
                    }
                    used.remove(&deployed_index);
                    row_map[canonical_index] = usize::MAX;
                }
            }
            false
        }
    }

    let mut used = BTreeSet::new();
    let mut row_map = vec![usize::MAX; canonical.len()];
    let mut transforms = (0..canonical.len())
        .map(identity_transform)
        .collect::<Vec<_>>();
    let mut search = RowSearch {
        canonical,
        deployed,
        wire_map: &wire_map,
        order: &order,
        remaining: 100_000,
    };
    if !search.run(0, &mut used, &mut row_map, &mut transforms) {
        return None;
    }
    let witness = LocalWitness {
        canonical_to_deployed_wire: wire_map,
        canonical_to_deployed_row: row_map,
        transforms,
    };
    verify_local(canonical, deployed, &witness).then_some(witness)
}

fn match_local(canonical: &[Constraint], deployed: &[Constraint]) -> Option<LocalWitness> {
    if canonical.len() != deployed.len()
        || coarse_shape_sha256(canonical) != coarse_shape_sha256(deployed)
        || wire_count(canonical) != wire_count(deployed)
    {
        return None;
    }
    let canonical_colors = refined_wire_colors(canonical, wire_count(canonical));
    let deployed_colors = refined_wire_colors(deployed, wire_count(deployed));
    if color_histogram(&canonical_colors) != color_histogram(&deployed_colors) {
        return None;
    }
    candidate_wire_maps(&canonical_colors, &deployed_colors, 100_000)
        .into_iter()
        .find_map(|map| witness_for_wire_map(canonical, deployed, map))
}

fn witness_digest(
    proof_template_id: &str,
    seating: &[usize],
    row_map: &RowPermutationWitness,
    transforms: &[RowTransform],
) -> String {
    let encoded = serde_json::to_vec(&(proof_template_id, seating, row_map, transforms))
        .expect("witness tuple serializes");
    sha256_hex(&encoded)
}

fn identity_transform(canonical_row: usize) -> RowTransform {
    RowTransform {
        canonical_row,
        swap_lr: false,
        l_scale: "1".to_owned(),
        r_scale: "1".to_owned(),
        o_scale: "1".to_owned(),
    }
}

fn compact_row_map(rows: &[usize]) -> RowPermutationWitness {
    if rows.iter().copied().eq(0..rows.len()) {
        RowPermutationWitness::Identity {
            row_count: rows.len(),
        }
    } else {
        RowPermutationWitness::Explicit {
            deployed_rows: rows.to_vec(),
        }
    }
}

fn expand_row_map(rows: &RowPermutationWitness) -> Vec<usize> {
    match rows {
        RowPermutationWitness::Identity { row_count } => (0..*row_count).collect(),
        RowPermutationWitness::Explicit { deployed_rows } => deployed_rows.clone(),
    }
}

fn compact_transforms(rows: &[RowTransform]) -> Vec<RowTransform> {
    rows.iter()
        .filter(|row| row.swap_lr || row.l_scale != "1" || row.r_scale != "1" || row.o_scale != "1")
        .cloned()
        .collect()
}

fn expand_transforms(row_count: usize, overrides: &[RowTransform]) -> Option<Vec<RowTransform>> {
    let mut rows = (0..row_count).map(identity_transform).collect::<Vec<_>>();
    let mut seen = BTreeSet::new();
    for transform in overrides {
        if transform.canonical_row >= row_count || !seen.insert(transform.canonical_row) {
            return None;
        }
        rows[transform.canonical_row] = transform.clone();
    }
    Some(rows)
}

pub fn match_registry(
    registry: &TemplateRegistry,
    registry_root: &Path,
    op: &str,
    deployed_local_rows: &[Constraint],
    deployed_local_to_absolute: &[usize],
) -> Result<TemplateEquivalenceWitness, CoverageError> {
    if registry.schema != TEMPLATE_REGISTRY_SCHEMA {
        return Err(CoverageError::TemplateRegistry(format!(
            "unsupported schema {:?}",
            registry.schema
        )));
    }
    let coarse = coarse_shape_sha256(deployed_local_rows);
    let candidates = registry
        .templates
        .iter()
        .filter(|template| {
            template.op == op
                && template.coarse_shape_sha256_hex == coarse
                && template.row_count == deployed_local_rows.len()
                && template.local_wire_count == deployed_local_to_absolute.len()
        })
        .collect::<Vec<_>>();
    // Identity is overwhelmingly the common path. Resolve it across the full
    // candidate set before opening or searching any sibling presentation.
    let deployed_digest = sha256_hex(encode_rows(deployed_local_rows).as_bytes());
    let exact = candidates
        .iter()
        .copied()
        .filter(|template| template.canonical_relation_sha256_hex == deployed_digest)
        .collect::<Vec<_>>();
    if exact.len() > 1 {
        return Err(CoverageError::AmbiguousTemplate {
            op: op.to_owned(),
            count: exact.len(),
        });
    }
    if let Some(template) = exact.into_iter().next() {
        let row_map = RowPermutationWitness::Identity {
            row_count: deployed_local_rows.len(),
        };
        let transforms = Vec::new();
        let seating = deployed_local_to_absolute.to_vec();
        let digest = witness_digest(&template.proof_template_id, &seating, &row_map, &transforms);
        return Ok(TemplateEquivalenceWitness {
            proof_template_id: template.proof_template_id.clone(),
            canonical_local_to_deployed_wire_seating: seating,
            canonical_row_to_deployed_row: row_map,
            row_transforms: transforms,
            witness_sha256_hex: digest,
        });
    }
    let mut matches = Vec::new();
    for template in candidates {
        let canonical_rows = load_template_rows(template, registry_root)?;
        let local = match_local(&canonical_rows, deployed_local_rows);
        if let Some(local) = local {
            let seating = local
                .canonical_to_deployed_wire
                .iter()
                .map(|wire| deployed_local_to_absolute[*wire])
                .collect::<Vec<_>>();
            let row_map = compact_row_map(&local.canonical_to_deployed_row);
            let transforms = compact_transforms(&local.transforms);
            let digest =
                witness_digest(&template.proof_template_id, &seating, &row_map, &transforms);
            matches.push(TemplateEquivalenceWitness {
                proof_template_id: template.proof_template_id.clone(),
                canonical_local_to_deployed_wire_seating: seating,
                canonical_row_to_deployed_row: row_map,
                row_transforms: transforms,
                witness_sha256_hex: digest,
            });
        }
    }
    match matches.len() {
        1 => Ok(matches.remove(0)),
        0 => Err(CoverageError::UnreviewedTemplate { op: op.to_owned() }),
        count => Err(CoverageError::AmbiguousTemplate {
            op: op.to_owned(),
            count,
        }),
    }
}

pub fn verify_witness(
    template: &ProofTemplate,
    registry_root: &Path,
    deployed_local_rows: &[Constraint],
    deployed_local_to_absolute: &[usize],
    witness: &TemplateEquivalenceWitness,
) -> bool {
    let Ok(canonical_rows) = load_template_rows(template, registry_root) else {
        return false;
    };
    let identity_is_exact = matches!(
        witness.canonical_row_to_deployed_row,
        RowPermutationWitness::Identity { row_count }
            if row_count == canonical_rows.len() && row_count == deployed_local_rows.len()
    ) && witness.row_transforms.is_empty()
        && witness.canonical_local_to_deployed_wire_seating == deployed_local_to_absolute
        && canonical_rows == deployed_local_rows;
    let authenticated_header = witness.proof_template_id == template.proof_template_id
        && witness.witness_sha256_hex
            == witness_digest(
                &witness.proof_template_id,
                &witness.canonical_local_to_deployed_wire_seating,
                &witness.canonical_row_to_deployed_row,
                &witness.row_transforms,
            );
    // Exact matches dominate deployed generation. The canonical relation was
    // authenticated by `load_template_rows`; direct row/seating equality is a
    // stronger and much cheaper check than rediscovering unit scale factors by
    // thousands of modular inversions. Non-identity witnesses still use the
    // complete algebraic reconstruction below.
    if identity_is_exact {
        return authenticated_header;
    }
    let inverse_seating = deployed_local_to_absolute
        .iter()
        .enumerate()
        .map(|(local, absolute)| (*absolute, local))
        .collect::<BTreeMap<_, _>>();
    let Some(local_map) = witness
        .canonical_local_to_deployed_wire_seating
        .iter()
        .map(|absolute| inverse_seating.get(absolute).copied())
        .collect::<Option<Vec<_>>>()
    else {
        return false;
    };
    let row_map = expand_row_map(&witness.canonical_row_to_deployed_row);
    let Some(transforms) = expand_transforms(row_map.len(), &witness.row_transforms) else {
        return false;
    };
    let local = LocalWitness {
        canonical_to_deployed_wire: local_map,
        canonical_to_deployed_row: row_map,
        transforms,
    };
    authenticated_header && verify_local(&canonical_rows, deployed_local_rows, &local)
}

#[cfg(test)]
mod tests {
    use super::*;

    fn term(coeff: &str, wire: usize) -> Term {
        Term {
            coeff: coeff.to_owned(),
            wire,
        }
    }

    fn relation() -> Vec<Constraint> {
        vec![
            Constraint {
                l: vec![term("1", 1), term("2", 2)],
                r: vec![term("1", 3)],
                o: vec![term("1", 4)],
            },
            Constraint {
                l: vec![term("1", 4), term("1", 0)],
                r: vec![term("1", 2)],
                o: vec![term("1", 5)],
            },
        ]
    }

    fn registry(rows: Vec<Constraint>) -> TemplateRegistry {
        TemplateRegistry {
            schema: TEMPLATE_REGISTRY_SCHEMA.to_owned(),
            field_modulus: crate::field::modulus().to_str_radix(10),
            templates: vec![ProofTemplate {
                proof_template_id: "example.v1".to_owned(),
                op: "example".to_owned(),
                coarse_shape_sha256_hex: coarse_shape_sha256(&rows),
                local_wire_count: wire_count(&rows),
                row_count: rows.len(),
                canonical_relation_sha256_hex: sha256_hex(encode_rows(&rows).as_bytes()),
                canonical_relation_file: String::new(),
                canonical_relation_cache: Some(encode_rows(&rows)),
            }],
        }
    }

    fn rename(rows: &[Constraint], map: &[usize]) -> Vec<Constraint> {
        rows.iter()
            .map(|row| Constraint {
                l: row.l.iter().map(|t| term(&t.coeff, map[t.wire])).collect(),
                r: row.r.iter().map(|t| term(&t.coeff, map[t.wire])).collect(),
                o: row.o.iter().map(|t| term(&t.coeff, map[t.wire])).collect(),
            })
            .collect()
    }

    #[test]
    fn presentation_mutations_preserve_template_id() {
        let canonical = relation();
        let registry = registry(canonical.clone());
        let map = [0, 3, 5, 1, 4, 2];
        let mut deployed = rename(&canonical, &map);
        deployed[0].l.reverse();
        let row = &mut deployed[0];
        std::mem::swap(&mut row.l, &mut row.r);
        let l_scale = Fp::parse("7");
        let r_scale = Fp::parse("9");
        let o_scale = &l_scale * &r_scale;
        for term in &mut deployed[0].l {
            term.coeff = (&Fp::parse(&term.coeff) * &l_scale).to_decimal();
        }
        for term in &mut deployed[0].r {
            term.coeff = (&Fp::parse(&term.coeff) * &r_scale).to_decimal();
        }
        for term in &mut deployed[0].o {
            term.coeff = (&Fp::parse(&term.coeff) * &o_scale).to_decimal();
        }
        deployed.swap(0, 1);
        let seating = vec![0, 101, 102, 103, 104, 105];
        let witness =
            match_registry(&registry, Path::new("."), "example", &deployed, &seating).unwrap();
        assert_eq!(witness.proof_template_id, "example.v1");
        assert!(verify_witness(
            &registry.templates[0],
            Path::new("."),
            &deployed,
            &seating,
            &witness
        ));
    }

    #[test]
    fn semantic_mutations_fail_closed() {
        let canonical = relation();
        let registry = registry(canonical.clone());
        let seating = vec![0, 1, 2, 3, 4, 5];
        let mut coefficient = canonical.clone();
        coefficient[0].l[0].coeff = "3".to_owned();
        assert!(
            match_registry(&registry, Path::new("."), "example", &coefficient, &seating).is_err()
        );
        let mut alias = canonical.clone();
        alias[1].l[0].wire = 3;
        assert!(match_registry(&registry, Path::new("."), "example", &alias, &seating).is_err());
        let mut equation = canonical.clone();
        equation[1].o.push(term("1", 1));
        assert!(match_registry(&registry, Path::new("."), "example", &equation, &seating).is_err());
        assert!(match_registry(
            &registry,
            Path::new("."),
            "example",
            &canonical[..1],
            &seating
        )
        .is_err());
    }

    #[test]
    fn exact_digest_precedes_equivalent_sibling_search() {
        let canonical = relation();
        let mut registry = registry(canonical.clone());
        let mut sibling = canonical.clone();
        sibling[0].l[0].coeff = "3".to_owned();
        registry.templates.insert(
            0,
            ProofTemplate {
                proof_template_id: "sibling.v1".to_owned(),
                op: "example".to_owned(),
                coarse_shape_sha256_hex: coarse_shape_sha256(&sibling),
                local_wire_count: wire_count(&sibling),
                row_count: sibling.len(),
                canonical_relation_sha256_hex: sha256_hex(encode_rows(&sibling).as_bytes()),
                canonical_relation_file: String::new(),
                canonical_relation_cache: Some(encode_rows(&sibling)),
            },
        );
        let seating = vec![0, 11, 12, 13, 14, 15];
        let witness =
            match_registry(&registry, Path::new("."), "example", &canonical, &seating).unwrap();
        assert_eq!(witness.proof_template_id, "example.v1");
        assert!(witness.row_transforms.iter().all(|row| {
            !row.swap_lr && row.l_scale == "1" && row.r_scale == "1" && row.o_scale == "1"
        }));
        let template = registry
            .templates
            .iter()
            .find(|template| template.proof_template_id == "example.v1")
            .unwrap();
        assert!(verify_witness(
            template,
            Path::new("."),
            &canonical,
            &seating,
            &witness
        ));
        let mut wrong_seating = witness.clone();
        wrong_seating.canonical_local_to_deployed_wire_seating[1] = 99;
        assert!(!verify_witness(
            template,
            Path::new("."),
            &canonical,
            &seating,
            &wrong_seating
        ));
    }

    #[test]
    fn duplicate_exact_templates_fail_ambiguous() {
        let canonical = relation();
        let mut registry = registry(canonical.clone());
        let mut duplicate = registry.templates[0].clone();
        duplicate.proof_template_id = "duplicate.v1".to_owned();
        registry.templates.push(duplicate);
        let seating = vec![0, 1, 2, 3, 4, 5];
        assert!(matches!(
            match_registry(&registry, Path::new("."), "example", &canonical, &seating),
            Err(CoverageError::AmbiguousTemplate { count: 2, .. })
        ));
    }
}
