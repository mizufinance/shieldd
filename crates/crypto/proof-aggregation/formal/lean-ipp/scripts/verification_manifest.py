#!/usr/bin/env python3
"""Fail-closed validation and rendering for SnarkPack FV evidence."""

from __future__ import annotations

import argparse
import copy
import hashlib
import json
import os
import re
import sys
import tempfile
import tomllib
from dataclasses import dataclass
from pathlib import Path, PurePosixPath
from typing import Any, Iterable


SCRIPT_PATH = Path(__file__).resolve()
LEAN_ROOT = SCRIPT_PATH.parents[1]
REPO_ROOT = SCRIPT_PATH.parents[6]
MANIFEST_PATH = (
    REPO_ROOT
    / "crates/crypto/proof-aggregation/formal/snarkpack/verification-manifest.json"
)
EXTRACTION_MANIFEST_PATH = (
    REPO_ROOT
    / "crates/crypto/proof-aggregation/formal/snarkpack/"
    "lean-extraction-manifest.json"
)
OPERATION_REGISTER_PATH = (
    REPO_ROOT
    / "crates/crypto/proof-aggregation/formal/snarkpack/"
    "operation-reduction-register.json"
)
OPERATION_REGISTER_SHA256 = (
    "8706f919e71b4f6d380b6ce13b4ff8d5c793faa658b7509cd8e4dead03e3786f"
)
FSTAR_CHECKER_EVIDENCE_PATH = (
    REPO_ROOT
    / "crates/crypto/proof-aggregation/formal/snarkpack/"
    "fstar-checker-evidence.json"
)
AUDIT_PRINT = re.compile(
    r"^(?P<indent>[ \t]*)#print[ \t]+axioms[ \t]+(?P<root>[^\s]+)",
    re.MULTILINE,
)
LEAN_FORBIDDEN_TOKEN = re.compile(r"\b(?:sorry|admit|native_decide)\b")
LEAN_AXIOM_DECLARATION = re.compile(
    r"^[ \t]*"
    r"(?:@\[[^\]]*\][ \t\r\n]*)*"
    r"(?:(?:private|protected|local|scoped|noncomputable|unsafe)[ \t\r\n]+)*"
    r"(?:axiom|constant)\b",
    re.MULTILINE,
)
CARGO_TEST_COUNT = re.compile(r"^running (\d+) tests?$", re.MULTILINE)
CARGO_TEST_RESULT = re.compile(
    r"^test ([^\r\n]+?) \.\.\. (?:ok|FAILED|ignored(?:, .*)?)$",
    re.MULTILINE,
)
LEAN_MODULE = re.compile(
    r"[A-Za-z_][A-Za-z0-9_]*(?:\.[A-Za-z_][A-Za-z0-9_]*)*"
)
IMPORT = re.compile(
    rf"[ \t]*(?:public[ \t]+)?import[ \t]+({LEAN_MODULE.pattern})[ \t]*"
)
IMPORT_TOKEN = re.compile(r"\bimport\b")
FSTAR_MODULE = re.compile(
    r"^module[ \t]+([A-Za-z_][A-Za-z0-9_.]*)[ \t]*$", re.MULTILINE
)
FSTAR_DECLARATION = re.compile(
    r"^(?:let|val)[ \t]+(?:rec[ \t]+)?([A-Za-z_][A-Za-z0-9_']*)\b",
    re.MULTILINE,
)
FSTAR_MODULE_ALIAS = re.compile(
    r"^[ \t]*module[ \t]+[A-Za-z_][A-Za-z0-9_']*[ \t]*=[ \t]*"
    r"([A-Za-z_][A-Za-z0-9_.']*)",
    re.MULTILINE,
)
FSTAR_OPEN_MODULE = re.compile(
    r"^[ \t]*open[ \t]+([A-Za-z_][A-Za-z0-9_.']*)",
    re.MULTILINE,
)
EXTRACTION_GRAPH_ID = re.compile(r"^[A-Za-z][A-Za-z0-9_]*$")
VALID_CLAIM_STATUSES = {"proved", "tested", "open"}
CLOSED_TESTED_CLAIM_IDS = {
    "BOUNDED-CHALLENGE-SAMPLER",
    "V1-BYTE-LOCK",
}
# These digests live in the gate implementation rather than the manifest so a
# claim, dependency, assumption, or external-boundary row cannot disappear by
# editing only the evidence ledger. Intentional ledger changes require an
# explicit update to this fail-closed owner.
CLAIM_LEDGER_SHA256 = (
    "d1ebdc6b5dd82bb03d0b22784134b57a66165cb49effada2f1f5f7d9d614d256"
)
ASSUMPTION_LEDGER_SHA256 = (
    "d3e4be465b8987f998cac20c22bdd416c04cdd3118e97e4d17a618ddef4672f3"
)
V1_PROTOCOL_VERSION = 2
V1_BYTE_BASELINE_SHA256 = (
    "11effb096293247cc61c87fb03f82eac145339eca39e13168a1affaa6cd23b2b"
)
V1_TRACE_BASELINE_SHA256 = (
    "e2f05c697268e2e2cf60174110a38fa711e11525e590eda384878994c5727fb3"
)
V1_BASELINE_FAMILIES = (
    "Transfer",
    "NoteReshape(NoteReshapeFamilyId(1))",
    "NoteReshape(NoteReshapeFamilyId(2))",
    "NoteReshape(NoteReshapeFamilyId(3))",
    "NoteReshape(NoteReshapeFamilyId(4))",
    "ShieldedIcs20Withdrawal(ShieldedIcs20WithdrawalFamilyId(1))",
)
V1_BASELINE_COUNTS = (1, 2, 4, 8)
VERIFICATION_CONTRACT_FIELDS = (
    "required_repository_inputs",
    "toolchain_roles",
    "fstar_modules",
    "audit_modules",
    "allowed_axioms",
    "spec_roots",
    "statement_binding_evidence",
)
VERIFICATION_CONTRACT_SHA256 = (
    "966d49c5f4ee10e0f0f4f0d5301fbe794c318070b21ebbde6fe4c7b1a5fcce3c"
)
BOUNDED_SAMPLER_ROOT = "bounded_challenge_sampler_boundary_suite"
BOUNDED_SAMPLER_TESTS = (
    "bounded_challenge_sampler_immediate_success_queries_nonce_zero_once",
    "bounded_challenge_sampler_retries_rejections_in_nonce_order",
    "bounded_challenge_sampler_accepts_success_at_max_nonce",
    "bounded_challenge_sampler_rejection_at_max_fails_closed",
    "bounded_challenge_sampler_queries_before_incrementing",
    "bounded_challenge_sampler_preserves_attempt_error_before_exhaustion",
    "bounded_challenge_sampler_nonce_helpers_match_core_boundaries",
)
NONCE_ERROR_MAPPING_TEST = "shipping_nonce_exhaustion_maps_exact_public_error"
FSTAR_MODULE_INVENTORY = (
    "ChallengePreimageProofs.fst",
    "DigestBindingProofs.fst",
    "FamilyRoutingProofs.fst",
    "FrameLemmas.fst",
    "PreflightProofs.fst",
    "SnarkpackMachineSupport.fst",
    "StatementEncodingProofs.fst",
    "ValidationProofs.fst",
    "WrapperProofs.fst",
)
FSTAR_CI_CONTROL_INPUTS = (
    ".github/workflows/formal.yml",
    "scripts/ci/run_with_annotation.py",
)
FSTAR_GLOBAL_MODULE_INVENTORY = ("SnarkpackMachineSupport",)
FSTAR_GLOBAL_INPUT_INVENTORY = (
    ".cargo/config.toml",
    "Cargo.lock",
    "Cargo.toml",
    "crates/core/component/shielded-pool/Cargo.toml",
    "crates/core/component/shielded-pool/src/note_reshape/generated.rs",
    (
        "crates/core/component/shielded-pool/src/"
        "shielded_ics20_withdrawal/generated.rs"
    ),
    "crates/crypto/proof-aggregation/Cargo.toml",
    (
        "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/"
        "verification_manifest.py"
    ),
    "crates/crypto/proof-aggregation/formal/snarkpack/toolchain.toml",
    "crates/crypto/proof-aggregation/src/aggregate_proof_wrapper.rs",
    "crates/crypto/proof-aggregation/src/bundle.rs",
    "crates/crypto/proof-aggregation/src/ipp/ip_proofs/Cargo.toml",
    "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs",
    "crates/crypto/proof-aggregation/src/padding.rs",
    "crates/crypto/proof-aggregation/src/preflight.rs",
    "crates/crypto/proof-aggregation/src/srs.rs",
    "crates/crypto/proof-aggregation/src/statement.rs",
    "flake.lock",
    "flake.nix",
    "proto/shieldd/shieldd/core/transaction/v1/transaction.proto",
    "rust-toolchain.toml",
    "scripts/ci/snarkpack_fv_impact.py",
    "scripts/prepare_snarkpack_fstar_support.py",
    "scripts/snarkpack-formal.sh",
)
SHIPPING_NONCE_CALL_INVENTORY = {
    "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs": (2, 0),
    (
        "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
        "applications/groth16_aggregation.rs"
    ): (2, 1),
    "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs": (4, 0),
    (
        "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/"
        "structured_scalar_message.rs"
    ): (2, 0),
}
EXTRACTED_CHECKED_SUCCESSOR_INVENTORY = {
    (
        "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
        "applications/groth16_aggregation.rs"
    ): {
        "function": "verify_aggregate_adapter_execution_core_from_nonce",
        "expected_calls": 1,
        "tests": (
            "aggregate_adapter_core_retries_and_installs_one_randomizer",
            "aggregate_adapter_core_queries_last_nonce_and_fails_closed",
            "aggregate_adapter_core_accepts_success_at_last_nonce",
            "aggregate_adapter_core_preserves_error_order_and_kind",
        ),
        "audit_root": "Ipp.Extracted.AggregateAdapter.accepted_path",
    },
}
DIRECT_NONCE_ARITHMETIC = re.compile(
    r"\b(?P<nonce>[A-Za-z_][A-Za-z0-9_]*nonce)\b\s*"
    r"(?:\+=\s*1|=\s*(?P=nonce)\s*\+\s*1)\b|"
    r"\b[A-Za-z_][A-Za-z0-9_]*nonce\s*\."
    r"(?:wrapping|saturating|checked)_add\s*\("
)
OBSOLETE_DEPLOYED_HASH_ROOTS = {
    "Ipp.ShippingHashGame.decodeFr_eq_some_iff",
    "Ipp.ShippingHashGame.digestEquiv_candidate",
    "Ipp.ShippingHashGame.candidateDigestFiber_card",
    "Ipp.ShippingHashGame.decodedDigestFiber_card",
    "Ipp.ShippingHashGame.uniformDigest_decode_point_mass_eq",
    "Ipp.ShippingHashGame.uniformDigest_decode_conditioned_uniform",
    "Ipp.ShippingHashGame.freshDecodedAttempt_some_le_field",
    "Ipp.ShippingHashGame.boundedDecodedSampler_some_le_field",
    "Ipp.ShippingHashGame.decodedFresh_acceptance_le_fieldFresh",
    "Ipp.ShippingHashGame.decodeFr_rejects_scalarModulus",
    "Ipp.ShippingHashGame.accepted_scalar_uniform_point_mass_eq",
    "Ipp.ShippingHashGame.decodedCached_acceptance_le_fieldCached",
}
OBSOLETE_ASSUMPTION_IDS = {"HONEST-PROVER-PRIMITIVES"}
CONTRACT_EVIDENCE_FIELDS = {
    "familyRegistered",
    "canonicalStatementExact",
    "canonicalStatementInjective",
    "vkDigestPreimageInjective",
    "vkDigestExact",
    "statementDigestExact",
    "challengeContextExact",
    "wrapperExact",
    "proofDecodeExact",
    "validCounts",
    "realPrefixExact",
    "repeatFinalPadding",
}
CONTRACT_DATA_FIELDS = {
    "supported",
    "decodeWrapper",
    "decodeProof",
    "sha256",
    "encodePublicClaim",
}
EXTERNAL_RUST_EVIDENCE_ROOTS = {
    "vkDigestExact": (
        "Rust.proof_aggregation.statement.aggregate_verification_key_digest",
        "crates/crypto/proof-aggregation/src/statement.rs",
    ),
    "statementDigestExact": (
        "Rust.proof_aggregation.statement.statement_digest_from_canonical",
        "crates/crypto/proof-aggregation/src/statement.rs",
    ),
    "challengeContextExact": (
        "Rust.ark_ip_proofs.challenge.ChallengeContext.from_statement_digest",
        "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs",
    ),
    "wrapperExact": (
        "Rust.proof_aggregation.aggregate_proof_wrapper.decode_wrapped_aggregate_proof",
        "crates/crypto/proof-aggregation/src/aggregate_proof_wrapper.rs",
    ),
    "proofDecodeExact": (
        "Rust.proof_aggregation.backend.deserialize_aggregate_proof",
        "crates/crypto/proof-aggregation/src/backend.rs",
    ),
    "realPrefixExact": (
        "Rust.proof_aggregation.padding.prepare_verify_public_input_rows",
        "crates/crypto/proof-aggregation/src/padding.rs",
    ),
}
ASSUMED_CONTRACT_FIELDS = {
    "proofDecodeExact": "ARKWORKS-AGGREGATE-PROOF-DECODE",
}
CONTRACT_STRUCTURE = re.compile(
    r"\bstructure\s+StatementBindingContract\b.*?\bwhere\s*\n"
    r"(?P<body>.*?)(?=\n/-- )",
    re.DOTALL,
)
CONTRACT_FIELD = re.compile(
    r"^\s{2}([A-Za-z][A-Za-z0-9]*)\s*:",
    re.MULTILINE,
)
OPERATION_STATUSES = {
    "rejected",
    "open",
    "proved-model",
    "implemented",
    "verified",
}


class VerificationError(ValueError):
    pass


@dataclass(frozen=True)
class ValidationSummary:
    audit_capstones: int
    claims: int
    open_claims: int
    assumptions: int
    unchecked_contract_evidence: int


@dataclass(frozen=True)
class FstarModuleSpec:
    name: str
    path: str
    dependencies: tuple[str, ...]


def statement_binding_contract_fields(path: Path) -> set[str]:
    try:
        source = path.read_text(encoding="utf-8")
    except (OSError, UnicodeError) as error:
        raise VerificationError(
            f"cannot read StatementBindingContract source {path}: {error}"
        ) from error
    match = CONTRACT_STRUCTURE.search(source)
    if match is None:
        raise VerificationError(
            f"StatementBindingContract declaration is missing from {path}"
        )
    fields = set(CONTRACT_FIELD.findall(match.group("body")))
    if not fields:
        raise VerificationError(
            f"StatementBindingContract has no parsed fields in {path}"
        )
    return fields


def _canonical_json(payload: Any) -> str:
    return json.dumps(payload, indent=2, ensure_ascii=False) + "\n"


def _verification_contract_payload(manifest: dict[str, Any]) -> dict[str, Any]:
    """Return the immutable evidence contract protected by the gate owner.

    ``last_result`` is an evidence-state observation, not part of the contract:
    the checked artifact and closure gate validate it separately. Excluding
    only that field lets a checked importer promote stale F* rows without
    editing this validator (which would invalidate the artifact it imports).
    """
    payload = {
        field: copy.deepcopy(manifest.get(field))
        for field in VERIFICATION_CONTRACT_FIELDS
    }
    for entry in payload["statement_binding_evidence"]:
        entry["checker"].pop("last_result", None)
    return payload


def _fstar_environment_contract_payload(
    manifest: dict[str, Any],
) -> dict[str, Any]:
    """Project out F* bytes tracked by current-input evidence records."""
    stale_fields = {
        entry.get("contract_field")
        for entry in manifest["statement_binding_evidence"]
        if entry.get("checker", {}).get("last_result") == "stale"
    }
    payload = _verification_contract_payload(manifest)
    for entry in payload["statement_binding_evidence"]:
        if (
            entry.get("kind") != "fstar"
            and entry.get("contract_field") not in stale_fields
        ):
            continue
        for source in entry["sources"]:
            source["sha256"] = "<current-fstar-input-fingerprint>"
    return payload


