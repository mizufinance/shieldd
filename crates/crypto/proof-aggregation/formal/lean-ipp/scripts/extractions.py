#!/usr/bin/env python3
"""Validate, compare, and regenerate vendored scoped Aeneas graphs."""

from __future__ import annotations

import argparse
import copy
import hashlib
import json
import os
import re
import signal
import shutil
import subprocess
import sys
import tempfile
import time
from pathlib import Path, PurePosixPath
from typing import Any, Callable, Iterable, Sequence

from normalize_aeneas_lean import NORMALIZER_REVISION, normalize_files


SCRIPT_PATH = Path(__file__).resolve()
LEAN_ROOT = SCRIPT_PATH.parents[1]
REPO_ROOT = SCRIPT_PATH.parents[6]
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
EXPECTED_GRAPH_COUNT = 37
DEFAULT_EXTRACTION_TIMEOUT_SECONDS = 20 * 60
PROCESS_RSS_LIMIT_BYTES = 6 * 1024**3
MIN_AVAILABLE_MEMORY_BYTES = 2 * 1024**3
RESOURCE_POLL_SECONDS = 5.0
OUTPUT_SPOOL_LIMIT_BYTES = 1024 * 1024
WORKSPACE_SOURCE_PATHS = (
    ".cargo/config.toml",
    "Cargo.lock",
    "Cargo.toml",
    "rust-toolchain.toml",
    "crates/crypto/proof-aggregation/formal/lean-ipp/lake-manifest.json",
    "crates/crypto/proof-aggregation/formal/lean-ipp/lakefile.lean",
    "crates/crypto/proof-aggregation/formal/lean-ipp/lean-toolchain",
)
CRATE_CONFIG_NAMES = (
    "Cargo.lock",
    "Cargo.toml",
    "rust-toolchain",
    "rust-toolchain.toml",
    ".cargo/config",
    ".cargo/config.toml",
)
IGNORED_CRATE_SOURCE_DIRS = {".git", "proofs", "target"}
LOCAL_PATH_DEPENDENCY = re.compile(r"""\bpath\s*=\s*["']([^"']+)["']""")

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
OPTIONAL_GRAPH_FIELDS = {"source_sha256"}
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
    "selected_raw_declarations_sha256",
    "normalized_sha256",
}
PARITY_FIELDS = {"cwd", "argv"}


class ManifestError(ValueError):
    """A fail-closed extraction-manifest validation error."""


_ACTIVE_CHILD: subprocess.Popen[bytes] | None = None


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
    verify_canonical_file: bool = True,
    manifest_path: Path = MANIFEST_PATH,
) -> None:
    _exact_fields(manifest, TOP_FIELDS, "manifest")
    if manifest["schema_version"] != 2:
        raise ManifestError("manifest.schema_version: expected 2")

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
    if len(graphs) != EXPECTED_GRAPH_COUNT:
        raise ManifestError(
            "manifest.graphs: "
            f"expected {EXPECTED_GRAPH_COUNT} records, found {len(graphs)}"
        )
    graph_ids: set[str] = set()
    outputs: set[str] = set()
    for index, raw_graph in enumerate(graphs):
        graph = _expect_object(raw_graph, f"manifest.graphs[{index}]")
        graph_id = graph.get("id", f"index {index}")
        where = f"graph {graph_id}"
        present_optional = OPTIONAL_GRAPH_FIELDS & graph.keys()
        _exact_fields(graph, GRAPH_FIELDS | present_optional, where)
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
        if "source_sha256" in graph:
            _hash(graph["source_sha256"], f"{where}.source_sha256")
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
        _hash(
            normalization["selected_raw_declarations_sha256"],
            f"{where}.normalization.selected_raw_declarations_sha256",
        )
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

    if (
        verify_canonical_file
        and manifest_path.exists()
        and manifest_path == MANIFEST_PATH
    ):
        raw = manifest_path.read_bytes()
        if raw != canonical_json(manifest):
            raise ManifestError(f"{manifest_path}: JSON is not canonical pretty JSON")


