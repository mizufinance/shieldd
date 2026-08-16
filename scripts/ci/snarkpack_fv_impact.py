#!/usr/bin/env python3
"""Plan the smallest sound SnarkPack FV CI closure for a candidate change."""

from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import re
import subprocess
import sys
import tomllib
from collections import defaultdict, deque
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, Sequence


ROOT = Path(__file__).resolve().parents[2]
LEAN_ROOT = Path(
    "crates/crypto/proof-aggregation/formal/lean-ipp"
)
LEAN_IPP_ROOT = LEAN_ROOT / "Ipp"
EXTRACTION_MANIFEST = Path(
    "crates/crypto/proof-aggregation/formal/snarkpack/"
    "lean-extraction-manifest.json"
)
FSTAR_EVIDENCE = Path(
    "crates/crypto/proof-aggregation/formal/snarkpack/"
    "fstar-checker-evidence.json"
)
FSTAR_MANIFEST = Path(
    "crates/crypto/proof-aggregation/formal/snarkpack/"
    "verification-manifest.json"
)
FSTAR_VERIFIER = Path(
    "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/"
    "verification_manifest.py"
)
FSTAR_ROOT = Path(
    "crates/crypto/proof-aggregation/formal/snarkpack/fstar"
)
LEAN_ENVIRONMENT_MANIFEST = Path(
    "crates/crypto/proof-aggregation/formal/snarkpack/"
    "aeneas-toolchain.toml"
)
LEAN_EVIDENCE_PREFIX = (
    "crates/crypto/proof-aggregation/formal/snarkpack/lean-cache-v1/"
)

CANDIDATE_EVENTS = {"pull_request", "merge_group"}
UNCONDITIONAL_EVENTS = {"schedule", "workflow_call", "workflow_dispatch"}
SUPPORTED_EVENTS = CANDIDATE_EVENTS | UNCONDITIONAL_EVENTS

PROOF_AGGREGATION_PREFIX = "crates/crypto/proof-aggregation/"
REFERENCE_PREFIX = "crates/crypto/proof-aggregation-reference/"
FUZZ_PREFIX = "crates/crypto/proof-aggregation-fuzz/"
APP_BOUNDARY_PREFIXES = (
    "crates/core/app/src/app/",
    "crates/core/app/src/action_handler/actions.rs",
    "crates/core/app/src/app/mod.rs",
    "crates/core/app/src/app/preconsensus.rs",
    "crates/core/app/src/app/validation_support.rs",
    "crates/core/app/src/server/consensus.rs",
    "crates/core/app/src/stateless_cache.rs",
    "crates/core/app/Cargo.toml",
)
RUST_GLOBAL_INPUTS = {
    ".cargo/config.toml",
    "Cargo.lock",
    "Cargo.toml",
    "flake.lock",
    "flake.nix",
    "rust-toolchain.toml",
}
RUST_ENVIRONMENT_PREFIXES = (
    ".github/actions/setup-nix-rust/",
)
LEAN_GLOBAL_INPUTS = {
    (LEAN_ROOT / "lakefile.lean").as_posix(),
    (LEAN_ROOT / "lake-manifest.json").as_posix(),
    (LEAN_ROOT / "lean-toolchain").as_posix(),
}
FSTAR_GLOBAL_INPUTS = {
    FSTAR_VERIFIER.as_posix(),
    "flake.lock",
    "flake.nix",
    "scripts/prepare_snarkpack_fstar_support.py",
    "scripts/snarkpack-formal.sh",
    (
        "crates/crypto/proof-aggregation/formal/snarkpack/"
        "toolchain.toml"
    ),
}
FSTAR_NONPROOF_CONTROL_INPUTS = {
    "scripts/ci/snarkpack_fv_impact.py",
}
FSTAR_SHIELDED_POOL_MANIFEST_INPUT = (
    "crates/core/component/shielded-pool/Cargo.toml"
)
FSTAR_NON_SEMANTIC_MANIFEST_FEATURES = {
    FSTAR_SHIELDED_POOL_MANIFEST_INPUT: frozenset({"download-proving-keys"}),
}
FSTAR_NON_SEMANTIC_LOCK_DEPENDENCIES = {
    "shieldd-sdk-proof-params": frozenset({"regex", "reqwest 0.12.9"}),
}
LEAN_MODULE_TOKEN = r"[A-Za-z_][A-Za-z0-9_']*(?:\.[A-Za-z_][A-Za-z0-9_']*)*"
IMPORT_RE = re.compile(
    rf"^[ \t]*import[ \t]+"
    rf"(?P<modules>{LEAN_MODULE_TOKEN}(?:[ \t]+{LEAN_MODULE_TOKEN})*)"
    rf"[ \t]*$"
)
IMPORT_PREFIX_RE = re.compile(r"^[ \t]*(?:public[ \t]+)?import(?:[ \t]|$)")
GRAPH_ID_RE = re.compile(r"^[A-Za-z][A-Za-z0-9_]*$")
AUDIT_MODULE_RE = re.compile(r"^Ipp\.ProofAudit[A-Za-z0-9_]*$")
_FSTAR_VERIFIER_CACHE: dict[Path, object] = {}


