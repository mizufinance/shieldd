#!/usr/bin/env python3
"""Validate, compare, and regenerate vendored scoped Aeneas graphs."""

from __future__ import annotations

import argparse
import copy
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path, PurePosixPath
from typing import Any, Iterable, Sequence

from normalize_aeneas_lean import NORMALIZER_REVISION, normalize_files


SCRIPT_PATH = Path(__file__).resolve()
LEAN_ROOT = SCRIPT_PATH.parents[1]
REPO_ROOT = Path(
    subprocess.run(
        ["git", "-C", str(LEAN_ROOT), "rev-parse", "--show-toplevel"],
        check=True,
        capture_output=True,
        text=True,
    ).stdout.strip()
)
MANIFEST_PATH = (
    REPO_ROOT
    / "crates/crypto/proof-aggregation/formal/snarkpack/lean-extraction-manifest.json"
)
MANIFEST_REPO_PATH = MANIFEST_PATH.relative_to(REPO_ROOT).as_posix()
EXTRACTED_REPO_DIR = "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted"
NORMALIZER_REPO_PATH = (
    "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/normalize_aeneas_lean.py"
)
RUNTIME_REPO_PATH = (
    "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/AeneasRuntime.lean"
)
EXTRACTIONS_REPO_PATH = (
    "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/extractions.py"
)
SHA256 = re.compile(r"^[0-9a-f]{64}$")
COMMIT = re.compile(r"^[0-9a-f]{40}$")

TOP_FIELDS = {"schema_version", "toolchains", "graphs"}
TOOLCHAIN_FIELDS = {
    "rust",
    "lean",
    "hax_tag",
    "hax_commit",
    "charon_commit",
    "aeneas_commit",
    "normalizer_revision",
}
GRAPH_FIELDS = {
    "id",
    "campaign",
    "output",
    "output_sha256",
    "crate_manifest",
    "package",
    "features",
    "roots",
    "inputs",
    "copy_provenance",
    "extractions",
    "normalization",
    "parity",
}
INPUT_FIELDS = {"role", "path", "sha256"}
COPY_FIELDS = {
    "local_path",
    "upstream_package",
    "upstream_version",
    "upstream_path",
    "upstream_revision",
}
EXTRACTION_FIELDS = {"cwd", "env", "argv", "raw_outputs"}
NORMALIZATION_FIELDS = {
    "script",
    "extra_imports",
    "reuse_modules",
    "raw_sha256",
    "normalized_sha256",
}
PARITY_FIELDS = {"cwd", "argv"}


class ManifestError(ValueError):
    """A fail-closed extraction-manifest validation error."""


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def canonical_json(data: object) -> bytes:
    return (json.dumps(data, indent=2, ensure_ascii=False) + "\n").encode("utf-8")


def _expect_object(value: object, where: str) -> dict[str, Any]:
    if not isinstance(value, dict):
        raise ManifestError(f"{where}: expected object")
    return value


def _expect_list(value: object, where: str) -> list[Any]:
    if not isinstance(value, list):
        raise ManifestError(f"{where}: expected array")
    return value


def _exact_fields(record: dict[str, Any], expected: set[str], where: str) -> None:
    missing = sorted(expected - record.keys())
    unknown = sorted(record.keys() - expected)
    if missing or unknown:
        details: list[str] = []
        if missing:
            details.append(f"missing {', '.join(missing)}")
        if unknown:
            details.append(f"unknown {', '.join(unknown)}")
        raise ManifestError(f"{where}: {'; '.join(details)}")


def _string(value: object, where: str, *, nonempty: bool = True) -> str:
    if not isinstance(value, str) or (nonempty and not value):
        raise ManifestError(f"{where}: expected {'nonempty ' if nonempty else ''}string")
    return value


def _string_list(value: object, where: str, *, nonempty: bool = False) -> list[str]:
    values = _expect_list(value, where)
    if nonempty and not values:
        raise ManifestError(f"{where}: must not be empty")
    result = [_string(item, f"{where}[{index}]") for index, item in enumerate(values)]
    if len(set(result)) != len(result):
        raise ManifestError(f"{where}: duplicate value")
    return result


