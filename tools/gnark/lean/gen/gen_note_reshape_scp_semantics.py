#!/usr/bin/env python3
"""Generate the active normalized state-commitment-path providers.

The reviewed SCP proof emitter is reused with the normalized template's exact
row bodies and local wire numbering.  No theorem expands or transports a
deployed flat relation: deployment segments consume this provider only through
their generated seating proof.
"""

from __future__ import annotations

import gzip
import hashlib
import re
from contextlib import contextmanager
from pathlib import Path

import composite_recovery as canonical
import dtk_recovery as dtk
import scp_recovery as scp
from formal_json import read_json_object
from template_ir import SegmentTemplate
from write_if_changed import normalize_generated_text


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
REFERENCE_CIRCUIT = "note_reshape1x8"
REFERENCE_IR = (
    ROOT
    / "crates/core/component/shielded-pool/formal"
    / f"{REFERENCE_CIRCUIT}-deployed-slice-ir.json"
)
OUT = LEAN / "ShielddGnarkFormal/Deployed/Templates/Semantics"
BENCH = LEAN / "bench"
RELATIONS = LEAN / "ShielddGnarkFormal/Deployed/Templates/Relations"
REGISTRY = ROOT / "tools/gnark/artifacts/proof-template-registry.json"
INVENTORY = ROOT / "tools/gnark/artifacts/certified-template-inventory.json"
CANONICAL_RELATIONS = ROOT / "tools/gnark/artifacts/proof-template-relations"

KEY = "gadget.state_commitment_path@f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb"
NAME = "TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb"
WITHDRAWAL_KEY = "gadget.state_commitment_path@925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0"
WITHDRAWAL_NAME = "TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0"
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041
EXACT = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{NAME}"
EXACT_IMPORT = f"ShielddGnarkFormal.Deployed.Templates.Relations.{NAME}"
SEMANTICS = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{NAME}"
SEMANTICS_IMPORT = f"ShielddGnarkFormal.Deployed.Templates.Semantics.{NAME}"

ROW_COUNT = 9015
LOCAL_WIRE_COUNT = 8993
REFERENCE_LOCAL_WIRE_COUNT = 8993
PART_SIZE = 80
SOURCE_SEGMENT = 15

DIRECT_INSTANCES = (
    ("note_reshape1x8", 15),
    ("note_reshape8x1", 24),
    ("note_reshape8x1", 38),
    ("note_reshape8x1", 52),
    ("note_reshape8x1", 66),
    ("note_reshape8x1", 80),
    ("note_reshape8x1", 94),
    ("note_reshape8x1", 108),
    ("note_reshape8x1", 122),
)
DIRECT_CONSTANT_VECTOR = (
    "02b3d6f5192c3b01e169435bcb1e038a"
    "317bb537f947b8a737230cb73f5a2c33"
)
DIRECT_CLASS_KEY = "gadget.state_commitment_path@088ab48133b9d3af"
WITHDRAWAL_INSTANCES = (
    ("shielded_ics20_withdrawal", 22),
    ("shielded_ics20_withdrawal", 32),
    ("transfer", 34),
    ("transfer", 45),
)
WITHDRAWAL_CONSTANT_VECTOR = (
    "9368cc95120ed4d0d19d3dcc5ca9dea5"
    "ae19c2802c4e25b2f3cbd6d8e5edd8e9"
)
WITHDRAWAL_CLASS_KEY = "gadget.state_commitment_path@1fb4124ff9d8cc66"

# The Withdrawal circuit commits to the seven-field note body inline.  These
# are the authoritative note-commitment output coefficients; the canonical
# relation transport below verifies all 9,015 normalized rows, rather than
# assuming that the six-wire namespace shift is sufficient.
WITHDRAWAL_COMMITMENT_LC = (
    (7388904030749824121217721821433853214953911918259805849443329273927733084161, 1),
    (4691367638571316902360458299323081406319944075085591015519574142176338466134, 2),
    (7600015574485533381823942444903391878238309401638657445141710110325668315137, 3),
    (2303035022571373752067861346940421781284336182314744680345972760704747974284, 4),
    (7740756603642672888894756193883084320427907723891225175607297334590958469121, 5),
    (7794887768703111160845069174259889105885445540142212764247907805462223912961, 6),
    (7841285910183486822516766014582864636277620811214487840225573923351880007681, 7),
)
COMMITMENT_LC: tuple[tuple[int, int], ...] | None = None


