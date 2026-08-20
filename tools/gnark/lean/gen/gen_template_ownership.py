#!/usr/bin/env python3
"""Generate exact per-template ownership and family semantic-closure pins."""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

import formal_json
from formal_json import RepoPathAudit
from manifest_discovery import validate_ir
from write_if_changed import write_if_changed


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
FORMAL = LEAN / "ShielddGnarkFormal/Deployed/Templates"
BENCH = LEAN / "bench"
REGISTRY = ROOT / "tools/gnark/artifacts/proof-template-registry.json"
DEFAULT_OUT = ROOT / "tools/gnark/artifacts/proof-template-ownership.json"
CATALOG = ROOT / "tools/gnark/fv_profiles.json"
IR_ROOT = ROOT / "crates/core/component/shielded-pool/formal"
CATALOG_FIELDS = ("schema", "profiles")
PROFILE_FIELDS = {
    "label",
    "kind",
    "n_in",
    "n_out",
    "witness_format_version",
    "proof_witnesses",
    "artifact_dir",
    "manifest",
    "status",
    "theorem_root",
    "coverage_report",
}
PROOF_WITNESS_FIELDS = {"case", "path"}
REGISTRY_FIELDS = {"schema", "field_modulus", "templates"}
REGISTRY_TEMPLATE_FIELDS = {
    "proof_template_id",
    "op",
    "coarse_shape_sha256_hex",
    "local_wire_count",
    "row_count",
    "canonical_relation_sha256_hex",
    "canonical_relation_file",
}
FIELD_MODULUS = (
    "8444461749428370424248824938781546531375899335154063827935233455917409239041"
)
CERTIFIED_PROFILE_SPECS = (
    (
        "note_reshape8x1",
        "note_reshape",
        8,
        1,
        6,
        "ShielddGnarkFormal.Deployed.NoteReshape8x1Soundness",
        (
            (
                "note_reshape8x1",
                "internal/testfixtures/vectors/note_reshape8x1_witness_v6.bin",
            ),
        ),
    ),
    (
        "note_reshape1x8",
        "note_reshape",
        1,
        8,
        6,
        "ShielddGnarkFormal.Deployed.NoteReshape1x8Soundness",
        (
            (
                "note_reshape1x8",
                "internal/testfixtures/vectors/note_reshape1x8_witness_v6.bin",
            ),
        ),
    ),
    (
        "transfer",
        "transfer",
        2,
        2,
        19,
        "ShielddGnarkFormal.Deployed.TransferRefinement",
        (
            (
                "regulated_unflagged",
                "internal/testfixtures/vectors/transfer_witness_v19.bin",
            ),
            (
                "regulated_flagged_hidden",
                "internal/testfixtures/vectors/transfer_flagged_witness_v19.bin",
            ),
            (
                "unregulated_hidden",
                "internal/testfixtures/vectors/transfer_unregulated_witness_v19.bin",
            ),
        ),
    ),
    (
        "shielded_ics20_withdrawal",
        "shielded_ics20_withdrawal",
        2,
        1,
        11,
        "ShielddGnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement",
        (
            (
                "regulated_optional_real",
                "internal/testfixtures/vectors/shielded_ics20_withdrawal_witness_v11.bin",
            ),
            (
                "unregulated_optional_dummy",
                "internal/testfixtures/vectors/shielded_ics20_withdrawal_unregulated_witness_v11.bin",
            ),
        ),
    ),
)
SHARED_SEMANTICS = (
    "tools/gnark/lean/ShielddGnarkFormal/NbFixedBaseLiteral.lean",
    "tools/gnark/lean/ShielddGnarkFormal/NbFixedBaseLiteralChoiceFree.lean",
    "tools/gnark/lean/ShielddGnarkFormal/NbFixedGenSeg46ChoiceFree.lean",
    "tools/gnark/lean/ShielddGnarkFormal/ChoiceFreeZMod.lean",
    "tools/gnark/lean/ShielddGnarkFormal/ChoiceFreeZModCast.lean",
    "tools/gnark/lean/ShielddGnarkFormal/ChoiceFreeIvkBinary.lean",
    "tools/gnark/lean/ShielddGnarkFormal/IvkModRTruncation.lean",
    "tools/gnark/lean/ShielddGnarkFormal/RvkToBinaryChoiceFree.lean",
    "tools/gnark/lean/ShielddGnarkFormal/RvkFixedBaseConstantsChoiceFree.lean",
    "tools/gnark/lean/ShielddGnarkFormal/RvkFixedBaseLadderChoiceFree.lean",
    "tools/gnark/lean/ShielddGnarkFormal/RvkFixedBaseLiteralChoiceFree.lean",
    "tools/gnark/lean/ShielddGnarkFormal/RvkFixedGenInst0ChoiceFree.lean",
    "tools/gnark/lean/ShielddGnarkFormal/RvkFixedBaseRungChoiceFree.lean",
    "tools/gnark/lean/ShielddGnarkFormal/RvkFixedSplitRungChoiceFree.lean",
    "tools/gnark/lean/ShielddGnarkFormal/RvkFixedRunChoiceFree.lean",
    *(
        str(path.relative_to(ROOT))
        for path in sorted(
            (LEAN / "ShielddGnarkFormal/RvkFixedGenInst0ChoiceFree").glob("*.lean")
        )
    ),
    "tools/gnark/lean/ShielddGnarkFormal/Deployed/Dtk/OutputCurve.lean",
    "tools/gnark/lean/ShielddGnarkFormal/Deployed/NetBalance/ChoiceFreeLadder.lean",
    "tools/gnark/lean/ShielddGnarkFormal/Deployed/StateCommitmentPath/ProjectionChoiceFree.lean",
    "tools/gnark/lean/ShielddGnarkFormal/Deployed/Templates/Semantics/BinaryRecomposition.lean",
    "tools/gnark/lean/ShielddGnarkFormal/Deployed/Templates/Semantics/CompressToFieldCommon.lean",
    "tools/gnark/lean/ShielddGnarkFormal/Deployed/Templates/Semantics/Poseidon3Trace.lean",
    "tools/gnark/lean/ShielddGnarkFormal/Deployed/Templates/Semantics/Poseidon3ScalarBase.lean",
)
GENERATED_SHARED_EXACT = (
    "tools/gnark/lean/ShielddGnarkFormal/ConservationNetBalanceCommitment2Bridge.lean",
    "tools/gnark/lean/ShielddGnarkFormal/Deployed/Templates/Semantics/TransferPoseidon2Trace.lean",
)
GENERATED_SHARED_POSEIDON = (
    ("CertifiedDecafNetBalancePoseidon_d2168a8e35fdPoseidon", 230),
    ("CertifiedDecafNetBalancePoseidon_efd414b95488Poseidon", 230),
    ("CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidon", 390),
    ("CertifiedGadgetAssetRegistryLeafHash_9611146d6691Poseidon", 390),
    ("CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidon", 350),
    ("CertifiedGadgetAssetRegistryRingHash_fca220e542b4Poseidon", 390),
    ("CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidon", 470),
    ("CertifiedGadgetNoteCommitment_252c34d237e9Poseidon", 390),
    ("CertifiedQuadPathNodePoseidon", 350),
)
POSEIDON_SUPPORT_FILES = (
    "Base.lean",
    "FullTail.lean",
    *(f"Round{round_:02d}.lean" for round_ in range(1, 35)),
    "SegSound.lean",
    "SemanticBridge.lean",
    "SpecLink.lean",
)


