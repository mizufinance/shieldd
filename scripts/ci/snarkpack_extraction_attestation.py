from __future__ import annotations

import argparse
import copy
import hashlib
import importlib.util
import sys
from pathlib import Path, PurePosixPath
from typing import Any


REPO_ROOT = Path(__file__).resolve().parents[2]
EXTRACTIONS_PATH = (
    REPO_ROOT
    / "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/extractions.py"
)
sys.path.insert(0, str(EXTRACTIONS_PATH.parent))
SPEC = importlib.util.spec_from_file_location(
    "snarkpack_extractions_attestation_dependency",
    EXTRACTIONS_PATH,
)
if SPEC is None or SPEC.loader is None:
    raise RuntimeError(f"cannot load extraction verifier: {EXTRACTIONS_PATH}")
EXTRACTIONS = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = EXTRACTIONS
SPEC.loader.exec_module(EXTRACTIONS)


def _script_sha256() -> str:
    return hashlib.sha256(Path(__file__).read_bytes()).hexdigest()


def _attested_fingerprint(base_fingerprint: str) -> str:
    payload = {
        "schema_version": 1,
        "base_fingerprint": base_fingerprint,
        "attestation_script_sha256": _script_sha256(),
    }
    return hashlib.sha256(
        EXTRACTIONS.canonical_json(payload)
    ).hexdigest()


def current_fingerprint(
    manifest: dict[str, Any],
    graph_id: str,
    *,
    cache: Any | None = None,
) -> str:
    selected = EXTRACTIONS.select_graphs(manifest, [graph_id])
    if len(selected) != 1:
        raise EXTRACTIONS.ManifestError(
            "current attestation requires exactly one graph"
        )
    return _attested_fingerprint(
        EXTRACTIONS.graph_ci_success_fingerprint(
            selected[0], manifest["toolchains"], cache=cache
        )
    )


def _content_snapshot(snapshot: dict[str, str]) -> dict[str, str]:
    return {
        key: value
        for key, value in snapshot.items()
        if key != "git:HEAD"
    }


def _future_base_fingerprint(
    graph: dict[str, Any],
    toolchains: dict[str, Any],
    output_sha256: str,
    *,
    cache: Any,
) -> str:
    controls = {
        relative: cache.file_sha256(
            EXTRACTIONS.REPO_ROOT.joinpath(
                *PurePosixPath(relative).parts
            )
        )
        for relative in EXTRACTIONS.CI_ATTESTATION_PATHS
    }
    payload = {
        "schema_version": 1,
        "graph_id": graph["id"],
        "source_sha256": EXTRACTIONS.current_graph_source_sha256(
            graph, toolchains, cache=cache
        ),
        "output_sha256": output_sha256,
        "declared_source_sha256": graph.get("source_sha256"),
        "declared_output_sha256": graph["output_sha256"],
        "declared_selected_raw_sha256": graph["normalization"][
            "selected_raw_declarations_sha256"
        ],
        "controls": controls,
    }
    return hashlib.sha256(
        EXTRACTIONS.canonical_json(payload)
    ).hexdigest()


def recovery_fingerprint(
    manifest: dict[str, Any],
    artifact_dir: Path,
    *,
    cache: Any | None = None,
) -> str:
    """Return the exact cache key for this graph after artifact import."""
    cache = cache or EXTRACTIONS.SourceSnapshotCache()
    graphs = EXTRACTIONS.graph_map(manifest)
    graph_id = EXTRACTIONS._artifact_graph_id(artifact_dir)
    if graph_id not in graphs:
        raise EXTRACTIONS.ManifestError(
            f"unknown recovery graph: {graph_id}"
        )
    graph = graphs[graph_id]
    record, content = EXTRACTIONS._load_recovery_artifact(
        artifact_dir,
        graph=graph,
        toolchains=manifest["toolchains"],
    )

    current_snapshot = EXTRACTIONS.current_graph_source_snapshot(
        graph, manifest["toolchains"], cache=cache
    )
    artifact_snapshot = record["source_snapshot"]
    current_content = _content_snapshot(current_snapshot)
    artifact_content = _content_snapshot(artifact_snapshot)
    if current_content != artifact_content:
        changed = sorted(
            key
            for key in current_content.keys() | artifact_content.keys()
            if current_content.get(key) != artifact_content.get(key)
        )
        raise EXTRACTIONS.ManifestError(
            f"recovery {graph_id}: source changed before CI attestation: "
            + ", ".join(changed)
        )

    current_inputs = EXTRACTIONS.current_input_hashes(
        graph, cache=cache
    )
    recovered_inputs = [item["sha256"] for item in record["inputs"]]
    if current_inputs != recovered_inputs:
        raise EXTRACTIONS.ManifestError(
            f"recovery {graph_id}: declared inputs changed before "
            "CI attestation"
        )

    updated_graph = copy.deepcopy(graph)
    EXTRACTIONS._apply_recovery_record(updated_graph, record)
    base = _future_base_fingerprint(
        updated_graph,
        manifest["toolchains"],
        hashlib.sha256(content).hexdigest(),
        cache=cache,
    )
    return _attested_fingerprint(base)


def parser() -> argparse.ArgumentParser:
    result = argparse.ArgumentParser()
    result.add_argument(
        "--manifest",
        type=Path,
        default=EXTRACTIONS.MANIFEST_PATH,
        help=argparse.SUPPRESS,
    )
    commands = result.add_subparsers(dest="command", required=True)

    current = commands.add_parser("current")
    current.add_argument("--graph", required=True)

    recovery = commands.add_parser("recovery")
    recovery.add_argument("--artifact", required=True, type=Path)
    return result


def main() -> int:
    arguments = parser().parse_args()
    manifest = EXTRACTIONS.load_manifest(arguments.manifest)
    EXTRACTIONS.validate_recovery_manifest(
        manifest,
        manifest_path=arguments.manifest,
        verify_files=False,
    )
    if arguments.command == "current":
        print(current_fingerprint(manifest, arguments.graph))
    else:
        print(recovery_fingerprint(manifest, arguments.artifact))
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except EXTRACTIONS.ManifestError as error:
        parser().error(str(error))