def _repo_path(value: object, where: str, *, must_exist: bool = True) -> str:
    raw = _string(value, where)
    if "\\" in raw:
        raise ManifestError(f"{where}: path must use POSIX separators")
    path = PurePosixPath(raw)
    if path.is_absolute() or ".." in path.parts or "." in path.parts:
        raise ManifestError(f"{where}: expected normalized repo-relative path")
    resolved = REPO_ROOT.joinpath(*path.parts)
    if must_exist and not resolved.exists():
        raise ManifestError(f"{where}: path does not exist: {raw}")
    return raw


def _raw_output_path(value: object, where: str) -> str:
    raw = _string(value, where)
    if "\\" in raw:
        raise ManifestError(f"{where}: path must use POSIX separators")
    path = PurePosixPath(raw)
    if path.is_absolute() or ".." in path.parts or "." in path.parts:
        raise ManifestError(f"{where}: expected normalized output-relative path")
    return raw


def _hash(value: object, where: str) -> str:
    raw = _string(value, where)
    if not SHA256.fullmatch(raw):
        raise ManifestError(f"{where}: expected lowercase SHA-256")
    return raw


def _argv(value: object, where: str) -> list[str]:
    return _string_list(value, where, nonempty=True)


def load_manifest(path: Path = MANIFEST_PATH, *, canonical: bool = True) -> dict[str, Any]:
    try:
        raw = path.read_bytes()
        data = json.loads(raw)
    except (OSError, json.JSONDecodeError) as exc:
        raise ManifestError(f"{path}: {exc}") from exc
    if canonical and raw != canonical_json(data):
        raise ManifestError(f"{path}: JSON is not canonical pretty JSON")
    return _expect_object(data, "manifest")