class ImpactError(RuntimeError):
    """The impact planner could not prove a bounded execution plan."""


@dataclass(frozen=True)
class GateDecision:
    status: str
    graphs: tuple[str, ...]
    unknown_files: tuple[str, ...]


@dataclass(frozen=True)
class ImpactPlan:
    static: bool
    extraction_graphs: tuple[str, ...]
    lean_modules: tuple[str, ...]
    fstar_proofs: tuple[str, ...]
    fstar_force_all: bool
    parity: bool
    rust_reference: bool
    fuzz: bool
    dos: bool
    explanation: str

    def as_dict(self) -> dict[str, object]:
        return {
            "schema_version": 1,
            "static": self.static,
            "extraction": {
                "run": bool(self.extraction_graphs),
                "graphs": list(self.extraction_graphs),
            },
            "lean": {
                "run": bool(self.lean_modules),
                "modules": list(self.lean_modules),
            },
            "fstar": {
                "run": bool(self.fstar_proofs),
                "proofs": list(self.fstar_proofs),
                "force_all": self.fstar_force_all,
            },
            "parity": self.parity,
            "rust_reference": self.rust_reference,
            "fuzz": self.fuzz,
            "dos": self.dos,
            "explanation": self.explanation,
        }


def _normalized_path(value: str) -> str:
    path = value.replace("\\", "/")
    parts = path.split("/")
    if (
        not path
        or path.startswith("/")
        or (len(path) >= 2 and path[1] == ":")
        or any(part in {"", ".", ".."} for part in parts)
        or any(character in path for character in ("\0", "\n", "\r"))
    ):
        raise ImpactError(f"invalid repository path: {value!r}")
    return path


def _run_git(
    root: Path, args: Sequence[str], *, text: bool = True
) -> subprocess.CompletedProcess[object]:
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
        raise ImpactError(f"git {' '.join(args)} failed: {error}") from error


def changed_files(root: Path, base: str, head: str) -> tuple[str, ...]:
    for label, revision in (("base", base), ("head", head)):
        if not revision:
            raise ImpactError(f"missing {label} revision")
        probe = _run_git(root, ["cat-file", "-e", f"{revision}^{{commit}}"])
        if probe.returncode:
            raise ImpactError(f"missing {label} commit {revision!r}")
    diff = _run_git(
        root,
        ["diff", "--name-status", "-z", "--find-renames", base, head, "--"],
        text=False,
    )
    if diff.returncode:
        stderr = bytes(diff.stderr).decode("utf-8", errors="replace").strip()
        raise ImpactError(f"git diff failed: {stderr or diff.returncode}")
    fields = bytes(diff.stdout).decode("utf-8").split("\0")
    if fields and not fields[-1]:
        fields.pop()
    paths: set[str] = set()
    index = 0
    while index < len(fields):
        status = fields[index]
        index += 1
        count = 2 if status.startswith(("R", "C")) else 1
        if index + count > len(fields):
            raise ImpactError("git diff returned a truncated record")
        paths.update(_normalized_path(path) for path in fields[index : index + count])
        index += count
    return tuple(sorted(paths))


def _json_file(path: Path, label: str) -> dict[str, object]:
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
    except OSError as error:
        raise ImpactError(f"cannot read {label}: {error}") from error
    except json.JSONDecodeError as error:
        raise ImpactError(f"malformed {label}: {error}") from error
    if not isinstance(value, dict):
        raise ImpactError(f"{label} must be an object")
    return value


def extraction_graph_ids(root: Path) -> tuple[str, ...]:
    manifest = _json_file(root / EXTRACTION_MANIFEST, "extraction manifest")
    graphs = manifest.get("graphs")
    if not isinstance(graphs, list) or not graphs:
        raise ImpactError("extraction manifest graphs must be a non-empty array")
    identifiers: list[str] = []
    for index, graph in enumerate(graphs):
        if not isinstance(graph, dict):
            raise ImpactError(f"extraction graph {index} must be an object")
        identifier = graph.get("id")
        if (
            not isinstance(identifier, str)
            or GRAPH_ID_RE.fullmatch(identifier) is None
        ):
            raise ImpactError(f"extraction graph {index} has invalid id")
        identifiers.append(identifier)
    if len(set(identifiers)) != len(identifiers):
        raise ImpactError("extraction manifest contains duplicate graph ids")
    return tuple(sorted(identifiers))