def graph_map(manifest: dict[str, Any]) -> dict[str, dict[str, Any]]:
    return {graph["id"]: graph for graph in manifest["graphs"]}


def select_graphs(
    manifest: dict[str, Any],
    requested: Sequence[str] | None,
    *,
    shard_index: int | None = None,
    shard_count: int | None = None,
) -> list[dict[str, Any]]:
    if (shard_index is None) != (shard_count is None):
        raise ManifestError("--shard-index and --shard-count must be used together")
    if shard_count is not None and shard_count <= 0:
        raise ManifestError("--shard-count must be positive")
    if shard_index is not None and not 0 <= shard_index < shard_count:
        raise ManifestError("--shard-index must be in [0, --shard-count)")

    graphs = graph_map(manifest)
    selected_ids: set[str] | None = None
    if requested:
        unknown = sorted(set(requested) - graphs.keys())
        if unknown:
            raise ManifestError(f"unknown graph id(s): {', '.join(unknown)}")
        selected_ids = set(requested)

    return [
        graph
        for position, graph in enumerate(manifest["graphs"])
        if (selected_ids is None or graph["id"] in selected_ids)
        and (shard_count is None or position % shard_count == shard_index)
    ]


def _tail(text: str, lines: int = 50) -> str:
    return "\n".join(text.splitlines()[-lines:])


def _bounded_extraction_environment(
    recipe_environment: dict[str, str],
) -> dict[str, str]:
    environment = os.environ.copy()
    environment.update(recipe_environment)
    environment.update(
        CARGO_BUILD_JOBS="1",
        LEAN_NUM_THREADS="1",
        RAYON_NUM_THREADS="1",
    )
    return environment


def _read_spooled(stream: Any) -> str:
    stream.flush()
    stream.seek(0)
    return stream.read().decode("utf-8", errors="replace")


def _proc_group_rss_bytes(process_group: int) -> int:
    if os.name != "posix" or not Path("/proc").is_dir():
        raise ManifestError("process-group RSS monitoring is unavailable")
    try:
        page_size = os.sysconf("SC_PAGE_SIZE")
    except (AttributeError, OSError, ValueError) as error:
        raise ManifestError("cannot determine process RSS page size") from error

    total = 0
    found = False
    try:
        entries = list(Path("/proc").iterdir())
    except OSError as error:
        raise ManifestError("cannot enumerate /proc for RSS monitoring") from error
    for entry in entries:
        if not entry.name.isdigit():
            continue
        try:
            stat = (entry / "stat").read_text(encoding="utf-8")
            closing_paren = stat.rfind(")")
            if closing_paren < 0:
                continue
            fields = stat[closing_paren + 2 :].split()
            if len(fields) < 3 or int(fields[2]) != process_group:
                continue
            statm = (entry / "statm").read_text(encoding="ascii").split()
            total += int(statm[1]) * page_size
            found = True
        except (FileNotFoundError, PermissionError, ProcessLookupError):
            continue
        except (IndexError, OSError, UnicodeError, ValueError) as error:
            raise ManifestError(
                f"cannot inspect process {entry.name} for RSS monitoring"
            ) from error
    if not found:
        raise ManifestError(
            f"cannot locate extraction process group {process_group} in /proc"
        )
    return total


def _available_memory_bytes() -> int:
    if os.name != "posix":
        raise ManifestError("available-memory monitoring is unavailable")
    try:
        for line in Path("/proc/meminfo").read_text(encoding="ascii").splitlines():
            if line.startswith("MemAvailable:"):
                fields = line.split()
                if len(fields) != 3 or fields[2] != "kB":
                    break
                return int(fields[1]) * 1024
    except (OSError, UnicodeError, ValueError) as error:
        raise ManifestError("cannot read available memory from /proc/meminfo") from error
    raise ManifestError("MemAvailable is missing from /proc/meminfo")