def validate_manifest(
    manifest: dict[str, Any],
    *,
    verify_files: bool = True,
    manifest_path: Path = MANIFEST_PATH,
) -> None:
    _exact_fields(manifest, TOP_FIELDS, "manifest")
    if manifest["schema_version"] != 1:
        raise ManifestError("manifest.schema_version: expected 1")

    toolchains = _expect_object(manifest["toolchains"], "manifest.toolchains")
    _exact_fields(toolchains, TOOLCHAIN_FIELDS, "manifest.toolchains")
    for key in ("rust", "lean", "hax_tag", "normalizer_revision"):
        _string(toolchains[key], f"manifest.toolchains.{key}")
    for key in ("hax_commit", "charon_commit", "aeneas_commit"):
        commit = _string(toolchains[key], f"manifest.toolchains.{key}")
        if not COMMIT.fullmatch(commit):
            raise ManifestError(f"manifest.toolchains.{key}: expected lowercase 40-hex commit")
    if toolchains["normalizer_revision"] != NORMALIZER_REVISION:
        raise ManifestError(
            "manifest.toolchains.normalizer_revision: "
            f"expected {NORMALIZER_REVISION}, got {toolchains['normalizer_revision']}"
        )

    graphs = _expect_list(manifest["graphs"], "manifest.graphs")
    if len(graphs) != 32:
        raise ManifestError(f"manifest.graphs: expected 32 records, found {len(graphs)}")
    graph_ids: set[str] = set()
    outputs: set[str] = set()
    for index, raw_graph in enumerate(graphs):
        graph = _expect_object(raw_graph, f"manifest.graphs[{index}]")
        graph_id = graph.get("id", f"index {index}")
        where = f"graph {graph_id}"
        _exact_fields(graph, GRAPH_FIELDS, where)
        graph_id = _string(graph["id"], f"{where}.id")
        if graph_id in graph_ids:
            raise ManifestError(f"{where}.id: duplicate graph id")
        graph_ids.add(graph_id)
        if graph["campaign"] not in {"s2", "s3"}:
            raise ManifestError(f"{where}.campaign: expected s2 or s3")

        output = _repo_path(graph["output"], f"{where}.output", must_exist=verify_files)
        if (
            not output.startswith(EXTRACTED_REPO_DIR + "/")
            or not output.endswith("Generated.lean")
        ):
            raise ManifestError(f"{where}.output: expected Ipp/Extracted/*Generated.lean")
        if output in outputs:
            raise ManifestError(f"{where}.output: duplicate output")
        outputs.add(output)
        output_hash = _hash(graph["output_sha256"], f"{where}.output_sha256")
        _repo_path(graph["crate_manifest"], f"{where}.crate_manifest", must_exist=verify_files)
        _string(graph["package"], f"{where}.package")

        features = _string_list(graph["features"], f"{where}.features")
        if features != sorted(features):
            raise ManifestError(f"{where}.features: expected sorted array")
        roots = _string_list(graph["roots"], f"{where}.roots", nonempty=True)
        if roots != sorted(roots):
            raise ManifestError(f"{where}.roots: expected sorted array")
        for root in roots:
            if not root.startswith("ark_ip_proofs::") or root.endswith("::"):
                raise ManifestError(f"{where}.roots: root is not fully qualified: {root}")

        inputs = _expect_list(graph["inputs"], f"{where}.inputs")
        if not inputs:
            raise ManifestError(f"{where}.inputs: must not be empty")
        input_keys: set[tuple[str, str]] = set()
        for input_index, raw_input in enumerate(inputs):
            item = _expect_object(raw_input, f"{where}.inputs[{input_index}]")
            _exact_fields(item, INPUT_FIELDS, f"{where}.inputs[{input_index}]")
            if item["role"] not in {"copy-source", "parity-test"}:
                raise ManifestError(
                    f"{where}.inputs[{input_index}].role: expected copy-source or parity-test"
                )
            path = _repo_path(
                item["path"],
                f"{where}.inputs[{input_index}].path",
                must_exist=verify_files,
            )
            expected_hash = _hash(
                item["sha256"], f"{where}.inputs[{input_index}].sha256"
            )
            key = (item["role"], path)
            if key in input_keys:
                raise ManifestError(f"{where}.inputs: duplicate role/path {key}")
            input_keys.add(key)
            if verify_files:
                actual_hash = sha256_file(REPO_ROOT.joinpath(*PurePosixPath(path).parts))
                if actual_hash != expected_hash:
                    raise ManifestError(
                        f"{where}.inputs: stale {path}; "
                        f"expected {expected_hash}, got {actual_hash}"
                    )
        if not any(item["role"] == "copy-source" for item in inputs):
            raise ManifestError(f"{where}.inputs: missing copy-source")
        if not any(item["role"] == "parity-test" for item in inputs):
            raise ManifestError(f"{where}.inputs: missing parity-test")

        provenance = _expect_list(graph["copy_provenance"], f"{where}.copy_provenance")
        for copy_index, raw_copy in enumerate(provenance):
            item = _expect_object(raw_copy, f"{where}.copy_provenance[{copy_index}]")
            _exact_fields(item, COPY_FIELDS, f"{where}.copy_provenance[{copy_index}]")
            local_path = _repo_path(
                item["local_path"],
                f"{where}.copy_provenance[{copy_index}].local_path",
                must_exist=verify_files,
            )
            if ("copy-source", local_path) not in input_keys:
                raise ManifestError(
                    f"{where}.copy_provenance[{copy_index}].local_path: "
                    "not a copy-source input"
                )
            for key in (
                "upstream_package",
                "upstream_version",
                "upstream_path",
                "upstream_revision",
            ):
                _string(item[key], f"{where}.copy_provenance[{copy_index}].{key}")

        extractions = _expect_list(graph["extractions"], f"{where}.extractions")
        if not extractions:
            raise ManifestError(f"{where}.extractions: must not be empty")
        raw_output_count = 0
        for extraction_index, raw_extraction in enumerate(extractions):
            item = _expect_object(
                raw_extraction, f"{where}.extractions[{extraction_index}]"
            )
            _exact_fields(
                item, EXTRACTION_FIELDS, f"{where}.extractions[{extraction_index}]"
            )
            _repo_path(
                item["cwd"],
                f"{where}.extractions[{extraction_index}].cwd",
                must_exist=verify_files,
            )
            env = _expect_object(
                item["env"], f"{where}.extractions[{extraction_index}].env"
            )
            for key, value in env.items():
                _string(key, f"{where}.extractions[{extraction_index}].env key")
                _string(value, f"{where}.extractions[{extraction_index}].env.{key}")
            argv = _argv(
                item["argv"], f"{where}.extractions[{extraction_index}].argv"
            )
            required = ("cargo", "hax", "into", "aeneas-lean", "--lakefile")
            if any(token not in argv for token in required):
                raise ManifestError(
                    f"{where}.extractions[{extraction_index}].argv: "
                    "expected cargo hax into ... aeneas-lean ... --lakefile"
                )
            if "{output_dir}" not in argv:
                raise ManifestError(
                    f"{where}.extractions[{extraction_index}].argv: "
                    "missing {output_dir} placeholder"
                )
            start_args = [
                token
                for token in argv
                if token.startswith("--charon-args=--start-from=")
            ]
            if len(start_args) != 1:
                raise ManifestError(
                    f"{where}.extractions[{extraction_index}].argv: "
                    "expected one single-token --charon-args=--start-from=..."
                )
            raw_outputs = _string_list(
                item["raw_outputs"],
                f"{where}.extractions[{extraction_index}].raw_outputs",
                nonempty=True,
            )
            for output_index, raw_output in enumerate(raw_outputs):
                _raw_output_path(
                    raw_output,
                    f"{where}.extractions[{extraction_index}].raw_outputs[{output_index}]",
                )
            raw_output_count += len(raw_outputs)

        normalization = _expect_object(graph["normalization"], f"{where}.normalization")
        _exact_fields(normalization, NORMALIZATION_FIELDS, f"{where}.normalization")
        script = _repo_path(
            normalization["script"],
            f"{where}.normalization.script",
            must_exist=verify_files,
        )
        if script != NORMALIZER_REPO_PATH:
            raise ManifestError(f"{where}.normalization.script: unexpected normalizer")
        _string_list(normalization["extra_imports"], f"{where}.normalization.extra_imports")
        reuse_modules = _string_list(
            normalization["reuse_modules"], f"{where}.normalization.reuse_modules"
        )
        for module in reuse_modules:
            if not module.startswith("Ipp."):
                raise ManifestError(
                    f"{where}.normalization.reuse_modules: invalid module {module}"
                )
            module_path = LEAN_ROOT.joinpath(*module.split(".")).with_suffix(".lean")
            if verify_files and not module_path.exists():
                raise ManifestError(
                    f"{where}.normalization.reuse_modules: missing module {module}"
                )
        raw_hashes = [
            _string(item, f"{where}.normalization.raw_sha256[{hash_index}]")
            for hash_index, item in enumerate(
                _expect_list(
                    normalization["raw_sha256"],
                    f"{where}.normalization.raw_sha256",
                )
            )
        ]
        if len(raw_hashes) != raw_output_count:
            raise ManifestError(
                f"{where}.normalization.raw_sha256: expected {raw_output_count}, "
                f"found {len(raw_hashes)}"
            )
        for hash_index, digest in enumerate(raw_hashes):
            _hash(digest, f"{where}.normalization.raw_sha256[{hash_index}]")
        normalized_hash = _hash(
            normalization["normalized_sha256"],
            f"{where}.normalization.normalized_sha256",
        )
        if normalized_hash != output_hash:
            raise ManifestError(
                f"{where}: normalized_sha256 and output_sha256 do not match"
            )
        if verify_files:
            actual_output_hash = sha256_file(
                REPO_ROOT.joinpath(*PurePosixPath(output).parts)
            )
            if actual_output_hash != output_hash:
                raise ManifestError(
                    f"{where}.output: stale hash; "
                    f"expected {output_hash}, got {actual_output_hash}"
                )

        parity = _expect_list(graph["parity"], f"{where}.parity")
        if not parity:
            raise ManifestError(f"{where}.parity: must not be empty")
        for parity_index, raw_parity in enumerate(parity):
            item = _expect_object(raw_parity, f"{where}.parity[{parity_index}]")
            _exact_fields(item, PARITY_FIELDS, f"{where}.parity[{parity_index}]")
            _repo_path(
                item["cwd"],
                f"{where}.parity[{parity_index}].cwd",
                must_exist=verify_files,
            )
            argv = _argv(item["argv"], f"{where}.parity[{parity_index}].argv")
            if argv[:2] != ["cargo", "test"]:
                raise ManifestError(
                    f"{where}.parity[{parity_index}].argv: expected cargo test"
                )

    if verify_files:
        generated_dir = REPO_ROOT.joinpath(*PurePosixPath(EXTRACTED_REPO_DIR).parts)
        actual_outputs = {
            path.relative_to(REPO_ROOT).as_posix()
            for path in generated_dir.glob("*Generated.lean")
        }
        if outputs != actual_outputs:
            missing = sorted(actual_outputs - outputs)
            extra = sorted(outputs - actual_outputs)
            details = []
            if missing:
                details.append("unrepresented: " + ", ".join(missing))
            if extra:
                details.append("not generated outputs: " + ", ".join(extra))
            raise ManifestError(
                "manifest does not cover exactly Ipp/Extracted/*Generated.lean; "
                + "; ".join(details)
            )

    if manifest_path.exists() and manifest_path == MANIFEST_PATH:
        raw = manifest_path.read_bytes()
        if raw != canonical_json(manifest):
            raise ManifestError(f"{manifest_path}: JSON is not canonical pretty JSON")