def extraction_graph_ids_at(
    root: Path, revision: str
) -> tuple[str, ...]:
    manifest_path = EXTRACTION_MANIFEST.as_posix()
    listing = _run_git(
        root,
        ["ls-tree", "--name-only", revision, "--", manifest_path],
    )
    if listing.returncode:
        raise ImpactError(
            f"cannot inspect extraction manifest at base {revision!r}"
        )
    if str(listing.stdout).strip() != manifest_path:
        return ()
    result = _run_git(
        root,
        ["show", f"{revision}:{manifest_path}"],
    )
    if result.returncode:
        raise ImpactError(
            f"cannot read extraction manifest at base {revision!r}"
        )
    try:
        manifest = json.loads(str(result.stdout))
    except json.JSONDecodeError as error:
        raise ImpactError(
            f"malformed extraction manifest at base {revision!r}: {error}"
        ) from error
    if not isinstance(manifest, dict) or not isinstance(
        manifest.get("graphs"), list
    ):
        raise ImpactError(
            f"invalid extraction manifest at base {revision!r}"
        )
    identifiers: list[str] = []
    for graph in manifest["graphs"]:
        if (
            not isinstance(graph, dict)
            or not isinstance(graph.get("id"), str)
            or GRAPH_ID_RE.fullmatch(graph["id"]) is None
        ):
            raise ImpactError(
                f"invalid extraction graph at base {revision!r}"
            )
        identifiers.append(graph["id"])
    if len(set(identifiers)) != len(identifiers):
        raise ImpactError(
            f"duplicate extraction graph at base {revision!r}"
        )
    return tuple(sorted(identifiers))


def _fstar_manifest_control_projection(
    manifest: dict[str, object],
) -> dict[str, object]:
    modules = manifest.get("fstar_modules")
    roles = manifest.get("toolchain_roles")
    entries = manifest.get("statement_binding_evidence")
    if (
        not isinstance(modules, dict)
        or not isinstance(roles, list)
        or not isinstance(entries, list)
    ):
        raise ImpactError("verification manifest lacks F* control sections")
    contracts: list[dict[str, object]] = []
    for entry in entries:
        if not isinstance(entry, dict) or entry.get("kind") != "fstar":
            continue
        normalized = json.loads(json.dumps(entry))
        checker = normalized.get("checker")
        if isinstance(checker, dict):
            checker.pop("last_result", None)
        sources = normalized.get("sources")
        if not isinstance(sources, list):
            raise ImpactError("F* contract sources must be an array")
        for source in sources:
            if not isinstance(source, dict):
                raise ImpactError("F* contract source must be an object")
            source.pop("sha256", None)
        contracts.append(normalized)
    return {
        "fstar_modules": modules,
        "fstar_contracts": contracts,
        "toolchain_roles": roles,
    }


def fstar_manifest_control_changed(root: Path, base: str) -> bool:
    current = _json_file(root / FSTAR_MANIFEST, "verification manifest")
    previous_result = _run_git(
        root, ["show", f"{base}:{FSTAR_MANIFEST.as_posix()}"]
    )
    if previous_result.returncode:
        return True
    try:
        previous = json.loads(str(previous_result.stdout))
        if not isinstance(previous, dict):
            return True
        return _fstar_manifest_control_projection(
            current
        ) != _fstar_manifest_control_projection(previous)
    except (json.JSONDecodeError, ImpactError):
        return True


def _lean_environment_control_projection(
    manifest: dict[str, object],
) -> dict[str, str]:
    toolchain = manifest.get("toolchain")
    if not isinstance(toolchain, dict):
        raise ImpactError("Aeneas toolchain manifest lacks [toolchain]")
    lean = toolchain.get("lean")
    if not isinstance(lean, str) or not lean:
        raise ImpactError("Aeneas toolchain manifest has invalid Lean pin")
    return {"lean": lean}


def lean_environment_control_changed(root: Path, base: str) -> bool:
    path = root / LEAN_ENVIRONMENT_MANIFEST
    try:
        current = tomllib.loads(path.read_text(encoding="utf-8"))
    except (OSError, UnicodeError, tomllib.TOMLDecodeError, ImpactError):
        return True
    previous_result = _run_git(
        root, ["show", f"{base}:{LEAN_ENVIRONMENT_MANIFEST.as_posix()}"]
    )
    if previous_result.returncode:
        return True
    try:
        previous = tomllib.loads(str(previous_result.stdout))
        return _lean_environment_control_projection(
            current
        ) != _lean_environment_control_projection(previous)
    except (tomllib.TOMLDecodeError, ImpactError):
        return True


def _lean_module(path: Path) -> str:
    try:
        relative = path.relative_to(LEAN_ROOT)
    except ValueError as error:
        raise ImpactError(f"Lean file is outside {LEAN_ROOT}: {path}") from error
    if relative.suffix != ".lean":
        raise ImpactError(f"Lean module does not end in .lean: {relative}")
    return ".".join(relative.with_suffix("").parts)


def _lean_modules(root: Path) -> dict[str, Path]:
    modules: dict[str, Path] = {}
    for path in sorted((root / LEAN_IPP_ROOT).rglob("*.lean")):
        relative = path.relative_to(root)
        module = _lean_module(relative)
        if module in modules:
            raise ImpactError(f"duplicate Lean module {module}")
        modules[module] = relative
    if not modules:
        raise ImpactError("no SnarkPack Lean modules found")
    return modules


