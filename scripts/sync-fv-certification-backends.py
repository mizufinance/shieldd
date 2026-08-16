#!/usr/bin/env python3
"""Synchronize exhaustive certification targets with the reviewed FV roster."""

from __future__ import annotations

import argparse
import json
import sys
from copy import deepcopy
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
REGISTRY = ROOT / "tools/gnark/fv_certification_backends.json"
sys.path.insert(0, str(ROOT / "scripts"))
sys.path.insert(0, str(ROOT / "tools/gnark/lean/gen"))

from fv_certification import (  # noqa: E402
    CERTIFICATION_IDENTITIES,
    backend_identity_errors,
    predicate_consequence_declarations,
)
from fv_strict_json import load as load_strict_json  # noqa: E402
from write_if_changed import write_if_changed  # noqa: E402


PROFILE_ORDER = (
    "note_reshape8x1",
    "note_reshape1x8",
    "transfer",
    "shielded_ics20_withdrawal",
)
PRIME_TARGET = {
    "root_module": "ShielddGnarkFormal.Deployed.PrimeOrderCertificate",
    "declarations": [
        "Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime"
    ],
}
CIRCUIT_FACT_TARGETS = {
    "transfer": (
        "Shieldd.GnarkFormal.Deployed.Contracts.Transfer."
        "transfer_deployed_sound",
        "Shieldd.GnarkFormal.Deployed.Contracts.Transfer."
        "transfer_circuitFacts",
    ),
    "shielded_ics20_withdrawal": (
        "Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal."
        "shielded_ics20_withdrawal_deployed_sound",
        "Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal."
        "shielded_ics20_withdrawal_circuitFacts",
    ),
}


def target(root: str, declarations: tuple[str, ...] | list[str]) -> dict:
    return {"root_module": root, "declarations": list(declarations)}


def deployed_backend(label: str) -> dict:
    identity = CERTIFICATION_IDENTITIES[label]
    circuit_root = (
        "ShielddGnarkFormal.Deployed.Contracts."
        f"{identity.contract_module}.CircuitFacts"
    )
    return {
        "label": label,
        "contract_module": identity.contract_module,
        "theorem_root": identity.theorem_root,
        "generation_backend": identity.generation_backend,
        "benchmark_backend": "certified_statement_hash",
        "evidence_backend": "certified_circuit",
        "lt_seating_artifact": None,
        "build_modules": [
            circuit_root,
            identity.specification_root,
            identity.transaction_security_root,
            identity.security_root,
            identity.theorem_root,
        ],
        "axiom_targets": [
            deepcopy(PRIME_TARGET),
            target(identity.security_root, [identity.security_declaration]),
            target(
                identity.theorem_root,
                [
                    identity.refinement_declaration,
                    identity.final_declaration,
                    identity.transaction_declaration,
                ],
            ),
            target(circuit_root, CIRCUIT_FACT_TARGETS[label]),
        ],
    }


def replace_target(entry: dict, root: str, declarations: tuple[str, ...]) -> None:
    matches = [
        item
        for item in entry["axiom_targets"]
        if item.get("root_module") == root
    ]
    if len(matches) > 1:
        raise ValueError(f"{entry['label']}: duplicate axiom root {root}")
    replacement = target(root, declarations)
    if matches:
        entry["axiom_targets"][
            entry["axiom_targets"].index(matches[0])
        ] = replacement
    else:
        entry["axiom_targets"].append(replacement)


def synchronize_entry(entry: dict) -> dict:
    label = entry["label"]
    identity = CERTIFICATION_IDENTITIES[label]
    modules = entry["build_modules"]
    for module in (
        identity.specification_root,
        identity.transaction_security_root,
        identity.security_root,
        identity.theorem_root,
    ):
        if module not in modules:
            modules.append(module)

    replace_target(
        entry,
        identity.theorem_root,
        (
            identity.refinement_declaration,
            identity.final_declaration,
            identity.transaction_declaration,
        ),
    )
    replace_target(
        entry,
        identity.transaction_security_root,
        identity.transaction_security_declarations,
    )
    replace_target(
        entry,
        identity.specification_root,
        predicate_consequence_declarations()[label],
    )
    return entry


def synchronized_registry() -> dict:
    data = load_strict_json(REGISTRY, "certification backend registry")
    if (
        not isinstance(data, dict)
        or data.get("schema")
        != "shieldd.gnark.fv_certification_backends.v1"
        or not isinstance(data.get("backends"), list)
    ):
        raise ValueError("certification backend registry schema drifted")
    current = {
        entry["label"]: deepcopy(entry)
        for entry in data["backends"]
        if isinstance(entry, dict) and isinstance(entry.get("label"), str)
    }
    if len(current) != len(data["backends"]):
        raise ValueError("certification backend labels are invalid or duplicated")

    entries = []
    for label in PROFILE_ORDER:
        if label not in CERTIFICATION_IDENTITIES:
            raise ValueError(f"missing code-owned certification identity {label}")
        entry = current.get(label)
        if entry is None:
            if label not in CIRCUIT_FACT_TARGETS:
                raise ValueError(f"missing handwritten backend base for {label}")
            entry = deployed_backend(label)
        entry = synchronize_entry(entry)
        errors = backend_identity_errors(entry)
        if errors:
            raise ValueError(f"{label}: " + "; ".join(errors))
        entries.append(entry)
    if set(current) - set(PROFILE_ORDER):
        raise ValueError(
            f"unknown certification backends: {sorted(set(current) - set(PROFILE_ORDER))}"
        )
    return {"schema": data["schema"], "backends": entries}


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    rendered = json.dumps(synchronized_registry(), indent=2) + "\n"
    if args.check:
        if REGISTRY.read_text(encoding="utf-8") != rendered:
            raise SystemExit("stale FV certification backend registry")
        return
    if write_if_changed(REGISTRY, rendered):
        print(f"wrote {REGISTRY}")


if __name__ == "__main__":
    main()