@contextmanager
def _target(
    *,
    key: str,
    name: str,
    local_wire_count: int,
    commitment_lc: tuple[tuple[int, int], ...] | None,
):
    """Select one exact normalized template for the reviewed proof emitter."""
    global KEY, NAME, LOCAL_WIRE_COUNT, EXACT, EXACT_IMPORT
    global SEMANTICS, SEMANTICS_IMPORT, COMMITMENT_LC
    saved = (
        KEY,
        NAME,
        LOCAL_WIRE_COUNT,
        EXACT,
        EXACT_IMPORT,
        SEMANTICS,
        SEMANTICS_IMPORT,
        COMMITMENT_LC,
    )
    KEY = key
    NAME = name
    LOCAL_WIRE_COUNT = local_wire_count
    EXACT = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{name}"
    EXACT_IMPORT = f"ShielddGnarkFormal.Deployed.Templates.Relations.{name}"
    SEMANTICS = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{name}"
    SEMANTICS_IMPORT = f"ShielddGnarkFormal.Deployed.Templates.Semantics.{name}"
    COMMITMENT_LC = commitment_lc
    try:
        yield
    finally:
        (
            KEY,
            NAME,
            LOCAL_WIRE_COUNT,
            EXACT,
            EXACT_IMPORT,
            SEMANTICS,
            SEMANTICS_IMPORT,
            COMMITMENT_LC,
        ) = saved


def _registry_entry(key: str) -> dict:
    entries = read_json_object(REGISTRY, canonical="pretty")["templates"]
    matches = [entry for entry in entries if entry["proof_template_id"] == key]
    if len(matches) != 1:
        raise SystemExit(f"expected one registry entry for {key}, found {len(matches)}")
    return matches[0]


def _validate_registry_target(key: str, *, local_wire_count: int) -> None:
    operation, digest = key.split("@", 1)
    entry = _registry_entry(key)
    expected = {
        "op": operation,
        "row_count": ROW_COUNT,
        "local_wire_count": local_wire_count,
        "canonical_relation_sha256_hex": digest,
    }
    for field, value in expected.items():
        if entry.get(field) != value:
            raise SystemExit(
                f"{key}: registry {field} drifted: {entry.get(field)!r} != {value!r}"
            )
    path = ROOT / "tools/gnark/artifacts" / entry["canonical_relation_file"]
    with gzip.open(path, "rb") as source:
        relation = source.read()
    if hashlib.sha256(relation).hexdigest() != digest:
        raise SystemExit(f"{key}: canonical relation digest mismatch")


def _validate_inventory_target(
    key: str,
    *,
    local_wire_count: int,
    instances: tuple[tuple[str, int], ...],
    constant_vector: str,
    class_key: str,
) -> None:
    inventory = read_json_object(INVENTORY, canonical="pretty")
    matches = [
        entry
        for entry in inventory["templates"]
        if entry.get("template_key") == key
    ]
    if len(matches) != 1:
        raise SystemExit(
            f"{key}: expected one certified inventory entry, "
            f"found {len(matches)}"
        )
    entry = matches[0]
    operation, digest = key.split("@", 1)
    expected_circuits = list(dict.fromkeys(circuit for circuit, _ in instances))
    expected = {
        "template_key": key,
        "op": operation,
        "normalized_relation_sha256_hex": digest,
        "constraint_count": ROW_COUNT,
        "local_wire_count": local_wire_count,
        "circuits": expected_circuits,
        "distinct_constant_vectors": 1,
        "representative": {
            "circuit": instances[0][0],
            "segment_index": instances[0][1],
        },
    }
    for field, value in expected.items():
        if entry.get(field) != value:
            raise SystemExit(
                f"{key}: inventory {field} drifted: "
                f"{entry.get(field)!r} != {value!r}"
            )
    deployed = entry.get("instances")
    if not isinstance(deployed, list) or len(deployed) != len(instances):
        raise SystemExit(
            f"{key}: deployed instance count drifted: "
            f"{len(deployed) if isinstance(deployed, list) else deployed!r} "
            f"!= {len(instances)}"
        )
    for index, (instance, expected_role) in enumerate(
        zip(deployed, instances, strict=True)
    ):
        expected_instance = {
            "circuit": expected_role[0],
            "segment_index": expected_role[1],
            "constraint_count": ROW_COUNT,
            "constant_vector_sha256_hex": constant_vector,
            "class_key": class_key,
        }
        if instance != expected_instance:
            raise SystemExit(
                f"{key}: deployed instance {index} drifted: "
                f"{instance!r} != {expected_instance!r}"
            )


