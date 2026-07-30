#!/usr/bin/env python3
"""Fail-closed applicability classifier for expensive CI gates."""

from __future__ import annotations

import argparse
import fnmatch
import json
import re
import subprocess
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Iterable, Sequence


SCHEMA_VERSION = 1
CANDIDATE_EVENTS = {"pull_request", "merge_group"}
UNCONDITIONAL_EVENTS = {"schedule", "workflow_call", "workflow_dispatch"}
SUPPORTED_EVENTS = CANDIDATE_EVENTS | UNCONDITIONAL_EVENTS
GRAPH_ID = re.compile(r"^[A-Za-z][A-Za-z0-9_]*$")


class ClassificationError(RuntimeError):
    """The classifier could not prove a safe applicability decision."""


@dataclass(frozen=True)
class InputRule:
    patterns: tuple[str, ...]
    tier: str
    reason: str
    graphs: tuple[str, ...] = ()


@dataclass(frozen=True)
class Declaration:
    gate: str
    tiers: tuple[str, ...]
    events: dict[str, dict[str, str]]
    derived_inputs: tuple[dict[str, Any], ...]
    explicit_inputs: tuple[dict[str, Any], ...]
    irrelevant_inputs: tuple[dict[str, Any], ...]

    def rank(self, tier: str) -> int:
        try:
            return self.tiers.index(tier)
        except ValueError as error:
            raise ClassificationError(f"undeclared tier {tier!r}") from error


@dataclass(frozen=True)
class Decision:
    status: str
    tier: str
    explanation: str
    changed_files: tuple[str, ...]
    matched: tuple[dict[str, Any], ...]
    unknown_files: tuple[str, ...]
    graphs: tuple[str, ...]

    def as_dict(self) -> dict[str, Any]:
        return {
            "status": self.status,
            "tier": self.tier,
            "run": self.status == "run",
            "explanation": self.explanation,
            "changed_files": list(self.changed_files),
            "matched": list(self.matched),
            "unknown_files": list(self.unknown_files),
            "graphs": list(self.graphs),
        }


def _object(value: Any, where: str) -> dict[str, Any]:
    if not isinstance(value, dict):
        raise ClassificationError(f"{where} must be an object")
    return value


def _string(value: Any, where: str) -> str:
    if not isinstance(value, str) or not value:
        raise ClassificationError(f"{where} must be a non-empty string")
    return value


def _graph_id(value: Any, where: str) -> str:
    graph_id = _string(value, where)
    if not GRAPH_ID.fullmatch(graph_id):
        raise ClassificationError(
            f"{where} must match [A-Za-z][A-Za-z0-9_]*"
        )
    return graph_id


def _strings(value: Any, where: str) -> tuple[str, ...]:
    if not isinstance(value, list) or not value:
        raise ClassificationError(f"{where} must be a non-empty array")
    if any(not isinstance(item, str) or not item for item in value):
        raise ClassificationError(f"{where} must contain non-empty strings")
    return tuple(value)


def normalize_repo_path(value: Any, where: str = "path") -> str:
    path = _string(value, where).replace("\\", "/")
    parts = path.split("/")
    if (
        path.startswith("/")
        or (len(path) >= 2 and path[1] == ":")
        or any(part in {"", ".", ".."} for part in parts)
        or any(character in path for character in ("\n", "\r", "\0"))
    ):
        raise ClassificationError(
            f"{where} is not a normalized repository path: {value!r}"
        )
    return path


def _pattern(value: Any, where: str) -> str:
    pattern = _string(value, where).replace("\\", "/")
    if (
        pattern.startswith("/")
        or (len(pattern) >= 2 and pattern[1] == ":")
        or any(part in {".", ".."} for part in pattern.split("/"))
        or any(character in pattern for character in ("\n", "\r", "\0"))
    ):
        raise ClassificationError(
            f"{where} is not a safe repository glob: {value!r}"
        )
    return pattern


def _tier_map(
    value: Any, where: str, declared_tiers: tuple[str, ...]
) -> dict[str, str]:
    raw = _object(value, where)
    if not raw:
        raise ClassificationError(f"{where} must not be empty")
    tiers: dict[str, str] = {}
    for event, tier in raw.items():
        if event not in SUPPORTED_EVENTS and event != "default":
            raise ClassificationError(f"{where} has unsupported event {event!r}")
        if not isinstance(tier, str) or tier not in declared_tiers:
            raise ClassificationError(f"{where}.{event} names an undeclared tier")
        tiers[event] = tier
    return tiers


def tier_for(tiers: dict[str, str], event: str, where: str) -> str:
    if event in tiers:
        return tiers[event]
    if "default" in tiers:
        return tiers["default"]
    raise ClassificationError(f"{where} has no tier for event {event}")


def _input_rule(
    value: Any,
    where: str,
    declared_tiers: tuple[str, ...],
    *,
    tiered: bool,
) -> dict[str, Any]:
    raw = _object(value, where)
    expected = {"patterns", "reason"} | ({"tiers"} if tiered else set())
    extras = set(raw) - expected
    missing = expected - set(raw)
    if missing or extras:
        raise ClassificationError(
            f"{where} fields: missing {sorted(missing)}, unknown {sorted(extras)}"
        )
    result: dict[str, Any] = {
        "patterns": tuple(
            _pattern(item, f"{where}.patterns")
            for item in _strings(raw["patterns"], f"{where}.patterns")
        ),
        "reason": _string(raw["reason"], f"{where}.reason"),
    }
    if tiered:
        result["tiers"] = _tier_map(
            raw["tiers"], f"{where}.tiers", declared_tiers
        )
    return result