def load_manifest(path: Path = MANIFEST_PATH) -> dict[str, Any]:
    try:
        text = path.read_text(encoding="utf-8")
        payload = json.loads(text)
    except (OSError, UnicodeError, json.JSONDecodeError) as error:
        raise VerificationError(f"cannot load {path}: {error}") from error
    if text != _canonical_json(payload):
        raise VerificationError(f"{path} must use canonical pretty JSON")
    if not isinstance(payload, dict):
        raise VerificationError("verification manifest must be an object")
    return payload


def load_operation_register(path: Path = OPERATION_REGISTER_PATH) -> dict[str, Any]:
    try:
        text = path.read_text(encoding="utf-8")
        payload = json.loads(text)
    except (OSError, UnicodeError, json.JSONDecodeError) as error:
        raise VerificationError(f"cannot load {path}: {error}") from error
    if text != _canonical_json(payload):
        raise VerificationError(f"{path} must use canonical pretty JSON")
    if not isinstance(payload, dict):
        raise VerificationError("operation register must be an object")
    if path.resolve() == OPERATION_REGISTER_PATH.resolve():
        digest = hashlib.sha256(text.encode("utf-8")).hexdigest()
        if digest != OPERATION_REGISTER_SHA256:
            raise VerificationError(
                "operation register digest differs from the independent gate "
                "owner"
            )
    return payload


def _require_nonempty_list(payload: dict[str, Any], key: str) -> list[Any]:
    value = payload.get(key)
    if not isinstance(value, list) or not value:
        raise VerificationError(f"{key} must be nonempty")
    return value


def _safe_relative_path(value: Any, *, field: str) -> PurePosixPath:
    if not isinstance(value, str) or not value:
        raise VerificationError(f"{field} must be a nonempty repository-relative path")
    path = PurePosixPath(value)
    if path.is_absolute() or ".." in path.parts or "\\" in value:
        raise VerificationError(f"{field} must be a safe POSIX relative path: {value!r}")
    return path


def _module_path(lean_root: Path, module: str) -> Path:
    if LEAN_MODULE.fullmatch(module) is None:
        raise VerificationError(f"unsupported local Lean module name: {module}")
    return lean_root.joinpath(*module.split(".")).with_suffix(".lean")


def parse_lean_imports(text: str, *, module: str) -> list[str]:
    code = lean_code_without_comments_and_strings(text)
    imports: list[str] = []
    for line_number, line in enumerate(code.splitlines(), start=1):
        if IMPORT_TOKEN.search(line) is None:
            continue
        match = IMPORT.fullmatch(line)
        if match is None:
            raise VerificationError(
                f"unparsed import command in {module}:{line_number}"
            )
        imports.append(match.group(1))
    return imports


def validate_import_closure(
    lean_root: Path,
    roots: Iterable[str],
    forbidden_prefixes: Iterable[str],
) -> set[str]:
    forbidden = tuple(forbidden_prefixes)
    pending = list(roots)
    if any(
        not root.startswith("Ipp.") and root != "Ipp"
        for root in pending
    ):
        raise VerificationError("spec roots must be in Ipp")
    visited: set[str] = set()
    while pending:
        module = pending.pop()
        if module in visited:
            continue
        visited.add(module)
        path = _module_path(lean_root, module)
        if not path.is_file():
            raise VerificationError(f"missing spec module {module}: {path}")
        text = path.read_text(encoding="utf-8")
        for imported in parse_lean_imports(text, module=module):
            if imported in forbidden or any(
                imported.startswith(prefix + ".") for prefix in forbidden
            ):
                raise VerificationError(f"forbidden import in {module}: {imported}")
            if _module_path(lean_root, imported).is_file() and imported not in visited:
                pending.append(imported)
    return visited


def extraction_outputs(
    path: Path = EXTRACTION_MANIFEST_PATH,
    *,
    expected_count: int = 37,
) -> list[str]:
    try:
        payload = json.loads(path.read_text(encoding="utf-8"))
        graphs = payload["graphs"]
        outputs = [graph["output"] for graph in graphs]
    except (OSError, UnicodeError, json.JSONDecodeError, KeyError, TypeError) as error:
        raise VerificationError(f"cannot read extraction outputs from {path}: {error}") from error
    if len(outputs) != expected_count:
        raise VerificationError(
            f"expected {expected_count} extraction outputs; found {len(outputs)}"
        )
    if len(set(outputs)) != len(outputs):
        raise VerificationError("extraction outputs contain duplicates")
    if not all(
        output.startswith(
            "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/"
        )
        and output.endswith("Generated.lean")
        for output in outputs
    ):
        raise VerificationError("extraction outputs must be Generated.lean files")
    return outputs


def validated_parity_commands(
    payload: dict[str, Any],
    repo_root: Path,
    *,
    selected_graphs: Iterable[str] = (),
) -> list[tuple[str, tuple[str, ...]]]:
    graphs = payload.get("graphs")
    if not isinstance(graphs, list) or not graphs:
        raise VerificationError("extraction manifest graphs must be nonempty")
    by_id: dict[str, dict[str, Any]] = {}
    for index, graph in enumerate(graphs):
        if not isinstance(graph, dict):
            raise VerificationError(f"extraction graph {index} must be an object")
        graph_id = graph.get("id")
        if (
            not isinstance(graph_id, str)
            or EXTRACTION_GRAPH_ID.fullmatch(graph_id) is None
        ):
            raise VerificationError(
                f"extraction graph {index} has an unsafe id"
            )
        if graph_id in by_id:
            raise VerificationError(f"duplicate extraction graph id: {graph_id}")
        by_id[graph_id] = graph

    selected_values = list(selected_graphs)
    if any(
        not isinstance(graph_id, str)
        or EXTRACTION_GRAPH_ID.fullmatch(graph_id) is None
        for graph_id in selected_values
    ):
        raise VerificationError("parity graph selection contains an unsafe id")
    selected = set(selected_values)
    unknown = sorted(selected - set(by_id))
    if unknown:
        raise VerificationError(
            "unknown parity graph selection: " + ", ".join(unknown)
        )
    included = (
        [by_id[graph_id] for graph_id in sorted(selected)]
        if selected
        else list(by_id.values())
    )

    commands: list[tuple[str, tuple[str, ...]]] = []
    seen: set[tuple[str, tuple[str, ...]]] = set()
    for graph in included:
        graph_id = graph["id"]
        parity = graph.get("parity")
        if not isinstance(parity, list) or not parity:
            raise VerificationError(
                f"extraction graph {graph_id} has no parity command"
            )
        for index, entry in enumerate(parity):
            where = f"extraction graph {graph_id} parity[{index}]"
            if not isinstance(entry, dict) or set(entry) != {"cwd", "argv"}:
                raise VerificationError(f"{where} fields differ")
            relative = _safe_relative_path(entry["cwd"], field=f"{where}.cwd")
            cwd = repo_root.joinpath(*relative.parts)
            if not cwd.is_dir():
                raise VerificationError(f"{where} cwd is missing: {cwd}")
            argv = entry["argv"]
            if not isinstance(argv, list) or not argv or not all(
                isinstance(argument, str) and argument for argument in argv
            ):
                raise VerificationError(f"{where}.argv must be nonempty strings")
            if len(argv) < 3 or argv[:2] != ["cargo", "test"]:
                raise VerificationError(
                    f"{where} must invoke cargo test directly"
                )
            if "--lib" not in argv and "--test" not in argv:
                raise VerificationError(
                    f"{where} must select an explicit Rust test target"
                )
            key = (relative.as_posix(), tuple(argv))
            if key not in seen:
                seen.add(key)
                commands.append(key)
    if not commands:
        raise VerificationError("parity selection produced zero commands")
    return commands


@dataclass(frozen=True)
class AuditDiagnostic:
    root: str
    source: str
    line: int
    column: int


def _audit_diagnostics(path: Path, *, source: str) -> list[AuditDiagnostic]:
    code = lean_code_without_comments_and_strings(
        path.read_text(encoding="utf-8")
    )
    diagnostics: list[AuditDiagnostic] = []
    for match in AUDIT_PRINT.finditer(code):
        diagnostics.append(
            AuditDiagnostic(
                root=match.group("root"),
                source=source,
                line=code.count("\n", 0, match.start()) + 1,
                column=len(match.group("indent")),
            )
        )
    return diagnostics


def _audit_roots(path: Path) -> list[str]:
    return [
        diagnostic.root
        for diagnostic in _audit_diagnostics(path, source=path.name)
    ]


def manifest_audit_diagnostics(
    manifest: dict[str, Any],
    *,
    lean_root: Path = LEAN_ROOT,
    require_complete_inventory: bool = True,
) -> list[AuditDiagnostic]:
    """Return pinned compiler diagnostics for active ``#print axioms`` commands."""
    audit_modules = _require_nonempty_list(manifest, "audit_modules")
    listed_paths: set[Path] = set()
    all_diagnostics: list[AuditDiagnostic] = []
    for index, entry in enumerate(audit_modules):
        if not isinstance(entry, dict):
            raise VerificationError(f"audit_modules[{index}] must be an object")
        relative = _safe_relative_path(
            entry.get("path"), field=f"audit_modules[{index}].path"
        )
        path = lean_root.joinpath(*relative.parts)
        if not path.is_file():
            raise VerificationError(f"missing audit module: {path}")
        if path in listed_paths:
            raise VerificationError(f"duplicate audit module: {relative}")
        listed_paths.add(path)
        diagnostics = _audit_diagnostics(path, source=relative.as_posix())
        roots = [diagnostic.root for diagnostic in diagnostics]
        expected = entry.get("expected_capstones")
        if not isinstance(expected, int) or expected <= 0:
            raise VerificationError(
                f"audit_modules[{index}].expected_capstones must be positive"
            )
        if len(roots) != expected:
            raise VerificationError(
                f"{relative} contains {len(roots)} capstones; expected {expected}"
            )
        if len(set(roots)) != len(roots):
            raise VerificationError(f"{relative} contains duplicate capstones")
        roots_digest = hashlib.sha256(
            ("".join(f"{root}\n" for root in roots)).encode("utf-8")
        ).hexdigest()
        if entry.get("capstone_roots_sha256") != roots_digest:
            raise VerificationError(
                f"{relative} capstone roots differ from the fixed manifest"
            )
        required = entry.get("required_roots", [])
        if not isinstance(required, list) or not all(
            isinstance(root, str) and root for root in required
        ):
            raise VerificationError(
                f"audit_modules[{index}].required_roots must be strings"
            )
        missing = sorted(set(required) - set(roots))
        if missing:
            raise VerificationError(
                f"{relative} is missing required roots: {', '.join(missing)}"
            )
        all_diagnostics.extend(diagnostics)

    if require_complete_inventory:
        discovered = set(lean_root.glob("Ipp/ProofAudit*.lean"))
        unexpected_modules = sorted(discovered - listed_paths)
        if unexpected_modules:
            raise VerificationError(
                "unexpected unaudited ProofAudit modules: "
                + ", ".join(str(path) for path in unexpected_modules)
            )
    all_audit_roots = [diagnostic.root for diagnostic in all_diagnostics]
    if len(set(all_audit_roots)) != len(all_audit_roots):
        raise VerificationError("capstone roots are duplicated across audit modules")
    obsolete_roots = sorted(
        set(all_audit_roots) & OBSOLETE_DEPLOYED_HASH_ROOTS
    )
    if obsolete_roots:
        raise VerificationError(
            "audit contains obsolete canonical-rejection hash roots: "
            + ", ".join(obsolete_roots)
        )
    return all_diagnostics


def manifest_audit_roots(
    manifest: dict[str, Any],
    *,
    lean_root: Path = LEAN_ROOT,
) -> list[str]:
    """Return audit roots only after checking their fixed manifest pins."""
    return [
        diagnostic.root
        for diagnostic in manifest_audit_diagnostics(
            manifest, lean_root=lean_root
        )
    ]


def manifest_audit_module_sources(
    manifest: dict[str, Any],
) -> dict[str, str]:
    """Map each declared Lean audit module to its canonical source path."""
    sources_by_module: dict[str, str] = {}
    for index, entry in enumerate(
        _require_nonempty_list(manifest, "audit_modules")
    ):
        if not isinstance(entry, dict):
            raise VerificationError(f"audit_modules[{index}] must be an object")
        relative = _safe_relative_path(
            entry.get("path"), field=f"audit_modules[{index}].path"
        )
        if relative.suffix != ".lean":
            raise VerificationError(
                f"audit_modules[{index}].path must end in .lean"
            )
        module = ".".join(relative.with_suffix("").parts)
        if module in sources_by_module:
            raise VerificationError(f"duplicate audit module name: {module}")
        sources_by_module[module] = relative.as_posix()
    return sources_by_module


def selected_manifest_audit_diagnostics(
    manifest: dict[str, Any],
    modules: Iterable[str],
    *,
    lean_root: Path = LEAN_ROOT,
) -> list[AuditDiagnostic]:
    """Return pinned diagnostics for exactly the requested audit modules."""
    requested = tuple(modules)
    if len(set(requested)) != len(requested):
        raise VerificationError("requested audit modules contain duplicates")

    diagnostics = manifest_audit_diagnostics(manifest, lean_root=lean_root)
    if not requested:
        return diagnostics

    sources_by_module = manifest_audit_module_sources(manifest)

    unknown = sorted(set(requested) - set(sources_by_module))
    if unknown:
        raise VerificationError(
            "requested unknown audit module(s): " + ", ".join(unknown)
        )
    selected_sources = {sources_by_module[module] for module in requested}
    selected = [
        diagnostic
        for diagnostic in diagnostics
        if diagnostic.source in selected_sources
    ]
    if not selected:
        raise VerificationError("requested audit diagnostic set is empty")
    return selected


def validate_required_inputs(paths: list[Any], repo_root: Path) -> None:
    if not paths:
        raise VerificationError("required_repository_inputs must be nonempty")
    resolved: list[Path] = []
    for index, value in enumerate(paths):
        relative = _safe_relative_path(
            value, field=f"required_repository_inputs[{index}]"
        )
        path = repo_root.joinpath(*relative.parts)
        if not path.is_file():
            raise VerificationError(f"missing required repository input: {path}")
        resolved.append(path)
    if len(set(resolved)) != len(resolved):
        raise VerificationError("required_repository_inputs contains duplicates")


def validate_versioning_guidance(repo_root: Path) -> None:
    backend = (
        repo_root
        / "crates/crypto/proof-aggregation/src/backend.rs"
    )
    guide = repo_root / "docs/snarkpack/verification.md"
    target = "docs/snarkpack/verification.md#x3--optimization-byte-lock"
    heading = "### X3 — Optimization byte-lock"
    if not backend.is_file():
        raise VerificationError(f"missing SnarkPack backend: {backend}")
    if target not in backend.read_text(encoding="utf-8"):
        raise VerificationError(
            "aggregate byte-drift error must point to the live versioning procedure"
        )
    if not guide.is_file():
        raise VerificationError(f"missing SnarkPack versioning guide: {guide}")
    if heading not in guide.read_text(encoding="utf-8"):
        raise VerificationError(
            "aggregate byte-drift guidance target is missing its X3 anchor"
        )


def lean_code_without_comments_and_strings(text: str) -> str:
    """Preserve Lean code layout while blanking comments and string literals."""
    result: list[str] = []
    index = 0
    block_depth = 0
    in_string = False
    while index < len(text):
        current = text[index]
        following = text[index + 1] if index + 1 < len(text) else ""

        if block_depth:
            if current == "/" and following == "-":
                block_depth += 1
                result.extend((" ", " "))
                index += 2
            elif current == "-" and following == "/":
                block_depth -= 1
                result.extend((" ", " "))
                index += 2
            else:
                result.append("\n" if current == "\n" else " ")
                index += 1
            continue

        if in_string:
            if current == "\\" and following:
                result.extend((" ", "\n" if following == "\n" else " "))
                index += 2
            elif current == '"':
                in_string = False
                result.append(" ")
                index += 1
            else:
                result.append("\n" if current == "\n" else " ")
                index += 1
            continue

        if current == "-" and following == "-":
            while index < len(text) and text[index] != "\n":
                result.append(" ")
                index += 1
        elif current == "/" and following == "-":
            block_depth = 1
            result.extend((" ", " "))
            index += 2
        elif current == '"':
            in_string = True
            result.append(" ")
            index += 1
        else:
            result.append(current)
            index += 1
    return "".join(result)