def graph_map(manifest: dict[str, Any]) -> dict[str, dict[str, Any]]:
    return {graph["id"]: graph for graph in manifest["graphs"]}


def select_graphs(
    manifest: dict[str, Any], requested: Sequence[str] | None
) -> list[dict[str, Any]]:
    graphs = graph_map(manifest)
    if not requested:
        return list(manifest["graphs"])
    unknown = sorted(set(requested) - graphs.keys())
    if unknown:
        raise ManifestError(f"unknown graph id(s): {', '.join(unknown)}")
    requested_set = set(requested)
    return [graph for graph in manifest["graphs"] if graph["id"] in requested_set]


def _tail(text: str, lines: int = 50) -> str:
    return "\n".join(text.splitlines()[-lines:])


def _isolation_dir(
    graph: dict[str, Any], temp_root: Path, extraction_index: int
) -> Path:
    isolation = temp_root / f"isolation-{extraction_index}"
    source_dir = isolation / "src"
    source_dir.mkdir(parents=True)
    modules: list[str] = []
    for item in graph["inputs"]:
        if item["role"] != "copy-source":
            continue
        source = REPO_ROOT.joinpath(*PurePosixPath(item["path"]).parts)
        if not source.name.startswith("s3_07_arkworks_") or source.suffix != ".rs":
            continue
        shutil.copy2(source, source_dir / source.name)
        modules.append(source.stem)
    if not modules:
        raise ManifestError(
            f"graph {graph['id']}: s3-spike isolation has no s3 copy-source module"
        )
    (source_dir / "lib.rs").write_text(
        "".join(f"pub mod {module};\n" for module in sorted(modules)),
        encoding="utf-8",
    )
    features = "\n".join(f"{feature} = []" for feature in graph["features"])
    (isolation / "Cargo.toml").write_text(
        "[package]\n"
        f'name = "{graph["package"]}"\n'
        'version = "0.0.0"\n'
        'edition = "2021"\n\n'
        "[features]\n"
        f"{features}\n",
        encoding="utf-8",
    )
    return isolation