def load_declaration(path: Path, expected_gate: str | None = None) -> Declaration:
    try:
        raw_value = json.loads(path.read_text(encoding="utf-8"))
    except OSError as error:
        raise ClassificationError(f"cannot read declaration {path}: {error}") from error
    except json.JSONDecodeError as error:
        raise ClassificationError(f"malformed declaration {path}: {error}") from error

    raw = _object(raw_value, str(path))
    expected_fields = {
        "schema_version",
        "gate",
        "tiers",
        "events",
        "derived_inputs",
        "explicit_inputs",
        "irrelevant_inputs",
    }
    if set(raw) != expected_fields:
        raise ClassificationError(
            f"{path} fields: missing {sorted(expected_fields - set(raw))}, "
            f"unknown {sorted(set(raw) - expected_fields)}"
        )
    if raw["schema_version"] != SCHEMA_VERSION:
        raise ClassificationError(
            f"{path}: schema_version must be {SCHEMA_VERSION}"
        )
    gate = _string(raw["gate"], f"{path}.gate")
    if expected_gate is not None and gate != expected_gate:
        raise ClassificationError(
            f"{path}: declares gate {gate!r}, expected {expected_gate!r}"
        )
    tiers = _strings(raw["tiers"], f"{path}.tiers")
    if tiers[0] != "skip" or len(set(tiers)) != len(tiers):
        raise ClassificationError(
            f"{path}.tiers must be unique and begin with 'skip'"
        )

    events_raw = _object(raw["events"], f"{path}.events")
    if set(events_raw) != SUPPORTED_EVENTS:
        raise ClassificationError(
            f"{path}.events must declare exactly {sorted(SUPPORTED_EVENTS)}"
        )
    events: dict[str, dict[str, str]] = {}
    for event, config_value in events_raw.items():
        config = _object(config_value, f"{path}.events.{event}")
        key = "conservative_tier" if event in CANDIDATE_EVENTS else "tier"
        if set(config) != {key}:
            raise ClassificationError(
                f"{path}.events.{event} must contain only {key!r}"
            )
        tier = config[key]
        if not isinstance(tier, str) or tier not in tiers or tier == "skip":
            raise ClassificationError(
                f"{path}.events.{event}.{key} must name a non-skip tier"
            )
        events[event] = {key: tier}

    if not isinstance(raw["derived_inputs"], list):
        raise ClassificationError(f"{path}.derived_inputs must be an array")
    derived: list[dict[str, Any]] = []
    for index, value in enumerate(raw["derived_inputs"]):
        where = f"{path}.derived_inputs[{index}]"
        item = _object(value, where)
        kind = item.get("type")
        if kind == "cargo_local_closure":
            expected = {"type", "packages", "tiers", "reason"}
            if set(item) != expected:
                raise ClassificationError(f"{where} has invalid fields")
            derived.append(
                {
                    "type": kind,
                    "packages": _strings(item["packages"], f"{where}.packages"),
                    "tiers": _tier_map(item["tiers"], f"{where}.tiers", tiers),
                    "reason": _string(item["reason"], f"{where}.reason"),
                }
            )
        elif kind == "lean_extraction_manifest":
            expected = {
                "type",
                "path",
                "source_inventory",
                "global_inputs",
                "graph_tiers",
                "global_tiers",
                "reason",
            }
            if set(item) != expected:
                raise ClassificationError(f"{where} has invalid fields")
            source_inventory = normalize_repo_path(
                item["source_inventory"], f"{where}.source_inventory"
            )
            global_inputs = tuple(
                normalize_repo_path(value, f"{where}.global_inputs")
                for value in _strings(
                    item["global_inputs"], f"{where}.global_inputs"
                )
            )
            if source_inventory not in global_inputs:
                raise ClassificationError(
                    f"{where}.source_inventory must also be a global input"
                )
            derived.append(
                {
                    "type": kind,
                    "path": normalize_repo_path(item["path"], f"{where}.path"),
                    "source_inventory": source_inventory,
                    "global_inputs": global_inputs,
                    "graph_tiers": _tier_map(
                        item["graph_tiers"], f"{where}.graph_tiers", tiers
                    ),
                    "global_tiers": _tier_map(
                        item["global_tiers"], f"{where}.global_tiers", tiers
                    ),
                    "reason": _string(item["reason"], f"{where}.reason"),
                }
            )
        else:
            raise ClassificationError(f"{where}.type is unsupported: {kind!r}")

    if not isinstance(raw["explicit_inputs"], list):
        raise ClassificationError(f"{path}.explicit_inputs must be an array")
    explicit = tuple(
        _input_rule(value, f"{path}.explicit_inputs[{index}]", tiers, tiered=True)
        for index, value in enumerate(raw["explicit_inputs"])
    )
    if not isinstance(raw["irrelevant_inputs"], list):
        raise ClassificationError(f"{path}.irrelevant_inputs must be an array")
    irrelevant = tuple(
        _input_rule(
            value, f"{path}.irrelevant_inputs[{index}]", tiers, tiered=False
        )
        for index, value in enumerate(raw["irrelevant_inputs"])
    )
    return Declaration(
        gate=gate,
        tiers=tiers,
        events=events,
        derived_inputs=tuple(derived),
        explicit_inputs=explicit,
        irrelevant_inputs=irrelevant,
    )