def fstar_code_without_comments_and_strings(text: str) -> str:
    """Preserve F* layout while blanking nested comments and strings."""
    result: list[str] = []
    index = 0
    block_depth = 0
    in_string = False
    while index < len(text):
        current = text[index]
        following = text[index + 1] if index + 1 < len(text) else ""

        if block_depth:
            if current == "(" and following == "*":
                block_depth += 1
                result.extend((" ", " "))
                index += 2
            elif current == "*" and following == ")":
                block_depth -= 1
                result.extend((" ", " "))
                index += 2
            else:
                result.append("\n" if current == "\n" else " ")
                index += 1
            continue

        if in_string:
            if current == "\\" and following:
                result.extend((" ", "\n" if following == "\n" else " "))
                index += 2
            elif current == '"':
                in_string = False
                result.append(" ")
                index += 1
            else:
                result.append("\n" if current == "\n" else " ")
                index += 1
            continue

        if current == "/" and following == "/":
            while index < len(text) and text[index] != "\n":
                result.append(" ")
                index += 1
        elif current == "(" and following == "*":
            block_depth = 1
            result.extend((" ", " "))
            index += 2
        elif current == '"':
            in_string = True
            result.append(" ")
            index += 1
        else:
            result.append(current)
            index += 1
    return "".join(result)


def rust_code_without_comments_and_strings(text: str) -> str:
    """Preserve Rust layout while blanking nested comments and string bodies."""
    result: list[str] = []
    index = 0
    block_depth = 0
    in_string = False
    while index < len(text):
        current = text[index]
        following = text[index + 1] if index + 1 < len(text) else ""

        if block_depth:
            if current == "/" and following == "*":
                block_depth += 1
                result.extend((" ", " "))
                index += 2
            elif current == "*" and following == "/":
                block_depth -= 1
                result.extend((" ", " "))
                index += 2
            else:
                result.append("\n" if current == "\n" else " ")
                index += 1
            continue

        if in_string:
            if current == "\\" and following:
                result.extend((" ", "\n" if following == "\n" else " "))
                index += 2
            elif current == '"':
                in_string = False
                result.append(" ")
                index += 1
            else:
                result.append("\n" if current == "\n" else " ")
                index += 1
            continue

        raw = re.match(r"(?:br|rb|r)(#*)\"", text[index:])
        if raw is not None:
            marker = '"' + raw.group(1)
            prefix_length = raw.end()
            result.extend(" " for _ in range(prefix_length))
            index += prefix_length
            end = text.find(marker, index)
            if end < 0:
                end = len(text)
                marker = ""
            while index < end:
                result.append("\n" if text[index] == "\n" else " ")
                index += 1
            result.extend(" " for _ in marker)
            index += len(marker)
        elif current == "/" and following == "/":
            while index < len(text) and text[index] != "\n":
                result.append(" ")
                index += 1
        elif current == "/" and following == "*":
            block_depth = 1
            result.extend((" ", " "))
            index += 2
        elif current == '"':
            in_string = True
            result.append(" ")
            index += 1
        else:
            result.append(current)
            index += 1
    return "".join(result)


def rust_declares_function(text: str, name: str) -> bool:
    code = rust_code_without_comments_and_strings(text)
    declaration = re.compile(
        r"^[ \t]*(?:pub(?:[ \t]*\([^)]*\))?[ \t]+)?"
        r"(?:(?:const|async|unsafe)[ \t]+)*"
        r"fn[ \t]+" + re.escape(name) + r"\b",
        re.MULTILINE,
    )
    return declaration.search(code) is not None


def require_unignored_rust_test(
    text: str,
    name: str,
    *,
    expected_attributes: tuple[str, ...] = ("test",),
) -> None:
    code = rust_code_without_comments_and_strings(text)
    declaration = re.compile(
        r"(?P<attributes>(?:^[ \t]*#\[[^\]\r\n]+\][ \t]*\r?\n)+)"
        r"^[ \t]*fn[ \t]+" + re.escape(name) + r"\b",
        re.MULTILINE,
    )
    matches = list(declaration.finditer(code))
    if len(matches) != 1:
        raise VerificationError(
            f"expected exactly one attributed Rust test declaration: {name}"
        )
    attributes = matches[0].group("attributes")
    if re.search(r"(?m)^[ \t]*#\[test\][ \t]*$", attributes) is None:
        raise VerificationError(f"Rust test lacks #[test]: {name}")
    if re.search(r"(?m)^[ \t]*#\[ignore(?:[ \t=\(].*)?\][ \t]*$", attributes):
        raise VerificationError(f"Rust test must not be ignored: {name}")
    original_attributes = text[
        matches[0].start("attributes"):matches[0].end("attributes")
    ]
    observed_attributes = tuple(
        re.sub(r"\s+", "", attribute)
        for attribute in re.findall(
            r"(?m)^[ \t]*#\[(.*?)\][ \t]*$",
            original_attributes,
        )
    )
    normalized_expected = tuple(
        re.sub(r"\s+", "", attribute)
        for attribute in expected_attributes
    )
    if observed_attributes != normalized_expected:
        raise VerificationError(
            f"Rust test attributes differ for {name}: "
            f"{observed_attributes!r}"
        )


def rust_function_body(text: str, name: str) -> str:
    code = rust_code_without_comments_and_strings(text)
    declaration = re.compile(
        r"^[ \t]*(?:pub(?:[ \t]*\([^)]*\))?[ \t]+)?"
        r"(?:(?:const|async|unsafe)[ \t]+)*"
        r"fn[ \t]+" + re.escape(name) + r"\b",
        re.MULTILINE,
    )
    matches = list(declaration.finditer(code))
    if len(matches) != 1:
        raise VerificationError(
            f"expected exactly one Rust function declaration: {name}"
        )
    opening = code.find("{", matches[0].end())
    if opening < 0:
        raise VerificationError(f"Rust function has no body: {name}")
    depth = 1
    index = opening + 1
    while index < len(code) and depth:
        if code[index] == "{":
            depth += 1
        elif code[index] == "}":
            depth -= 1
        index += 1
    if depth:
        raise VerificationError(f"Rust function body is unbalanced: {name}")
    return code[opening + 1:index - 1]


def expected_v1_baseline_vectors() -> list[tuple[int, str, int, int]]:
    return [
        (
            family_index * len(V1_BASELINE_COUNTS) + count_index,
            family,
            count,
            9_000 + family_index * 100 + count,
        )
        for family_index, family in enumerate(V1_BASELINE_FAMILIES)
        for count_index, count in enumerate(V1_BASELINE_COUNTS)
    ]


def validate_v1_baseline_fixtures(
    byte_contents: str,
    trace_contents: str,
) -> None:
    version_line = f"version {V1_PROTOCOL_VERSION}"
    for label, contents in (
        ("aggregate byte", byte_contents),
        ("challenge trace", trace_contents),
    ):
        versions = [
            line for line in contents.splitlines()
            if line.startswith("version ")
        ]
        if versions != [version_line]:
            raise VerificationError(
                f"{label} baseline must contain exactly {version_line!r}"
            )

    byte_vectors: list[tuple[int, str, int, int]] = []
    for line in byte_contents.splitlines():
        match = re.fullmatch(
            r"(\d+) (.+) count=(\d+) seed=(\d+) [0-9a-f]+", line
        )
        if match:
            byte_vectors.append(
                (
                    int(match.group(1)),
                    match.group(2),
                    int(match.group(3)),
                    int(match.group(4)),
                )
            )
    trace_vectors: list[tuple[int, str, int, int]] = []
    for line in trace_contents.splitlines():
        match = re.fullmatch(
            r"vector (\d+) (.+) count=(\d+) seed=(\d+) entries=\d+",
            line,
        )
        if match:
            trace_vectors.append(
                (
                    int(match.group(1)),
                    match.group(2),
                    int(match.group(3)),
                    int(match.group(4)),
                )
            )
    expected = expected_v1_baseline_vectors()
    if byte_vectors != expected:
        raise VerificationError(
            "aggregate byte baseline vector inventory differs from the fixed "
            "six-family, four-count v1 inventory"
        )
    if trace_vectors != expected:
        raise VerificationError(
            "challenge trace baseline vector inventory differs from the fixed "
            "six-family, four-count v1 inventory"
        )

    if hashlib.sha256(byte_contents.encode("utf-8")).hexdigest() != (
        V1_BYTE_BASELINE_SHA256
    ):
        raise VerificationError(
            "aggregate byte baseline changed without updating the independent "
            "v1 protocol lock"
        )
    if hashlib.sha256(trace_contents.encode("utf-8")).hexdigest() != (
        V1_TRACE_BASELINE_SHA256
    ):
        raise VerificationError(
            "challenge trace baseline changed without updating the independent "
            "v1 protocol lock"
        )


def validate_v1_byte_lock_source(text: str, root: str) -> None:
    require_unignored_rust_test(text, root)
    body = rust_function_body(text, root)
    expected_body = re.compile(
        r"^\s*assert_aggregate_bytes_match_committed_baseline"
        r"\s*\(\s*\)\s*;\s*"
        r"assert_shieldd_byte_trace_matches_committed_baseline"
        r"\s*\(\s*\)\s*;\s*$"
    )
    if expected_body.fullmatch(body) is None:
        raise VerificationError(
            "V1 byte-lock umbrella must directly and exclusively call both "
            "committed-baseline assertions"
        )


def fstar_declaration_roots(text: str) -> set[str]:
    code = fstar_code_without_comments_and_strings(text)
    modules = FSTAR_MODULE.findall(code)
    if len(modules) != 1:
        raise VerificationError(
            f"F* evidence source must declare exactly one module; found {modules}"
        )
    module = modules[0]
    return {
        f"{module}.{declaration}"
        for declaration in FSTAR_DECLARATION.findall(code)
    }


def validate_v1_byte_lock(manifest: dict[str, Any], repo_root: Path) -> None:
    claims = {
        claim["id"]: claim
        for claim in _require_nonempty_list(manifest, "claims")
        if isinstance(claim, dict) and isinstance(claim.get("id"), str)
    }
    claim = claims.get("V1-BYTE-LOCK")
    root = "v1_bytes_and_transcript_match_committed_baselines"
    if claim is None or claim.get("status") != "tested" or claim.get("root") != root:
        raise VerificationError(
            "V1-BYTE-LOCK must remain the fixed tested proof/transcript root"
        )
    backend = (
        repo_root / "crates/crypto/proof-aggregation/src/backend.rs"
    )
    if not backend.is_file():
        raise VerificationError(f"missing V1 byte-lock owner: {backend}")
    text = backend.read_text(encoding="utf-8")
    validate_v1_byte_lock_source(text, root)

    fixture_root = (
        repo_root / "crates/crypto/proof-aggregation/tests/fixtures"
    )
    byte_path = fixture_root / "aggregate_bytes_baseline.txt"
    trace_path = fixture_root / "shieldd_byte_trace_baseline.txt"
    for path in (byte_path, trace_path):
        if not path.is_file():
            raise VerificationError(f"missing V1 byte-lock fixture: {path}")
    validate_v1_baseline_fixtures(
        byte_path.read_text(encoding="utf-8"),
        trace_path.read_text(encoding="utf-8"),
    )


def validate_bounded_challenge_sampler(
    manifest: dict[str, Any], repo_root: Path
) -> None:
    claims = {
        claim["id"]: claim
        for claim in _require_nonempty_list(manifest, "claims")
        if isinstance(claim, dict) and isinstance(claim.get("id"), str)
    }
    claim = claims.get("BOUNDED-CHALLENGE-SAMPLER")
    if (
        claim is None
        or claim.get("status") != "tested"
        or claim.get("root") != BOUNDED_SAMPLER_ROOT
    ):
        raise VerificationError(
            "BOUNDED-CHALLENGE-SAMPLER must remain the fixed tested root"
        )

    challenge_path = (
        repo_root
        / "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs"
    )
    if not challenge_path.is_file():
        raise VerificationError(
            f"missing bounded challenge sampler owner: {challenge_path}"
        )
    challenge_text = challenge_path.read_text(encoding="utf-8")
    for test_name in BOUNDED_SAMPLER_TESTS:
        require_unignored_rust_test(challenge_text, test_name)

    suite_body = "\n".join(
        rust_function_body(challenge_text, test_name)
        for test_name in BOUNDED_SAMPLER_TESTS
    )
    required_sampler_fragments = (
        r"sample_bounded_challenge::<",
        r"sample_bounded_challenge_from_nonce::<[^>]+>\s*"
        r"\(\s*u64::MAX",
        r"checked_next_challenge_nonce\s*\(\s*0\s*\)",
        r"checked_next_challenge_nonce\s*\(\s*u64::MAX\s*-\s*1\s*\)",
        r"next_challenge_nonce::<crate::Error>\s*\(\s*0\s*\)",
        r"next_challenge_nonce::<crate::Error>\s*"
        r"\(\s*u64::MAX\s*-\s*1\s*\)",
        r"checked_next_challenge_nonce\s*\(\s*u64::MAX\s*\)",
        r"next_challenge_nonce::<crate::Error>\s*\(\s*u64::MAX\s*\)"
        r"\.unwrap_err\s*\(\s*\)",
    )
    for fragment in required_sampler_fragments:
        if re.search(fragment, suite_body) is None:
            raise VerificationError(
                "bounded challenge sampler suite no longer covers every "
                f"nonce boundary: {fragment}"
            )

    for relative, (expected_from_zero, expected_from_nonce) in (
        SHIPPING_NONCE_CALL_INVENTORY.items()
    ):
        path = repo_root.joinpath(*PurePosixPath(relative).parts)
        if not path.is_file():
            raise VerificationError(
                f"missing shipping challenge-loop owner: {path}"
            )
        validate_shipping_nonce_source(
            relative,
            path.read_text(encoding="utf-8"),
            expected_from_zero=expected_from_zero,
            expected_from_nonce=expected_from_nonce,
        )

    audit_roots = [
        root
        for audit in _require_nonempty_list(manifest, "audit_modules")
        if isinstance(audit, dict)
        for root in audit.get("required_roots", [])
        if isinstance(root, str)
    ]
    for relative, inventory in EXTRACTED_CHECKED_SUCCESSOR_INVENTORY.items():
        path = repo_root.joinpath(*PurePosixPath(relative).parts)
        if not path.is_file():
            raise VerificationError(
                f"missing extracted checked-successor owner: {path}"
            )
        audit_root = inventory["audit_root"]
        if audit_roots.count(audit_root) != 1:
            raise VerificationError(
                "extracted checked-successor audit root must appear exactly "
                f"once: {audit_root}"
            )
        validate_extracted_checked_successor_source(
            relative,
            path.read_text(encoding="utf-8"),
            function=inventory["function"],
            expected_calls=inventory["expected_calls"],
            tests=inventory["tests"],
        )

    source_root = (
        repo_root / "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src"
    )
    fixed_owners = set(SHIPPING_NONCE_CALL_INVENTORY)
    extracted_checked_owners = set(EXTRACTED_CHECKED_SUCCESSOR_INVENTORY)
    challenge_relative = (
        "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs"
    )
    for path in sorted(source_root.rglob("*.rs")):
        relative = path.relative_to(repo_root).as_posix()
        code = rust_code_without_comments_and_strings(
            path.read_text(encoding="utf-8")
        )
        if relative not in fixed_owners and relative != challenge_relative:
            if re.search(
                r"\bsample_bounded_challenge"
                r"(?:_from_nonce)?\s*(?:::<|\()",
                code,
            ):
                raise VerificationError(
                    "unregistered bounded challenge sampler call site: "
                    + relative
                )
            if re.search(r"\bchallenge_digest\s*(?:::<|\()", code):
                raise VerificationError(
                    "unregistered shipping challenge-digest owner: " + relative
                )
        if (
            relative != challenge_relative
            and relative not in extracted_checked_owners
            and re.search(r"\bchecked_next_challenge_nonce\s*\(", code)
        ):
            raise VerificationError(
                "unregistered extracted checked-successor call site: "
                + relative
            )
        if relative != challenge_relative and DIRECT_NONCE_ARITHMETIC.search(code):
            raise VerificationError(
                "direct nonce arithmetic bypasses bounded challenge controls: "
                + relative
            )

    mapping_owner = (
        repo_root
        / "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
        "applications/groth16_aggregation.rs"
    )
    mapping_text = mapping_owner.read_text(encoding="utf-8")
    require_unignored_rust_test(
        mapping_text,
        NONCE_ERROR_MAPPING_TEST,
        expected_attributes=(
            'cfg(not(feature = "bench-baseline"))',
            "test",
        ),
    )
    mapping_body = rust_function_body(mapping_text, NONCE_ERROR_MAPPING_TEST)
    for mapper in (
        "prover_randomizer_core_error",
        "aggregate_adapter_core_error",
    ):
        if re.search(rf"\b{mapper}\s*\(", mapping_body) is None:
            raise VerificationError(
                f"nonce error-mapping test no longer checks {mapper}"
            )


