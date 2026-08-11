#!/usr/bin/env python3
"""Generate exact Window2 DTK/compressor seating certificates."""

from __future__ import annotations

import argparse
from pathlib import Path

import gen_note_reshape_family as family
from note_reshape_adapter_model import Deployment
from write_if_changed import write_if_changed


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean/ShielddGnarkFormal/Deployed"
SUPPORTED = ("note_reshape1x8", "note_reshape8x1")
SHAPES = {
    "note_reshape1x8": (1, 8),
    "note_reshape8x1": (8, 1),
}
SHARED_TEMPLATES = (
    "decaf.compress_to_field@"
    "231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb",
    "assert.ne@"
    "50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd",
    "decaf.diversified_transmission_key@"
    "a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c",
    "assert.decaf_non_identity@"
    "6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61",
    "decaf.compress_to_field@"
    "cb894e50f7cc665026bb25271f9bec0190867613208193b18d883d11ce856a46",
)
DTK_OUTPUT_LOCALS = ((4961, 4969), (4962, 4970))
COMPRESS_INPUT_LOCALS = ((1, 2), (4, 5))
NON_IDENTITY_X_LOCALS = (2, 3)


def _seating(segment: dict) -> tuple[int, ...]:
    return tuple(
        segment["template_equivalence_witness"]
        ["canonical_local_to_deployed_wire_seating"]
    )


def validate_window2_join(
    model: Deployment,
    dtk: dict,
    compress: dict,
    non_identity: dict,
    binding_name: str = "shared.transmission.computed",
) -> tuple[tuple[int, int], tuple[int, int]]:
    """Authenticate the two-term DTK output at both following consumers."""

    binding = model.binding(binding_name, 2)
    dtk_seating = _seating(dtk)
    compress_seating = _seating(compress)
    non_identity_seating = _seating(non_identity)
    coordinates: list[tuple[int, int]] = []
    for coordinate, expression in enumerate(binding["expressions"]):
        runs, residual = family.compact_semantic_expression(expression)
        if (
            expression["constant"] != "0"
            or runs
            or len(residual) != 2
            or any(term["coefficient"] != "1" for term in residual)
        ):
            raise ValueError(
                f"{model.circuit}: transmission coordinate {coordinate} "
                "is not the exact Window2 two-term output"
            )
        actual = tuple(term["wire_id"] for term in residual)
        expected = tuple(
            dtk_seating[local] for local in DTK_OUTPUT_LOCALS[coordinate]
        )
        compressed = tuple(
            compress_seating[local]
            for local in COMPRESS_INPUT_LOCALS[coordinate]
        )
        if actual != expected or compressed != expected:
            raise ValueError(
                f"{model.circuit}: transmission coordinate {coordinate} "
                "Window2 seating drifted"
            )
        coordinates.append(actual)
    if tuple(
        non_identity_seating[local] for local in NON_IDENTITY_X_LOCALS
    ) != coordinates[0]:
        raise ValueError(
            f"{model.circuit}: transmission nonidentity seating drifted"
        )
    model.require_inverse_guard(
        non_identity, binding_name, expression_index=0, arity=2
    )
    return coordinates[0], coordinates[1]


def config_from_model(model: Deployment) -> dict[str, int | str]:
    divgen = model.segment(
        "decaf.compress_to_field",
        ("in=shared.div_gen", "out=shared.div_gen_fq"),
    )
    ivk = model.segment(
        "assert.ne", ("lhs=auth.ivk_reduced", "rhs=0")
    )
    dtk = model.segment(
        "decaf.diversified_transmission_key",
        (
            "nk=auth.nk",
            "ak=shared.ak",
            "div_gen=shared.div_gen",
            "ivk_reduced=auth.ivk_reduced",
            "ivk_quotient_a=auth.ivk_quotient_a",
            "out=shared.transmission.computed",
        ),
    )
    non_identity = model.segment(
        "assert.decaf_non_identity",
        ("point=shared.transmission.computed", "coordinate=x"),
    )
    compress = model.segment(
        "decaf.compress_to_field",
        ("in=shared.transmission.computed", "out=shared.transmission.fq"),
    )
    chain = (divgen, ivk, dtk, non_identity, compress)
    model.consecutive(chain)
    if tuple(segment["proof_template_id"] for segment in chain) != SHARED_TEMPLATES:
        raise ValueError(f"{model.circuit}: shared DTK provider sequence drifted")
    model.require_binding_role(divgen, "shared.div_gen", "input", arity=2)
    model.require_inverse_guard(ivk, "auth.ivk_reduced", arity=1)
    for binding, role, arity in (
        ("auth.nk", "input", 1),
        ("auth.ak", "input", 2),
        ("shared.div_gen", "input", 2),
        ("auth.ivk_reduced", "internal", 1),
        ("auth.ivk_quotient_a", "internal", 1),
    ):
        model.require_binding_role(dtk, binding, role, arity=arity)
    x, y = validate_window2_join(model, dtk, compress, non_identity)
    return {
        "circuit": model.circuit,
        "module": model.module,
        "dtk": dtk["index"],
        "compress": compress["index"],
        "non_identity": non_identity["index"],
        "x0": x[0],
        "x1": x[1],
        "y0": y[0],
        "y1": y[1],
    }