def require_exact_fields(
    value: object, expected: set[str] | tuple[str, ...], label: str
) -> dict:
    if not isinstance(value, dict):
        raise ValueError(f"{label}: expected an object")
    expected_set = set(expected)
    actual = set(value)
    if actual != expected_set:
        raise ValueError(
            f"{label}: fields drifted; "
            f"missing={sorted(expected_set - actual)}, "
            f"extra={sorted(actual - expected_set)}"
        )
    return value


def require_positive_int(value: object, label: str) -> int:
    if not isinstance(value, int) or isinstance(value, bool) or value <= 0:
        raise ValueError(f"{label}: expected a positive integer")
    return value


def require_sha256(value: object, label: str) -> str:
    if (
        not isinstance(value, str)
        or len(value) != 64
        or any(char not in "0123456789abcdef" for char in value)
    ):
        raise ValueError(f"{label}: expected a lowercase SHA-256 digest")
    return value


def load_catalog(catalog_path: Path = CATALOG) -> dict:
    catalog = formal_json.read_json_object(
        catalog_path,
        expected_schema="shieldd.gnark.fv_profiles.v2",
        expected_fields=CATALOG_FIELDS,
        canonical="pretty",
    )
    require_exact_fields(catalog, CATALOG_FIELDS, "FV profile catalog")
    if catalog["schema"] != "shieldd.gnark.fv_profiles.v2":
        raise ValueError(f"unsupported FV profile catalog: {catalog_path}")
    profiles = catalog["profiles"]
    if not isinstance(profiles, list):
        raise ValueError(f"FV profile catalog has no profiles: {catalog_path}")
    expected_labels = tuple(spec[0] for spec in CERTIFIED_PROFILE_SPECS)
    actual_labels: list[str] = []
    if len(profiles) != len(CERTIFIED_PROFILE_SPECS):
        raise ValueError(
            "FV profile catalog does not contain the exact certified roster"
        )
    for position, (profile, spec) in enumerate(
        zip(profiles, CERTIFIED_PROFILE_SPECS, strict=True)
    ):
        item = require_exact_fields(
            profile, PROFILE_FIELDS, f"FV profile {position}"
        )
        (
            label,
            kind,
            n_in,
            n_out,
            witness_version,
            theorem_root,
            witnesses,
        ) = spec
        actual_labels.append(item.get("label"))
        expected_scalars = {
            "label": label,
            "kind": kind,
            "n_in": n_in,
            "n_out": n_out,
            "witness_format_version": witness_version,
            "artifact_dir": f"artifacts/{label}",
            "manifest": f"artifacts/{label}/{label}-manifest.json",
            "status": "certified",
            "theorem_root": theorem_root,
            "coverage_report": (
                "crates/core/component/shielded-pool/formal/"
                f"{label}-constraint-coverage-report.json"
            ),
        }
        for name, expected in expected_scalars.items():
            if item.get(name) != expected:
                raise ValueError(
                    f"FV profile {label}.{name} drifted: "
                    f"{item.get(name)!r} != {expected!r}"
                )
        raw_witnesses = item["proof_witnesses"]
        if not isinstance(raw_witnesses, list) or len(raw_witnesses) != len(
            witnesses
        ):
            raise ValueError(f"FV profile {label}: proof witness roster drifted")
        for witness_index, (raw_witness, expected_witness) in enumerate(
            zip(raw_witnesses, witnesses, strict=True)
        ):
            witness = require_exact_fields(
                raw_witness,
                PROOF_WITNESS_FIELDS,
                f"FV profile {label} witness {witness_index}",
            )
            expected_witness_object = {
                "case": expected_witness[0],
                "path": expected_witness[1],
            }
            if witness != expected_witness_object:
                raise ValueError(
                    f"FV profile {label} witness {witness_index} drifted"
                )
    if tuple(actual_labels) != expected_labels:
        raise ValueError("FV profile catalog order or labels drifted")
    return catalog