def _run_git(
    root: Path, args: Sequence[str], *, text: bool = True
) -> subprocess.CompletedProcess[Any]:
    try:
        return subprocess.run(
            ["git", *args],
            cwd=root,
            check=False,
            capture_output=True,
            text=text,
            timeout=30,
        )
    except (OSError, subprocess.TimeoutExpired) as error:
        raise ClassificationError(f"git {' '.join(args)} failed: {error}") from error


def changed_files(root: Path, base: str, head: str) -> tuple[str, ...]:
    for label, revision in (("base", base), ("head", head)):
        if not revision:
            raise ClassificationError(f"missing {label} revision")
        if _run_git(root, ["cat-file", "-e", f"{revision}^{{commit}}"]).returncode:
            raise ClassificationError(f"missing {label} commit {revision!r}")
    diff = _run_git(
        root,
        ["diff", "--name-status", "-z", "--find-renames", base, head, "--"],
        text=False,
    )
    if diff.returncode:
        detail = diff.stderr.decode("utf-8", errors="replace").strip()
        raise ClassificationError(f"git diff failed: {detail or diff.returncode}")
    try:
        fields = diff.stdout.decode("utf-8").split("\0")
    except UnicodeDecodeError as error:
        raise ClassificationError("git diff contains a non-UTF-8 path") from error
    if fields and fields[-1] == "":
        fields.pop()
    paths: set[str] = set()
    index = 0
    while index < len(fields):
        status = fields[index]
        index += 1
        path_count = 2 if status.startswith(("R", "C")) else 1
        if index + path_count > len(fields):
            raise ClassificationError("git diff returned a truncated name-status record")
        for path in fields[index : index + path_count]:
            paths.add(normalize_repo_path(path, "changed path"))
        index += path_count
    return tuple(sorted(paths))


def _relative_to_root(root: Path, value: str, where: str) -> str:
    try:
        relative = Path(value).resolve().relative_to(root.resolve())
    except (OSError, ValueError) as error:
        raise ClassificationError(f"{where} is outside the repository: {value}") from error
    return normalize_repo_path(relative.as_posix(), where)


def cargo_closure_rules(
    root: Path, source: dict[str, Any], event: str
) -> list[InputRule]:
    try:
        result = subprocess.run(
            [
                "cargo",
                "metadata",
                "--locked",
                "--offline",
                "--format-version=1",
                "--no-deps",
            ],
            cwd=root,
            check=False,
            capture_output=True,
            text=True,
            timeout=60,
        )
    except (OSError, subprocess.TimeoutExpired) as error:
        raise ClassificationError(f"cargo metadata failed: {error}") from error
    if result.returncode:
        raise ClassificationError(
            "cargo metadata --locked --offline failed: "
            + (result.stderr.strip() or str(result.returncode))
        )
    try:
        metadata = _object(json.loads(result.stdout), "cargo metadata")
    except json.JSONDecodeError as error:
        raise ClassificationError(
            f"cargo metadata returned malformed JSON: {error}"
        ) from error
    packages_value = metadata.get("packages")
    if not isinstance(packages_value, list) or not packages_value:
        raise ClassificationError("cargo metadata.packages must be a non-empty array")

    by_name: dict[str, list[dict[str, Any]]] = {}
    by_dir: dict[str, dict[str, Any]] = {}
    for index, value in enumerate(packages_value):
        package = _object(value, f"cargo metadata.packages[{index}]")
        name = _string(package.get("name"), f"cargo package {index}.name")
        manifest = _string(
            package.get("manifest_path"), f"cargo package {name}.manifest_path"
        )
        directory = _relative_to_root(
            root, str(Path(manifest).parent), f"package {name}"
        )
        if directory in by_dir:
            raise ClassificationError(f"duplicate local Cargo directory {directory}")
        by_name.setdefault(name, []).append(package)
        by_dir[directory] = package

    pending: list[dict[str, Any]] = []
    for name in source["packages"]:
        candidates = by_name.get(name, [])
        if len(candidates) != 1:
            raise ClassificationError(
                f"cargo root package {name!r} resolved to "
                f"{len(candidates)} local packages"
            )
        pending.append(candidates[0])

    closure: set[str] = set()
    while pending:
        package = pending.pop()
        name = package["name"]
        directory = _relative_to_root(
            root, str(Path(package["manifest_path"]).parent), f"package {name}"
        )
        if directory in closure:
            continue
        closure.add(directory)
        dependencies = package.get("dependencies")
        if not isinstance(dependencies, list):
            raise ClassificationError(
                f"cargo package {name}.dependencies must be an array"
            )
        for dependency_value in dependencies:
            dependency = _object(
                dependency_value, f"cargo package {name}.dependency"
            )
            dependency_path = dependency.get("path")
            if dependency_path is None:
                continue
            dependency_dir = _relative_to_root(
                root, dependency_path, f"cargo dependency of {name}"
            )
            if dependency_dir not in by_dir:
                raise ClassificationError(
                    f"cargo dependency {dependency_dir!r} is absent from metadata"
                )
            pending.append(by_dir[dependency_dir])

    def patterns(directories: Iterable[str]) -> tuple[str, ...]:
        return tuple(
            pattern
            for directory in sorted(directories)
            for pattern in (f"{directory}/**", f"{directory}/Cargo.toml")
        )

    relevant_tier = tier_for(source["tiers"], event, "cargo closure")
    outside = set(by_dir) - closure
    rules = [
        InputRule(
            patterns=patterns(closure),
            tier=relevant_tier,
            reason=f"{source['reason']} ({len(closure)} local packages)",
        )
    ]
    if outside:
        rules.append(
            InputRule(
                patterns=patterns(outside),
                tier="skip",
                reason=(
                    "known local Cargo package outside the declared closure "
                    f"({len(outside)} packages)"
                ),
            )
        )
    return rules