def _resource_limit_reason(process_group: int) -> str | None:
    rss = _proc_group_rss_bytes(process_group)
    if rss > PROCESS_RSS_LIMIT_BYTES:
        return (
            f"process-group RSS {rss} exceeds limit "
            f"{PROCESS_RSS_LIMIT_BYTES}"
        )
    available = _available_memory_bytes()
    if available < MIN_AVAILABLE_MEMORY_BYTES:
        return (
            f"available memory {available} is below limit "
            f"{MIN_AVAILABLE_MEMORY_BYTES}"
        )
    return None


def _terminate_process_group(process: subprocess.Popen[bytes]) -> None:
    if process.poll() is not None:
        return
    if os.name == "posix":
        try:
            os.killpg(process.pid, signal.SIGTERM)
        except ProcessLookupError:
            return
        try:
            process.wait(timeout=2)
            return
        except subprocess.TimeoutExpired:
            try:
                os.killpg(process.pid, signal.SIGKILL)
            except ProcessLookupError:
                return
    else:
        process.terminate()
        try:
            process.wait(timeout=2)
            return
        except subprocess.TimeoutExpired:
            process.kill()
    try:
        process.wait(timeout=2)
    except subprocess.TimeoutExpired as error:
        raise ManifestError(
            f"failed to terminate process group rooted at {process.pid}"
        ) from error


def _signal_cleanup(signum: int, _frame: object) -> None:
    child = _ACTIVE_CHILD
    if child is not None:
        _terminate_process_group(child)
    raise SystemExit(128 + signum)


def install_signal_cleanup() -> None:
    if os.name != "posix":
        return
    signal.signal(signal.SIGINT, _signal_cleanup)
    signal.signal(signal.SIGTERM, _signal_cleanup)


def run_command(
    argv: Sequence[str],
    *,
    cwd: Path,
    env: dict[str, str] | None = None,
    timeout: int | None = None,
    check: bool = True,
    enforce_resource_limits: bool = False,
    poll_seconds: float = RESOURCE_POLL_SECONDS,
) -> subprocess.CompletedProcess[str]:
    global _ACTIVE_CHILD
    command = [str(argument) for argument in argv]
    started = time.monotonic()
    failure: str | None = None
    with (
        tempfile.SpooledTemporaryFile(max_size=OUTPUT_SPOOL_LIMIT_BYTES) as stdout,
        tempfile.SpooledTemporaryFile(max_size=OUTPUT_SPOOL_LIMIT_BYTES) as stderr,
    ):
        process = subprocess.Popen(
            command,
            cwd=cwd,
            env=env,
            stdout=stdout,
            stderr=stderr,
            start_new_session=os.name == "posix",
        )
        _ACTIVE_CHILD = process
        try:
            while process.poll() is None:
                elapsed = time.monotonic() - started
                if timeout is not None and elapsed >= timeout:
                    failure = f"command timed out after {timeout} seconds"
                    break
                if enforce_resource_limits:
                    try:
                        failure = _resource_limit_reason(process.pid)
                    except ManifestError as error:
                        failure = f"resource monitoring failed: {error}"
                    if failure is not None:
                        break
                remaining = None if timeout is None else max(0.0, timeout - elapsed)
                time.sleep(
                    poll_seconds
                    if remaining is None
                    else min(poll_seconds, remaining)
                )
            if failure is not None:
                _terminate_process_group(process)
            returncode = process.wait()
        finally:
            _ACTIVE_CHILD = None
        stdout_text = _read_spooled(stdout)
        stderr_text = _read_spooled(stderr)

    if failure is not None:
        raise ManifestError(
            f"{failure}\n"
            f"command: {' '.join(command)}\n"
            f"cwd: {cwd}\n"
            f"stdout:\n{_tail(stdout_text)}\n"
            f"stderr:\n{_tail(stderr_text)}"
        )
    completed = subprocess.CompletedProcess(
        command,
        returncode,
        stdout=stdout_text,
        stderr=stderr_text,
    )
    if check and returncode:
        raise ManifestError(
            f"command failed ({returncode})\n"
            f"command: {' '.join(command)}\n"
            f"cwd: {cwd}\n"
            f"stdout:\n{_tail(stdout_text)}\n"
            f"stderr:\n{_tail(stderr_text)}"
        )
    return completed


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