def validate_shipping_nonce_source(
    relative: str,
    text: str,
    *,
    expected_from_zero: int,
    expected_from_nonce: int,
) -> None:
    code = rust_code_without_comments_and_strings(text)
    actual_from_zero = len(
        re.findall(r"\bsample_bounded_challenge\s*::<", code)
    )
    actual_from_nonce = len(
        re.findall(r"\bsample_bounded_challenge_from_nonce\s*\(", code)
    )
    if (actual_from_zero, actual_from_nonce) != (
        expected_from_zero,
        expected_from_nonce,
    ):
        raise VerificationError(
            "shipping challenge-loop call inventory differs for "
            f"{relative}: sampler={actual_from_zero}, "
            f"sampler_from_nonce={actual_from_nonce}"
        )
    if DIRECT_NONCE_ARITHMETIC.search(code):
        raise VerificationError(
            "direct nonce arithmetic bypasses bounded challenge controls: "
            + relative
        )


def validate_extracted_checked_successor_source(
    relative: str,
    text: str,
    *,
    function: str,
    expected_calls: int,
    tests: tuple[str, ...],
) -> None:
    code = rust_code_without_comments_and_strings(text)
    checked_successor = re.compile(
        r"\bchecked_next_challenge_nonce\s*\(\s*nonce\s*\)"
    )
    actual_calls = len(checked_successor.findall(code))
    if actual_calls != expected_calls:
        raise VerificationError(
            "extracted checked-successor call inventory differs for "
            f"{relative}: expected={expected_calls}, actual={actual_calls}"
        )

    body = rust_function_body(text, function)
    body_calls = len(checked_successor.findall(body))
    if body_calls != expected_calls:
        raise VerificationError(
            "extracted checked-successor calls are outside the pinned function "
            f"{function}: expected={expected_calls}, actual={body_calls}"
        )
    if re.search(
        r"\bsample_bounded_challenge(?:_from_nonce)?\s*(?:::<|\()", body
    ):
        raise VerificationError(
            f"{function} must remain a first-order extracted specialization"
        )

    required_fragments = {
        "candidate query": (
            r"\.derive_randomizer\s*\(\s*nonce\s*,\s*"
            r"&randomizer_message\s*\)"
        ),
        "attempt-error precedence": (
            r"Err\s*\(\s*error\s*\)\s*=>\s*return\s+Err\s*\(\s*"
            r"AggregateAdapterCoreError::RandomizerFailure\s*\(\s*error\s*\)"
            r"\s*\)"
        ),
        "admissibility check": (
            r"\brandomizer_is_admissible\s*\(\s*&randomizer\s*\)"
        ),
        "accepted randomizer installation": (
            r"combined\s*=\s*install_aggregate_randomizer_core\s*\(\s*"
            r"combined\s*,\s*randomizer\.clone\s*\(\s*\)\s*\)"
        ),
        "checked successor assignment": (
            r"nonce\s*=\s*match\s+checked_next_challenge_nonce\s*"
            r"\(\s*nonce\s*\)"
        ),
        "successor branch": r"Some\s*\(\s*next\s*\)\s*=>\s*next",
        "fail-closed branch": (
            r"None\s*=>\s*return\s+Err\s*\(\s*"
            r"AggregateAdapterCoreError::NonceExhausted\s*\)"
        ),
    }
    positions: dict[str, int] = {}
    for label, pattern in required_fragments.items():
        match = re.search(pattern, body)
        if match is None:
            raise VerificationError(
                f"{function} lacks its pinned {label}"
            )
        positions[label] = match.start()
    if not (
        positions["candidate query"]
        < positions["admissibility check"]
        < positions["accepted randomizer installation"]
        < positions["checked successor assignment"]
    ):
        raise VerificationError(
            f"{function} no longer queries and accepts before advancing"
        )

    installation = rust_function_body(
        text, "install_aggregate_randomizer_core"
    )
    for label, pattern in {
        "combined PPE randomizer": (
            r"combined\.r\s*=\s*randomizer\.clone\s*\(\s*\)"
        ),
        "TIPP/MIPP randomizer": (
            r"combined\.tipp_mipp\.r\s*=\s*randomizer"
        ),
        "installed input return": r"\bcombined\s*$",
    }.items():
        if re.search(pattern, installation, re.MULTILINE) is None:
            raise VerificationError(
                "install_aggregate_randomizer_core lacks its pinned "
                f"{label}"
            )

    for test_name in tests:
        require_unignored_rust_test(
            text,
            test_name,
            expected_attributes=(
                'cfg(not(feature = "bench-baseline"))',
                "test",
            ),
        )


def validate_lean_source_tokens(lean_root: Path) -> None:
    ipp_root = lean_root / "Ipp"
    if not ipp_root.is_dir():
        raise VerificationError(f"missing Lean source root: {ipp_root}")
    for path in sorted(ipp_root.rglob("*.lean")):
        text = path.read_text(encoding="utf-8")
        code = lean_code_without_comments_and_strings(text)
        if LEAN_FORBIDDEN_TOKEN.search(code):
            raise VerificationError(f"forbidden Lean token in {path}")
        if LEAN_AXIOM_DECLARATION.search(code):
            raise VerificationError(f"source-level axiom declaration in {path}")


def _fstar_proof_root(repo_root: Path) -> Path:
    return (
        repo_root
        / "crates/crypto/proof-aggregation/formal/snarkpack/fstar"
    )


def _fstar_module_topological_order(
    specs: dict[str, FstarModuleSpec],
) -> tuple[str, ...]:
    reverse: dict[str, set[str]] = {name: set() for name in specs}
    indegree = {
        name: len(spec.dependencies) for name, spec in specs.items()
    }
    for name, spec in specs.items():
        for dependency in spec.dependencies:
            reverse[dependency].add(name)
    ready = sorted(name for name, degree in indegree.items() if degree == 0)
    ordered: list[str] = []
    while ready:
        name = ready.pop(0)
        ordered.append(name)
        for consumer in sorted(reverse[name]):
            indegree[consumer] -= 1
            if indegree[consumer] == 0:
                ready.append(consumer)
                ready.sort()
    if len(ordered) != len(specs):
        raise VerificationError("cycle detected in the F* module dependency graph")
    return tuple(ordered)


def validate_fstar_module_graph(
    manifest: dict[str, Any],
    repo_root: Path,
    *,
    require_global_inputs: bool = True,
) -> dict[str, FstarModuleSpec]:
    section = manifest.get("fstar_modules")
    if not isinstance(section, dict) or set(section) != {
        "global_inputs",
        "global_modules",
        "modules",
    }:
        raise VerificationError(
            "fstar_modules must contain global_inputs, global_modules, and modules"
        )
    global_inputs = section["global_inputs"]
    if (
        not isinstance(global_inputs, list)
        or tuple(global_inputs) != FSTAR_GLOBAL_INPUT_INVENTORY
    ):
        raise VerificationError("F* global input inventory differs")
    global_modules = section["global_modules"]
    if (
        not isinstance(global_modules, list)
        or tuple(global_modules) != FSTAR_GLOBAL_MODULE_INVENTORY
    ):
        raise VerificationError("F* global module inventory differs")

    proof_root = _fstar_proof_root(repo_root)
    if not proof_root.is_dir():
        raise VerificationError(f"missing F* proof root: {proof_root}")
    actual_modules = tuple(
        path.relative_to(proof_root).as_posix()
        for path in sorted(proof_root.rglob("*"))
        if path.is_file()
    )
    if actual_modules != FSTAR_MODULE_INVENTORY:
        missing = sorted(set(FSTAR_MODULE_INVENTORY) - set(actual_modules))
        unexpected = sorted(set(actual_modules) - set(FSTAR_MODULE_INVENTORY))
        raise VerificationError(
            "F* module inventory differs"
            + (f"; missing: {', '.join(missing)}" if missing else "")
            + (f"; unexpected: {', '.join(unexpected)}" if unexpected else "")
        )

    declared = section["modules"]
    if not isinstance(declared, list) or not declared:
        raise VerificationError("fstar_modules.modules must be nonempty")
    specs: dict[str, FstarModuleSpec] = {}
    for index, item in enumerate(declared):
        where = f"fstar_modules.modules[{index}]"
        if not isinstance(item, dict) or set(item) != {
            "name",
            "path",
            "dependencies",
        }:
            raise VerificationError(f"{where} fields differ")
        name = item["name"]
        path = item["path"]
        dependencies = item["dependencies"]
        if not isinstance(name, str) or not name:
            raise VerificationError(f"{where}.name must be nonempty")
        if name in specs:
            raise VerificationError(f"duplicate F* module declaration: {name}")
        expected_path = (
            "crates/crypto/proof-aggregation/formal/snarkpack/fstar/"
            f"{name}.fst"
        )
        if path != expected_path:
            raise VerificationError(
                f"{where}.path must be the canonical path {expected_path}"
            )
        if (
            not isinstance(dependencies, list)
            or any(not isinstance(value, str) or not value for value in dependencies)
            or len(set(dependencies)) != len(dependencies)
            or dependencies != sorted(dependencies)
        ):
            raise VerificationError(
                f"{where}.dependencies must be sorted unique module names"
            )
        specs[name] = FstarModuleSpec(name, path, tuple(dependencies))

    expected_names = {Path(path).stem for path in FSTAR_MODULE_INVENTORY}
    if set(specs) != expected_names:
        missing = sorted(expected_names - set(specs))
        unexpected = sorted(set(specs) - expected_names)
        raise VerificationError(
            "declared F* module inventory differs"
            + (f"; missing: {', '.join(missing)}" if missing else "")
            + (f"; unexpected: {', '.join(unexpected)}" if unexpected else "")
        )
    for name, spec in specs.items():
        unknown = sorted(set(spec.dependencies) - set(specs))
        if unknown:
            raise VerificationError(
                f"F* module {name} has unknown dependencies: "
                + ", ".join(unknown)
            )
        if name in spec.dependencies:
            raise VerificationError(f"F* module {name} depends on itself")

        path = repo_root.joinpath(*PurePosixPath(spec.path).parts)
        code = fstar_code_without_comments_and_strings(
            path.read_text(encoding="utf-8")
        )
        modules = FSTAR_MODULE.findall(code)
        if modules != [name]:
            raise VerificationError(
                f"{spec.path} must declare exactly module {name}; found {modules}"
            )
        observed = {
            target
            for target in FSTAR_MODULE_ALIAS.findall(code)
            if target in specs
        }
        observed.update(
            target
            for target in FSTAR_OPEN_MODULE.findall(code)
            if target in specs
        )
        for candidate in specs:
            if candidate != name and re.search(
                rf"\b{re.escape(candidate)}[ \t]*\.", code
            ):
                observed.add(candidate)
        if observed != set(spec.dependencies):
            missing = sorted(observed - set(spec.dependencies))
            unexpected = sorted(set(spec.dependencies) - observed)
            raise VerificationError(
                f"F* dependencies differ for {name}"
                + (f"; undeclared: {', '.join(missing)}" if missing else "")
                + (
                    f"; declared but unused: {', '.join(unexpected)}"
                    if unexpected
                    else ""
                )
            )

    _fstar_module_topological_order(specs)
    if require_global_inputs:
        for relative in global_inputs:
            safe = _safe_relative_path(relative, field="fstar_modules.global_inputs")
            path = repo_root.joinpath(*safe.parts)
            if not path.is_file():
                raise VerificationError(f"missing F* global input: {path}")
    return specs


def _fstar_contract_roots_by_module(
    manifest: dict[str, Any],
    specs: dict[str, FstarModuleSpec],
) -> dict[str, list[str]]:
    roots_by_module = {name: [] for name in specs}
    for entry in _require_nonempty_list(
        manifest, "statement_binding_evidence"
    ):
        if entry.get("kind") != "fstar":
            continue
        owner_paths = {
            source.get("path")
            for source in entry.get("sources", [])
            if isinstance(source, dict)
        }
        for root in entry.get("theorem_roots", []):
            owner = root.split(".", maxsplit=1)[0]
            if owner not in specs:
                raise VerificationError(
                    f"F* theorem root has no declared module owner: {root}"
                )
            if specs[owner].path not in owner_paths:
                raise VerificationError(
                    f"F* theorem root owner is not source-pinned: {root}"
                )
            roots_by_module[owner].append(root)
    for roots in roots_by_module.values():
        roots.sort()
    return roots_by_module


def _fstar_source_record(repo_root: Path, relative: str) -> dict[str, str]:
    safe = _safe_relative_path(relative, field="F* evidence source")
    path = repo_root.joinpath(*safe.parts)
    if not path.is_file():
        raise VerificationError(f"missing F* evidence source: {path}")
    return {
        "path": relative,
        "sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
    }


def _fstar_expected_components(
    manifest: dict[str, Any],
    repo_root: Path,
) -> tuple[
    dict[str, Any],
    dict[str, dict[str, Any]],
    list[dict[str, Any]],
    tuple[str, ...],
]:
    specs = validate_fstar_module_graph(manifest, repo_root)
    roots_by_module = _fstar_contract_roots_by_module(manifest, specs)
    section = manifest["fstar_modules"]
    toolchain_path = (
        "crates/crypto/proof-aggregation/formal/snarkpack/toolchain.toml"
    )
    toolchain = tomllib.loads(
        repo_root.joinpath(*PurePosixPath(toolchain_path).parts).read_text(
            encoding="utf-8"
        )
    )["toolchain"]
    environment_body = {
        "global_inputs": [
            _fstar_source_record(repo_root, relative)
            for relative in section["global_inputs"]
        ],
        "global_modules": [
            {
                "module": name,
                **_fstar_source_record(repo_root, specs[name].path),
            }
            for name in section["global_modules"]
        ],
        "toolchain": {
            "fstar": toolchain["fstar"],
            "hax_fstar": toolchain["hax_fstar"],
            "z3": toolchain["z3"],
        },
        "verification_contract_sha256": hashlib.sha256(
            _canonical_json(
                _fstar_environment_contract_payload(manifest)
            ).encode("utf-8")
        ).hexdigest(),
    }
    environment = {
        **environment_body,
        "sha256": hashlib.sha256(
            _canonical_json(environment_body).encode("utf-8")
        ).hexdigest(),
    }

    ordered = _fstar_module_topological_order(specs)
    records: dict[str, dict[str, Any]] = {}
    for name in ordered:
        spec = specs[name]
        source = _fstar_source_record(repo_root, spec.path)
        basis = {
            "dependencies": [
                {
                    "module": dependency,
                    "input_fingerprint": records[dependency][
                        "input_fingerprint"
                    ],
                }
                for dependency in spec.dependencies
            ],
            "environment_sha256": environment["sha256"],
            "module": name,
            "path": spec.path,
            "source_sha256": source["sha256"],
            "theorem_roots": roots_by_module[name],
        }
        records[name] = {
            **basis,
            "input_fingerprint": hashlib.sha256(
                _canonical_json(basis).encode("utf-8")
            ).hexdigest(),
            "result": "pass",
        }

    contract_results: list[dict[str, Any]] = []
    for entry in _require_nonempty_list(
        manifest, "statement_binding_evidence"
    ):
        if entry.get("kind") != "fstar":
            continue
        modules = sorted(
            {root.split(".", maxsplit=1)[0] for root in entry["theorem_roots"]}
        )
        contract_results.append(
            {
                "contract_field": entry["contract_field"],
                "modules": modules,
                "result": "pass",
                "theorem_roots": sorted(entry["theorem_roots"]),
            }
        )
    contract_results.sort(key=lambda result: result["contract_field"])
    return environment, records, contract_results, ordered