def _manifest_path(value: Any, where: str) -> str:
    return normalize_repo_path(value, where)


def _extraction_output_module(output: str, where: str) -> str:
    path = Path(output)
    if path.suffix != ".lean":
        raise ClassificationError(f"{where} must name a Lean output")
    parts = path.with_suffix("").parts
    try:
        ipp_index = parts.index("Ipp")
    except ValueError:
        ipp_index = 0
    return ".".join(parts[ipp_index:])


def extraction_reuse_closure(
    manifest: Any,
    graph_ids: Iterable[str],
    *,
    label: str,
) -> tuple[str, ...]:
    """Expand graph ids through imports of generated extraction modules."""
    graphs = _extraction_graphs_by_id(manifest, label)
    selected = set(graph_ids)
    unknown = sorted(selected - graphs.keys())
    if unknown:
        raise ClassificationError(
            f"{label} references unknown extraction graph(s): "
            + ", ".join(unknown)
        )

    module_owner: dict[str, str] = {}
    for graph_id, graph in graphs.items():
        output = _manifest_path(
            graph.get("output"), f"{label}.graph {graph_id}.output"
        )
        module = _extraction_output_module(
            output, f"{label}.graph {graph_id}.output"
        )
        if module in module_owner:
            raise ClassificationError(
                f"{label} contains duplicate generated module {module}"
            )
        module_owner[module] = graph_id

    dependents = {graph_id: set() for graph_id in graphs}
    for graph_id, graph in graphs.items():
        normalization = _object(
            graph.get("normalization"),
            f"{label}.graph {graph_id}.normalization",
        )
        reuse = normalization.get("reuse_modules")
        if not isinstance(reuse, list):
            raise ClassificationError(
                f"{label}.graph {graph_id}.normalization.reuse_modules "
                "must be an array"
            )
        for index, value in enumerate(reuse):
            module = _string(
                value,
                f"{label}.graph {graph_id}.normalization."
                f"reuse_modules[{index}]",
            )
            owner = module_owner.get(module)
            if owner is not None:
                dependents[owner].add(graph_id)

    pending = list(selected)
    while pending:
        owner = pending.pop()
        for dependent in dependents[owner]:
            if dependent not in selected:
                selected.add(dependent)
                pending.append(dependent)
    return tuple(sorted(selected))


def lean_manifest_rules_from_data(
    manifest: Any,
    source: dict[str, Any],
    event: str,
    *,
    verify_root: Path | None,
    label: str,
    include_manifest_input: bool = True,
    stale_output_graphs: frozenset[str] | None = None,
    evidence_tier: str | None = None,
) -> list[InputRule]:
    raw = _object(manifest, label)
    if raw.get("schema_version") != 3:
        raise ClassificationError(f"{label}.schema_version must be 3")
    if not isinstance(raw.get("toolchains"), dict):
        raise ClassificationError(f"{label}.toolchains must be an object")
    graphs_value = raw.get("graphs")
    if not isinstance(graphs_value, list) or not graphs_value:
        raise ClassificationError(f"{label}.graphs must be a non-empty array")

    graph_tier = tier_for(source["graph_tiers"], event, label)
    global_tier = tier_for(source["global_tiers"], event, label)
    graph_ids: set[str] = set()
    normalizers: set[str] = set()
    rules: list[InputRule] = []
    for index, value in enumerate(graphs_value):
        where = f"{label}.graphs[{index}]"
        graph = _object(value, where)
        graph_id = _graph_id(graph.get("id"), f"{where}.id")
        if graph_id in graph_ids:
            raise ClassificationError(
                f"{label} contains duplicate graph id {graph_id!r}"
            )
        graph_ids.add(graph_id)
        output = _manifest_path(graph.get("output"), f"{where}.output")
        paths = {
            _manifest_path(graph.get("crate_manifest"), f"{where}.crate_manifest"),
        }
        source_files = graph.get("source_files")
        if not isinstance(source_files, list) or not source_files:
            raise ClassificationError(
                f"{where}.source_files must be a non-empty array"
            )
        for source_index, source_value in enumerate(source_files):
            source_path = _manifest_path(
                source_value,
                f"{where}.source_files[{source_index}]",
            )
            if not source_path.endswith(".rs"):
                raise ClassificationError(
                    f"{where}.source_files[{source_index}] "
                    "must be a Rust source"
                )
            paths.add(source_path)
        inputs = graph.get("inputs")
        if not isinstance(inputs, list) or not inputs:
            raise ClassificationError(f"{where}.inputs must be a non-empty array")
        for input_index, input_value in enumerate(inputs):
            input_item = _object(
                input_value, f"{where}.inputs[{input_index}]"
            )
            paths.add(
                _manifest_path(
                    input_item.get("path"),
                    f"{where}.inputs[{input_index}].path",
                )
            )
        normalization = _object(
            graph.get("normalization"), f"{where}.normalization"
        )
        normalizers.add(
            _manifest_path(
                normalization.get("script"), f"{where}.normalization.script"
            )
        )
        parity = graph.get("parity")
        if not isinstance(parity, list) or not parity:
            raise ClassificationError(f"{where}.parity must be a non-empty array")
        if verify_root is not None:
            missing = sorted(
                path
                for path in paths | {output}
                if not (verify_root / path).is_file()
            )
            if missing:
                raise ClassificationError(
                    f"{where} references missing file(s): {', '.join(missing)}"
                )
        rules.append(
            InputRule(
                patterns=tuple(sorted(paths)),
                tier=graph_tier,
                reason=f"{source['reason']}: graph {graph_id}",
                graphs=extraction_reuse_closure(
                    raw, (graph_id,), label=label
                ),
            )
        )
        output_is_stale = (
            stale_output_graphs is None or graph_id in stale_output_graphs
        )
        rules.append(
            InputRule(
                patterns=(output,),
                tier=(
                    graph_tier
                    if output_is_stale
                    else evidence_tier or graph_tier
                ),
                reason=(
                    f"{source['reason']}: stale generated output {graph_id}"
                    if output_is_stale
                    else (
                        f"{source['reason']}: current committed extraction "
                        f"evidence {graph_id}"
                    )
                ),
                graphs=(
                    extraction_reuse_closure(
                        raw, (graph_id,), label=label
                    )
                    if output_is_stale
                    else ()
                ),
            )
        )

    global_paths = set(source["global_inputs"])
    if include_manifest_input:
        global_paths.add(source["path"])
    global_paths.update(normalizers)
    if verify_root is not None:
        missing = sorted(
            path for path in global_paths if not (verify_root / path).is_file()
        )
        if missing:
            raise ClassificationError(
                f"{label} global input is missing: {', '.join(missing)}"
            )
    rules.append(
        InputRule(
            patterns=tuple(sorted(global_paths)),
            tier=global_tier,
            reason=f"{source['reason']}: shared extractor/normalizer/runtime",
            graphs=tuple(sorted(graph_ids)),
        )
    )
    return rules