def reproduce_graph(graph: dict[str, Any], temp_root: Path) -> tuple[bytes, list[str]]:
    if os.name == "nt":
        raise ManifestError(
            "compare/regenerate must run inside WSL or another POSIX environment "
            "with the pinned cargo-hax toolchain loaded"
        )
    raw_paths: list[Path] = []
    for index, extraction in enumerate(graph["extractions"]):
        output_dir = temp_root / f"extraction-{index}"
        output_dir.mkdir()
        command = [
            str(output_dir) if token == "{output_dir}" else token
            for token in extraction["argv"]
        ]
        environment = os.environ.copy()
        recipe_env = dict(extraction["env"])
        isolation_kind = recipe_env.pop("SHIELDD_EXTRACTION_ISOLATION", None)
        environment.update(recipe_env)
        if isolation_kind is None:
            cwd = REPO_ROOT.joinpath(*PurePosixPath(extraction["cwd"]).parts)
        elif isolation_kind == "s3-spike":
            cwd = _isolation_dir(graph, temp_root, index)
        else:
            raise ManifestError(
                f"graph {graph['id']}: unknown extraction isolation {isolation_kind}"
            )
        completed = subprocess.run(
            command,
            cwd=cwd,
            env=environment,
            capture_output=True,
            text=True,
        )
        if completed.returncode:
            raise ManifestError(
                f"graph {graph['id']} extraction {index} failed "
                f"({completed.returncode})\n"
                f"stdout:\n{_tail(completed.stdout)}\n"
                f"stderr:\n{_tail(completed.stderr)}"
            )
        for relative in extraction["raw_outputs"]:
            path = output_dir.joinpath(*PurePosixPath(relative).parts)
            if not path.is_file():
                raise ManifestError(
                    f"graph {graph['id']} extraction {index}: "
                    f"missing raw output {relative}"
                )
            raw_paths.append(path)

    normalization = graph["normalization"]
    result = normalize_files(
        raw_paths,
        extra_imports=normalization["extra_imports"],
        reuse_modules=normalization["reuse_modules"],
        roots=graph["roots"],
        lean_root=LEAN_ROOT,
    )
    return result.content, list(result.raw_sha256)