def expected_fstar_checker_evidence(
    manifest: dict[str, Any], repo_root: Path
) -> dict[str, Any]:
    environment, records, contract_results, _ = _fstar_expected_components(
        manifest, repo_root
    )
    return {
        "schema_version": 2,
        "checker": {
            "command": "scripts/snarkpack-formal.sh",
            "implementation": (
                "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/"
                "verification_manifest.py"
            ),
            "result": "pass",
        },
        "environment": environment,
        "module_results": [
            records[name] for name in sorted(records)
        ],
        "contract_results": contract_results,
    }


def stale_fstar_checker_evidence(
    manifest: dict[str, Any], repo_root: Path
) -> dict[str, Any]:
    payload = copy.deepcopy(
        expected_fstar_checker_evidence(manifest, repo_root)
    )
    payload["checker"]["result"] = "stale"
    for record in payload["module_results"]:
        record["result"] = "stale"
    for result in payload["contract_results"]:
        result["result"] = "stale"
    return payload


def fstar_ci_cache_fingerprints(
    manifest: dict[str, Any], repo_root: Path
) -> tuple[str, str]:
    """Return environment-prefix and exact-success F* cache identities."""
    expected = expected_fstar_checker_evidence(manifest, repo_root)
    controls = [
        _fstar_source_record(repo_root, relative)
        for relative in FSTAR_CI_CONTROL_INPUTS
    ]
    environment_payload = {
        "schema_version": 1,
        "environment": expected["environment"],
        "controls": controls,
    }
    environment_sha256 = hashlib.sha256(
        _canonical_json(environment_payload).encode("utf-8")
    ).hexdigest()
    exact_payload = {
        "schema_version": 1,
        "environment_sha256": environment_sha256,
        "expected_evidence": expected,
    }
    exact_sha256 = hashlib.sha256(
        _canonical_json(exact_payload).encode("utf-8")
    ).hexdigest()
    return environment_sha256, exact_sha256


def _reusable_fstar_module_records(
    base: dict[str, Any] | None,
    expected: dict[str, Any],
) -> set[str]:
    if (
        not isinstance(base, dict)
        or base.get("schema_version") != 2
        or base.get("checker") != expected["checker"]
        or base.get("environment") != expected["environment"]
        or not isinstance(base.get("module_results"), list)
    ):
        return set()
    expected_by_name = {
        record["module"]: record for record in expected["module_results"]
    }
    observed: dict[str, dict[str, Any]] = {}
    for record in base["module_results"]:
        if (
            not isinstance(record, dict)
            or not isinstance(record.get("module"), str)
            or record["module"] in observed
        ):
            return set()
        observed[record["module"]] = record
    return {
        name
        for name, record in expected_by_name.items()
        if observed.get(name) == record
    }


def _normalize_fstar_module_names(
    values: Iterable[str],
    specs: dict[str, FstarModuleSpec],
    *,
    label: str,
) -> set[str]:
    normalized: list[str] = []
    for value in values:
        if not isinstance(value, str) or not value:
            raise VerificationError(f"{label} must contain nonempty strings")
        name = value[:-4] if value.endswith(".fst") else value
        if "/" in name or "\\" in name or name not in specs:
            raise VerificationError(f"{label} contains unknown F* module: {value}")
        normalized.append(name)
    if len(normalized) != len(set(normalized)):
        raise VerificationError(f"{label} contains duplicate F* modules")
    return set(normalized)


def affected_fstar_modules(
    manifest: dict[str, Any],
    repo_root: Path,
    *,
    requested: Iterable[str],
    force_all: bool = False,
) -> tuple[str, ...]:
    """Return the changed F* roots and their reverse dependency closure."""
    specs = validate_fstar_module_graph(manifest, repo_root)
    selected = _normalize_fstar_module_names(
        requested, specs, label="requested proof list"
    )
    if force_all or selected & set(manifest["fstar_modules"]["global_modules"]):
        selected = set(specs)
    reverse: dict[str, set[str]] = {name: set() for name in specs}
    for name, spec in specs.items():
        for dependency in spec.dependencies:
            reverse[dependency].add(name)
    pending = list(selected)
    while pending:
        dependency = pending.pop()
        for consumer in reverse[dependency]:
            if consumer not in selected:
                selected.add(consumer)
                pending.append(consumer)
    return tuple(
        name
        for name in _fstar_module_topological_order(specs)
        if name in selected
    )


def plan_fstar_modules(
    manifest: dict[str, Any],
    repo_root: Path,
    *,
    base: dict[str, Any] | None,
    requested: Iterable[str],
    force_all: bool = False,
) -> tuple[str, ...]:
    specs = validate_fstar_module_graph(manifest, repo_root)
    affected = set(
        affected_fstar_modules(
            manifest,
            repo_root,
            requested=requested,
            force_all=force_all,
        )
    )
    expected = expected_fstar_checker_evidence(manifest, repo_root)
    reusable = _reusable_fstar_module_records(base, expected)
    # Repository evidence may reuse unchanged dependencies, but it is not CI
    # attestation and must never suppress an explicitly changed module.
    selected = (set(specs) - reusable) | affected

    roots_by_field = {
        entry["contract_field"]: {
            root.split(".", maxsplit=1)[0]
            for root in entry["theorem_roots"]
        }
        for entry in _require_nonempty_list(
            manifest, "statement_binding_evidence"
        )
        if entry.get("kind") == "fstar"
    }
    for entry in manifest["statement_binding_evidence"]:
        if (
            entry.get("kind") == "fstar"
            and entry.get("checker", {}).get("last_result") != "pass"
        ):
            selected.update(roots_by_field[entry["contract_field"]])

    global_modules = set(manifest["fstar_modules"]["global_modules"])
    if selected & global_modules:
        selected.update(specs)

    reverse: dict[str, set[str]] = {name: set() for name in specs}
    for name, spec in specs.items():
        for dependency in spec.dependencies:
            reverse[dependency].add(name)
    pending = list(selected)
    while pending:
        dependency = pending.pop()
        for consumer in reverse[dependency]:
            if consumer not in selected:
                selected.add(consumer)
                pending.append(consumer)

    return tuple(
        name
        for name in _fstar_module_topological_order(specs)
        if name in selected
    )


def merged_fstar_checker_evidence(
    manifest: dict[str, Any],
    repo_root: Path,
    *,
    base: dict[str, Any] | None,
    requested: Iterable[str],
    checked: Iterable[str],
    force_all: bool = False,
) -> dict[str, Any]:
    specs = validate_fstar_module_graph(manifest, repo_root)
    required = plan_fstar_modules(
        manifest,
        repo_root,
        base=base,
        requested=requested,
        force_all=force_all,
    )
    checked_names = _normalize_fstar_module_names(
        checked, specs, label="checked proof list"
    )
    if checked_names != set(required):
        missing = sorted(set(required) - checked_names)
        unexpected = sorted(checked_names - set(required))
        raise VerificationError(
            "checked F* module set differs from the fail-closed plan"
            + (f"; missing: {', '.join(missing)}" if missing else "")
            + (f"; unexpected: {', '.join(unexpected)}" if unexpected else "")
        )
    expected = expected_fstar_checker_evidence(manifest, repo_root)
    reusable = _reusable_fstar_module_records(base, expected)
    unbacked = sorted(set(specs) - checked_names - reusable)
    if unbacked:
        raise VerificationError(
            "F* evidence has current modules with neither a checked nor reusable "
            "result: " + ", ".join(unbacked)
        )
    return expected


def validate_fstar_checker_evidence(
    manifest: dict[str, Any], repo_root: Path
) -> None:
    stale_fields = [
        entry["contract_field"]
        for entry in _require_nonempty_list(
            manifest, "statement_binding_evidence"
        )
        if entry.get("kind") == "fstar"
        and entry.get("checker", {}).get("last_result") != "pass"
    ]
    pointer = manifest.get("fstar_checker_evidence")
    if not isinstance(pointer, dict) or set(pointer) != {"path", "sha256"}:
        raise VerificationError(
            "F* checker evidence pointer must contain path and sha256"
        )
    relative = _safe_relative_path(
        pointer["path"], field="fstar_checker_evidence.path"
    )
    path = repo_root.joinpath(*relative.parts)
    if not path.is_file():
        raise VerificationError(f"missing F* checker evidence: {path}")
    content = path.read_bytes()
    if hashlib.sha256(content).hexdigest() != pointer["sha256"]:
        raise VerificationError("F* checker evidence sha256 differs")
    try:
        payload = json.loads(content)
    except (UnicodeError, json.JSONDecodeError) as error:
        raise VerificationError(
            f"cannot read F* checker evidence: {error}"
        ) from error
    if content.decode("utf-8") != _canonical_json(payload):
        raise VerificationError("F* checker evidence must use canonical pretty JSON")
    expected = (
        stale_fstar_checker_evidence(manifest, repo_root)
        if stale_fields
        else expected_fstar_checker_evidence(manifest, repo_root)
    )
    if payload != expected:
        raise VerificationError(
            "F* checker evidence differs from the pinned command, toolchain, "
            "source set, theorem roots, or pass results"
        )
    if stale_fields:
        raise VerificationError(
            "F* checker evidence is stale for current sources: "
            + ", ".join(stale_fields)
        )


def promoted_fstar_manifest(
    manifest: dict[str, Any],
    artifact: bytes,
    repo_root: Path,
) -> dict[str, Any]:
    """Validate a checker artifact and return its fail-closed manifest update."""
    try:
        payload = json.loads(artifact)
        decoded = artifact.decode("utf-8")
    except (UnicodeError, json.JSONDecodeError) as error:
        raise VerificationError(
            f"cannot read candidate F* checker evidence: {error}"
        ) from error
    if decoded != _canonical_json(payload):
        raise VerificationError(
            "candidate F* checker evidence must use canonical pretty JSON"
        )
    if payload != expected_fstar_checker_evidence(manifest, repo_root):
        raise VerificationError(
            "candidate F* checker evidence differs from the current pinned "
            "command, toolchain, source set, theorem roots, or pass results"
        )

    promoted = copy.deepcopy(manifest)
    for entry in _require_nonempty_list(
        promoted, "statement_binding_evidence"
    ):
        if entry.get("kind") == "fstar":
            entry["checker"]["last_result"] = "pass"
        if (
            entry.get("kind") == "fstar"
            or entry.get("checker", {}).get("last_result") == "stale"
        ):
            for source in entry["sources"]:
                current = _fstar_source_record(repo_root, source["path"])
                source["sha256"] = current["sha256"]
    relative = FSTAR_CHECKER_EVIDENCE_PATH.relative_to(REPO_ROOT).as_posix()
    promoted["fstar_checker_evidence"] = {
        "path": relative,
        "sha256": hashlib.sha256(artifact).hexdigest(),
    }
    validate_contract_evidence(
        promoted, repo_root, require_checker_artifact=False
    )
    return promoted


def _atomic_write(path: Path, content: bytes) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary: Path | None = None
    try:
        with tempfile.NamedTemporaryFile(
            dir=path.parent,
            prefix=f".{path.name}.",
            suffix=".tmp",
            delete=False,
        ) as output:
            temporary = Path(output.name)
            output.write(content)
            output.flush()
            os.fsync(output.fileno())
        os.replace(temporary, path)
        temporary = None
    finally:
        if temporary is not None:
            temporary.unlink(missing_ok=True)


def import_fstar_checker_evidence(
    manifest_path: Path,
    artifact_path: Path,
    repo_root: Path,
) -> dict[str, Any]:
    """Import a checked artifact, then promote its manifest rows atomically.

    The artifact is replaced first. A crash between the two replacements leaves
    the old manifest pointer mismatched and therefore red, never falsely green.
    """
    manifest = load_manifest(manifest_path)
    artifact = artifact_path.read_bytes()
    promoted = promoted_fstar_manifest(manifest, artifact, repo_root)
    evidence_target = repo_root.joinpath(
        *PurePosixPath(promoted["fstar_checker_evidence"]["path"]).parts
    )
    _atomic_write(evidence_target, artifact)

    # Freeze the source set across the import boundary. If it moved after the
    # checker produced the artifact, leave the old manifest red.
    if json.loads(artifact) != expected_fstar_checker_evidence(
        promoted, repo_root
    ):
        raise VerificationError(
            "F* sources changed while importing checker evidence"
        )
    validate_fstar_checker_evidence(promoted, repo_root)
    _atomic_write(
        manifest_path, _canonical_json(promoted).encode("utf-8")
    )
    return promoted


def require_positive_test_execution(output: str, *, command: str) -> int:
    counts = [int(count) for count in CARGO_TEST_COUNT.findall(output)]
    if not counts or sum(counts) == 0:
        raise VerificationError(f"command executed zero tests: {command}")
    return sum(counts)


def require_exact_test_execution(
    output: str,
    *,
    command: str,
    expected: int,
    expected_names: Iterable[str] = (),
) -> int:
    if expected <= 0:
        raise VerificationError("expected test count must be positive")
    actual = require_positive_test_execution(output, command=command)
    if actual != expected:
        raise VerificationError(
            f"command executed {actual} tests; expected exactly {expected}: {command}"
        )
    names = list(expected_names)
    if names:
        if len(names) != expected:
            raise VerificationError(
                f"expected {expected} test identities but received {len(names)}: "
                f"{command}"
            )
        if len(set(names)) != len(names):
            raise VerificationError(f"expected test identities contain duplicates: {command}")
        observed = CARGO_TEST_RESULT.findall(output)
        if len(set(observed)) != len(observed):
            raise VerificationError(f"test log contains duplicate identities: {command}")
        missing = sorted(set(names) - set(observed))
        unexpected = sorted(set(observed) - set(names))
        if len(observed) != expected or missing or unexpected:
            details: list[str] = []
            if missing:
                details.append("missing: " + ", ".join(missing))
            if unexpected:
                details.append("unexpected: " + ", ".join(unexpected))
            if len(observed) != expected:
                details.append(
                    f"observed {len(observed)} named results; expected {expected}"
                )
            raise VerificationError(
                "test identities differ"
                + (f"; {'; '.join(details)}" if details else "")
                + f": {command}"
            )
    return actual


def validate_toolchain_roles(manifest: dict[str, Any], repo_root: Path) -> None:
    roles = _require_nonempty_list(manifest, "toolchain_roles")
    by_id: dict[str, dict[str, Any]] = {}
    for index, role in enumerate(roles):
        if not isinstance(role, dict):
            raise VerificationError(f"toolchain_roles[{index}] must be an object")
        for field in ("id", "pin", "purpose", "evidence"):
            if not isinstance(role.get(field), str) or not role[field]:
                raise VerificationError(
                    f"toolchain_roles[{index}].{field} must be nonempty"
                )
        if role["id"] in by_id:
            raise VerificationError(f"duplicate toolchain role: {role['id']}")
        by_id[role["id"]] = role

    expected_roles = {"hax-fstar", "hax-aeneas"}
    if set(by_id) != expected_roles:
        raise VerificationError(
            "toolchain roles must be exactly: " + ", ".join(sorted(expected_roles))
        )

    toolchain_path = (
        repo_root
        / "crates/crypto/proof-aggregation/formal/snarkpack/toolchain.toml"
    )
    aeneas_toolchain_path = (
        repo_root
        / "crates/crypto/proof-aggregation/formal/snarkpack/"
        "aeneas-toolchain.toml"
    )
    extraction_path = (
        repo_root
        / "crates/crypto/proof-aggregation/formal/snarkpack/"
        "lean-extraction-manifest.json"
    )
    toolchain = tomllib.loads(toolchain_path.read_text(encoding="utf-8"))["toolchain"]
    aeneas_toolchain = tomllib.loads(
        aeneas_toolchain_path.read_text(encoding="utf-8")
    )["toolchain"]
    extraction = json.loads(extraction_path.read_text(encoding="utf-8"))["toolchains"]
    fstar_pin = toolchain.get("hax_fstar")
    aeneas_pin = aeneas_toolchain.get("hax_commit")
    aeneas_image_digest = aeneas_toolchain.get("image_digest")
    if by_id["hax-fstar"]["pin"] != fstar_pin:
        raise VerificationError("F* hax role does not match its named toolchain pins")
    if (
        by_id["hax-aeneas"]["pin"] != aeneas_pin
        or extraction.get("hax_commit") != aeneas_pin
    ):
        raise VerificationError("Aeneas hax role does not match its named toolchain pins")
    for field in (
        "rust",
        "lean",
        "charon_commit",
        "aeneas_commit",
    ):
        if extraction.get(field) != aeneas_toolchain.get(field):
            raise VerificationError(
                f"Aeneas {field} does not match its named toolchain lock"
            )
    if (
        not isinstance(aeneas_image_digest, str)
        or re.fullmatch(r"sha256:[0-9a-f]{64}", aeneas_image_digest) is None
        or extraction.get("image_digest") != aeneas_image_digest
    ):
        raise VerificationError(
            "Aeneas image digest does not match its named toolchain lock"
        )
    formal_workflow = (
        repo_root / ".github/workflows/formal.yml"
    ).read_text(encoding="utf-8")
    image_digests = re.findall(
        r"shieldd-snarkpack-fv-toolchain@(sha256:[0-9a-f]{64})",
        formal_workflow,
    )
    if len(image_digests) != 2 or set(image_digests) != {
        aeneas_image_digest
    }:
        raise VerificationError(
            "formal workflow Aeneas images differ from the named image lock"
        )

    evidence_paths = {
        "hax-fstar": repo_root / ".github/workflows/formal.yml",
        "hax-aeneas": (
            repo_root / "deployments/containerfiles/Dockerfile.snarkpack-fv-toolchain"
        ),
    }
    for role_id, evidence_path in evidence_paths.items():
        relative = evidence_path.relative_to(repo_root).as_posix()
        role = by_id[role_id]
        if role["evidence"] != relative:
            raise VerificationError(
                f"{role_id} evidence must be the machine-checked role owner {relative}"
            )
        if role["pin"] not in evidence_path.read_text(encoding="utf-8"):
            raise VerificationError(f"{role_id} pin is absent from {relative}")