def _git_json_file(root: Path, revision: str, path: str) -> Any | None:
    probe = _run_git(root, ["ls-tree", "--name-only", revision, "--", path])
    if probe.returncode:
        raise ClassificationError(f"cannot inspect {path} at base {revision}")
    if not probe.stdout.strip():
        return None
    result = _run_git(root, ["show", f"{revision}:{path}"])
    if result.returncode:
        raise ClassificationError(f"cannot read {path} at base {revision}")
    try:
        return json.loads(result.stdout)
    except json.JSONDecodeError as error:
        raise ClassificationError(
            f"malformed base manifest {revision}:{path}: {error}"
        ) from error


def _extraction_graphs_by_id(
    manifest: Any,
    label: str,
) -> dict[str, dict[str, Any]]:
    raw = _object(manifest, label)
    graphs = raw.get("graphs")
    if not isinstance(graphs, list) or not graphs:
        raise ClassificationError(f"{label}.graphs must be a non-empty array")
    result: dict[str, dict[str, Any]] = {}
    for index, value in enumerate(graphs):
        graph = _object(value, f"{label}.graphs[{index}]")
        graph_id = _graph_id(graph.get("id"), f"{label}.graphs[{index}].id")
        if graph_id in result:
            raise ClassificationError(
                f"{label} contains duplicate graph id {graph_id!r}"
            )
        result[graph_id] = graph
    return result


def extraction_recipe_projection(graph: dict[str, Any]) -> dict[str, Any]:
    """Return graph instructions without regenerated evidence fields."""
    projected = json.loads(json.dumps(graph))
    projected.pop("source_sha256", None)
    projected.pop("output_sha256", None)
    inputs = projected.get("inputs")
    if not isinstance(inputs, list):
        raise ClassificationError("extraction graph inputs must be an array")
    for index, value in enumerate(inputs):
        item = _object(value, f"extraction graph inputs[{index}]")
        item.pop("sha256", None)
    normalization = _object(
        projected.get("normalization"), "extraction graph normalization"
    )
    normalization.pop("selected_raw_declarations_sha256", None)
    normalization.pop("normalized_sha256", None)
    return projected


def extraction_manifest_semantic_changes(
    current: Any,
    previous: Any | None,
    *,
    current_label: str,
    previous_label: str,
) -> tuple[frozenset[str], bool]:
    """Return recipe-changed graphs and whether shared extraction state changed."""
    current_raw = _object(current, current_label)
    current_graphs = _extraction_graphs_by_id(current_raw, current_label)
    if previous is None:
        return frozenset(current_graphs), True
    previous_raw = _object(previous, previous_label)
    previous_graphs = _extraction_graphs_by_id(previous_raw, previous_label)
    shared_changed = (
        current_raw.get("schema_version") != previous_raw.get("schema_version")
        or current_raw.get("toolchains") != previous_raw.get("toolchains")
        or current_graphs.keys() != previous_graphs.keys()
    )
    if shared_changed:
        return frozenset(current_graphs.keys() | previous_graphs.keys()), True
    changed = frozenset(
        graph_id
        for graph_id in current_graphs
        if extraction_recipe_projection(current_graphs[graph_id])
        != extraction_recipe_projection(previous_graphs[graph_id])
    )
    return changed, False


def extraction_stale_graphs(
    root: Path,
    source: dict[str, Any],
    manifest: Any,
) -> frozenset[str]:
    """Validate the committed graph attestations and return only stale ids."""
    inventory_path = root / source["source_inventory"]
    manifest_path = root / source["path"]
    graph_ids = frozenset(
        _extraction_graphs_by_id(
            manifest, "current extraction manifest"
        )
    )
    try:
        completed = subprocess.run(
            [
                sys.executable,
                str(inventory_path),
                "--manifest",
                str(manifest_path),
                "stale",
            ],
            cwd=root,
            check=False,
            capture_output=True,
            text=True,
            timeout=120,
        )
    except (OSError, subprocess.TimeoutExpired) as error:
        raise ClassificationError(
            f"extraction evidence validation failed: {error}"
        ) from error
    if completed.returncode:
        detail = completed.stderr.strip() or completed.stdout.strip()
        raise ClassificationError(
            "extraction evidence validation failed: "
            + (detail or str(completed.returncode))
        )
    stale: list[str] = []
    for line in completed.stdout.splitlines():
        graph_id = _graph_id(line, "stale extraction graph")
        if graph_id not in graph_ids:
            raise ClassificationError(
                f"stale extraction inventory returned unknown graph {graph_id}"
            )
        stale.append(graph_id)
    if len(set(stale)) != len(stale):
        raise ClassificationError(
            "stale extraction inventory contains duplicate graph ids"
        )
    return frozenset(stale)


