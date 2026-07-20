#!/usr/bin/env python3
"""Generate the direct normalized NoteReshape DTK semantic provider."""

from __future__ import annotations

import json
import re
from pathlib import Path

import gen_dtk_slice as dtk


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
IR = ROOT / "crates/core/component/shielded-pool/formal/note_reshape2x1-deployed-slice-ir.json"
RELATIONS = LEAN / "ShielddGnarkFormal/Deployed/Templates/Relations"
OUT = LEAN / "ShielddGnarkFormal/Deployed/Templates/Semantics"
BENCH = LEAN / "bench"

KEY = "decaf.diversified_transmission_key@7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b"
NAME = "TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b"
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041
ROW_COUNT = 6077
RELATION = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{NAME}"
RELATION_MODULE = RELATION.replace("Shieldd.GnarkFormal", "ShielddGnarkFormal")
NAMESPACE = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{NAME}.DtkSupport"
MODULE_PREFIX = f"ShielddGnarkFormal.Deployed.Templates.Semantics.{NAME}Dtk"
BENCH_CANDIDATES = (
    "Canon1TrueChunk0",
    "LtQ4Chunk126",
    "LtRChunk252",
    "ScalarR0",
    "ScalarR10",
    "ScalarR20",
    "Lt",
    "",
)


def _segment() -> dict:
    ir = json.loads(IR.read_text())
    matches = [segment for segment in ir["segments"] if segment.get("template_key") == KEY]
    if len(matches) != 1:
        raise ValueError("expected exactly one normalized DTK representative")
    segment = matches[0]
    expected = {
        "index": 6,
        "op": "decaf.diversified_transmission_key",
        "constraint_count": ROW_COUNT,
        "local_wire_count": 5571,
    }
    for field, value in expected.items():
        if segment.get(field) != value:
            raise ValueError(f"DTK normalized source {field} drifted")
    seating = segment["wire_seating"]
    if len(seating) != 5571 or len(set(seating)) != 5571 or seating[0] != 0:
        raise ValueError("DTK normalized seating pin drifted")
    return segment


def _relation_source() -> str:
    shards = sorted(
        RELATIONS.glob(f"{NAME}Defs*.lean"),
        key=lambda path: int(path.stem.removeprefix(NAME + "Defs")),
    )
    facade = RELATIONS / f"{NAME}.lean"
    if not shards or not facade.is_file():
        raise ValueError("missing exact normalized DTK relation")
    indices = [int(path.stem.removeprefix(NAME + "Defs")) for path in shards]
    if indices != list(range(len(indices))):
        raise ValueError("DTK relation shards are not contiguous")
    source = "\n".join(path.read_text() for path in (*shards, facade))
    rows = {int(value) for value in re.findall(r"def relationRow(\d+) ", source)}
    if rows != set(range(ROW_COUNT)):
        raise ValueError("DTK normalized rows are not exact")
    return source


def _deployed_shadow(source: str, seating: tuple[int, ...]) -> str:
    """Recover reviewed deployed wire numbers for Python certificate search only."""

    def deployed(local: int) -> int:
        if local >= len(seating):
            raise ValueError(f"DTK relation references out-of-range local wire {local}")
        return seating[local]

    def rewrite_run(match: re.Match[str]) -> str:
        coefficient, raw_start, raw_stride, raw_count = match.groups()
        start = int(raw_start)
        stride = int(raw_stride)
        count = int(raw_count)
        wires = [deployed(start + stride * index) for index in range(count)]
        deployed_stride = 0 if count == 1 else wires[1] - wires[0]
        if any(wire != wires[0] + deployed_stride * index for index, wire in enumerate(wires)):
            raise ValueError("DTK StructuredLC run is not affine in deployed seating")
        return f"⟨({coefficient} : F), {wires[0]}, {deployed_stride}, {count}⟩"

    source = re.sub(
        r"⟨\((-?\d+) : F\), (\d+), (\d+), (\d+)⟩", rewrite_run, source
    )
    source = re.sub(
        r"\(\((-?\d+) : F\), (\d+)\)",
        lambda match: f"(({match.group(1)} : F), {deployed(int(match.group(2)))})",
        source,
    )
    return re.sub(
        r"rho (\d+)", lambda match: f"rho {deployed(int(match.group(1)))}", source
    )