def certified_ir_paths(catalog_path: Path = CATALOG) -> tuple[Path, ...]:
    catalog = load_catalog(catalog_path)
    labels = [profile["label"] for profile in catalog["profiles"]]
    paths = tuple(IR_ROOT / f"{label}-deployed-slice-ir.json" for label in labels)
    missing = [
        str(path)
        for path in paths
        if not path.is_file() or path.is_symlink()
    ]
    if missing:
        raise ValueError(
            "certified FV profiles have no canonical deployed slice IR:\n"
            + "\n".join(missing)
        )
    return paths


def load_registry(path: Path = REGISTRY) -> dict:
    registry = formal_json.read_template_registry(path)
    require_exact_fields(registry, REGISTRY_FIELDS, "proof-template registry")
    if registry["schema"] != "shieldd.gnark.proof_template_registry.v1":
        raise ValueError(f"unsupported proof-template registry: {path}")
    if registry["field_modulus"] != FIELD_MODULUS:
        raise ValueError("proof-template registry field modulus drifted")
    templates = registry["templates"]
    if not isinstance(templates, list) or not templates:
        raise ValueError("proof-template registry has no templates")
    previous_id: str | None = None
    for position, raw_item in enumerate(templates):
        item = require_exact_fields(
            raw_item,
            REGISTRY_TEMPLATE_FIELDS,
            f"proof-template registry item {position}",
        )
        proof_template_id = item["proof_template_id"]
        if not isinstance(proof_template_id, str):
            raise ValueError(
                f"proof-template registry item {position}: invalid template ID"
            )
        op, separator, digest = proof_template_id.rpartition("@")
        if (
            separator != "@"
            or not op
            or item["op"] != op
            or require_sha256(digest, f"{proof_template_id} digest") != digest
        ):
            raise ValueError(
                f"proof-template registry item {position}: malformed template ID"
            )
        if previous_id is not None and proof_template_id <= previous_id:
            raise ValueError(
                "proof-template registry IDs must be unique and sorted"
            )
        previous_id = proof_template_id
        require_sha256(
            item["coarse_shape_sha256_hex"],
            f"{proof_template_id}.coarse_shape_sha256_hex",
        )
        require_positive_int(
            item["local_wire_count"], f"{proof_template_id}.local_wire_count"
        )
        require_positive_int(item["row_count"], f"{proof_template_id}.row_count")
        if item["canonical_relation_sha256_hex"] != digest:
            raise ValueError(
                f"{proof_template_id}: canonical relation digest drifted"
            )
        expected_file = f"proof-template-relations/{digest}.sr1cs.gz"
        if item["canonical_relation_file"] != expected_file:
            raise ValueError(
                f"{proof_template_id}: canonical relation path drifted"
            )
    return registry