def extraction_source_directory_rule(
    root: Path,
    source: dict[str, Any],
    manifest: Any,
    event: str,
) -> InputRule:
    inventory_path = root / source["source_inventory"]
    manifest_path = root / source["path"]
    try:
        completed = subprocess.run(
            [
                sys.executable,
                str(inventory_path),
                "--manifest",
                str(manifest_path),
                "source-directories",
            ],
            cwd=root,
            check=False,
            capture_output=True,
            text=True,
            timeout=30,
        )
    except (OSError, subprocess.TimeoutExpired) as error:
        raise ClassificationError(
            f"extraction source inventory failed: {error}"
        ) from error
    if completed.returncode:
        detail = completed.stderr.strip() or completed.stdout.strip()
        raise ClassificationError(
            "extraction source inventory failed: "
            + (detail or str(completed.returncode))
        )
    try:
        payload = _object(
            json.loads(completed.stdout), "extraction source inventory"
        )
    except json.JSONDecodeError as error:
        raise ClassificationError(
            f"extraction source inventory returned malformed JSON: {error}"
        ) from error
    if set(payload) != {"schema_version", "graphs", "directories"}:
        raise ClassificationError(
            "extraction source inventory has invalid fields"
        )
    if payload["schema_version"] != 1:
        raise ClassificationError(
            "extraction source inventory schema_version must be 1"
        )
    graph_ids = tuple(
        sorted(
            _graph_id(graph.get("id"), "extraction manifest graph id")
            for graph in _object(manifest, "extraction manifest").get(
                "graphs", ()
            )
        )
    )
    inventory_graphs = tuple(
        sorted(
            _graph_id(value, "extraction source inventory graph")
            for value in _strings(
                payload["graphs"], "extraction source inventory graphs"
            )
        )
    )
    if len(set(inventory_graphs)) != len(inventory_graphs):
        raise ClassificationError(
            "extraction source inventory contains duplicate graph ids"
        )
    if inventory_graphs != graph_ids:
        raise ClassificationError(
            "extraction source inventory graph ids do not match the manifest"
        )
    directories = tuple(
        sorted(
            normalize_repo_path(
                value, "extraction source inventory directory"
            )
            for value in _strings(
                payload["directories"],
                "extraction source inventory directories",
            )
        )
    )
    if len(set(directories)) != len(directories):
        raise ClassificationError(
            "extraction source inventory contains duplicate directories"
        )
    missing = [
        directory
        for directory in directories
        if not (root / directory).is_dir()
    ]
    if missing:
        raise ClassificationError(
            "extraction source inventory references missing directories: "
            + ", ".join(missing)
        )

    declared_sources = {
        normalize_repo_path(
            value,
            f"extraction manifest graph {graph_id}.source_files",
        )
        for graph_id, graph in _extraction_graphs_by_id(
            manifest, "extraction manifest"
        ).items()
        for value in (
            graph.get("source_files")
            if isinstance(graph.get("source_files"), list)
            else ()
        )
    }
    undeclared_rust: set[str] = set()
    shared_cargo: set[str] = set()
    ignored_parts = {".git", "proofs", "target"}
    for directory in directories:
        directory_path = root / directory
        manifest_path = directory_path / "Cargo.toml"
        if manifest_path.is_file():
            shared_cargo.add(manifest_path.relative_to(root).as_posix())
        for path in directory_path.rglob("*.rs"):
            relative_to_directory = path.relative_to(directory_path)
            if ignored_parts.intersection(relative_to_directory.parts):
                continue
            repo_path = path.relative_to(root).as_posix()
            if repo_path not in declared_sources:
                undeclared_rust.add(repo_path)
    return InputRule(
        patterns=tuple(sorted(undeclared_rust | shared_cargo)),
        tier=tier_for(
            source["global_tiers"],
            event,
            "undeclared extraction source fallback",
        ),
        reason=(
            f"{source['reason']}: undeclared extracted-crate Rust source "
            "or shared Cargo configuration"
        ),
        graphs=graph_ids,
    )