def _cfg() -> dtk.Instance:
    seating = tuple(_segment()["wire_seating"])
    inverse = {wire: local for local, wire in enumerate(seating)}
    for wire in (6, 7, 8, 9, 10, 17, 18):
        if wire not in inverse:
            raise ValueError(f"DTK semantic boundary wire {wire} is unseated")
    return dtk.Instance(
        seg=6,
        internal_base=dtk.BASE_INTERNAL,
        div_x=inverse[17],
        div_y=inverse[18],
        following_seg=7,
        wire_seating=seating,
    )


def _rewrite(source: str) -> str:
    old_module = "ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1"
    source = source.replace(old_module + ".DtkAdapterSeg6", MODULE_PREFIX)
    source = source.replace(old_module + ".Seg6", RELATION_MODULE)
    source = source.replace(
        old_module + ".CompressAdapterCommon",
        "ShielddGnarkFormal.Deployed.Templates.Semantics.BinaryRecomposition",
    )
    source = source.replace(
        "ShielddGnarkFormal.Deployed.Dtk.Outputs", MODULE_PREFIX + "Outputs"
    )
    source = source.replace(
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1", f"namespace {NAMESPACE}"
    ).replace(
        "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1", f"end {NAMESPACE}"
    )
    source = source.replace(
        "Shieldd.GnarkFormal.Deployed.Dtk.Outputs", NAMESPACE + ".Outputs"
    )
    source = source.replace("Seg6.F", "F")
    source = source.replace("Seg6.", RELATION + ".")
    source = source.replace("DtkAdapterSeg6", NAME + "Dtk")
    source = source.replace("seg6", "dtk")
    source = source.replace(
        f"instance dtkDtkFactPrime : Fact (Nat.Prime {RELATION}.Order) :=",
        "instance dtkDtkFactPrime : Fact (Nat.Prime Order) :=",
    )
    source = source.replace("dtkOutX6", "dtkOutX").replace("dtkOutY6", "dtkOutY")
    source = source.replace("Specs.onCurveAt", "onCurveAt")
    source = source.replace("Specs.deployedSpec6 rho", "spec rho")
    source = source.replace(
        f"(h : {RELATION}.relation rho) : spec rho := by\n  intro hdiv",
        f"(h : {RELATION}.relation rho) : spec rho := by\n  unfold spec\n  intro hdiv",
    )
    forbidden = (
        "NoteReshape2x1", "representativeRho", "representativeSeating", "Seg6.", "seg6"
    )
    leaked = [marker for marker in forbidden if marker in source]
    if leaked:
        marker = leaked[0]
        at = source.index(marker)
        raise ValueError(
            f"DTK direct provider leaked transport names: {leaked}: "
            f"{source[max(0, at - 80):at + 120]!r}"
        )
    return source


def _inject_spec(base: str, cfg: dtk.Instance) -> str:
    insertion = f"""
def onCurveAt (x y : F) : Prop :=
  y * y - x * x = 1 + 3021 * x * x * y * y

def spec (rho : Nat → F) : Prop :=
  onCurveAt (rho {cfg.div_x}) (rho {cfg.div_y}) →
    Shieldd.GnarkFormal.Decaf377Assumptions.DiversifiedTransmissionKeySpec
      (rho {dtk.seat_wire(cfg, 8)})
      ⟨rho {dtk.seat_wire(cfg, 6)}, rho {dtk.seat_wire(cfg, 7)}⟩
      ⟨rho {cfg.div_x}, rho {cfg.div_y}⟩
      (rho {dtk.seat_wire(cfg, 9)}) (rho {dtk.seat_wire(cfg, 10)})
      ⟨Outputs.dtkOutX rho, Outputs.dtkOutY rho⟩ ∧
    onCurveAt (Outputs.dtkOutX rho) (Outputs.dtkOutY rho)
"""
    prime = "  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩\n"
    if base.count(prime) != 1:
        raise ValueError("DTK base prime-instance anchor drifted")
    namespace_anchor = f"namespace {NAMESPACE}\n\n"
    definitions = f"def Order : Nat := {ORDER}\nabbrev F := ZMod Order\n\n"
    if namespace_anchor not in base:
        raise ValueError("DTK base namespace anchor drifted")
    base = base.replace(namespace_anchor, namespace_anchor + definitions, 1)
    base = base.replace(
        f"import {RELATION_MODULE}\n",
        f"import {RELATION_MODULE}\nimport ShielddGnarkFormal.Decaf377Assumptions\n"
        "import ShielddGnarkFormal.EdwardsBridge\n",
        1,
    )
    return base.replace(prime, prime + insertion, 1)