def _lean_imports(root: Path, modules: dict[str, Path]) -> dict[str, set[str]]:
    imports: dict[str, set[str]] = {module: set() for module in modules}
    for module, relative in modules.items():
        try:
            lines = (root / relative).read_text(encoding="utf-8").splitlines()
        except OSError as error:
            raise ImpactError(f"cannot read Lean module {relative}: {error}") from error
        for line_number, line in enumerate(lines, start=1):
            match = IMPORT_RE.match(line)
            if match is None:
                if IMPORT_PREFIX_RE.match(line):
                    raise ImpactError(
                        f"{relative}:{line_number}: noncanonical Lean import; "
                        "imports must be complete module-token lists on one line "
                        "without comments"
                    )
                continue
            for imported in match.group("modules").split():
                if imported in modules:
                    imports[module].add(imported)
    return imports


def lean_import_graph(
    root: Path,
) -> tuple[dict[str, Path], dict[str, set[str]]]:
    """Return the strict internal module inventory and import graph."""
    modules = _lean_modules(root)
    return modules, _lean_imports(root, modules)


def lean_audit_modules(modules: Iterable[str]) -> tuple[str, ...]:
    audits = tuple(
        sorted(
            module
            for module in modules
            if AUDIT_MODULE_RE.fullmatch(module) is not None
        )
    )
    if not audits:
        raise ImpactError("no SnarkPack Lean audit modules found")
    return audits


def affected_lean_modules(
    root: Path, changed: Iterable[str], *, force_audit: bool = False
) -> tuple[str, ...]:
    modules, imports = lean_import_graph(root)
    by_path = {path.as_posix(): module for module, path in modules.items()}
    seeds: set[str] = set()
    deleted_or_unknown = False
    lean_prefix = f"{LEAN_IPP_ROOT.as_posix()}/"
    for path in changed:
        if not path.startswith(lean_prefix) or not path.endswith(".lean"):
            continue
        module = by_path.get(path)
        if module is None:
            deleted_or_unknown = True
        else:
            seeds.add(module)
    if force_audit or deleted_or_unknown:
        seeds.update(lean_audit_modules(modules))
    if not seeds:
        return ()

    reverse: dict[str, set[str]] = defaultdict(set)
    for module, dependencies in imports.items():
        for dependency in dependencies:
            reverse[dependency].add(module)
    affected = set(seeds)
    pending = deque(sorted(seeds))
    while pending:
        dependency = pending.popleft()
        for consumer in sorted(reverse.get(dependency, ())):
            if consumer not in affected:
                affected.add(consumer)
                pending.append(consumer)

    indegree = {
        module: len(imports[module] & affected)
        for module in affected
    }
    ready = deque(sorted(module for module, degree in indegree.items() if degree == 0))
    ordered: list[str] = []
    while ready:
        module = ready.popleft()
        ordered.append(module)
        for consumer in sorted(reverse.get(module, set()) & affected):
            indegree[consumer] -= 1
            if indegree[consumer] == 0:
                ready.append(consumer)
    if len(ordered) != len(affected):
        raise ImpactError("cycle detected in affected Lean import closure")
    return tuple(ordered)


def current_fstar_proofs(
    root: Path,
    changed_hints: Iterable[str],
    *,
    force_all: bool = False,
) -> tuple[str, ...]:
    """Return only proof modules lacking current per-module pass evidence."""
    _fstar_proof_names(root)
    verifier = _load_fstar_verifier(root)
    try:
        manifest = verifier.load_manifest(root / FSTAR_MANIFEST)
        proof_prefix = f"{FSTAR_ROOT.as_posix()}/"
        requested: list[str] = []
        for path in changed_hints:
            if not path.startswith(proof_prefix) or not path.endswith(".fst"):
                continue
            relative = path.removeprefix(proof_prefix)
            if "/" in relative:
                raise ImpactError(
                    f"F* proof modules must be direct children of {FSTAR_ROOT}: "
                    f"{path}"
                )
            requested.append(relative)
        modules = verifier.affected_fstar_modules(
            manifest,
            root,
            requested=tuple(requested),
            force_all=force_all,
        )
    except (OSError, UnicodeError, verifier.VerificationError) as error:
        raise ImpactError(f"cannot plan current F* evidence: {error}") from error
    return tuple(f"{module}.fst" for module in modules)


def pending_fstar_proofs(root: Path) -> tuple[str, ...]:
    """Return proof modules not covered by current repository evidence."""
    _fstar_proof_names(root)
    verifier = _load_fstar_verifier(root)
    try:
        manifest = verifier.load_manifest(root / FSTAR_MANIFEST)
        evidence = json.loads((root / FSTAR_EVIDENCE).read_text(encoding="utf-8"))
        modules = verifier.plan_fstar_modules(
            manifest,
            root,
            base=evidence,
            requested=(),
        )
    except (
        OSError,
        UnicodeError,
        json.JSONDecodeError,
        verifier.VerificationError,
    ) as error:
        raise ImpactError(f"cannot plan pending F* evidence: {error}") from error
    return tuple(f"{module}.fst" for module in modules)