def _lc_add(result: dict[int, int], wire: int, coefficient: int) -> None:
    value = (result.get(wire, 0) + coefficient) % ORDER
    if value:
        result[wire] = value
    else:
        result.pop(wire, None)


def _withdrawal_substitution(side: dict[int, int]) -> dict[int, int]:
    result: dict[int, int] = {}
    for wire, coefficient in side.items():
        if wire == 0:
            _lc_add(result, 0, coefficient)
        elif wire == 1:
            for commitment_coefficient, target_wire in WITHDRAWAL_COMMITMENT_LC:
                _lc_add(
                    result,
                    target_wire,
                    coefficient * commitment_coefficient,
                )
        else:
            _lc_add(result, wire + 6, coefficient)
    return result


def _validate_withdrawal_relation_transport() -> None:
    """Authenticate the exact inline-commitment specialization row by row."""
    source_digest = KEY.split("@", 1)[1]
    if source_digest != "f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb":
        source_digest = "f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb"
    target_digest = WITHDRAWAL_KEY.split("@", 1)[1]
    source = canonical.rows(source_digest)
    target = canonical.rows(target_digest)
    if len(source) != ROW_COUNT or len(target) != ROW_COUNT:
        raise SystemExit("state-path canonical row count drifted")
    for row, (source_row, target_row) in enumerate(zip(source, target, strict=True)):
        specialized = tuple(_withdrawal_substitution(side) for side in source_row)
        if specialized != target_row:
            raise SystemExit(
                f"{WITHDRAWAL_KEY}: exact specialization failed at row {row}"
            )
    wires = canonical.used_wires(target)
    if wires != set(range(8999)):
        raise SystemExit(
            f"{WITHDRAWAL_KEY}: target wire namespace is not exactly 0..8998"
        )


def _reference_segment() -> dict:
    """Pin the proof emitter to the active 1x8 canonical seating witness."""

    ir = read_json_object(REFERENCE_IR, canonical="pretty")
    matches = [segment for segment in ir["segments"] if segment.get("proof_template_id") == KEY]
    if len(matches) != 1:
        raise SystemExit(
            f"expected one active {REFERENCE_CIRCUIT} instance of {KEY}, "
            f"found {len(matches)}"
        )
    segment = matches[0]
    expected_digest = KEY.split("@", 1)[1]
    if (
        segment.get("index") != SOURCE_SEGMENT
        or segment.get("op") != "gadget.state_commitment_path"
        or segment.get("constraint_count") != ROW_COUNT
        or segment.get("deployed_normalized_relation_sha256_hex")
        != expected_digest
    ):
        raise SystemExit("active SCP reference segment shape drifted")
    template = SegmentTemplate.parse(segment)
    seating = template.canonical_wire_seating
    if (
        template.proof_template_id != KEY
        or len(seating) != LOCAL_WIRE_COUNT
        or seating[0] != 0
        or len(set(seating)) != len(seating)
    ):
        raise SystemExit(
            "active SCP reference seating is not the exact injective "
            "local-wire table"
        )
    return segment