def validate_contract_evidence(
    manifest: dict[str, Any],
    repo_root: Path,
    *,
    require_checker_artifact: bool = True,
    allow_stale_source_drift: bool = False,
) -> None:
    contract_source = (
        repo_root
        / "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/ShippingV1.lean"
    )
    declared_fields = statement_binding_contract_fields(contract_source)
    expected_fields = CONTRACT_DATA_FIELDS | CONTRACT_EVIDENCE_FIELDS
    if declared_fields != expected_fields:
        missing = sorted(expected_fields - declared_fields)
        unexpected = sorted(declared_fields - expected_fields)
        raise VerificationError(
            "StatementBindingContract fields differ from the evidence schema; "
            f"missing={missing}, unexpected={unexpected}"
        )

    fstar_specs = validate_fstar_module_graph(manifest, repo_root)
    fstar_tracked_sources = {
        spec.path for spec in fstar_specs.values()
    } | set(manifest["fstar_modules"]["global_inputs"])
    entries = _require_nonempty_list(manifest, "statement_binding_evidence")
    observed_fields: list[str] = []
    # `stale` records a proof-producing boundary that has not passed for the
    # pinned source. `assumed` is reserved for the exact external postconditions
    # enumerated in ASSUMED_CONTRACT_FIELDS; it is not checker evidence.
    valid_results = {"pass", "stale", "assumed"}
    valid_roles = {"hax-fstar", "hax-aeneas", "external"}
    audited_roots: set[str] | None = None
    for index, entry in enumerate(entries):
        where = f"statement_binding_evidence[{index}]"
        if not isinstance(entry, dict):
            raise VerificationError(f"{where} must be an object")
        expected_keys = {
            "contract_field",
            "kind",
            "theorem_roots",
            "sources",
            "toolchain_role",
            "checker",
        }
        if set(entry) != expected_keys:
            raise VerificationError(f"{where} fields differ from the fixed schema")
        field = entry["contract_field"]
        if field not in CONTRACT_EVIDENCE_FIELDS:
            raise VerificationError(f"{where}.contract_field is unknown: {field!r}")
        if entry["kind"] not in {"fstar", "lean", "external"}:
            raise VerificationError(f"{where}.kind is invalid")
        role = entry["toolchain_role"]
        if role not in valid_roles:
            raise VerificationError(f"{where}.toolchain_role is invalid")
        expected_role = {
            "fstar": "hax-fstar",
            "lean": "hax-aeneas",
            "external": "external",
        }[entry["kind"]]
        if role != expected_role:
            raise VerificationError(
                f"{where}.toolchain_role must be {expected_role!r} for "
                f"kind {entry['kind']!r}"
            )

        roots = entry["theorem_roots"]
        if not isinstance(roots, list) or not roots or not all(
            isinstance(root, str) and root for root in roots
        ):
            raise VerificationError(f"{where}.theorem_roots must be nonempty strings")

        sources = entry["sources"]
        if not isinstance(sources, list) or not sources:
            raise VerificationError(f"{where}.sources must be nonempty")
        source_text = ""
        source_contents: dict[str, str] = {}
        declared_fstar_roots: set[str] = set()
        for source_index, source in enumerate(sources):
            source_where = f"{where}.sources[{source_index}]"
            if not isinstance(source, dict) or set(source) != {"path", "sha256"}:
                raise VerificationError(f"{source_where} fields differ")
            relative = _safe_relative_path(source["path"], field=f"{source_where}.path")
            path = repo_root.joinpath(*relative.parts)
            if not path.is_file():
                raise VerificationError(f"missing statement-contract source: {path}")
            stale_recheck = (
                allow_stale_source_drift
                and entry.get("checker", {}).get("last_result") == "stale"
            )
            if (
                (entry["kind"] == "fstar" or stale_recheck)
                and source["path"] not in fstar_tracked_sources
            ):
                raise VerificationError(
                    f"{source_where}.path is not covered by the current F* "
                    "module or global-input fingerprint"
                )
            content = path.read_bytes()
            digest = hashlib.sha256(content).hexdigest()
            if source["sha256"] != digest and not stale_recheck:
                raise VerificationError(
                    f"{source_where}.sha256 differs for {source['path']}"
                )
            decoded = content.decode("utf-8")
            source_text += decoded
            source_contents[source["path"]] = decoded
            if relative.suffix == ".fst":
                declared_fstar_roots.update(fstar_declaration_roots(decoded))
        for root in roots:
            if entry["kind"] == "fstar" and root not in declared_fstar_roots:
                raise VerificationError(f"{where} theorem root is absent: {root}")
            if entry["kind"] == "fstar":
                owner = root.split(".", maxsplit=1)[0]
                if owner not in fstar_specs:
                    raise VerificationError(
                        f"{where} theorem root has no F* module owner: {root}"
                    )
                continue
            expected_rust = EXTERNAL_RUST_EVIDENCE_ROOTS.get(field)
            if expected_rust is not None:
                expected_root, owner = expected_rust
                if roots != [expected_root]:
                    raise VerificationError(
                        f"{where} must name the exact Rust root {expected_root}"
                    )
                owner_text = source_contents.get(owner)
                if owner_text is None:
                    raise VerificationError(
                        f"{where} must pin the Rust root owner {owner}"
                    )
                leaf = expected_root.rsplit(".", 1)[-1]
                if not rust_declares_function(owner_text, leaf):
                    raise VerificationError(
                        f"{where} Rust function declaration is absent: "
                        f"{expected_root}"
                    )
                continue
            if not root.startswith("Ipp."):
                raise VerificationError(
                    f"{where} has an unsupported non-F* theorem root: {root}"
                )
            if audited_roots is None:
                audited_roots = set(manifest_audit_roots(manifest))
            if root not in audited_roots:
                raise VerificationError(
                    f"{where} Lean theorem root is not audited: {root}"
                )

        checker = entry["checker"]
        if not isinstance(checker, dict) or set(checker) != {
            "command",
            "required_result",
            "last_result",
        }:
            raise VerificationError(f"{where}.checker fields differ")
        if not isinstance(checker["command"], str) or not checker["command"]:
            raise VerificationError(f"{where}.checker.command must be nonempty")
        if (
            entry["kind"] == "fstar"
            and checker["command"] != "scripts/snarkpack-formal.sh"
        ):
            raise VerificationError(
                f"{where}.checker.command must be scripts/snarkpack-formal.sh"
            )
        required_result = checker["required_result"]
        if required_result not in {"pass", "assumed"}:
            raise VerificationError(
                f"{where}.checker.required_result must be pass or assumed"
            )
        if checker["last_result"] not in valid_results:
            raise VerificationError(
                f"{where}.checker.last_result must be pass, stale, or assumed"
            )
        if entry["kind"] in {"fstar", "lean"}:
            if required_result != "pass":
                raise VerificationError(
                    f"{where} proof evidence must require pass"
                )
            if checker["last_result"] not in {"pass", "stale"}:
                raise VerificationError(
                    f"{where} proof evidence must be pass or stale"
                )
        if entry["kind"] == "external":
            assumed_by = ASSUMED_CONTRACT_FIELDS.get(field)
            if required_result == "assumed":
                if assumed_by is None or checker["last_result"] != "assumed":
                    raise VerificationError(
                        f"{where} is not an allowlisted exact external assumption"
                    )
                assumption_ids = {
                    assumption["id"]
                    for assumption in _require_nonempty_list(
                        manifest, "assumptions"
                    )
                }
                if assumed_by not in assumption_ids:
                    raise VerificationError(
                        f"{where} references missing assumption {assumed_by}"
                    )
            elif checker["last_result"] != "stale":
                raise VerificationError(
                    f"{where} pending Rust evidence cannot claim pass without "
                    "a registered proof-producing artifact"
                )
        observed_fields.append(field)

    if set(observed_fields) != CONTRACT_EVIDENCE_FIELDS:
        missing = sorted(CONTRACT_EVIDENCE_FIELDS - set(observed_fields))
        unexpected = sorted(set(observed_fields) - CONTRACT_EVIDENCE_FIELDS)
        raise VerificationError(
            "statement binding evidence coverage differs; "
            f"missing={missing}, unexpected={unexpected}"
        )
    if len(observed_fields) != len(set(observed_fields)):
        raise VerificationError("statement binding evidence contains duplicate fields")
    _fstar_contract_roots_by_module(manifest, fstar_specs)
    if require_checker_artifact:
        validate_fstar_checker_evidence(manifest, repo_root)


def validate_operation_register(register: dict[str, Any]) -> None:
    if register.get("schema_version") != 1:
        raise VerificationError("operation register schema_version must be 1")
    baseline = register.get("baseline")
    if not isinstance(baseline, dict):
        raise VerificationError("operation register baseline must be an object")
    for field in (
        "domain",
        "prover",
        "verifier",
        "setup",
        "backend",
        "implementation_conformance",
        "lean_root",
    ):
        if field not in baseline:
            raise VerificationError(f"operation register baseline lacks {field}")

    candidates = _require_nonempty_list(register, "candidates")
    required = {
        "id",
        "category",
        "baseline_vector",
        "proposed_vector",
        "deltas",
        "affected_clauses",
        "theorem",
        "transcript_wire_impact",
        "assumptions",
        "error_term",
        "boundary",
        "status",
        "rejection_reason",
    }
    ids: list[str] = []
    statuses: dict[str, str] = {}
    for index, candidate in enumerate(candidates):
        if not isinstance(candidate, dict):
            raise VerificationError(f"candidates[{index}] must be an object")
        if set(candidate) != required:
            missing = sorted(required - set(candidate))
            unexpected = sorted(set(candidate) - required)
            raise VerificationError(
                f"candidates[{index}] fields differ; "
                f"missing={missing}, unexpected={unexpected}"
            )
        for field in (
            "id",
            "category",
            "baseline_vector",
            "proposed_vector",
            "theorem",
            "transcript_wire_impact",
            "error_term",
            "boundary",
        ):
            if not isinstance(candidate[field], str) or not candidate[field]:
                raise VerificationError(f"candidates[{index}].{field} must be nonempty")
        if candidate["category"] not in {
            "exact-v1",
            "probabilistic-v1",
            "versioned",
            "rejected-path",
        }:
            raise VerificationError(f"candidates[{index}].category is invalid")
        if candidate["status"] not in OPERATION_STATUSES:
            raise VerificationError(f"candidates[{index}].status is invalid")
        if candidate["status"] in {"proved-model", "implemented", "verified"}:
            raise VerificationError(
                f"candidates[{index}] cannot claim {candidate['status']} until "
                "structured audited equivalence/refinement and strict-cost "
                "theorem roots are registered in the gate"
            )
        deltas = candidate["deltas"]
        if not isinstance(deltas, dict) or set(deltas) != {
            "prover",
            "verifier",
            "setup",
        } or not all(isinstance(value, str) and value for value in deltas.values()):
            raise VerificationError(
                f"candidates[{index}].deltas must name prover, verifier, and setup"
            )
        for field in ("affected_clauses", "assumptions"):
            if not isinstance(candidate[field], list) or not all(
                isinstance(value, str) and value for value in candidate[field]
            ):
                raise VerificationError(f"candidates[{index}].{field} must be strings")
        rejected = candidate["status"] == "rejected"
        if rejected != bool(candidate["rejection_reason"]):
            raise VerificationError(
                f"candidates[{index}] rejection reason/status disagree"
            )
        if rejected != (candidate["category"] == "rejected-path"):
            raise VerificationError(
                f"candidates[{index}] rejected status/category disagree"
            )
        ids.append(candidate["id"])
        statuses[candidate["id"]] = candidate["status"]
    if len(set(ids)) != len(ids):
        raise VerificationError("operation register contains duplicate candidate ids")

    research_order = _require_nonempty_list(register, "research_order")
    if len(set(research_order)) != len(research_order):
        raise VerificationError("research_order contains duplicates")
    unknown_research = sorted(set(research_order) - set(ids))
    if unknown_research:
        raise VerificationError(
            "research_order contains unknown candidates: " + ", ".join(unknown_research)
        )
    if any(statuses[item] == "rejected" for item in research_order):
        raise VerificationError("research_order contains a rejected candidate")

    frontier = register.get("formal_pareto_frontier")
    if not isinstance(frontier, list) or not all(
        isinstance(item, str) and item for item in frontier
    ):
        raise VerificationError("formal_pareto_frontier must be a string list")
    if len(set(frontier)) != len(frontier):
        raise VerificationError("formal_pareto_frontier contains duplicates")
    unknown_frontier = sorted(set(frontier) - set(ids))
    if unknown_frontier:
        raise VerificationError(
            "formal_pareto_frontier contains unknown candidates: "
            + ", ".join(unknown_frontier)
        )
    eligible = {"proved-model", "implemented", "verified"}
    if any(statuses[item] not in eligible for item in frontier):
        raise VerificationError(
            "formal_pareto_frontier contains a candidate without a proved model"
        )
    if not isinstance(register.get("frontier_note"), str) or not register["frontier_note"]:
        raise VerificationError("frontier_note must be nonempty")