def unchanged_fstar_semantic_inputs(
    root: Path,
    base: str,
    changed: Iterable[str],
) -> tuple[str, ...]:
    """Return changed whole files whose proof-relevant projection is stable."""
    verifier = _load_fstar_verifier(root)
    try:
        projected = {
            verifier.FSTAR_TRANSACTION_PROTO_INPUT,
            verifier.FSTAR_CARGO_LOCK_INPUT,
            *FSTAR_NON_SEMANTIC_MANIFEST_FEATURES,
        }
        unchanged: list[str] = []
        for relative in sorted(set(changed) & projected):
            current_path = root / relative
            if not current_path.is_file():
                continue
            previous = _run_git(
                root,
                ["show", f"{base}:{relative}"],
                text=False,
            )
            if previous.returncode:
                continue
            before = fstar_semantic_source_sha256(
                verifier, relative, bytes(previous.stdout)
            )
            after = fstar_semantic_source_sha256(
                verifier, relative, current_path.read_bytes()
            )
            if before == after:
                unchanged.append(relative)
    except (OSError, UnicodeError, verifier.VerificationError) as error:
        raise ImpactError(
            f"cannot compare F* semantic inputs: {error}"
        ) from error
    return tuple(unchanged)


def fstar_semantic_source_sha256(
    verifier: object, relative: str, content: bytes
) -> str:
    """Hash the proof-relevant projection used only for impact planning."""

    if relative == verifier.FSTAR_CARGO_LOCK_INPUT:
        projected_lock = fstar_cargo_lock_impact_payload(verifier, content)
        canonical = json.dumps(
            projected_lock,
            ensure_ascii=False,
            separators=(",", ":"),
            sort_keys=True,
        ).encode("utf-8")
        return hashlib.sha256(canonical).hexdigest()
    ignored_features = FSTAR_NON_SEMANTIC_MANIFEST_FEATURES.get(relative)
    if ignored_features is None:
        return verifier.fstar_source_sha256(relative, content)
    try:
        manifest = tomllib.loads(content.decode("utf-8"))
    except (UnicodeDecodeError, tomllib.TOMLDecodeError) as error:
        raise ImpactError(f"cannot parse F* Cargo input {relative}: {error}") from error
    features = manifest.get("features")
    if not isinstance(features, dict):
        raise ImpactError(f"F* Cargo input {relative} has no feature table")
    projected = dict(manifest)
    projected["features"] = {
        name: value
        for name, value in features.items()
        if name not in ignored_features
    }
    canonical = json.dumps(
        projected,
        ensure_ascii=False,
        separators=(",", ":"),
        sort_keys=True,
    ).encode("utf-8")
    return hashlib.sha256(canonical).hexdigest()


def fstar_cargo_lock_impact_payload(
    verifier: object, content: bytes
) -> dict[str, object]:
    """Resolve the F* Cargo closure without disabled artifact download deps."""

    try:
        lock = tomllib.loads(content.decode("utf-8"))
    except (UnicodeDecodeError, tomllib.TOMLDecodeError) as error:
        raise ImpactError(f"cannot parse F* Cargo.lock input: {error}") from error
    packages = lock.get("package")
    if not isinstance(packages, list):
        raise ImpactError("F* Cargo.lock input has no package inventory")
    by_name: dict[str, list[dict[str, object]]] = defaultdict(list)
    for index, package in enumerate(packages):
        if not isinstance(package, dict):
            raise ImpactError(f"F* Cargo.lock package[{index}] is not a table")
        name = package.get("name")
        version = package.get("version")
        if not isinstance(name, str) or not isinstance(version, str):
            raise ImpactError(f"F* Cargo.lock package[{index}] identity is invalid")
        by_name[name].append(package)

    def identity(package: dict[str, object]) -> tuple[str, str, str]:
        source = package.get("source", "")
        if not isinstance(source, str):
            raise ImpactError("F* Cargo.lock package source is invalid")
        return str(package["name"]), str(package["version"]), source

    def resolve(reference: str) -> dict[str, object]:
        match = re.fullmatch(
            r"(?P<name>[^ ]+)(?: (?P<version>[^ ]+))?"
            r"(?: \((?P<source>.+)\))?",
            reference,
        )
        if match is None:
            raise ImpactError(
                f"F* Cargo.lock dependency is malformed: {reference!r}"
            )
        candidates = list(by_name.get(match.group("name"), ()))
        version = match.group("version")
        source = match.group("source")
        if version is not None:
            candidates = [
                package
                for package in candidates
                if package.get("version") == version
            ]
        if source is not None:
            candidates = [
                package
                for package in candidates
                if package.get("source") == source
            ]
        if len(candidates) != 1:
            raise ImpactError(
                "F* Cargo.lock dependency does not resolve uniquely: "
                f"{reference!r} ({len(candidates)} candidates)"
            )
        return candidates[0]

    pending: list[dict[str, object]] = []
    for root_name in verifier.FSTAR_CARGO_LOCK_ROOTS:
        roots = by_name.get(root_name, [])
        if len(roots) != 1:
            raise ImpactError(
                f"F* Cargo.lock must contain exactly one {root_name} package"
            )
        pending.append(roots[0])
    selected: dict[tuple[str, str, str], dict[str, object]] = {}
    while pending:
        package = pending.pop()
        package_id = identity(package)
        if package_id in selected:
            continue
        dependencies = package.get("dependencies", [])
        if not isinstance(dependencies, list) or any(
            not isinstance(dependency, str) for dependency in dependencies
        ):
            raise ImpactError(
                f"F* Cargo.lock dependencies are invalid for {package_id[0]}"
            )
        ignored = FSTAR_NON_SEMANTIC_LOCK_DEPENDENCIES.get(
            package_id[0], frozenset()
        )
        retained = sorted(
            dependency for dependency in dependencies if dependency not in ignored
        )
        normalized = dict(package)
        normalized["dependencies"] = retained
        selected[package_id] = normalized
        pending.extend(resolve(dependency) for dependency in retained)

    return {
        "schema_version": 1,
        "lock_version": lock.get("version"),
        "roots": list(verifier.FSTAR_CARGO_LOCK_ROOTS),
        "packages": [selected[key] for key in sorted(selected)],
    }


