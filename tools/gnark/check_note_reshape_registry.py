#!/usr/bin/env python3
"""Fail closed unless every NoteReshape family projection matches its manifest."""

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
MANIFEST = ROOT / "tools/gnark/note_reshape_families.json"


def require(contents: str, snippet: str, surface: str) -> None:
    if snippet not in contents:
        raise SystemExit(f"{surface} drifted from {MANIFEST}: missing {snippet!r}")


def main() -> None:
    manifest = json.loads(MANIFEST.read_text())
    if manifest.get("schema") != "shieldd.note_reshape_families.v1":
        raise SystemExit("unexpected NoteReshape family manifest schema")
    families = manifest["families"]
    ids = [family["id"] for family in families]
    labels = [family["label"] for family in families]
    if len(ids) != len(set(ids)) or len(labels) != len(set(labels)):
        raise SystemExit("NoteReshape family ids and labels must be unique")

    go = (ROOT / "tools/gnark/internal/generated/note_reshape_families_generated.go").read_text()
    core = (
        ROOT
        / "crates/core/component/shielded-pool/src/note_reshape/generated.rs"
    ).read_text()
    build = (
        ROOT
        / "crates/crypto/proof-params/src/gen/gnark/note_reshape_families_build.rs"
    ).read_text()
    params = (
        ROOT
        / "crates/crypto/proof-params/src/gen/gnark/note_reshape_registry.rs"
    ).read_text()
    aggregation = (
        ROOT / "crates/crypto/proof-aggregation/src/backend.rs"
    ).read_text()

    for family in families:
        for low, high, capacity, label in [
            (family["min_real_inputs"], family["max_real_inputs"], family["n_in"], "input"),
            (family["min_real_outputs"], family["max_real_outputs"], family["n_out"], "output"),
        ]:
            if not 0 < low <= high <= capacity:
                raise SystemExit(f"invalid {label} range for {family['label']}")

        require(
            go,
            "{ID: %(id)d, Label: \"%(label)s\", ArtifactName: \"%(artifact_name)s\", "
            "NIn: %(n_in)d, NOut: %(n_out)d, MinRealInputs: %(min_real_inputs)d, "
            "MaxRealInputs: %(max_real_inputs)d, MinRealOutputs: %(min_real_outputs)d, "
            "MaxRealOutputs: %(max_real_outputs)d}" % family,
            "Go registry",
        )

        rust_name = family["rust_name"]
        require(core, f"pub const {rust_name}: Self = Self({family['id']});", "domain registry")
        fields = "\n".join(
            [
                f'        label: "{family["label"]}",',
                f'        artifact_name: "{family["artifact_name"]}",',
                f'        n_in: {family["n_in"]},',
                f'        n_out: {family["n_out"]},',
                f'        min_real_inputs: {family["min_real_inputs"]},',
                f'        max_real_inputs: {family["max_real_inputs"]},',
                f'        min_real_outputs: {family["min_real_outputs"]},',
                f'        max_real_outputs: {family["max_real_outputs"]},',
            ]
        )
        require(
            core,
            f"        id: NoteReshapeFamilyId::{rust_name},\n{fields}",
            "domain registry",
        )
        require(
            build,
            f"        id: {family['id']},\n{fields}",
            "proof-parameter build registry",
        )

        shape = f"{family['n_in']}X{family['n_out']}"
        require(params, f"NOTE_RESHAPE{shape}_PROOF_VERIFICATION_KEY", "proof registry")
        require(params, f'"{family["artifact_name"]}"', "proof registry")
        require(params, f"id: {family['id']},", "proof registry")

        route = f"NoteReshapeFamilyId::{rust_name}"
        if aggregation.count(route) < 4:
            raise SystemExit(
                f"aggregation routing drifted from {MANIFEST}: {route} is not handled by every backend path"
            )

    print(f"NoteReshape registry projections match {len(families)} canonical families")


if __name__ == "__main__":
    main()