def _relation_source() -> str:
    paths = list(RELATIONS.glob(f"{NAME}*.lean"))
    if not paths:
        raise SystemExit(f"missing normalized relation modules for {NAME}")
    return "\n".join(path.read_text() for path in paths)


def _rows() -> dict[int, str]:
    rows = {
        int(match.group(1)): match.group(2)
        for match in re.finditer(
            r"def relationRow(\d+) \(rho : Nat -> F\) : Prop :=\n(.*?)(?=\n\ndef |\n\nend )",
            _relation_source(),
            re.S,
        )
    }
    if set(rows) != set(range(ROW_COUNT)):
        raise SystemExit(f"normalized SCP relation has {len(rows)} non-contiguous rows")
    return rows


def _parts(_: int) -> list[list[int]]:
    return [list(range(first, min(first + PART_SIZE, ROW_COUNT))) for first in range(0, ROW_COUNT, PART_SIZE)]


def _reviewed_reference_seating() -> tuple[int, ...]:
    """Canonical-local to reviewed SCP proof coordinates."""

    seating = scp.REVIEWED_WIRE_SEATING
    if len(seating) != REFERENCE_LOCAL_WIRE_COUNT:
        raise ValueError("SCP reviewed wire context length drifted")
    return seating


@contextmanager
def _normalized_emitter_inputs(rows: dict[int, str]):
    """Temporarily parameterize the reviewed emitter with normalized metadata."""
    seating_inverse = {
        global_wire: (
            local_wire
            if COMMITMENT_LC is None or local_wire < 2
            else local_wire + 6
        )
        for local_wire, global_wire in enumerate(_reviewed_reference_seating())
    }

    def local_wire_map(seg: int, source_wire: int) -> int:
        if seg != SOURCE_SEGMENT:
            raise ValueError(f"normalized SCP emitter received segment {seg}")
        try:
            return seating_inverse[source_wire]
        except KeyError as error:
            raise ValueError(
                f"SCP reviewed source wire {source_wire} is not seated"
            ) from error

    saved = (
        scp.wire_map,
        scp.CTX,
        dtk.relation_rows,
        dtk.relation_parts,
        dtk.SOURCE_CONTRACTS,
        dtk.ROW_COUNT,
        scp.row_proof,
    )

    reviewed_row_proof = scp.row_proof

    def exact_row_proof(inst, row: int, unfold_extra: str = "") -> str:
        if COMMITMENT_LC is not None and row in (0, 4):
            return scp.algebraic_row_proof(inst, row, unfold_extra)
        return reviewed_row_proof(inst, row, unfold_extra)

    scp.wire_map = local_wire_map
    scp.CTX = SEMANTICS
    scp.row_proof = exact_row_proof
    dtk.relation_rows = lambda seg: rows if seg == SOURCE_SEGMENT else (_ for _ in ()).throw(ValueError(seg))
    dtk.relation_parts = _parts
    try:
        yield
    finally:
        (
            scp.wire_map,
            scp.CTX,
            dtk.relation_rows,
            dtk.relation_parts,
            dtk.SOURCE_CONTRACTS,
            dtk.ROW_COUNT,
            scp.row_proof,
        ) = saved