def _load_fstar_verifier(root: Path) -> object:
    verifier_path = (root / FSTAR_VERIFIER).resolve()
    cached = _FSTAR_VERIFIER_CACHE.get(verifier_path)
    if cached is not None:
        return cached
    module_suffix = hashlib.sha256(
        str(verifier_path).encode("utf-8")
    ).hexdigest()[:16]
    module_name = f"_snarkpack_fstar_evidence_{module_suffix}"
    spec = importlib.util.spec_from_file_location(module_name, verifier_path)
    if spec is None or spec.loader is None:
        raise ImpactError(f"cannot load F* evidence verifier: {verifier_path}")
    verifier = importlib.util.module_from_spec(spec)
    sys.modules[module_name] = verifier
    try:
        spec.loader.exec_module(verifier)
    except Exception as error:
        sys.modules.pop(module_name, None)
        raise ImpactError(
            f"cannot load F* evidence verifier: {verifier_path}: {error}"
        ) from error
    _FSTAR_VERIFIER_CACHE[verifier_path] = verifier
    return verifier


def _fstar_proof_names(root: Path) -> tuple[str, ...]:
    proof_root = root / FSTAR_ROOT
    nested = sorted(
        path.relative_to(root).as_posix()
        for path in proof_root.rglob("*.fst")
        if path.parent != proof_root
    )
    if nested:
        raise ImpactError(
            "F* proof modules must use the flat proof directory layout: "
            + ", ".join(nested)
        )
    return tuple(sorted(path.name for path in proof_root.glob("*.fst")))


def _starts_with_any(path: str, prefixes: Iterable[str]) -> bool:
    return any(path == prefix or path.startswith(prefix) for prefix in prefixes)


def full_fingerprint_plan(root: Path, explanation: str) -> ImpactPlan:
    all_graphs = extraction_graph_ids(root)
    lean_modules, _ = lean_import_graph(root)
    return ImpactPlan(
        True,
        all_graphs,
        lean_audit_modules(lean_modules),
        current_fstar_proofs(root, (), force_all=True),
        True,
        True,
        True,
        True,
        True,
        explanation,
    )