def _facade() -> str:
    semantic = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{NAME}"
    return f"""import {MODULE_PREFIX}

namespace {semantic}

abbrev F := {NAMESPACE}.F

def spec (rho : Nat → F) : Prop :=
  {NAMESPACE}.spec rho

theorem sound (rho : Nat → F) (h : {RELATION}.relation rho) : spec rho := by
  exact {NAMESPACE}.dtk_sound rho h

end {semantic}
"""


def _render_reviewed(
    cfg: dtk.Instance,
    scalar_rungs: tuple[dtk.ScalarRung, ...],
    scalar_rows: list[tuple[dtk.Lc, dtk.Lc, dtk.Lc]],
) -> dict[str, str]:
    poseidon_module, poseidon_sboxes = dtk.generate_poseidon_shape(write_auxiliary=False)
    outputs: dict[str, str] = {"DtkAdapterSeg6Base.lean": dtk.emit_base(cfg)}
    previous: str | None = None
    for block in dtk.canonical_blocks(cfg):
        component = f"DtkAdapterSeg6{block.label}"
        outputs[f"{component}Rec.lean"] = dtk.emit_canon_recover(cfg, block, previous)
        outputs[f"{component}Binary.lean"] = dtk.emit_canon_binary(cfg, block, f"{component}Rec")
        rows = dtk.relation_rows(cfg.seg)
        true_defs = f"{component}TrueDefs"
        outputs[f"{true_defs}.lean"] = dtk.emit_canon_true_defs(cfg, block, rows, f"{component}Binary")
        previous_true = true_defs
        for chunk_index, _ in enumerate(dtk.canon_chunks()):
            true_chunk = f"{component}TrueChunk{chunk_index}"
            outputs[f"{true_chunk}.lean"] = dtk.emit_canon_true_chunk(
                cfg, block, rows, previous_true, chunk_index
            )
            previous_true = true_chunk
        outputs[f"{component}True.lean"] = dtk.emit_canon_true_thread(cfg, block, previous_true)
        previous_compare = f"{component}True"
        for chunk_index, _ in enumerate(dtk.canon_chunks()):
            compare_chunk = f"{component}CompareChunk{chunk_index}"
            outputs[f"{compare_chunk}.lean"] = dtk.emit_canon_compare_chunk(
                cfg, block, rows, previous_compare, chunk_index
            )
            previous_compare = compare_chunk
        outputs[f"{component}Compare.lean"] = dtk.emit_canon_compare(cfg, block, previous_compare)
        outputs[f"{component}Chain.lean"] = dtk.emit_canon_chain(cfg, block, f"{component}Compare")
        outputs[f"{component}.lean"] = dtk.emit_canon_block(cfg, 0 if block.label == "Canon1" else 1)
        previous = component
    outputs["DtkAdapterSeg6Canon.lean"] = dtk.emit_canon(cfg)
    outputs["DtkAdapterSeg6Bits.lean"] = dtk.emit_bits(cfg)
    outputs["DtkAdapterSeg6Poseidon.lean"] = dtk.emit_poseidon_adapter(
        cfg, poseidon_module, poseidon_sboxes
    )
    # Render scalar chunks before expanding the large LT atom cache.  Output
    # dependency order is expressed by imports, not dictionary insertion.
    outputs["DtkAdapterSeg6ScalarDefs.lean"] = dtk.emit_scalar_defs_module(cfg, scalar_rungs)
    for chunk_index, subset in enumerate(dtk.scalar_chunks(scalar_rungs)):
        outputs[f"DtkAdapterSeg6ScalarR{chunk_index}.lean"] = dtk.emit_scalar_chunk(
            cfg, chunk_index, subset, scalar_rows
        )
    outputs["DtkAdapterSeg6Scalar.lean"] = dtk.emit_scalar(cfg, scalar_rungs)
    ltc_traces = dtk.dtk_ltc_traces()
    r_trace, q4_trace = ltc_traces
    q4_defs = "DtkAdapterSeg6LtQ4Defs"
    outputs[f"{q4_defs}.lean"] = dtk.emit_ltc_defs(cfg, q4_trace, "DtkAdapterSeg6Base")
    previous_lt = q4_defs
    for chunk_index, _ in enumerate(dtk.ltc_chunks()):
        component = f"DtkAdapterSeg6LtQ4Chunk{chunk_index}"
        outputs[f"{component}.lean"] = dtk.emit_ltc_chunk(
            cfg, q4_trace, chunk_index, previous_lt
        )
        previous_lt = component
    r_defs = "DtkAdapterSeg6LtRDefs"
    outputs[f"{r_defs}.lean"] = dtk.emit_ltc_defs(cfg, r_trace, previous_lt)
    previous_lt = r_defs
    for chunk_index, _ in enumerate(dtk.ltc_chunks()):
        component = f"DtkAdapterSeg6LtRChunk{chunk_index}"
        outputs[f"{component}.lean"] = dtk.emit_ltc_chunk(
            cfg, r_trace, chunk_index, previous_lt
        )
        previous_lt = component
    outputs["DtkAdapterSeg6Lt.lean"] = dtk.emit_ltc(cfg)
    outputs["DtkAdapterSeg6.lean"] = dtk.emit_adapter(cfg)
    return outputs