def _rewrite(text: str) -> str:
    """Retarget emitted proof text to the exact normalized namespace."""
    text = text.replace(
        "ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection",
        "ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree",
    )
    text = text.replace(
        "Shieldd.GnarkFormal.Deployed.StateCommitmentPath.",
        "Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.",
    )
    text = text.replace(
        "Shieldd.GnarkFormal.QuadPath.recoverStep",
        "Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverStep",
    )
    source_relation = f"Seg{SOURCE_SEGMENT}"
    old_import = (
        "ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1."
        f"ScpAdapter{source_relation}"
    )
    text = text.replace(old_import, f"{SEMANTICS_IMPORT}Scp")
    text = text.replace(
        "ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1."
        f"{source_relation}",
        EXACT_IMPORT,
    )
    text = text.replace(
        "Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1",
        SEMANTICS,
    )
    text = text.replace(
        f"{source_relation}.relationPart", f"{EXACT}.relationPart"
    )
    text = text.replace(
        f"{source_relation}.relationRow", f"{EXACT}.relationRow"
    )
    text = text.replace(
        f"{source_relation}.relationLc", f"{EXACT}.relationLc"
    )
    text = text.replace(
        f"{source_relation}.relation", f"{EXACT}.relation"
    )
    text = text.replace(f"{source_relation}.Order", "Order")
    text = text.replace(f"{source_relation}.F", "F")
    text = text.replace("DeployedF", "F")
    # Rename the proof emitter's theorem prefix and selected segment label.
    text = text.replace(f"seg{SOURCE_SEGMENT}_", "template_")
    text = text.replace(f"_seg{SOURCE_SEGMENT}", "_template")
    if "NoteReshape2x1" in text or "representativeRho" in text:
        raise SystemExit("normalized SCP provider retained a deployed-relation dependency")
    tactic_imports = (
        ("linear_combination", "Mathlib.Tactic.LinearCombination"),
        ("interval_cases", "Mathlib.Tactic.IntervalCases"),
        ("norm_num", "Mathlib.Tactic.NormNum"),
    )
    for tactic, module in tactic_imports:
        declaration = f"import {module}\n"
        if tactic in text and declaration not in text:
            text = declaration + text
    namespace_marker = f"namespace {SEMANTICS}\n\n"
    if namespace_marker in text:
        choice_free_import = "import ShielddGnarkFormal.ChoiceFreeZMod\n"
        if choice_free_import not in text:
            text = choice_free_import + text
        text = text.replace(
            namespace_marker,
            namespace_marker
            + "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n",
            1,
        )
    return text


def _base(inst: scp.Instance) -> str:
    text = _rewrite(scp.emit_base(inst))
    marker = f"namespace {SEMANTICS}\n\n"
    declarations = f"def Order : Nat := {ORDER}\nabbrev F := ZMod Order\n\n"
    if marker not in text:
        raise SystemExit("SCP base namespace marker drifted")
    return text.replace(marker, marker + declarations, 1) + "\n"


def _main(inst: scp.Instance) -> str:
    proof = scp.emit_head(inst)
    proof = proof.replace("set_option maxHeartbeats 20000000", "set_option maxHeartbeats 50000000", 1)
    proof = proof.replace(
        f"Seg{SOURCE_SEGMENT}.spec rho := by", "spec rho := by"
    )
    proof = proof.replace(
        f"unfold Seg{SOURCE_SEGMENT}.spec "
        f"Specs.deployedSpec{SOURCE_SEGMENT}",
        "unfold spec",
    )
    proof = proof.replace(
        f"theorem seg{SOURCE_SEGMENT}_sound", "theorem sound"
    )
    proof = _rewrite(proof)
    spec = _rewrite(scp.spec_text(inst)).replace(
        f"def deployedSpec{SOURCE_SEGMENT}", "def spec"
    )
    spec = spec.replace("Deployed state-commitment", "Normalized state-commitment")
    marker = (
        f"namespace {SEMANTICS}\n\n"
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n"
    )
    if marker not in proof:
        raise SystemExit("SCP main namespace marker drifted")
    return proof.replace(marker, marker + spec + "\n", 1) + "\n"


def _commitment_expression() -> str:
    if COMMITMENT_LC is None:
        raise SystemExit("inline commitment expression requested for direct input")
    return " + ".join(
        f"({coefficient} : F) * rho {wire}"
        for coefficient, wire in COMMITMENT_LC
    )