def derived_rules(
    root: Path,
    declaration: Declaration,
    event: str,
    base: str | None,
    *,
    changed_files: Iterable[str] | None = None,
) -> list[InputRule]:
    if event not in CANDIDATE_EVENTS:
        raise ClassificationError(
            "derived inputs must not be resolved for an unconditional event"
        )
    rules: list[InputRule] = []
    for source in declaration.derived_inputs:
        if source["type"] == "cargo_local_closure":
            rules.extend(cargo_closure_rules(root, source, event))
            continue
        manifest_path = root / source["path"]
        try:
            current = json.loads(manifest_path.read_text(encoding="utf-8"))
        except OSError as error:
            raise ClassificationError(
                f"cannot read required extraction manifest {source['path']}: {error}"
            ) from error
        except json.JSONDecodeError as error:
            raise ClassificationError(
                f"malformed extraction manifest {source['path']}: {error}"
            ) from error
        previous = (
            _git_json_file(root, base, source["path"])
            if base
            else None
        )
        current_graphs = _extraction_graphs_by_id(
            current, source["path"]
        )
        previous_graphs = (
            _extraction_graphs_by_id(
                previous, f"{base}:{source['path']}"
            )
            if previous is not None
            else {}
        )
        evidence_paths = {
            source["path"],
            *(
                _manifest_path(
                    graph.get("output"),
                    f"graph {graph_id}.output",
                )
                for graphs in (current_graphs, previous_graphs)
                for graph_id, graph in graphs.items()
            ),
        }
        if changed_files is None:
            # Direct callers that do not provide a candidate diff retain the
            # conservative historical behavior without an expensive scan.
            stale_graphs = frozenset(current_graphs)
        else:
            normalized_changes = frozenset(
                normalize_repo_path(path, "changed path")
                for path in changed_files
            )
            stale_graphs = (
                extraction_stale_graphs(root, source, current)
                if normalized_changes & evidence_paths
                else frozenset()
            )
        semantic_graphs, shared_change = extraction_manifest_semantic_changes(
            current,
            previous,
            current_label=source["path"],
            previous_label=(
                f"{base}:{source['path']}"
                if base
                else f"missing base:{source['path']}"
            ),
        )
        evidence_tier = "static"
        if evidence_tier not in declaration.tiers:
            raise ClassificationError(
                "lean extraction evidence requires a declared static tier"
            )
        rules.extend(
            lean_manifest_rules_from_data(
                current,
                source,
                event,
                verify_root=root,
                label=source["path"],
                include_manifest_input=False,
                stale_output_graphs=stale_graphs,
                evidence_tier=evidence_tier,
            )
        )
        manifest_graphs = semantic_graphs | stale_graphs
        if not shared_change:
            manifest_graphs = frozenset(
                extraction_reuse_closure(
                    current,
                    manifest_graphs,
                    label=source["path"],
                )
            )
        manifest_tier = (
            tier_for(
                source["global_tiers"],
                event,
                "shared extraction manifest change",
            )
            if shared_change
            else (
                tier_for(
                    source["graph_tiers"],
                    event,
                    "graph extraction manifest change",
                )
                if manifest_graphs
                else evidence_tier
            )
        )
        rules.append(
            InputRule(
                patterns=(source["path"],),
                tier=manifest_tier,
                reason=(
                    f"{source['reason']}: shared recipe/toolchain state"
                    if shared_change
                    else (
                        f"{source['reason']}: changed or stale graph state"
                        if manifest_graphs
                        else (
                            f"{source['reason']}: current committed "
                            "extraction evidence"
                        )
                    )
                ),
                graphs=tuple(sorted(manifest_graphs)),
            )
        )
        rules.append(
            extraction_source_directory_rule(
                root,
                source,
                current,
                event,
            )
        )
        if previous is not None and not shared_change:
            rules.extend(
                lean_manifest_rules_from_data(
                    previous,
                    source,
                    event,
                    verify_root=None,
                    label=f"{base}:{source['path']}",
                    include_manifest_input=False,
                    stale_output_graphs=stale_graphs,
                    evidence_tier=evidence_tier,
                )
            )
    return rules


def _path_pattern_matches(path: str, pattern: str) -> bool:
    """Match repository globs without allowing `*` to cross path separators."""
    path_parts = path.split("/")
    pattern_parts = pattern.split("/")
    memo: dict[tuple[int, int], bool] = {}

    def visit(path_index: int, pattern_index: int) -> bool:
        key = (path_index, pattern_index)
        if key in memo:
            return memo[key]
        if pattern_index == len(pattern_parts):
            result = path_index == len(path_parts)
        elif pattern_parts[pattern_index] == "**":
            result = visit(path_index, pattern_index + 1) or (
                path_index < len(path_parts)
                and visit(path_index + 1, pattern_index)
            )
        else:
            result = (
                path_index < len(path_parts)
                and fnmatch.fnmatchcase(
                    path_parts[path_index],
                    pattern_parts[pattern_index],
                )
                and visit(path_index + 1, pattern_index + 1)
            )
        memo[key] = result
        return result

    return visit(0, 0)


def _matches(path: str, patterns: Iterable[str]) -> bool:
    return any(_path_pattern_matches(path, pattern) for pattern in patterns)