def validate_repository(
    manifest: dict[str, Any],
    *,
    repo_root: Path = REPO_ROOT,
    lean_root: Path | None = None,
    require_checker_artifact: bool = True,
) -> ValidationSummary:
    if manifest.get("schema_version") != 1:
        raise VerificationError("schema_version must be 1")
    actual_lean_root = lean_root or (
        repo_root / "crates/crypto/proof-aggregation/formal/lean-ipp"
    )
    validate_required_inputs(
        _require_nonempty_list(manifest, "required_repository_inputs"), repo_root
    )
    validate_versioning_guidance(repo_root)
    validate_lean_source_tokens(actual_lean_root)
    validate_toolchain_roles(manifest, repo_root)

    all_audit_roots = [
        diagnostic.root
        for diagnostic in manifest_audit_diagnostics(
            manifest,
            lean_root=actual_lean_root,
            require_complete_inventory=False,
        )
    ]

    claims = _require_nonempty_list(manifest, "claims")
    claim_roots: list[str] = []
    claim_ids: list[str] = []
    for index, claim in enumerate(claims):
        if not isinstance(claim, dict):
            raise VerificationError(f"claims[{index}] must be an object")
        claim_id = claim.get("id")
        root = claim.get("root")
        status = claim.get("status")
        if not isinstance(claim_id, str) or not claim_id:
            raise VerificationError(f"claims[{index}].id must be nonempty")
        if not isinstance(root, str) or not root:
            raise VerificationError(f"claims[{index}].root must be nonempty")
        if status not in VALID_CLAIM_STATUSES:
            raise VerificationError(f"claims[{index}].status is invalid: {status!r}")
        if status == "proved" and root not in all_audit_roots:
            raise VerificationError(f"proved claim root is not audited: {root}")
        if status == "tested" and claim_id not in CLOSED_TESTED_CLAIM_IDS:
            raise VerificationError(
                f"claims[{index}] is not an allowlisted tested claim: {claim_id}"
            )
        for field in ("statement", "evidence"):
            if not isinstance(claim.get(field), str) or not claim[field]:
                raise VerificationError(f"claims[{index}].{field} must be nonempty")
        for field in ("dependencies", "assumptions"):
            if not isinstance(claim.get(field), list) or not all(
                isinstance(item, str) and item for item in claim[field]
            ):
                raise VerificationError(f"claims[{index}].{field} must be strings")
        claim_ids.append(claim_id)
        claim_roots.append(root)
    if len(set(claim_ids)) != len(claim_ids):
        raise VerificationError("duplicate claim id")
    if len(set(claim_roots)) != len(claim_roots):
        raise VerificationError("duplicate claim root")

    assumptions = _require_nonempty_list(manifest, "assumptions")
    assumption_ids: list[str] = []
    for index, assumption in enumerate(assumptions):
        if not isinstance(assumption, dict):
            raise VerificationError(f"assumptions[{index}] must be an object")
        for field in ("id", "owner", "postcondition", "evidence", "closure"):
            if not isinstance(assumption.get(field), str) or not assumption[field]:
                raise VerificationError(
                    f"assumptions[{index}].{field} must be nonempty"
                )
        if assumption.get("status") != "assumed":
            raise VerificationError(f"assumptions[{index}].status must be assumed")
        assumption_ids.append(assumption["id"])
    if len(set(assumption_ids)) != len(assumption_ids):
        raise VerificationError("duplicate assumption id")
    obsolete_assumptions = sorted(
        set(assumption_ids) & OBSOLETE_ASSUMPTION_IDS
    )
    if obsolete_assumptions:
        raise VerificationError(
            "manifest contains obsolete assumptions: "
            + ", ".join(obsolete_assumptions)
        )
    claim_id_set = set(claim_ids)
    assumption_id_set = set(assumption_ids)
    for index, claim in enumerate(claims):
        unknown_dependencies = sorted(
            set(claim["dependencies"]) - claim_id_set
        )
        unknown_assumptions = sorted(
            set(claim["assumptions"]) - assumption_id_set
        )
        if unknown_dependencies:
            raise VerificationError(
                f"claims[{index}] has unknown dependencies: "
                + ", ".join(unknown_dependencies)
            )
        if claim["id"] in claim["dependencies"]:
            raise VerificationError(f"claims[{index}] depends on itself")
        if unknown_assumptions:
            raise VerificationError(
                f"claims[{index}] has unknown assumptions: "
                + ", ".join(unknown_assumptions)
            )

    validate_v1_byte_lock(manifest, repo_root)
    validate_bounded_challenge_sampler(manifest, repo_root)

    claim_ledger_digest = hashlib.sha256(
        _canonical_json(claims).encode("utf-8")
    ).hexdigest()
    if claim_ledger_digest != CLAIM_LEDGER_SHA256:
        raise VerificationError(
            "claim ledger digest differs from the independent gate owner"
        )
    assumption_ledger_digest = hashlib.sha256(
        _canonical_json(assumptions).encode("utf-8")
    ).hexdigest()
    if assumption_ledger_digest != ASSUMPTION_LEDGER_SHA256:
        raise VerificationError(
            "assumption ledger digest differs from the independent gate owner"
        )

    allowed_axioms = _require_nonempty_list(manifest, "allowed_axioms")
    if not all(isinstance(axiom, str) and axiom for axiom in allowed_axioms):
        raise VerificationError("allowed_axioms entries must be nonempty strings")
    if len(set(allowed_axioms)) != len(allowed_axioms):
        raise VerificationError("allowed_axioms contains duplicates")

    spec_roots = _require_nonempty_list(manifest, "spec_roots")
    for index, spec in enumerate(spec_roots):
        if not isinstance(spec, dict):
            raise VerificationError(f"spec_roots[{index}] must be an object")
        module = spec.get("module")
        forbidden = spec.get("forbidden_import_prefixes")
        if not isinstance(module, str) or not module:
            raise VerificationError(f"spec_roots[{index}].module must be nonempty")
        if not isinstance(forbidden, list) or not all(
            isinstance(prefix, str) and prefix for prefix in forbidden
        ):
            raise VerificationError(
                f"spec_roots[{index}].forbidden_import_prefixes must be strings"
            )
        validate_import_closure(actual_lean_root, [module], forbidden)

    verification_contract = _verification_contract_payload(manifest)
    verification_contract_digest = hashlib.sha256(
        _canonical_json(verification_contract).encode("utf-8")
    ).hexdigest()
    if verification_contract_digest != VERIFICATION_CONTRACT_SHA256:
        raise VerificationError(
            "verification contract digest differs from the independent gate "
            "owner"
        )

    # Discovering additional ProofAudit modules is repository-bound and follows
    # the pinned verification-contract check. Listed modules are still parsed
    # above so missing, empty, or malformed declared inputs fail immediately.
    manifest_audit_diagnostics(manifest, lean_root=actual_lean_root)

    # Source-bound checker artifacts are intentionally validated only after the
    # manifest-owned ledgers and verification contract. A stale generated
    # artifact must not mask a mutation to the gate definition it is evidence
    # for.
    validate_contract_evidence(
        manifest,
        repo_root,
        require_checker_artifact=require_checker_artifact,
    )
    validate_operation_register(load_operation_register())

    outputs = extraction_outputs(
        repo_root
        / "crates/crypto/proof-aggregation/formal/snarkpack/"
        "lean-extraction-manifest.json"
    )
    for output in outputs:
        path = repo_root.joinpath(*PurePosixPath(output).parts)
        if not path.is_file():
            raise VerificationError(f"missing generated extraction output: {output}")

    return ValidationSummary(
        audit_capstones=len(all_audit_roots),
        claims=len(claims),
        open_claims=sum(claim["status"] == "open" for claim in claims),
        assumptions=len(assumptions),
        unchecked_contract_evidence=sum(
            evidence["checker"]["last_result"] !=
            evidence["checker"]["required_result"]
            for evidence in manifest["statement_binding_evidence"]
        ),
    )


def require_closed_verification(manifest: dict[str, Any]) -> None:
    claims = _require_nonempty_list(manifest, "claims")
    unclosed_claims = [
        claim["id"]
        for claim in claims
        if not (
            claim.get("status") == "proved"
            or (
                claim.get("status") == "tested"
                and claim.get("id") in CLOSED_TESTED_CLAIM_IDS
            )
        )
        or str(claim.get("root", "")).startswith("UNPROVED.")
    ]
    stale_evidence = [
        evidence["contract_field"]
        for evidence in _require_nonempty_list(
            manifest, "statement_binding_evidence"
        )
        if evidence["checker"]["last_result"]
        != evidence["checker"]["required_result"]
    ]
    blockers: list[str] = []
    if unclosed_claims:
        blockers.append("unclosed claims: " + ", ".join(unclosed_claims))
    if stale_evidence:
        blockers.append("stale contract evidence: " + ", ".join(stale_evidence))
    if blockers:
        raise VerificationError(
            "verification manifest is not closed; " + "; ".join(blockers)
        )


def audit_log_summary(
    text: str,
    *,
    expected_diagnostics: list[AuditDiagnostic],
    allowed_axioms: set[str],
) -> str:
    text = text.lstrip("\ufeff")
    expected_roots = [diagnostic.root for diagnostic in expected_diagnostics]
    if not expected_roots:
        raise VerificationError("expected_diagnostics must be nonempty")
    if len(set(expected_roots)) != len(expected_roots):
        raise VerificationError("expected diagnostics contain duplicate roots")
    if "sorryAx" in text:
        raise VerificationError("ProofAudit contains sorryAx")

    result_pattern = re.compile(
        r"^info: (Ipp[\\/]ProofAudit[A-Za-z0-9_]*\.lean):(\d+):(\d+): "
        r"'([^'\r\n]+)' "
        r"(?:depends on axioms: \[(.*?)\]|does not depend on any axioms)",
        flags=re.DOTALL | re.MULTILINE,
    )
    results = result_pattern.findall(text)
    actual_diagnostics = [
        AuditDiagnostic(
            root=root,
            source=source.replace("\\", "/"),
            line=int(line),
            column=int(column),
        )
        for source, line, column, root, _ in results
    ]
    actual_roots = [diagnostic.root for diagnostic in actual_diagnostics]
    if len(set(actual_roots)) != len(actual_roots):
        raise VerificationError("ProofAudit log contains duplicate axiom results")
    missing = sorted(set(expected_roots) - set(actual_roots))
    unexpected = sorted(set(actual_roots) - set(expected_roots))
    if missing or unexpected:
        raise VerificationError(
            "ProofAudit roots differ from the fixed manifest"
            + (f"; missing: {', '.join(missing)}" if missing else "")
            + (f"; unexpected: {', '.join(unexpected)}" if unexpected else "")
        )
    expected_by_root = {
        diagnostic.root: diagnostic for diagnostic in expected_diagnostics
    }
    actual_by_root = {
        diagnostic.root: diagnostic for diagnostic in actual_diagnostics
    }
    misplaced = [
        root
        for root in expected_roots
        if actual_by_root[root] != expected_by_root[root]
    ]
    if misplaced:
        details = ", ".join(
            f"{root}: expected "
            f"{expected_by_root[root].source}:"
            f"{expected_by_root[root].line}:"
            f"{expected_by_root[root].column}, got "
            f"{actual_by_root[root].source}:"
            f"{actual_by_root[root].line}:"
            f"{actual_by_root[root].column}"
            for root in misplaced
        )
        raise VerificationError(
            "ProofAudit diagnostics do not originate at the pinned "
            f"#print axioms commands: {details}"
        )
    observed = {
        axiom.strip()
        for _, _, _, _, block in results
        for axiom in block.split(",")
        if axiom.strip()
    }
    unexpected = sorted(observed - allowed_axioms)
    if unexpected:
        raise VerificationError(
            "ProofAudit contains non-allowlisted axioms: " + ", ".join(unexpected)
        )
    return f"{len(actual_roots)} capstones; axioms allowlisted"


def render_markdown(manifest: dict[str, Any]) -> str:
    open_claims = sum(claim["status"] == "open" for claim in manifest["claims"])
    claims_by_id = {claim["id"]: claim for claim in manifest["claims"]}
    shipping_to_goal = claims_by_id["SHIPPING-TO-GOAL"]
    full_adaptive = claims_by_id["FULL-ADAPTIVE-END-TO-END-FV"]
    unchecked_contract_evidence = sum(
        evidence["checker"]["last_result"] != evidence["checker"]["required_result"]
        for evidence in manifest["statement_binding_evidence"]
    )
    lines = [
        "# SnarkPack Formal Verification Evidence",
        "",
        "This file is generated from `verification-manifest.json`. "
        "Do not edit claim or assumption tables by hand.",
        "",
        "## Scope",
        "",
        f"`SHIPPING-TO-GOAL` is `{shipping_to_goal['status']}` at "
        f"`{shipping_to_goal['root']}`. "
        f"`FULL-ADAPTIVE-END-TO-END-FV` is `{full_adaptive['status']}` at "
        f"`{full_adaptive['root']}`. A fixed-formal-input computational bound "
        "does not by itself establish either concrete production composition "
        "or the publication-level adaptive claim; every open construction, "
        "coupling, bundle, prover, and evidence dependency below remains a "
        "blocking proof obligation.",
        "",
        "## Claims",
        "",
        "| ID | Claim | Root | Depends on | Assumes | Evidence | Status |",
        "| --- | --- | --- | --- | --- | --- | --- |",
    ]
    for claim in manifest["claims"]:
        lines.append(
            f"| `{claim['id']}` | {claim['statement']} | "
            f"`{claim['root']}` | "
            f"{', '.join(claim['dependencies']) or 'none'} | "
            f"{', '.join(claim['assumptions']) or 'none'} | "
            f"{claim['evidence']} | `{claim['status']}` |"
        )
    lines.extend(
        [
            "",
            "## Statement-Binding Contract Evidence",
            "",
            "| Field | Kind | Theorem roots | Toolchain role | Last checker result |",
            "| --- | --- | --- | --- | --- |",
        ]
    )
    for evidence in manifest["statement_binding_evidence"]:
        lines.append(
            f"| `{evidence['contract_field']}` | `{evidence['kind']}` | "
            f"{', '.join(f'`{root}`' for root in evidence['theorem_roots'])} | "
            f"`{evidence['toolchain_role']}` | "
            f"`{evidence['checker']['last_result']}` |"
        )
    lines.extend(
        [
            "",
            "## Assumptions",
            "",
            "| ID | Owner | Postcondition | Evidence | Closure | Status |",
            "| --- | --- | --- | --- | --- | --- |",
        ]
    )
    for assumption in manifest["assumptions"]:
        lines.append(
            f"| `{assumption['id']}` | {assumption['owner']} | "
            f"{assumption['postcondition']} | {assumption['evidence']} | "
            f"{assumption['closure']} | `{assumption['status']}` |"
        )
    lines.extend(
        [
            "",
            "## Audit Contract",
            "",
            "- Required capstones: "
            f"{sum(module['expected_capstones'] for module in manifest['audit_modules'])}.",
            f"- Open claims: {open_claims}.",
            "- Contract evidence awaiting its required checker result: "
            f"{unchecked_contract_evidence}.",
            "- Allowed kernel axioms: "
            + ", ".join(f"`{axiom}`" for axiom in manifest["allowed_axioms"])
            + ".",
            "- An `open` row is a recorded gap and prevents an end-to-end claim; "
            "it is not a passing proof result.",
            "",
        ]
    )
    return "\n".join(lines)


def render_operation_markdown(register: dict[str, Any]) -> str:
    baseline = register["baseline"]
    candidates = {candidate["id"]: candidate for candidate in register["candidates"]}
    lines = [
        "# SnarkPack Operation-Count Reduction Register",
        "",
        "This file is generated from `operation-reduction-register.json`.",
        "",
        "## Symbolic v1 Baseline",
        "",
        f"- Domain: `{baseline['domain']}`.",
    ]
    for role in ("prover", "verifier"):
        lines.append(f"- {role.capitalize()}: " + ", ".join(
            f"`{name} = {value}`" for name, value in baseline[role].items()
        ) + ".")
    lines.extend(
        [
            f"- Backend: {baseline['backend']['statement']} "
            f"Status: `{baseline['backend']['status']}`.",
            f"- Implementation conformance: "
            f"{baseline['implementation_conformance']['statement']} "
            f"Status: `{baseline['implementation_conformance']['status']}`.",
            "",
            "## Formal Pareto Frontier",
            "",
            register["frontier_note"],
            "",
            "## Ranked Research Order",
            "",
        ]
    )
    for rank, candidate_id in enumerate(register["research_order"], start=1):
        candidate = candidates[candidate_id]
        lines.append(
            f"{rank}. `{candidate_id}` ({candidate['category']}): "
            f"{candidate['proposed_vector']}"
        )
    lines.extend(
        [
            "",
            "## Active Candidates",
            "",
            "| ID | Class | Proposed vector | Prover delta | Verifier delta | "
            "Setup delta | Required theorem | Wire impact | Error | Boundary | Status |",
            "| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |",
        ]
    )
    for candidate in register["candidates"]:
        if candidate["status"] == "rejected":
            continue
        lines.append(
            f"| `{candidate['id']}` | {candidate['category']} | "
            f"{candidate['proposed_vector']} | {candidate['deltas']['prover']} | "
            f"{candidate['deltas']['verifier']} | {candidate['deltas']['setup']} | "
            f"{candidate['theorem']} | {candidate['transcript_wire_impact']} | "
            f"{candidate['error_term']} | {candidate['boundary']} | "
            f"`{candidate['status']}` |"
        )
    lines.extend(
        [
            "",
            "## Rejected Paths",
            "",
            "| ID | Path | Reason |",
            "| --- | --- | --- |",
        ]
    )
    for candidate in register["candidates"]:
        if candidate["status"] != "rejected":
            continue
        lines.append(
            f"| `{candidate['id']}` | {candidate['proposed_vector']} | "
            f"{candidate['rejection_reason']} |"
        )
    lines.append("")
    return "\n".join(lines)