def _target_outputs(*, benchmarks: bool) -> dict[Path, str]:
    rows = _rows()
    outputs: dict[Path, str] = {}
    with _normalized_emitter_inputs(rows):
        inst = scp.Instance(SOURCE_SEGMENT)
        if COMMITMENT_LC is not None:
            inst.commitment_expression = _commitment_expression()
        outputs[OUT / f"{NAME}ScpBase.lean"] = _base(inst)
        outputs[OUT / f"{NAME}ScpLeaf.lean"] = _rewrite(scp.emit_leaf(inst)) + "\n"
        for level in range(scp.LEVELS):
            for chunk in range((scp.NODE_SEGMENTS + scp.NODE_HELPER_CHUNK_SIZE - 1) // scp.NODE_HELPER_CHUNK_SIZE):
                outputs[OUT / f"{NAME}ScpNode{level}Rows{chunk}.lean"] = _rewrite(
                    scp.emit_node_helpers(inst, level, chunk)
                ) + "\n"
            outputs[OUT / f"{NAME}ScpNode{level}.lean"] = _rewrite(scp.emit_node(inst, level)) + "\n"
            outputs[OUT / f"{NAME}ScpStep{level}.lean"] = _rewrite(scp.emit_step(inst, level)) + "\n"
        outputs[OUT / f"{NAME}ScpBits.lean"] = _rewrite(scp.emit_bits(inst)) + "\n"
        outputs[OUT / f"{NAME}ScpSteps.lean"] = _rewrite(scp.emit_steps_facade(inst))
        outputs[OUT / f"{NAME}.lean"] = _main(inst)
    benchmark_modules = {
        "Leaf": "ScpLeaf",
        "Node0Rows0": "ScpNode0Rows0",
        "Node12Rows3": "ScpNode12Rows3",
        "Node23Rows6": "ScpNode23Rows6",
        "Node0": "ScpNode0",
        "Node12": "ScpNode12",
        "Node23": "ScpNode23",
        "Step0": "ScpStep0",
        "Step12": "ScpStep12",
        "Step23": "ScpStep23",
        "Bits": "ScpBits",
        "Final": "",
    } if benchmarks else {}
    for label, suffix in benchmark_modules.items():
        outputs[BENCH / f"NoteReshapeTemplateScp{label}Import.lean"] = (
            f"import {SEMANTICS_IMPORT}{suffix}\n"
        )
    expected = (
        1
        + 1
        + scp.LEVELS * 7
        + scp.LEVELS * 2
        + 1
        + 1
        + 1
        + len(benchmark_modules)
    )
    if len(outputs) != expected:
        raise SystemExit(f"expected {expected} normalized SCP modules, generated {len(outputs)}")
    for path, text in outputs.items():
        if path.parent == OUT and f"namespace {SEMANTICS}" not in text:
            raise SystemExit(f"{path.name}: wrong semantic namespace")
    return outputs


def generated_files() -> dict[Path, str]:
    outputs: dict[Path, str] = {}

    _validate_registry_target(KEY, local_wire_count=8993)
    _validate_inventory_target(
        KEY,
        local_wire_count=8993,
        instances=DIRECT_INSTANCES,
        constant_vector=DIRECT_CONSTANT_VECTOR,
        class_key=DIRECT_CLASS_KEY,
    )
    _reference_segment()
    outputs.update(_target_outputs(benchmarks=True))

    _validate_registry_target(
        WITHDRAWAL_KEY,
        local_wire_count=8999,
    )
    _validate_inventory_target(
        WITHDRAWAL_KEY,
        local_wire_count=8999,
        instances=WITHDRAWAL_INSTANCES,
        constant_vector=WITHDRAWAL_CONSTANT_VECTOR,
        class_key=WITHDRAWAL_CLASS_KEY,
    )
    _validate_withdrawal_relation_transport()
    with _target(
        key=WITHDRAWAL_KEY,
        name=WITHDRAWAL_NAME,
        local_wire_count=8999,
        commitment_lc=WITHDRAWAL_COMMITMENT_LC,
    ):
        withdrawal = _target_outputs(benchmarks=False)
    overlap = set(outputs) & set(withdrawal)
    if overlap:
        raise SystemExit(
            "state-path exact providers overlap: "
            + ", ".join(str(path) for path in sorted(overlap))
        )
    outputs.update(withdrawal)

    outputs = {
        path: normalize_generated_text(source)
        for path, source in outputs.items()
    }

    combined = "\n".join(outputs.values())
    for forbidden in (
        "representativeRho",
        "representativeSeating",
        "relation_transport",
    ):
        if forbidden in combined:
            raise SystemExit(f"normalized SCP provider contains forbidden {forbidden}")
    return outputs