def compare_graph(graph: dict[str, Any]) -> tuple[bool, str]:
    with tempfile.TemporaryDirectory(prefix=f"shieldd-extract-{graph['id']}-") as raw_temp:
        content, raw_hashes = reproduce_graph(graph, Path(raw_temp))
    committed_path = REPO_ROOT.joinpath(*PurePosixPath(graph["output"]).parts)
    committed = committed_path.read_bytes()
    normalized_hash = hashlib.sha256(content).hexdigest()
    raw_match = raw_hashes == graph["normalization"]["raw_sha256"]
    byte_match = content == committed
    if byte_match and raw_match:
        return True, f"{graph['id']}: byte-identical ({normalized_hash})"
    details = [
        f"{graph['id']}: drift",
        f"  committed={hashlib.sha256(committed).hexdigest()}",
        f"  regenerated={normalized_hash}",
    ]
    if not raw_match:
        details.append(
            "  raw expected=" + ",".join(graph["normalization"]["raw_sha256"])
        )
        details.append("  raw actual=" + ",".join(raw_hashes))
    return False, "\n".join(details)


def _git(args: Sequence[str], *, check: bool = True) -> subprocess.CompletedProcess[str]:
    executable = "git"
    repo_root = str(REPO_ROOT)
    windows_git = shutil.which("git.exe")
    if os.name == "posix" and windows_git and Path("/proc/sys/fs/binfmt_misc/WSLInterop").exists():
        converted = subprocess.run(
            ["wslpath", "-w", repo_root],
            check=True,
            capture_output=True,
            text=True,
            timeout=5,
        )
        executable = windows_git
        repo_root = converted.stdout.strip()
    environment = os.environ.copy()
    environment.update(GIT_OPTIONAL_LOCKS="0", GIT_TERMINAL_PROMPT="0")
    try:
        return subprocess.run(
            [executable, "-C", repo_root, *args],
            check=check,
            capture_output=True,
            text=True,
            timeout=60,
            env=environment,
        )
    except subprocess.TimeoutExpired as error:
        raise ManifestError(f"git command timed out: {' '.join(args)}") from error


def affected_graph_ids(manifest: dict[str, Any], base: str) -> list[str]:
    changed = {
        line.strip()
        for line in _git(["diff", "--name-only", base, "--"]).stdout.splitlines()
        if line.strip()
    }
    graphs = graph_map(manifest)
    affected: set[str] = set()
    global_paths = {NORMALIZER_REPO_PATH, RUNTIME_REPO_PATH, EXTRACTIONS_REPO_PATH}
    if changed.intersection(global_paths):
        return sorted(graphs)

    for graph in manifest["graphs"]:
        paths = {graph["output"], graph["crate_manifest"]}
        paths.update(item["path"] for item in graph["inputs"])
        paths.add(graph["normalization"]["script"])
        if changed.intersection(paths):
            affected.add(graph["id"])

    if MANIFEST_REPO_PATH in changed:
        previous = _git(["show", f"{base}:{MANIFEST_REPO_PATH}"], check=False)
        if previous.returncode:
            return sorted(graphs)
        try:
            old = json.loads(previous.stdout)
            if (
                old.get("schema_version") != manifest["schema_version"]
                or old.get("toolchains") != manifest["toolchains"]
            ):
                return sorted(graphs)
            old_graphs = {
                graph["id"]: graph
                for graph in old.get("graphs", [])
                if isinstance(graph, dict) and isinstance(graph.get("id"), str)
            }
            for graph_id, graph in graphs.items():
                if old_graphs.get(graph_id) != graph:
                    affected.add(graph_id)
            affected.update(set(old_graphs) - graphs.keys())
        except (json.JSONDecodeError, AttributeError, TypeError):
            return sorted(graphs)
    return sorted(affected)