def classify(
    declaration: Declaration,
    event: str,
    files: Iterable[str],
    derived: Iterable[InputRule],
) -> Decision:
    if event not in SUPPORTED_EVENTS:
        raise ClassificationError(f"unsupported event {event!r}")
    normalized_files = tuple(
        sorted({normalize_repo_path(path, "changed path") for path in files})
    )
    if event in UNCONDITIONAL_EVENTS:
        tier = declaration.events[event]["tier"]
        return Decision(
            status="run",
            tier=tier,
            explanation=f"{event} unconditionally selects tier {tier!r}.",
            changed_files=normalized_files,
            matched=(),
            unknown_files=(),
            graphs=(),
        )

    rules = list(derived)
    for item in declaration.explicit_inputs:
        rules.append(
            InputRule(
                patterns=item["patterns"],
                tier=tier_for(item["tiers"], event, "explicit input"),
                reason=item["reason"],
            )
        )

    selected_tier = "skip"
    matched: list[dict[str, Any]] = []
    unknown: list[str] = []
    graphs: set[str] = set()
    for path in normalized_files:
        path_matches = [rule for rule in rules if _matches(path, rule.patterns)]
        if path_matches:
            for rule in path_matches:
                if declaration.rank(rule.tier) > declaration.rank(selected_tier):
                    selected_tier = rule.tier
                graphs.update(rule.graphs)
                matched.append(
                    {"path": path, "tier": rule.tier, "reason": rule.reason}
                )
            continue
        irrelevant = next(
            (
                item
                for item in declaration.irrelevant_inputs
                if _matches(path, item["patterns"])
            ),
            None,
        )
        if irrelevant is None:
            unknown.append(path)
        else:
            matched.append(
                {"path": path, "tier": "skip", "reason": irrelevant["reason"]}
            )

    if unknown:
        conservative = declaration.events[event]["conservative_tier"]
        if declaration.rank(conservative) > declaration.rank(selected_tier):
            selected_tier = conservative
        for path in unknown:
            matched.append(
                {
                    "path": path,
                    "tier": conservative,
                    "reason": "unknown input; conservative fail-closed tier",
                }
            )

    status = "skip" if selected_tier == "skip" else "run"
    if status == "skip":
        explanation = (
            "No changed files."
            if not normalized_files
            else "All changed files matched declared skips."
        )
    elif unknown:
        explanation = (
            f"{len(unknown)} unclassified change(s) promoted the gate to "
            f"the conservative {selected_tier!r} tier."
        )
    else:
        explanation = f"Declared dependencies select tier {selected_tier!r}."
    return Decision(
        status=status,
        tier=selected_tier,
        explanation=explanation,
        changed_files=normalized_files,
        matched=tuple(matched),
        unknown_files=tuple(unknown),
        graphs=tuple(sorted(graphs)),
    )


def blocked(error: Exception) -> Decision:
    return Decision(
        status="block",
        tier="block",
        explanation=str(error),
        changed_files=(),
        matched=(),
        unknown_files=(),
        graphs=(),
    )


def write_github_output(path: Path, decision: Decision) -> None:
    values = {
        "status": decision.status,
        "tier": decision.tier,
        "run": str(decision.status == "run").lower(),
        "explanation": decision.explanation,
        "graphs": json.dumps(list(decision.graphs), separators=(",", ":")),
        "changed_files": json.dumps(
            list(decision.changed_files), separators=(",", ":")
        ),
        "unknown_files": json.dumps(
            list(decision.unknown_files), separators=(",", ":")
        ),
    }
    try:
        with path.open("a", encoding="utf-8", newline="\n") as output:
            for key, value in values.items():
                if "\n" in value or "\r" in value:
                    raise ClassificationError(
                        f"GitHub output {key} contains a newline"
                    )
                output.write(f"{key}={value}\n")
    except OSError as error:
        raise ClassificationError(f"cannot write GitHub output {path}: {error}") from error


def parser() -> argparse.ArgumentParser:
    result = argparse.ArgumentParser(
        description="Classify whether and at what tier an expensive CI gate must run."
    )
    result.add_argument("--gate", required=True)
    result.add_argument("--event", required=True, choices=sorted(SUPPORTED_EVENTS))
    result.add_argument("--base")
    result.add_argument("--head", default="HEAD")
    result.add_argument("--changed-file", action="append", default=[])
    result.add_argument("--declaration", type=Path)
    result.add_argument("--extraction-manifest")
    result.add_argument("--github-output", type=Path)
    result.add_argument("--pretty", action="store_true")
    return result


def main(argv: list[str] | None = None) -> int:
    args = parser().parse_args(argv)
    root = Path(__file__).resolve().parents[2]
    declaration_path = (
        args.declaration or root / "ci" / "gates" / f"{args.gate}.json"
    )
    try:
        declaration = load_declaration(declaration_path, args.gate)
        if args.extraction_manifest:
            sources = [
                source
                for source in declaration.derived_inputs
                if source["type"] == "lean_extraction_manifest"
            ]
            if len(sources) != 1:
                raise ClassificationError(
                    "--extraction-manifest requires exactly one declared manifest"
                )
            override = normalize_repo_path(
                args.extraction_manifest, "--extraction-manifest"
            )
            derived_inputs = tuple(
                {**source, "path": override}
                if source["type"] == "lean_extraction_manifest"
                else source
                for source in declaration.derived_inputs
            )
            declaration = Declaration(
                gate=declaration.gate,
                tiers=declaration.tiers,
                events=declaration.events,
                derived_inputs=derived_inputs,
                explicit_inputs=declaration.explicit_inputs,
                irrelevant_inputs=declaration.irrelevant_inputs,
            )

        if args.event in UNCONDITIONAL_EVENTS:
            decision = classify(declaration, args.event, (), ())
        else:
            if not args.changed_file and not args.base:
                raise ClassificationError(f"--base is required for {args.event}")
            files = (
                tuple(args.changed_file)
                if args.changed_file
                else changed_files(root, args.base, args.head)
            )
            rules = derived_rules(
                root,
                declaration,
                args.event,
                args.base,
                changed_files=files,
            )
            decision = classify(declaration, args.event, files, rules)
    except ClassificationError as error:
        decision = blocked(error)
    except Exception as error:  # Defensive boundary: classifier bugs must block.
        decision = blocked(
            ClassificationError(
                f"classifier error ({type(error).__name__}): {error}"
            )
        )

    if args.github_output:
        try:
            write_github_output(args.github_output, decision)
        except ClassificationError as error:
            decision = blocked(error)
    print(
        json.dumps(
            decision.as_dict(),
            indent=2 if args.pretty else None,
            sort_keys=True,
        )
    )
    return 0 if decision.status != "block" else 2


if __name__ == "__main__":
    raise SystemExit(main())