def plan(
    root: Path,
    *,
    event: str,
    status: str,
    changed: Iterable[str],
    declared_graphs: Iterable[str],
    unknown_files: Iterable[str] = (),
    retired_graphs: Iterable[str] = (),
    fstar_manifest_control_change: bool = False,
    lean_environment_control_change: bool = False,
    fstar_semantic_unchanged: Iterable[str] = (),
    pending_fstar: Iterable[str] = (),
) -> ImpactPlan:
    if event not in SUPPORTED_EVENTS:
        raise ImpactError(f"unsupported event {event!r}")
    if status not in {"run", "skip"}:
        raise ImpactError(f"applicability status must be run or skip, got {status!r}")
    paths = tuple(sorted({_normalized_path(path) for path in changed}))
    unknown = tuple(
        sorted({_normalized_path(path) for path in unknown_files})
    )
    if unknown:
        raise ImpactError(
            "unclassified SnarkPack FV input(s): " + ", ".join(unknown)
        )
    all_graphs = extraction_graph_ids(root)

    if status == "skip":
        if event in UNCONDITIONAL_EVENTS:
            raise ImpactError(f"{event} cannot have skip applicability")
        return ImpactPlan(
            False, (), (), (), False, False, False, False, False, "skip"
        )

    if event in UNCONDITIONAL_EVENTS:
        return full_fingerprint_plan(
            root,
            f"{event} requests the complete SnarkPack verification fingerprint",
        )

    graph_set = set(declared_graphs)
    retired_set = set(retired_graphs)
    unknown_graphs = sorted(graph_set - set(all_graphs))
    if unknown_graphs and not set(unknown_graphs) <= retired_set:
        raise ImpactError(
            "applicability selected unknown extraction graph(s): "
            + ", ".join(unknown_graphs)
        )
    graph_set.intersection_update(all_graphs)

    # CI and audit-parser controls are checked by the static lane. They never
    # schedule a kernel build when no Lean source or Lean environment changed.
    lean_global = any(path in LEAN_GLOBAL_INPUTS for path in paths) or (
        LEAN_ENVIRONMENT_MANIFEST.as_posix() in paths
        and lean_environment_control_change
    ) or any(path.startswith(LEAN_EVIDENCE_PREFIX) for path in paths)
    lean_modules = affected_lean_modules(root, paths, force_audit=lean_global)

    evidence = _json_file(root / FSTAR_EVIDENCE, "F* evidence")
    environment = evidence.get("environment")
    if not isinstance(environment, dict):
        raise ImpactError("F* evidence environment must be an object")
    global_inputs = environment.get("global_inputs")
    if not isinstance(global_inputs, list):
        raise ImpactError("F* evidence global_inputs must be an array")
    fstar_inputs: set[str] = set()
    for index, item in enumerate(global_inputs):
        if not isinstance(item, dict) or not isinstance(item.get("path"), str):
            raise ImpactError(f"F* evidence global_inputs[{index}] is invalid")
        normalized = _normalized_path(item["path"])
        if normalized not in FSTAR_NONPROOF_CONTROL_INPUTS:
            fstar_inputs.add(normalized)
    semantic_unchanged = {
        _normalized_path(path) for path in fstar_semantic_unchanged
    }
    if not semantic_unchanged <= set(paths):
        raise ImpactError(
            "unchanged F* semantic inputs must be changed candidate paths"
        )
    proof_prefix = f"{FSTAR_ROOT.as_posix()}/"
    proof_root_changes = tuple(
        path
        for path in paths
        if path.startswith(proof_prefix)
    )
    fstar_global_change = any(
        path in FSTAR_GLOBAL_INPUTS
        or _starts_with_any(path, RUST_ENVIRONMENT_PREFIXES)
        or (path in fstar_inputs and path not in semantic_unchanged)
        for path in paths
    ) or (
        FSTAR_MANIFEST.as_posix() in paths
        and fstar_manifest_control_change
    )
    fstar_relevant = bool(proof_root_changes) or fstar_global_change
    fstar_proofs = (
        current_fstar_proofs(
            root,
            proof_root_changes,
            force_all=fstar_global_change,
        )
        if fstar_relevant
        else ()
    )
    known_fstar_proofs = set(_fstar_proof_names(root))
    pending_fstar_set = set(pending_fstar)
    unknown_pending = sorted(pending_fstar_set - known_fstar_proofs)
    if unknown_pending:
        raise ImpactError(
            "pending F* evidence selected unknown proof(s): "
            + ", ".join(unknown_pending)
        )
    fstar_proofs = tuple(sorted(set(fstar_proofs) | pending_fstar_set))

    proof_rust = any(
        path.startswith(PROOF_AGGREGATION_PREFIX) and path.endswith(".rs")
        for path in paths
    )
    proof_package = proof_rust or any(
        path == f"{PROOF_AGGREGATION_PREFIX}Cargo.toml"
        or path.startswith(f"{PROOF_AGGREGATION_PREFIX}tests/")
        for path in paths
    )
    reference_change = any(
        path.startswith(REFERENCE_PREFIX) for path in paths
    )
    fuzz_change = any(path.startswith(FUZZ_PREFIX) for path in paths)
    app_rust = any(_starts_with_any(path, APP_BOUNDARY_PREFIXES) for path in paths)
    rust_global = any(
        path in RUST_GLOBAL_INPUTS
        or _starts_with_any(path, RUST_ENVIRONMENT_PREFIXES)
        for path in paths
    )
    rust_reference = (
        proof_package or reference_change or app_rust or rust_global
    )

    # Pull requests prove that locally generated evidence is complete and run
    # only the affected proof-language checks. Extraction, parity, fuzzing, and
    # runtime replay are exhaustive reproducibility work owned by the
    # manual/nightly full fingerprint.
    deferred = []
    if graph_set:
        deferred.append("extraction/parity")
    if rust_reference or fuzz_change or proof_package or app_rust or rust_global:
        deferred.append("runtime")

    return ImpactPlan(
        static=True,
        extraction_graphs=(),
        lean_modules=lean_modules,
        fstar_proofs=fstar_proofs,
        fstar_force_all=False,
        parity=False,
        rust_reference=False,
        fuzz=False,
        dos=False,
        explanation=(
            f"{len(paths)} changed path(s); "
            f"{len(lean_modules)} Lean module(s), "
            f"{len(fstar_proofs)} F* proof file(s); "
            + (
                "deferred " + ", ".join(deferred) + " to full replay"
                if deferred
                else "no exhaustive replay needed"
            )
        ),
    )