def load_config(circuit: str) -> dict[str, int | str]:
    if circuit not in SHAPES:
        raise ValueError(f"unsupported NoteReshape circuit: {circuit}")
    return config_from_model(
        Deployment.load(circuit, family.camel(circuit), SHAPES[circuit])
    )


def render(config: dict[str, int | str]) -> str:
    module = str(config["module"])
    namespace = f"Shieldd.GnarkFormal.Deployed.{module}DtkSeating"
    dtk = config["dtk"]
    compress = config["compress"]
    non_identity = config["non_identity"]
    x0, x1 = config["x0"], config["x1"]
    y0, y1 = config["y0"], config["y1"]
    return f"""import ShielddGnarkFormal.Deployed.Contracts.{module}.Seg{dtk}
import ShielddGnarkFormal.Deployed.Contracts.{module}.Seg{compress}
import ShielddGnarkFormal.Deployed.Contracts.{module}.Seg{non_identity}

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000

/-! Exact active Window2 DTK/compressor/nonidentity seating.
GENERATED by gen_note_reshape_dtk_seating.py — do not edit by hand. -/

namespace {namespace}

open Contracts.{module}

theorem dtkXWires :
    (Seg{dtk}.wireSeating 4961, Seg{dtk}.wireSeating 4969) =
      ({x0}, {x1}) := by
  decide +kernel

theorem dtkYWires :
    (Seg{dtk}.wireSeating 4962, Seg{dtk}.wireSeating 4970) =
      ({y0}, {y1}) := by
  decide +kernel

theorem compressXWires :
    (Seg{compress}.wireSeating 1, Seg{compress}.wireSeating 2) =
      ({x0}, {x1}) := by
  decide +kernel

theorem compressYWires :
    (Seg{compress}.wireSeating 4, Seg{compress}.wireSeating 5) =
      ({y0}, {y1}) := by
  decide +kernel

theorem nonIdentityXWires :
    (Seg{non_identity}.wireSeating 2,
      Seg{non_identity}.wireSeating 3) = ({x0}, {x1}) := by
  decide +kernel

end {namespace}
"""


def generated_files() -> dict[Path, str]:
    return {
        LEAN / f"{family.camel(circuit)}DtkSeating.lean":
            render(load_config(circuit))
        for circuit in SUPPORTED
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("circuits", nargs="*", choices=SUPPORTED)
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    selected = set(args.circuits or SUPPORTED)
    outputs = {
        path: text
        for path, text in generated_files().items()
        if path.stem.removesuffix("DtkSeating")
        .replace("NoteReshape", "note_reshape") in selected
    }
    managed = {
        path
        for circuit in selected
        for path in LEAN.glob(f"{family.camel(circuit)}Dtk*Seating*.lean")
    }
    unexpected = sorted(managed - set(outputs))
    if args.check:
        stale = [path for path, text in outputs.items()
                 if not path.is_file() or path.read_text() != text]
        if stale or unexpected:
            raise SystemExit(
                "stale Window2 seating outputs: "
                f"{[str(path) for path in stale + unexpected]}"
            )
        return
    for path in unexpected:
        path.unlink()
        print(f"removed {path}")
    for path, text in outputs.items():
        if write_if_changed(path, text):
            print(f"wrote {path}")


if __name__ == "__main__":
    main()