def _generated_files(out: Path = OUT, bench: Path = BENCH) -> dict[Path, str]:
    cfg = _cfg()
    exact_source = _relation_source()
    shadow = _deployed_shadow(exact_source, cfg.wire_seating or ())
    old_source = dtk.source
    old_instances = dtk.INSTANCES
    old_output_wires = dtk.output_wires
    old_source_cache = dict(dtk._SOURCE_CACHE)
    old_parts_cache = dict(dtk._RELATION_PARTS_CACHE)
    old_layouts = dict(dtk.LTC_ATOM_LAYOUTS)
    scalar_rows = dtk.sr1cs_lc_rows()
    rungs = dtk.dtk_scalar_rungs(scalar_rows)
    try:
        dtk.source = lambda seg: shadow if seg == cfg.seg else old_source(seg)
        dtk.INSTANCES = (cfg,)
        dtk.output_wires = lambda _cfg: (
            [dtk.seat_wire(cfg, rung.delta_x) for rung in rungs],
            [dtk.seat_wire(cfg, rung.delta_y) for rung in rungs],
        )
        dtk._SOURCE_CACHE.clear()
        dtk._RELATION_PARTS_CACHE.clear()
        dtk.LTC_ATOM_LAYOUTS.clear()
        reviewed = _render_reviewed(cfg, rungs, scalar_rows)
        reviewed["DtkAdapterSeg6Outputs.lean"] = dtk.emit_outputs()
    finally:
        dtk.source = old_source
        dtk.INSTANCES = old_instances
        dtk.output_wires = old_output_wires
        dtk._SOURCE_CACHE.clear()
        dtk._SOURCE_CACHE.update(old_source_cache)
        dtk._RELATION_PARTS_CACHE.clear()
        dtk._RELATION_PARTS_CACHE.update(old_parts_cache)
        dtk.LTC_ATOM_LAYOUTS.clear()
        dtk.LTC_ATOM_LAYOUTS.update(old_layouts)

    outputs: dict[Path, str] = {}
    for filename, source in reviewed.items():
        suffix = filename.removeprefix("DtkAdapterSeg6").removesuffix(".lean")
        target = out / f"{NAME}Dtk{suffix}.lean"
        rendered = _rewrite(source)
        if suffix == "Base":
            rendered = _inject_spec(rendered, cfg)
        outputs[target] = rendered
    outputs[out / f"{NAME}.lean"] = _facade()
    for suffix in BENCH_CANDIDATES:
        label = suffix or "Main"
        module = MODULE_PREFIX + suffix if suffix else (
            f"ShielddGnarkFormal.Deployed.Templates.Semantics.{NAME}"
        )
        outputs[bench / f"NoteReshapeTemplateDtk{label}Import.lean"] = (
            f"import {module}\n"
        )
    if len(outputs) != 627:
        raise ValueError(f"expected 619 DTK semantic modules and eight benchmark imports, got {len(outputs)}")
    return outputs


def generated_files(out: Path = OUT, bench: Path = BENCH) -> dict[Path, str]:
    saved_source = dtk.SOURCE_CONTRACTS
    saved_rows = dtk.ROW_COUNT
    saved_source_cache = dict(dtk._SOURCE_CACHE)
    saved_parts_cache = dict(dtk._RELATION_PARTS_CACHE)
    try:
        dtk.SOURCE_CONTRACTS = dtk.DEFAULT_CONTRACTS
        dtk.ROW_COUNT = ROW_COUNT
        dtk._SOURCE_CACHE.clear()
        dtk._RELATION_PARTS_CACHE.clear()
        return _generated_files(out, bench)
    finally:
        dtk.SOURCE_CONTRACTS = saved_source
        dtk.ROW_COUNT = saved_rows
        dtk._SOURCE_CACHE.clear()
        dtk._SOURCE_CACHE.update(saved_source_cache)
        dtk._RELATION_PARTS_CACHE.clear()
        dtk._RELATION_PARTS_CACHE.update(saved_parts_cache)