def load_gate_decision(path: Path) -> GateDecision:
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, UnicodeError, json.JSONDecodeError) as error:
        raise ImpactError(f"cannot read gate decision {path}: {error}") from error
    if not isinstance(value, dict) or value.get("schema_version") != 1:
        raise ImpactError(f"gate decision {path} must use schema version 1")
    status = value.get("status")
    if status not in {"run", "skip", "block"}:
        raise ImpactError(f"gate decision {path} has invalid status {status!r}")
    if value.get("run") is not (status == "run"):
        raise ImpactError(f"gate decision {path} has inconsistent run state")

    def strings(field: str) -> tuple[str, ...]:
        items = value.get(field)
        if not isinstance(items, list) or any(
            not isinstance(item, str) or not item for item in items
        ):
            raise ImpactError(
                f"gate decision {path}.{field} must be an array of strings"
            )
        return tuple(items)

    return GateDecision(
        status=status,
        graphs=strings("graphs"),
        unknown_files=strings("unknown_files"),
    )


def write_github_output(path: Path, plan_value: ImpactPlan) -> None:
    values = {
        "static_run": str(plan_value.static).lower(),
        "extract_run": str(bool(plan_value.extraction_graphs)).lower(),
        "extract_graphs": json.dumps(
            list(plan_value.extraction_graphs), separators=(",", ":")
        ),
        "lean_run": str(bool(plan_value.lean_modules)).lower(),
        "lean_modules": json.dumps(
            list(plan_value.lean_modules), separators=(",", ":")
        ),
        "fstar_run": str(bool(plan_value.fstar_proofs)).lower(),
        "fstar_proofs": json.dumps(
            list(plan_value.fstar_proofs), separators=(",", ":")
        ),
        "fstar_force_all": str(plan_value.fstar_force_all).lower(),
        "parity_run": str(plan_value.parity).lower(),
        "rust_reference_run": str(plan_value.rust_reference).lower(),
        "fuzz_run": str(plan_value.fuzz).lower(),
        "dos_run": str(plan_value.dos).lower(),
        "explanation": plan_value.explanation,
    }
    try:
        with path.open("a", encoding="utf-8", newline="\n") as output:
            for key, value in values.items():
                if "\n" in value or "\r" in value:
                    raise ImpactError(f"GitHub output {key} contains a newline")
                output.write(f"{key}={value}\n")
    except OSError as error:
        raise ImpactError(f"cannot write GitHub output {path}: {error}") from error


def parser() -> argparse.ArgumentParser:
    result = argparse.ArgumentParser(description=__doc__)
    result.add_argument("--event", required=True, choices=sorted(SUPPORTED_EVENTS))
    result.add_argument("--base")
    result.add_argument("--head", default="HEAD")
    result.add_argument("--changed-file", action="append", default=[])
    result.add_argument("--gate-decision", type=Path, required=True)
    result.add_argument("--github-output", type=Path)
    result.add_argument("--pretty", action="store_true")
    return result


def main(argv: list[str] | None = None) -> int:
    args = parser().parse_args(argv)
    try:
        if args.event in CANDIDATE_EVENTS:
            if args.changed_file:
                paths = tuple(args.changed_file)
            elif args.base:
                paths = changed_files(ROOT, args.base, args.head)
            else:
                raise ImpactError(f"--base is required for {args.event}")
        else:
            paths = ()
        decision = load_gate_decision(args.gate_decision)
        retired: tuple[str, ...] = ()
        fstar_control_change = False
        lean_environment_change = False
        fstar_semantic_unchanged: tuple[str, ...] = ()
        pending_fstar: tuple[str, ...] = ()
        if args.event in CANDIDATE_EVENTS and args.base:
            retired = tuple(
                sorted(
                    set(extraction_graph_ids_at(ROOT, args.base))
                    - set(extraction_graph_ids(ROOT))
                )
            )
            if FSTAR_MANIFEST.as_posix() in paths:
                fstar_control_change = fstar_manifest_control_changed(
                    ROOT, args.base
                )
            if LEAN_ENVIRONMENT_MANIFEST.as_posix() in paths:
                lean_environment_change = lean_environment_control_changed(
                    ROOT, args.base
                )
            fstar_semantic_unchanged = unchanged_fstar_semantic_inputs(
                ROOT, args.base, paths
            )
            pending_fstar = pending_fstar_proofs(ROOT)
        result = plan(
            ROOT,
            event=args.event,
            status=decision.status,
            changed=paths,
            declared_graphs=decision.graphs,
            unknown_files=decision.unknown_files,
            retired_graphs=retired,
            fstar_manifest_control_change=fstar_control_change,
            lean_environment_control_change=lean_environment_change,
            fstar_semantic_unchanged=fstar_semantic_unchanged,
            pending_fstar=pending_fstar,
        )
        if args.github_output:
            write_github_output(args.github_output, result)
        print(
            json.dumps(
                result.as_dict(),
                indent=2 if args.pretty else None,
                sort_keys=True,
            )
        )
        return 0
    except ImpactError as error:
        print(f"SnarkPack FV impact planning failed: {error}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