def command_check(args: argparse.Namespace) -> int:
    manifest = load_manifest(args.manifest)
    validate_manifest(manifest, manifest_path=args.manifest)
    s2 = sum(graph["campaign"] == "s2" for graph in manifest["graphs"])
    s3 = sum(graph["campaign"] == "s3" for graph in manifest["graphs"])
    print(f"extractions: ok (32/32 graphs; s2={s2}, s3={s3})")
    return 0


def command_affected(args: argparse.Namespace) -> int:
    manifest = load_manifest(args.manifest)
    validate_manifest(manifest, manifest_path=args.manifest)
    for graph_id in affected_graph_ids(manifest, args.base):
        print(graph_id)
    return 0


def command_compare(args: argparse.Namespace) -> int:
    manifest = load_manifest(args.manifest)
    validate_manifest(manifest, manifest_path=args.manifest)
    selected = select_graphs(manifest, args.graph)
    all_match = True
    for graph in selected:
        matches, report = compare_graph(graph)
        print(report, flush=True)
        all_match &= matches
    return 0 if all_match else 1


def command_regenerate(args: argparse.Namespace) -> int:
    if not args.update_manifest:
        raise ManifestError("regenerate requires --update-manifest")
    manifest = load_manifest(args.manifest)
    validate_manifest(manifest, manifest_path=args.manifest)
    selected = select_graphs(manifest, args.graph)
    updated = copy.deepcopy(manifest)
    updated_graphs = graph_map(updated)
    for graph in selected:
        with tempfile.TemporaryDirectory(
            prefix=f"shieldd-extract-{graph['id']}-"
        ) as raw_temp:
            content, raw_hashes = reproduce_graph(graph, Path(raw_temp))
        output_path = REPO_ROOT.joinpath(*PurePosixPath(graph["output"]).parts)
        output_path.write_bytes(content)
        digest = hashlib.sha256(content).hexdigest()
        updated_graph = updated_graphs[graph["id"]]
        updated_graph["output_sha256"] = digest
        updated_graph["normalization"]["raw_sha256"] = raw_hashes
        updated_graph["normalization"]["normalized_sha256"] = digest
        args.manifest.write_bytes(canonical_json(updated))
        print(f"{graph['id']}: regenerated ({digest})", flush=True)
    validate_manifest(updated, manifest_path=args.manifest)
    return 0


def parser() -> argparse.ArgumentParser:
    result = argparse.ArgumentParser()
    result.add_argument("--manifest", type=Path, default=MANIFEST_PATH, help=argparse.SUPPRESS)
    commands = result.add_subparsers(dest="command", required=True)

    check = commands.add_parser("check")
    check.set_defaults(handler=command_check)

    affected = commands.add_parser("affected")
    affected.add_argument("--base", required=True)
    affected.set_defaults(handler=command_affected)

    compare = commands.add_parser("compare")
    compare.add_argument("--graph", action="append")
    compare.set_defaults(handler=command_compare)

    regenerate = commands.add_parser("regenerate")
    regenerate.add_argument("--graph", action="append")
    regenerate.add_argument("--update-manifest", action="store_true")
    regenerate.set_defaults(handler=command_regenerate)
    return result


def main(argv: list[str] | None = None) -> int:
    args = parser().parse_args(argv)
    try:
        return args.handler(args)
    except (ManifestError, OSError, subprocess.CalledProcessError, UnicodeError) as exc:
        print(f"extractions: error: {exc}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