def reproduce_graph(graph: dict[str, Any], temp_root: Path) -> tuple[bytes, str]:
    if os.name == "nt":
        raise ManifestError(
            "compare/regenerate must run inside WSL or another POSIX environment "
            "with the pinned cargo-hax toolchain loaded"
        )
    input_hashes_before = current_input_hashes(graph)
    raw_paths: list[Path] = []
    for index, extraction in enumerate(graph["extractions"]):
        output_dir = temp_root / f"extraction-{index}"
        output_dir.mkdir()
        command = [
            str(output_dir) if token == "{output_dir}" else token
            for token in extraction["argv"]
        ]
        recipe_env = dict(extraction["env"])
        isolation_kind = recipe_env.pop("SHIELDD_EXTRACTION_ISOLATION", None)
        environment = _bounded_extraction_environment(recipe_env)
        if isolation_kind is None:
            cwd = REPO_ROOT.joinpath(*PurePosixPath(extraction["cwd"]).parts)
        elif isolation_kind == "s3-spike":
            cwd = _isolation_dir(graph, temp_root, index)
        else:
            raise ManifestError(
                f"graph {graph['id']}: unknown extraction isolation {isolation_kind}"
            )
        completed = run_command(
            command,
            cwd=cwd,
            env=environment,
            timeout=DEFAULT_EXTRACTION_TIMEOUT_SECONDS,
            enforce_resource_limits=True,
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
    input_hashes_after = current_input_hashes(graph)
    _assert_inputs_unchanged(graph, input_hashes_before, input_hashes_after)
    return result.content, result.selected_raw_declarations_sha256


def compare_graph(graph: dict[str, Any]) -> tuple[bool, str]:
    source_before = current_graph_source_snapshot(graph)
    source_sha256 = source_snapshot_sha256(source_before)
    expected_source_sha256 = graph.get("source_sha256")
    if source_sha256 != expected_source_sha256:
        return (
            False,
            f"{graph['id']}: source fingerprint drift\n"
            f"  committed={expected_source_sha256 or '<missing>'}\n"
            f"  current={source_sha256}",
        )
    with tempfile.TemporaryDirectory(prefix=f"shieldd-extract-{graph['id']}-") as raw_temp:
        content, selected_digest = reproduce_graph(graph, Path(raw_temp))
    _assert_source_snapshot_unchanged(
        graph,
        source_before,
        current_graph_source_snapshot(graph),
    )
    committed_path = REPO_ROOT.joinpath(*PurePosixPath(graph["output"]).parts)
    committed = committed_path.read_bytes()
    normalized_hash = hashlib.sha256(content).hexdigest()
    expected_selected_digest = graph["normalization"][
        "selected_raw_declarations_sha256"
    ]
    selected_digest_match = selected_digest == expected_selected_digest
    byte_match = content == committed
    if byte_match and selected_digest_match:
        return True, f"{graph['id']}: byte-identical ({normalized_hash})"
    details = [
        f"{graph['id']}: drift",
        f"  committed={hashlib.sha256(committed).hexdigest()}",
        f"  regenerated={normalized_hash}",
    ]
    if not selected_digest_match:
        details.append(f"  selected digest expected={expected_selected_digest}")
        details.append(f"  selected digest actual={selected_digest}")
    return False, "\n".join(details)


def _git(args: Sequence[str], *, check: bool = True) -> subprocess.CompletedProcess[str]:
    executable = "git"
    repo_root = str(REPO_ROOT)
    windows_git = shutil.which("git.exe")
    if os.name == "posix" and windows_git and Path("/proc/sys/fs/binfmt_misc/WSLInterop").exists():
        converted = run_command(
            ["wslpath", "-w", repo_root],
            cwd=REPO_ROOT,
            check=True,
            timeout=5,
        )
        executable = windows_git
        repo_root = converted.stdout.strip()
    environment = os.environ.copy()
    environment.update(GIT_OPTIONAL_LOCKS="0", GIT_TERMINAL_PROMPT="0")
    return run_command(
        [executable, "-C", repo_root, *args],
        cwd=REPO_ROOT,
        check=check,
        timeout=60,
        env=environment,
    )


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
    stale = stale_graph_ids(manifest)
    if stale:
        raise ManifestError(
            "stale extraction graph(s): " + ", ".join(stale)
        )
    s2 = sum(graph["campaign"] == "s2" for graph in manifest["graphs"])
    s3 = sum(graph["campaign"] == "s3" for graph in manifest["graphs"])
    print(
        "extractions: ok "
        f"({EXPECTED_GRAPH_COUNT}/{EXPECTED_GRAPH_COUNT} graphs; s2={s2}, s3={s3})"
    )
    return 0


def command_affected(args: argparse.Namespace) -> int:
    manifest = load_manifest(args.manifest)
    validate_manifest(manifest, manifest_path=args.manifest)
    for graph_id in affected_graph_ids(manifest, args.base):
        print(graph_id)
    return 0


def stale_graph_ids(manifest: dict[str, Any]) -> list[str]:
    """Return graphs whose complete source fingerprint or output changed."""
    validate_manifest(manifest, verify_files=False)
    declared_outputs = {
        graph["output"]
        for graph in manifest["graphs"]
    }
    generated_dir = REPO_ROOT.joinpath(*PurePosixPath(EXTRACTED_REPO_DIR).parts)
    actual_outputs = {
        path.relative_to(REPO_ROOT).as_posix()
        for path in generated_dir.glob("*Generated.lean")
    }
    unexpected = sorted(actual_outputs - declared_outputs)
    if unexpected:
        raise ManifestError(
            "unexpected generated output(s): " + ", ".join(unexpected)
        )

    stale: list[str] = []
    for graph in manifest["graphs"]:
        expected_inputs = [item["sha256"] for item in graph["inputs"]]
        actual_inputs = current_input_hashes(graph)
        expected_source = graph.get("source_sha256")
        actual_source = current_graph_source_sha256(graph)
        output_path = REPO_ROOT.joinpath(
            *PurePosixPath(graph["output"]).parts
        )
        output_matches = (
            output_path.is_file()
            and sha256_file(output_path) == graph["output_sha256"]
        )
        if (
            actual_inputs != expected_inputs
            or actual_source != expected_source
            or not output_matches
        ):
            stale.append(graph["id"])
    return stale


def command_stale(args: argparse.Namespace) -> int:
    manifest = load_manifest(args.manifest)
    for graph_id in stale_graph_ids(manifest):
        print(graph_id)
    return 0


def extraction_source_directories(manifest: dict[str, Any]) -> list[str]:
    """Return every crate directory covered by an extraction fingerprint."""
    directories: set[str] = set()
    for graph in manifest["graphs"]:
        crate_manifest = REPO_ROOT.joinpath(
            *PurePosixPath(graph["crate_manifest"]).parts
        ).resolve()
        for directory in _local_crate_directories(crate_manifest):
            directories.add(directory.relative_to(REPO_ROOT).as_posix())
    return sorted(directories)


def command_source_directories(args: argparse.Namespace) -> int:
    manifest = load_manifest(args.manifest)
    # Applicability runs before stale generated evidence is refreshed.  This
    # command needs the manifest's shape and current crate closure, not matching
    # source/output hashes; requiring fresh hashes here would prevent CI from
    # selecting the very extraction lane that repairs them.
    validate_manifest(
        manifest,
        verify_files=False,
        manifest_path=args.manifest,
    )
    payload = {
        "schema_version": 1,
        "graphs": sorted(graph["id"] for graph in manifest["graphs"]),
        "directories": extraction_source_directories(manifest),
    }
    sys.stdout.buffer.write(canonical_json(payload))
    return 0


def command_compare(args: argparse.Namespace) -> int:
    manifest = load_manifest(args.manifest)
    validate_manifest(manifest, manifest_path=args.manifest)
    selected = select_graphs(
        manifest,
        args.graph,
        shard_index=args.shard_index,
        shard_count=args.shard_count,
    )
    all_match = True
    for graph in selected:
        matches, report = compare_graph(graph)
        print(report, flush=True)
        all_match &= matches
    return 0 if all_match else 1


def current_input_hashes(graph: dict[str, Any]) -> list[str]:
    return [
        sha256_file(REPO_ROOT.joinpath(*PurePosixPath(item["path"]).parts))
        for item in graph["inputs"]
    ]


def graph_source_paths(graph: dict[str, Any]) -> list[Path]:
    repo_paths = {
        EXTRACTIONS_REPO_PATH,
        NORMALIZER_REPO_PATH,
        RUNTIME_REPO_PATH,
        graph["crate_manifest"],
        *(item["path"] for item in graph["inputs"]),
        *WORKSPACE_SOURCE_PATHS,
    }
    for path in conservative_crate_source_paths(graph):
        repo_paths.add(path.relative_to(REPO_ROOT).as_posix())
    for module in graph["normalization"]["reuse_modules"]:
        repo_paths.add(
            (
                Path("crates/crypto/proof-aggregation/formal/lean-ipp")
                .joinpath(*module.split("."))
                .with_suffix(".lean")
                .as_posix()
            )
        )
    return [
        REPO_ROOT.joinpath(*PurePosixPath(path).parts)
        for path in sorted(repo_paths)
    ]


def _is_within_repo(path: Path) -> bool:
    try:
        path.relative_to(REPO_ROOT)
    except ValueError:
        return False
    return True


def _local_crate_directories(crate_manifest: Path) -> list[Path]:
    """Return the crate and all repository-local path dependency crates."""
    pending = [crate_manifest.parent.resolve()]
    visited: set[Path] = set()
    while pending:
        crate_dir = pending.pop()
        if crate_dir in visited:
            continue
        if not _is_within_repo(crate_dir):
            raise ManifestError(
                f"crate source escapes repository: {crate_dir}"
            )
        manifest_path = crate_dir / "Cargo.toml"
        if not manifest_path.is_file():
            raise ManifestError(f"missing crate manifest: {manifest_path}")
        visited.add(crate_dir)
        try:
            manifest_text = manifest_path.read_text(encoding="utf-8")
        except (OSError, UnicodeError) as exc:
            raise ManifestError(f"{manifest_path}: {exc}") from exc
        for relative in LOCAL_PATH_DEPENDENCY.findall(manifest_text):
            dependency_dir = (crate_dir / relative).resolve()
            dependency_manifest = dependency_dir / "Cargo.toml"
            if not dependency_manifest.is_file():
                raise ManifestError(
                    f"{manifest_path}: missing local path dependency "
                    f"{dependency_manifest}"
                )
            pending.append(dependency_dir)
    return sorted(visited)


def conservative_crate_source_paths(graph: dict[str, Any]) -> list[Path]:
    """Collect Rust/config inputs which may affect the extracted crate."""
    crate_manifest = REPO_ROOT.joinpath(
        *PurePosixPath(graph["crate_manifest"]).parts
    ).resolve()
    result: set[Path] = set()
    for crate_dir in _local_crate_directories(crate_manifest):
        for path in crate_dir.rglob("*.rs"):
            relative = path.relative_to(crate_dir)
            if not (IGNORED_CRATE_SOURCE_DIRS & set(relative.parts)):
                result.add(path)
        ancestor = crate_dir
        while _is_within_repo(ancestor):
            for relative in CRATE_CONFIG_NAMES:
                candidate = ancestor.joinpath(*PurePosixPath(relative).parts)
                if candidate.is_file():
                    result.add(candidate)
            if ancestor == REPO_ROOT:
                break
            ancestor = ancestor.parent
    return sorted(result)


def current_graph_source_snapshot(graph: dict[str, Any]) -> dict[str, str]:
    """Hash the commit and every repository source consumed by one graph."""
    head = _git(["rev-parse", "HEAD"]).stdout.strip()
    if not COMMIT.fullmatch(head):
        raise ManifestError(
            f"graph {graph['id']}: git rev-parse returned invalid HEAD {head!r}"
        )
    snapshot = {"git:HEAD": head}
    for path in graph_source_paths(graph):
        try:
            label = path.relative_to(REPO_ROOT).as_posix()
        except ValueError:
            label = str(path)
        snapshot[label] = sha256_file(path)
    return snapshot


def source_snapshot_sha256(snapshot: dict[str, str]) -> str:
    # HEAD is part of the in-flight freeze check, but not cache identity:
    # unrelated commits must not invalidate otherwise identical graphs.
    content_snapshot = {
        path: digest
        for path, digest in snapshot.items()
        if path != "git:HEAD"
    }
    return hashlib.sha256(canonical_json(content_snapshot)).hexdigest()


def current_graph_source_sha256(graph: dict[str, Any]) -> str:
    return source_snapshot_sha256(current_graph_source_snapshot(graph))


def _assert_source_snapshot_unchanged(
    graph: dict[str, Any],
    before: dict[str, str],
    after: dict[str, str],
) -> None:
    if before == after:
        return
    changed = sorted(
        key
        for key in before.keys() | after.keys()
        if before.get(key) != after.get(key)
    )
    raise ManifestError(
        f"graph {graph['id']}: source changed during extraction: "
        + ", ".join(changed)
    )


def _assert_inputs_unchanged(
    graph: dict[str, Any],
    before: Sequence[str],
    after: Sequence[str],
) -> None:
    if list(before) == list(after):
        return
    changed = [
        item["path"]
        for item, previous, current in zip(graph["inputs"], before, after)
        if previous != current
    ]
    if len(before) != len(after):
        changed.append("<input inventory>")
    raise ManifestError(
        f"graph {graph['id']}: inputs changed during extraction: "
        + ", ".join(changed)
    )


def _atomic_write_bytes(path: Path, content: bytes) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    descriptor, temporary_name = tempfile.mkstemp(
        prefix=f".{path.name}.",
        suffix=".tmp",
        dir=path.parent,
    )
    temporary = Path(temporary_name)
    try:
        with os.fdopen(descriptor, "wb") as destination:
            destination.write(content)
            destination.flush()
            os.fsync(destination.fileno())
        os.replace(temporary, path)
    finally:
        try:
            temporary.unlink()
        except FileNotFoundError:
            pass


def _restore_file(path: Path, original: bytes | None) -> None:
    if original is None:
        try:
            path.unlink()
        except FileNotFoundError:
            pass
    else:
        _atomic_write_bytes(path, original)


def _commit_regeneration(
    *,
    output_path: Path,
    output_content: bytes,
    manifest_path: Path,
    manifest_content: bytes,
    post_commit_check: Callable[[], None] | None = None,
) -> None:
    original_output = output_path.read_bytes() if output_path.is_file() else None
    original_manifest = manifest_path.read_bytes()
    try:
        _atomic_write_bytes(output_path, output_content)
        _atomic_write_bytes(manifest_path, manifest_content)
        if post_commit_check is not None:
            post_commit_check()
    except BaseException:
        _restore_file(output_path, original_output)
        _restore_file(manifest_path, original_manifest)
        raise


def command_regenerate(args: argparse.Namespace) -> int:
    if not args.update_manifest:
        raise ManifestError("regenerate requires --update-manifest")
    manifest = load_manifest(args.manifest)
    # Regeneration is the only command allowed to bootstrap a newly declared
    # output. Its final validation below is strict, so an interrupted or
    # incomplete regeneration still leaves every normal gate fail-closed.
    validate_manifest(
        manifest,
        manifest_path=args.manifest,
        verify_files=False,
    )
    selected = select_graphs(manifest, args.graph)
    if len(selected) != 1:
        raise ManifestError(
            "regenerate requires exactly one --graph; run graphs separately"
        )
    updated = copy.deepcopy(manifest)
    updated_graphs = graph_map(updated)
    for graph in selected:
        source_snapshot = current_graph_source_snapshot(graph)
        source_sha256 = source_snapshot_sha256(source_snapshot)
        manifest_sha256 = sha256_file(args.manifest)
        input_hashes_before = current_input_hashes(graph)
        with tempfile.TemporaryDirectory(
            prefix=f"shieldd-extract-{graph['id']}-"
        ) as raw_temp:
            content, selected_digest = reproduce_graph(graph, Path(raw_temp))
        input_hashes_after = current_input_hashes(graph)
        _assert_inputs_unchanged(graph, input_hashes_before, input_hashes_after)
        _assert_source_snapshot_unchanged(
            graph,
            source_snapshot,
            current_graph_source_snapshot(graph),
        )
        if sha256_file(args.manifest) != manifest_sha256:
            raise ManifestError(
                f"graph {graph['id']}: extraction manifest changed during extraction"
            )
        output_path = REPO_ROOT.joinpath(*PurePosixPath(graph["output"]).parts)
        digest = hashlib.sha256(content).hexdigest()
        updated_graph = updated_graphs[graph["id"]]
        for item, input_hash in zip(updated_graph["inputs"], input_hashes_after):
            item["sha256"] = input_hash
        updated_graph["source_sha256"] = source_sha256
        updated_graph["output_sha256"] = digest
        updated_graph["normalization"][
            "selected_raw_declarations_sha256"
        ] = selected_digest
        updated_graph["normalization"]["normalized_sha256"] = digest
        validate_manifest(
            updated,
            manifest_path=args.manifest,
            verify_files=False,
            verify_canonical_file=False,
        )
        _assert_source_snapshot_unchanged(
            graph,
            source_snapshot,
            current_graph_source_snapshot(graph),
        )
        if sha256_file(args.manifest) != manifest_sha256:
            raise ManifestError(
                f"graph {graph['id']}: extraction manifest changed before commit"
            )
        _commit_regeneration(
            output_path=output_path,
            output_content=content,
            manifest_path=args.manifest,
            manifest_content=canonical_json(updated),
            post_commit_check=lambda: _assert_source_snapshot_unchanged(
                graph,
                source_snapshot,
                current_graph_source_snapshot(graph),
            ),
        )
        print(
            f"{graph['id']}: regenerated ({digest}); "
            f"source_sha256={source_sha256}",
            flush=True,
        )
    # Scoped regeneration intentionally permits unrelated graphs to remain
    # stale. The global `check` command still validates the complete inventory.
    validate_manifest(
        load_manifest(args.manifest),
        manifest_path=args.manifest,
        verify_files=False,
    )
    if sha256_file(output_path) != updated_graph["output_sha256"]:
        raise ManifestError(
            f"graph {graph['id']}: committed output hash does not match manifest"
        )
    return 0


def command_preview(args: argparse.Namespace) -> int:
    manifest = load_manifest(args.manifest)
    validate_manifest(manifest, manifest_path=args.manifest)
    selected = select_graphs(manifest, [args.graph])
    with tempfile.TemporaryDirectory(
        prefix=f"shieldd-extract-{selected[0]['id']}-"
    ) as raw_temp:
        content, selected_digest = reproduce_graph(selected[0], Path(raw_temp))
    print(
        f"selected_raw_declarations_sha256={selected_digest}",
        file=sys.stderr,
    )
    sys.stdout.buffer.write(content)
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

    stale = commands.add_parser("stale")
    stale.set_defaults(handler=command_stale)

    source_directories = commands.add_parser("source-directories")
    source_directories.set_defaults(handler=command_source_directories)

    compare = commands.add_parser("compare")
    compare.add_argument("--graph", action="append")
    compare.add_argument("--shard-index", type=int)
    compare.add_argument("--shard-count", type=int)
    compare.set_defaults(handler=command_compare)

    regenerate = commands.add_parser("regenerate")
    regenerate.add_argument("--graph", action="append")
    regenerate.add_argument("--update-manifest", action="store_true")
    regenerate.set_defaults(handler=command_regenerate)
    preview = commands.add_parser("preview")
    preview.add_argument("--graph", required=True)
    preview.set_defaults(handler=command_preview)
    return result


def main(argv: list[str] | None = None) -> int:
    install_signal_cleanup()
    args = parser().parse_args(argv)
    try:
        return args.handler(args)
    except (ManifestError, OSError, subprocess.CalledProcessError, UnicodeError) as exc:
        print(f"extractions: error: {exc}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