def load_ir(path: Path) -> dict:
    ir = formal_json.read_deployed_ir(path)
    validate_ir(ir)
    circuit = ir["circuit"]
    if path.name != f"{circuit}-deployed-slice-ir.json":
        raise ValueError(f"{path}: deployed slice IR filename/circuit drifted")
    return ir


RepoFileAudit = RepoPathAudit


def camel(text: str) -> str:
    result: list[str] = []
    upper = True
    for char in text:
        if char in "._-":
            upper = True
        elif upper:
            result.append(char.upper())
            upper = False
        else:
            result.append(char)
    return "".join(result)


def template_name(proof_template_id: str) -> str:
    op, digest = proof_template_id.split("@", 1)
    return f"T{camel(op)}_{digest}"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def aggregate(files: list[dict[str, str]]) -> str:
    digest = hashlib.sha256()
    for item in files:
        digest.update(item["path"].encode())
        digest.update(b"\0")
        digest.update(item["sha256_hex"].encode())
        digest.update(b"\0")
    return digest.hexdigest()


def owned_files(
    template: dict, file_audit: RepoFileAudit | None = None
) -> list[dict[str, str]]:
    if file_audit is None:
        file_audit = RepoFileAudit()
    proof_template_id = template["proof_template_id"]
    name = template_name(proof_template_id)
    relation = REGISTRY.parent / template["canonical_relation_file"]
    generated = FORMAL / "Generated" / f"{name}.lean"
    required = (relation, generated)
    candidates = [
        *required,
        *sorted((FORMAL / "Relations").glob(f"{name}*.lean")),
        *sorted((FORMAL / "Semantics").glob(f"{name}*.lean")),
    ]
    for path in sorted(BENCH.glob("NoteReshapeTemplate*.lean")):
        file_audit.inspect(path, label="proof-template bench candidate")
        if f".{name}" in path.read_text(encoding="utf-8"):
            candidates.append(path)
    files: list[dict[str, str]] = []
    included: set[str] = set()
    for path in candidates:
        relative = file_audit.inspect(
            path, label=f"owned file for {proof_template_id}"
        )
        if relative in included:
            continue
        included.add(relative)
        files.append({"path": relative, "sha256_hex": sha256(path)})
    files.sort(key=lambda item: item["path"])
    required_relatives = {
        file_audit.inspect(path, label=f"required file for {proof_template_id}")
        for path in required
    }
    if not required_relatives.issubset(included):
        raise ValueError(
            f"proof template has missing required files: {proof_template_id}"
        )
    return files


