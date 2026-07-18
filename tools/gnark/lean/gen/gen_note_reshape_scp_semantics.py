#!/usr/bin/env python3
"""Generate the normalized NoteReshape state-commitment-path provider.

The reviewed SCP proof emitter is reused with the normalized template's exact
row bodies and local wire numbering.  No theorem expands or transports a
deployed flat relation: deployment segments consume this provider only through
their generated seating proof.
"""

from __future__ import annotations

import json
import re
from contextlib import contextmanager
from pathlib import Path

import gen_dtk_slice as dtk
import gen_scp_adapters as scp


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
IR = ROOT / "crates/core/component/shielded-pool/formal/note_reshape2x1-deployed-slice-ir.json"
OUT = LEAN / "ShielddGnarkFormal/Deployed/Templates/Semantics"
BENCH = LEAN / "bench"
RELATIONS = LEAN / "ShielddGnarkFormal/Deployed/Templates/Relations"

KEY = "gadget.state_commitment_path@f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb"
NAME = "TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb"
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041
EXACT = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{NAME}"
EXACT_IMPORT = f"ShielddGnarkFormal.Deployed.Templates.Relations.{NAME}"
SEMANTICS = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{NAME}"
SEMANTICS_IMPORT = f"ShielddGnarkFormal.Deployed.Templates.Semantics.{NAME}"

ROW_COUNT = 9015
LOCAL_WIRE_COUNT = 8993
PART_SIZE = 80
SOURCE_SEGMENT = 13


def _segment() -> dict:
    ir = json.loads(IR.read_text())
    matches = [segment for segment in ir["segments"] if segment.get("template_key") == KEY]
    if len(matches) != 2:
        raise SystemExit(f"expected two deployed instances of {KEY}, found {len(matches)}")
    selected = [segment for segment in matches if segment.get("index") == SOURCE_SEGMENT]
    if len(selected) != 1:
        raise SystemExit(f"expected one segment-{SOURCE_SEGMENT} SCP proof representative")
    segment = selected[0]
    expected = {
        "index": SOURCE_SEGMENT,
        "constraint_count": ROW_COUNT,
        "local_wire_count": LOCAL_WIRE_COUNT,
    }
    for field, value in expected.items():
        if segment.get(field) != value:
            raise SystemExit(f"SCP representative {field} drifted: {segment.get(field)} != {value}")
    seating = segment["wire_seating"]
    if len(seating) != LOCAL_WIRE_COUNT or len(set(seating)) != len(seating):
        raise SystemExit("SCP representative seating is not an injective local-wire table")
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


@contextmanager
def _normalized_emitter_inputs(segment: dict, rows: dict[int, str]):
    """Temporarily parameterize the reviewed emitter with normalized metadata."""
    seating_inverse = {global_wire: local_wire for local_wire, global_wire in enumerate(segment["wire_seating"])}
    deployed_wire_map = scp.wire_map

    def local_wire_map(seg: int, source_wire: int) -> int:
        if seg != SOURCE_SEGMENT:
            raise ValueError(f"normalized SCP emitter received segment {seg}")
        global_wire = deployed_wire_map(SOURCE_SEGMENT, source_wire)
        try:
            return seating_inverse[global_wire]
        except KeyError as error:
            raise ValueError(f"SCP source wire {source_wire} / deployed wire {global_wire} is not seated") from error

    saved = (
        scp.wire_map,
        dtk.relation_rows,
        dtk.relation_parts,
        dtk.SOURCE_CONTRACTS,
        dtk.ROW_COUNT,
    )
    scp.wire_map = local_wire_map
    dtk.relation_rows = lambda seg: rows if seg == SOURCE_SEGMENT else (_ for _ in ()).throw(ValueError(seg))
    dtk.relation_parts = _parts
    try:
        yield
    finally:
        (
            scp.wire_map,
            dtk.relation_rows,
            dtk.relation_parts,
            dtk.SOURCE_CONTRACTS,
            dtk.ROW_COUNT,
        ) = saved


def _rewrite(text: str) -> str:
    """Retarget emitted proof text to the exact normalized namespace."""
    old_import = "ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13"
    text = text.replace(old_import, f"{SEMANTICS_IMPORT}Scp")
    text = text.replace(
        "ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg13",
        EXACT_IMPORT,
    )
    text = text.replace(
        "Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1",
        SEMANTICS,
    )
    text = text.replace("Seg13.relationPart", f"{EXACT}.relationPart")
    text = text.replace("Seg13.relationRow", f"{EXACT}.relationRow")
    text = text.replace("Seg13.relationLc", f"{EXACT}.relationLc")
    text = text.replace("Seg13.relation", f"{EXACT}.relation")
    text = text.replace("Seg13.Order", "Order")
    text = text.replace("Seg13.F", "F")
    text = text.replace("DeployedF", "F")
    # Rename the normalized proof's theorem prefix and selected segment label,
    # but keep the extracted module's `...seg13` definition name intact.
    text = text.replace("seg13_", "template_")
    text = text.replace("_seg13", "_template")
    if "NoteReshape2x1" in text or "representativeRho" in text:
        raise SystemExit("normalized SCP provider retained a deployed-relation dependency")
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
    proof = proof.replace("Seg13.spec rho := by", "spec rho := by")
    proof = proof.replace("unfold Seg13.spec Specs.deployedSpec13", "unfold spec")
    proof = proof.replace("theorem seg13_sound", "theorem sound")
    proof = _rewrite(proof)
    spec = _rewrite(scp.spec_text(inst)).replace("def deployedSpec13", "def spec")
    spec = spec.replace("Deployed state-commitment", "Normalized state-commitment")
    marker = f"namespace {SEMANTICS}\n\n"
    if marker not in proof:
        raise SystemExit("SCP main namespace marker drifted")
    return proof.replace(marker, marker + spec + "\n", 1) + "\n"


def generated_files() -> dict[Path, str]:
    segment = _segment()
    rows = _rows()
    outputs: dict[Path, str] = {}
    with _normalized_emitter_inputs(segment, rows):
        inst = scp.Instance(SOURCE_SEGMENT)
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
    benchmarks = {
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
    }
    for label, suffix in benchmarks.items():
        outputs[BENCH / f"NoteReshapeTemplateScp{label}Import.lean"] = (
            f"import {SEMANTICS_IMPORT}{suffix}\n"
        )
    expected = 1 + 1 + scp.LEVELS * 7 + scp.LEVELS * 2 + 1 + 1 + 1 + len(benchmarks)
    if len(outputs) != expected:
        raise SystemExit(f"expected {expected} normalized SCP modules, generated {len(outputs)}")
    for path, text in outputs.items():
        if path.parent == OUT and f"namespace {SEMANTICS}" not in text:
            raise SystemExit(f"{path.name}: wrong semantic namespace")
    return outputs