def render_dependency_graph(manifest: dict[str, Any]) -> str:
    claims = [
        claim for claim in manifest["claims"]
        if not claim["id"].startswith("COST-")
    ]
    included = {claim["id"] for claim in claims}
    claim_node = {
        claim["id"]: f"n{index}" for index, claim in enumerate(claims)
    }
    used_assumptions = {
        assumption
        for claim in claims
        for assumption in claim["assumptions"]
    }
    assumptions = [
        assumption
        for assumption in manifest["assumptions"]
        if assumption["id"] in used_assumptions
    ]
    assumption_node = {
        assumption["id"]: f"a{index}"
        for index, assumption in enumerate(assumptions)
    }
    evidence = manifest["statement_binding_evidence"]
    evidence_node = {
        entry["contract_field"]: f"e{index}"
        for index, entry in enumerate(evidence)
    }
    lines = [
        "# SnarkPack Implementation-to-Goal Dependency Graph",
        "",
        "This file is generated from `verification-manifest.json`. Edges point "
        "from a prerequisite, explicit assumption, or checked contract field "
        "to the claim that consumes it.",
        "",
        "```mermaid",
        "flowchart LR",
    ]
    for claim in claims:
        label = claim["id"].replace('"', "'") + "<br/>" + claim["status"]
        lines.append(f'  {claim_node[claim["id"]]}["{label}"]')
    for assumption in assumptions:
        label = (
            assumption["id"].replace('"', "'")
            + "<br/>assumed"
        )
        lines.append(f'  {assumption_node[assumption["id"]]}["{label}"]')
    for entry in evidence:
        result = entry["checker"]["last_result"]
        label = (
            "contract:"
            + entry["contract_field"].replace('"', "'")
            + "<br/>"
            + result
        )
        lines.append(f'  {evidence_node[entry["contract_field"]]}["{label}"]')
    for claim in claims:
        for dependency in claim["dependencies"]:
            if dependency in included:
                lines.append(
                    f"  {claim_node[dependency]} --> {claim_node[claim['id']]}"
                )
        for assumption in claim["assumptions"]:
            lines.append(
                f"  {assumption_node[assumption]} -.-> "
                f"{claim_node[claim['id']]}"
            )
    if "CANONICAL-STATEMENT-BINDING" in claim_node:
        for entry in evidence:
            lines.append(
                f"  {evidence_node[entry['contract_field']]} --> "
                f"{claim_node['CANONICAL-STATEMENT-BINDING']}"
            )
    lines.extend(
        [
            "  classDef proved fill:#d8f3dc,stroke:#2d6a4f,color:#081c15",
            "  classDef tested fill:#dbeafe,stroke:#1d4ed8,color:#172554",
            "  classDef open fill:#fee2e2,stroke:#b91c1c,color:#450a0a",
            "  classDef assumed fill:#fef3c7,stroke:#b45309,color:#451a03",
            "  classDef evidencePass fill:#e0f2fe,stroke:#0369a1,color:#082f49",
            "  classDef evidenceStale fill:#fee2e2,stroke:#b91c1c,color:#450a0a",
        ]
    )
    for status in ("proved", "tested", "open"):
        members = [
            claim_node[claim["id"]]
            for claim in claims
            if claim["status"] == status
        ]
        if members:
            lines.append(f"  class {','.join(members)} {status}")
    if assumptions:
        lines.append(
            "  class "
            + ",".join(assumption_node[assumption["id"]] for assumption in assumptions)
            + " assumed"
        )
    pass_evidence = [
        evidence_node[entry["contract_field"]]
        for entry in evidence
        if entry["checker"]["last_result"] == entry["checker"]["required_result"]
    ]
    stale_evidence = [
        evidence_node[entry["contract_field"]]
        for entry in evidence
        if entry["checker"]["last_result"] != entry["checker"]["required_result"]
    ]
    if pass_evidence:
        lines.append(f"  class {','.join(pass_evidence)} evidencePass")
    if stale_evidence:
        lines.append(f"  class {','.join(stale_evidence)} evidenceStale")
    open_claims = [
        claim["id"]
        for claim in claims
        if claim["status"] == "open"
        or str(claim["root"]).startswith("UNPROVED.")
    ]
    if open_claims:
        status_footer = (
            "Open graph claims: "
            + ", ".join(f"`{claim_id}`" for claim_id in open_claims)
            + "."
        )
    else:
        status_footer = "No graph claims are open."
    shipping = next(
        claim for claim in claims if claim["id"] == "SHIPPING-TO-GOAL"
    )
    full = next(
        claim for claim in claims
        if claim["id"] == "FULL-ADAPTIVE-END-TO-END-FV"
    )
    lines.extend(
        [
            "```",
            "",
            status_footer + " The manifest dependencies keep the explicit "
            "modular-reduction budget and the distinct SHA-256 and Blake2b "
            "security advantages separate. "
            f"`SHIPPING-TO-GOAL` is `{shipping['status']}` and "
            f"`FULL-ADAPTIVE-END-TO-END-FV` is `{full['status']}`. "
            "Every F* statement-contract row must carry a source-digest-pinned "
            "`pass` result.",
            "",
        ]
    )
    return "\n".join(lines)


def _optional_fstar_base(path: Path | None) -> dict[str, Any] | None:
    candidate = path or FSTAR_CHECKER_EVIDENCE_PATH
    try:
        payload = json.loads(candidate.read_text(encoding="utf-8"))
    except (OSError, UnicodeError, json.JSONDecodeError):
        return None
    return payload if isinstance(payload, dict) else None


def _requested_fstar_modules(
    value: str | None,
    manifest: dict[str, Any],
    repo_root: Path,
) -> tuple[str, ...]:
    specs = validate_fstar_module_graph(manifest, repo_root)
    if value is None:
        return tuple(sorted(specs))
    try:
        decoded = json.loads(value)
    except json.JSONDecodeError as error:
        raise VerificationError(
            f"requested F* proof JSON is malformed: {error}"
        ) from error
    if not isinstance(decoded, list):
        raise VerificationError("requested F* proof JSON must be an array")
    names = _normalize_fstar_module_names(
        decoded, specs, label="requested proof list"
    )
    return tuple(sorted(names))


def parser() -> argparse.ArgumentParser:
    result = argparse.ArgumentParser()
    commands = result.add_subparsers(dest="command", required=True)
    commands.add_parser("check")
    commands.add_parser("validate")
    commands.add_parser("outputs")
    commands.add_parser("audit-modules")
    audit = commands.add_parser("audit-log")
    audit.add_argument("path", type=Path)
    audit.add_argument("--module", action="append", default=[])
    test_log = commands.add_parser("test-log")
    test_log.add_argument("path", type=Path)
    test_log.add_argument("--expected", type=int, required=True)
    test_log.add_argument("--label", required=True)
    test_log.add_argument("--test-name", action="append", default=[])
    render = commands.add_parser("render")
    render.add_argument("--check", type=Path)
    render.add_argument("--output", type=Path)
    render_operations = commands.add_parser("render-operations")
    render_operations.add_argument("--check", type=Path)
    render_operations.add_argument("--output", type=Path)
    render_graph = commands.add_parser("render-graph")
    render_graph.add_argument("--check", type=Path)
    render_graph.add_argument("--output", type=Path)
    fstar_plan = commands.add_parser("fstar-plan")
    fstar_plan.add_argument("--base", type=Path)
    fstar_plan.add_argument("--requested-json")
    fstar_plan.add_argument("--force-all", action="store_true")
    fstar_evidence = commands.add_parser("fstar-evidence")
    fstar_evidence.add_argument("--check", type=Path)
    fstar_evidence.add_argument("--output", type=Path)
    fstar_evidence.add_argument("--base", type=Path)
    fstar_evidence.add_argument("--requested-json")
    fstar_evidence.add_argument("--force-all", action="store_true")
    fstar_evidence.add_argument("--checked-module", action="append", default=[])
    stale_fstar = commands.add_parser("render-stale-fstar-evidence")
    stale_fstar.add_argument("--output", type=Path, required=True)
    fstar_cache_key = commands.add_parser("fstar-ci-cache-key")
    fstar_cache_key.add_argument("--github-output", type=Path)
    validate_fstar_artifact = commands.add_parser("validate-fstar-artifact")
    validate_fstar_artifact.add_argument("--artifact", type=Path, required=True)
    import_fstar = commands.add_parser("import-fstar-evidence")
    import_fstar.add_argument("--artifact", type=Path, required=True)
    return result


def main(argv: list[str] | None = None) -> int:
    try:
        args = parser().parse_args(argv)
        manifest = load_manifest()
        if args.command == "check":
            summary = validate_repository(manifest)
            require_closed_verification(manifest)
            print(
                "verification manifest structurally ok: "
                f"{summary.audit_capstones} capstones, "
                f"{summary.claims} claims ({summary.open_claims} open), "
                f"{summary.assumptions} assumptions, "
                f"{summary.unchecked_contract_evidence} unchecked contract "
                "evidence rows"
            )
        elif args.command == "validate":
            summary = validate_repository(manifest)
            print(
                "verification manifest structurally ok: "
                f"{summary.audit_capstones} capstones, "
                f"{summary.claims} claims ({summary.open_claims} open), "
                f"{summary.assumptions} assumptions, "
                f"{summary.unchecked_contract_evidence} unchecked contract "
                "evidence rows"
            )
        elif args.command == "outputs":
            for output in extraction_outputs():
                print(output)
        elif args.command == "audit-modules":
            manifest_audit_diagnostics(manifest)
            for module in manifest_audit_module_sources(manifest):
                print(module)
        elif args.command == "audit-log":
            expected_diagnostics = selected_manifest_audit_diagnostics(
                manifest, args.module
            )
            print(
                audit_log_summary(
                    args.path.read_text(encoding="utf-8"),
                    expected_diagnostics=expected_diagnostics,
                    allowed_axioms=set(manifest["allowed_axioms"]),
                )
            )
        elif args.command == "test-log":
            count = require_exact_test_execution(
                args.path.read_text(encoding="utf-8"),
                command=args.label,
                expected=args.expected,
                expected_names=args.test_name,
            )
            print(f"{count} tests executed exactly")
        elif args.command == "render":
            rendered = render_markdown(manifest)
            if args.check is not None and args.output is not None:
                raise VerificationError("--check and --output are mutually exclusive")
            if args.output is not None:
                args.output.write_text(rendered, encoding="utf-8")
                print(f"wrote {args.output}")
            elif args.check is None:
                print(rendered, end="")
            else:
                actual = args.check.read_text(encoding="utf-8")
                if actual != rendered:
                    raise VerificationError(
                        f"{args.check} is stale; regenerate from {MANIFEST_PATH}"
                    )
                print(f"{args.check} matches verification manifest")
        elif args.command == "render-operations":
            rendered = render_operation_markdown(load_operation_register())
            if args.check is not None and args.output is not None:
                raise VerificationError("--check and --output are mutually exclusive")
            if args.output is not None:
                args.output.write_text(rendered, encoding="utf-8")
                print(f"wrote {args.output}")
            elif args.check is None:
                print(rendered, end="")
            else:
                actual = args.check.read_text(encoding="utf-8")
                if actual != rendered:
                    raise VerificationError(
                        f"{args.check} is stale; regenerate from "
                        f"{OPERATION_REGISTER_PATH}"
                    )
                print(f"{args.check} matches operation register")
        elif args.command == "render-graph":
            rendered = render_dependency_graph(manifest)
            if args.check is not None and args.output is not None:
                raise VerificationError("--check and --output are mutually exclusive")
            if args.output is not None:
                args.output.write_text(rendered, encoding="utf-8")
                print(f"wrote {args.output}")
            elif args.check is None:
                print(rendered, end="")
            else:
                actual = args.check.read_text(encoding="utf-8")
                if actual != rendered:
                    raise VerificationError(
                        f"{args.check} is stale; regenerate from {MANIFEST_PATH}"
                    )
                print(f"{args.check} matches verification manifest")
        elif args.command == "fstar-plan":
            validate_contract_evidence(
                manifest,
                REPO_ROOT,
                require_checker_artifact=False,
                allow_stale_source_drift=True,
            )
            requested = _requested_fstar_modules(
                args.requested_json, manifest, REPO_ROOT
            )
            for module in plan_fstar_modules(
                manifest,
                REPO_ROOT,
                base=_optional_fstar_base(args.base),
                requested=requested,
                force_all=args.force_all,
            ):
                print(f"{module}.fst")
        elif args.command == "fstar-evidence":
            validate_contract_evidence(
                manifest,
                REPO_ROOT,
                require_checker_artifact=False,
                allow_stale_source_drift=True,
            )
            if args.check is not None and args.output is not None:
                raise VerificationError("--check and --output are mutually exclusive")
            if args.output is not None:
                requested = _requested_fstar_modules(
                    args.requested_json, manifest, REPO_ROOT
                )
                payload = merged_fstar_checker_evidence(
                    manifest,
                    REPO_ROOT,
                    base=_optional_fstar_base(args.base),
                    requested=requested,
                    checked=args.checked_module,
                    force_all=args.force_all,
                )
                rendered = _canonical_json(payload)
                _atomic_write(args.output, rendered.encode("utf-8"))
                print(f"wrote {args.output}")
            elif args.check is None:
                rendered = _canonical_json(
                    expected_fstar_checker_evidence(manifest, REPO_ROOT)
                )
                print(rendered, end="")
            else:
                rendered = _canonical_json(
                    expected_fstar_checker_evidence(manifest, REPO_ROOT)
                )
                actual = args.check.read_text(encoding="utf-8")
                if actual != rendered:
                    raise VerificationError(
                        f"{args.check} is stale; rerun the pinned F* checker "
                        "with SNARKPACK_FSTAR_EVIDENCE_UPDATE=1"
                    )
                print(f"{args.check} matches the pinned F* checker result")
        elif args.command == "render-stale-fstar-evidence":
            validate_contract_evidence(
                manifest,
                REPO_ROOT,
                require_checker_artifact=False,
                allow_stale_source_drift=True,
            )
            nonstale = sorted(
                entry["contract_field"]
                for entry in manifest["statement_binding_evidence"]
                if entry.get("kind") == "fstar"
                and entry.get("checker", {}).get("last_result") != "stale"
            )
            if nonstale:
                raise VerificationError(
                    "cannot render stale F* evidence while manifest rows are "
                    "not stale: " + ", ".join(nonstale)
                )
            _atomic_write(
                args.output,
                _canonical_json(
                    stale_fstar_checker_evidence(manifest, REPO_ROOT)
                ).encode("utf-8"),
            )
            print(f"wrote stale F* evidence to {args.output}")
        elif args.command == "fstar-ci-cache-key":
            validate_contract_evidence(
                manifest,
                REPO_ROOT,
                require_checker_artifact=False,
                allow_stale_source_drift=True,
            )
            environment_sha256, exact_sha256 = (
                fstar_ci_cache_fingerprints(manifest, REPO_ROOT)
            )
            lines = (
                f"environment_sha256={environment_sha256}",
                f"exact_sha256={exact_sha256}",
            )
            if args.github_output is not None:
                with args.github_output.open(
                    "a", encoding="utf-8", newline="\n"
                ) as output:
                    for line in lines:
                        output.write(line + "\n")
            print("\n".join(lines))
        elif args.command == "validate-fstar-artifact":
            promoted_fstar_manifest(
                manifest,
                args.artifact.read_bytes(),
                REPO_ROOT,
            )
            print(f"validated current F* checker artifact: {args.artifact}")
        elif args.command == "import-fstar-evidence":
            promoted = import_fstar_checker_evidence(
                MANIFEST_PATH, args.artifact, REPO_ROOT
            )
            print(
                "imported F* checker evidence and promoted "
                f"{sum(entry['kind'] == 'fstar' for entry in promoted['statement_binding_evidence'])} "
                "contract rows"
            )
        return 0
    except (OSError, UnicodeError, VerificationError) as error:
        print(f"verification manifest: error: {error}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