def render(ir_paths: tuple[Path, ...] | None = None) -> dict:
    if ir_paths is None:
        ir_paths = certified_ir_paths()
    if not ir_paths:
        raise ValueError("proof-template ownership requires at least one active IR")
    registry = load_registry()
    registry_by_id = {
        item["proof_template_id"]: item for item in registry["templates"]
    }
    if len(registry_by_id) != len(registry["templates"]):
        raise ValueError("proof-template registry contains duplicate template IDs")
    consumers: dict[str, set[str]] = {}
    family_templates: dict[str, set[str]] = {}
    for path in ir_paths:
        ir = load_ir(path)
        circuit = ir["circuit"]
        if circuit in family_templates:
            raise ValueError(f"duplicate active IR circuit: {circuit}")
        keys = {
            segment["proof_template_id"]
            for segment in ir["segments"]
            if segment["constraint_count"] > 0
        }
        missing = sorted(keys - registry_by_id.keys())
        if missing:
            raise ValueError(
                f"active IR {circuit} uses unregistered templates:\n"
                + "\n".join(missing)
            )
        family_templates[circuit] = keys
        for key in keys:
            registry_item = registry_by_id[key]
            segments = [
                segment
                for segment in ir["segments"]
                if segment["constraint_count"] > 0
                and segment["proof_template_id"] == key
            ]
            for segment in segments:
                witness = segment["template_equivalence_witness"]
                if (
                    registry_item["op"] != segment["op"]
                    or registry_item["row_count"]
                    != segment["constraint_count"]
                    or registry_item["local_wire_count"]
                    != len(
                        witness["canonical_local_to_deployed_wire_seating"]
                    )
                ):
                    raise ValueError(
                        f"active IR {circuit} segment {segment['index']} "
                        "does not match the canonical registry geometry"
                    )
            consumers.setdefault(key, set()).add(circuit)

    templates = []
    template_digests: dict[str, str] = {}
    file_audit = RepoFileAudit()
    owned_paths: set[str] = set()
    for key in sorted(consumers):
        item = registry_by_id[key]
        files = owned_files(item, file_audit)
        owned_paths.update(file["path"] for file in files)
        digest = aggregate(files)
        template_digests[key] = digest
        templates.append(
            {
                "proof_template_id": key,
                "consumers": sorted(consumers.get(key, set())),
                "files": files,
                "template_files_sha256_hex": digest,
            }
        )

    families = []
    for circuit, keys in sorted(family_templates.items()):
        digest = hashlib.sha256()
        for key in sorted(keys):
            digest.update(key.encode())
            digest.update(b"\0")
            digest.update(template_digests[key].encode())
            digest.update(b"\0")
        families.append(
            {
                "circuit": circuit,
                "proof_template_ids": sorted(keys),
                "semantic_closure_sha256_hex": digest.hexdigest(),
            }
        )

    shared_candidates = [*SHARED_SEMANTICS, *GENERATED_SHARED_EXACT]
    shared_candidates.extend(
        str(path.relative_to(ROOT))
        for path in sorted(
            (FORMAL / "Semantics").glob("Poseidon3ScalarRound*.lean")
        )
    )
    for stem, row_count in GENERATED_SHARED_POSEIDON:
        shared_candidates.extend(
            (
                "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
                f"{stem}/{filename}"
            )
            for filename in POSEIDON_SUPPORT_FILES
        )
        shared_candidates.append(
            "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
            f"{stem}DeployedBridge.lean"
        )
        shared_candidates.append(
            "tools/gnark/lean/ShielddGnarkFormal/Extracted/Deployed/"
            f"{stem}Rows{row_count}.lean"
        )
    shared = []
    seen_shared: set[str] = set()
    for relative in shared_candidates:
        if relative in owned_paths or relative in seen_shared:
            continue
        path = ROOT / relative
        canonical = file_audit.inspect(path, label="shared semantic file")
        if canonical != relative:
            raise ValueError(
                f"shared semantic path is not canonical: {relative!r}"
            )
        shared.append({"path": canonical, "sha256_hex": sha256(path)})
        seen_shared.add(relative)
    shared.sort(key=lambda item: item["path"])
    shared_paths = [item["path"] for item in shared]
    if len(shared_paths) != len(set(shared_paths)):
        raise ValueError("shared semantic file roster contains duplicate paths")

    return {
        "schema": "shieldd.gnark.proof_template_ownership.v1",
        "registry_schema": registry["schema"],
        "templates": templates,
        "shared_files": shared,
        "families": families,
    }


def encoded(ir_paths: tuple[Path, ...] | None = None) -> str:
    return json.dumps(render(ir_paths), indent=2) + "\n"


def validate_committed_ownership(
    path: Path = DEFAULT_OUT,
    ir_paths: tuple[Path, ...] | None = None,
) -> dict:
    """Recompute every ownership binding and require canonical committed bytes."""

    RepoFileAudit().inspect(path, label="proof-template ownership manifest")
    payload = formal_json.read_json_object(
        path,
        expected_schema="shieldd.gnark.proof_template_ownership.v1",
        expected_fields=(
            "schema",
            "registry_schema",
            "templates",
            "shared_files",
            "families",
        ),
        canonical="pretty",
    )
    expected = encoded(ir_paths)
    actual = path.read_text(encoding="utf-8")
    if actual != expected:
        raise ValueError(
            f"stale or non-canonical proof-template ownership manifest: {path}"
        )
    return payload


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument(
        "--ir",
        type=Path,
        nargs="+",
        help=(
            "explicit active deployed-slice IRs; defaults to the certified "
            "profiles in tools/gnark/fv_profiles.json"
        ),
    )
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    ir_paths = tuple(args.ir) if args.ir else None
    if args.check:
        try:
            validate_committed_ownership(args.out, ir_paths)
        except ValueError as error:
            raise SystemExit(str(error)) from error
        return
    source = encoded(ir_paths)
    if write_if_changed(args.out, source):
        print(f"wrote {args.out}")


if __name__ == "__main__":
    main()
