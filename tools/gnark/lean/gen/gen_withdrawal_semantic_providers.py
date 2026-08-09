#!/usr/bin/env python3
"""Generate the exact semantic providers needed by Withdrawal refinement."""

from __future__ import annotations

import argparse
import json
from pathlib import Path

import formal_json
import gen_certified_conditional_semantics as conditional
import gen_certified_imt_gap_semantics as registry_gap
import gen_certified_statement_hash_semantics as statement_hash
import gen_note_reshape_direct_representatives as direct
import gen_note_reshape_template_semantics as normalized
from write_if_changed import write_if_changed


DIRECT_KEYS = frozenset(
    {
        "assert.eq@"
        "8d8c35e681ce1b5e96aa42ceee0013036302fc4e1b1594a361d481be589b6d6c",
        "assert.eq@"
        "f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b",
    }
)
CONDITIONAL_KEYS = frozenset(
    {
        "assert.eq_if@"
        "8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d",
    }
)
REGISTRY_GAP_KEY = (
    "gadget.asset_registry_gap@"
    "591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16"
)
SYNTHETIC_NULLIFIER_KEY = (
    "gadget.synthetic_dummy_nullifier@"
    "a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb"
)
STATEMENT_KEYS = frozenset(
    {
        "statement.hash@"
        "8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00",
        "statement.hash@"
        "6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193",
        "statement.hash@"
        "0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969",
    }
)
TARGET_KEYS = frozenset(
    {
        *DIRECT_KEYS,
        *CONDITIONAL_KEYS,
        REGISTRY_GAP_KEY,
        SYNTHETIC_NULLIFIER_KEY,
        *STATEMENT_KEYS,
    }
)


def _merge(
    outputs: dict[Path, str],
    rendered: dict[Path, str],
    owner: str,
) -> None:
    for path, source in rendered.items():
        previous = outputs.get(path)
        if previous is not None and previous != source:
            raise ValueError(f"{owner}: conflicting generated output {path}")
        outputs[path] = source


def _direct_outputs() -> dict[Path, str]:
    inventory = {
        key: (rows, wires)
        for key, rows, wires in direct.templates()
    }
    if not DIRECT_KEYS <= inventory.keys():
        raise ValueError(
            "Withdrawal direct providers are absent from the certified inventory"
        )
    outputs: dict[Path, str] = {}
    for key in sorted(DIRECT_KEYS):
        rows, wires = inventory[key]
        name = direct.default_template_name(key)
        outputs[direct.OUT / f"{name}.lean"] = direct.render(
            key, rows, wires, name
        )
        outputs[direct.BENCH / f"NoteReshapeTemplate{name}Import.lean"] = (
            "import "
            f"ShielddGnarkFormal.Deployed.Templates.Semantics.{name}\n"
        )
    return outputs


def _conditional_outputs() -> dict[Path, str]:
    inventory = {
        template.key: template for template in conditional.templates()
    }
    if not CONDITIONAL_KEYS <= inventory.keys():
        raise ValueError(
            "Withdrawal conditional providers are absent from the "
            "certified inventory"
        )
    return {
        conditional.OUT / f"{inventory[key].name}.lean":
            conditional.render(inventory[key])
        for key in sorted(CONDITIONAL_KEYS)
    }


def _statement_outputs() -> dict[Path, str]:
    inventory = formal_json.read_template_inventory(
        statement_hash.INVENTORY
    )
    available = {
        template["template_key"]
        for template in inventory["templates"]
    }
    if not STATEMENT_KEYS <= available:
        raise ValueError(
            "Withdrawal statement providers are absent from the "
            "certified inventory"
        )
    families = tuple(
        family
        for family in statement_hash.FAMILIES
        if family.key in STATEMENT_KEYS
    )
    if {family.key for family in families} != STATEMENT_KEYS:
        raise ValueError("Withdrawal statement provider roster is incomplete")

    outputs: dict[Path, str] = {}
    for family in families:
        _merge(
            outputs,
            statement_hash._provider_files(
                statement_hash.recover_provider(family)
            ),
            family.key,
        )
    statement_hash._validate_outputs(outputs, active_families=families)
    return outputs


def generated_files() -> dict[Path, str]:
    outputs: dict[Path, str] = {}
    _merge(outputs, _direct_outputs(), "direct equalities")
    _merge(outputs, _conditional_outputs(), "conditional equality")
    _merge(
        outputs,
        registry_gap.generated_files(),
        REGISTRY_GAP_KEY,
    )
    _merge(
        outputs,
        normalized.render_synthetic_dummy_nullifier_lane_shards(
            SYNTHETIC_NULLIFIER_KEY
        ),
        SYNTHETIC_NULLIFIER_KEY,
    )
    _merge(outputs, _statement_outputs(), "statement hashes")

    expected_mains = {
        normalized.OUT / f"{normalized.template_name(key)}.lean"
        for key in TARGET_KEYS
    }
    actual_mains = {
        path
        for path in outputs
        if path.parent == normalized.OUT
        and path.stem in {item.stem for item in expected_mains}
    }
    if actual_mains != expected_mains:
        raise ValueError(
            "Withdrawal semantic provider mains drifted: "
            f"missing={sorted(expected_mains - actual_mains)} "
            f"extra={sorted(actual_mains - expected_mains)}"
        )

    combined = "\n".join(outputs.values())
    for forbidden in (
        "axiom ",
        "sorry",
        "native_decide",
        "spec := relation",
        "fun _ h => h",
        "representativeRho",
        "representativeSeating",
    ):
        if forbidden in combined:
            raise ValueError(
                f"Withdrawal semantic providers contain {forbidden!r}"
            )
    return outputs


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    outputs = generated_files()
    stale = [
        path
        for path, source in outputs.items()
        if not path.is_file() or path.read_text() != source
    ]
    if args.check:
        if stale:
            raise SystemExit(
                "stale Withdrawal semantic providers:\n"
                + "\n".join(map(str, stale))
            )
        return

    changed = 0
    for path, source in outputs.items():
        changed += int(write_if_changed(path, source))
    print(
        "wrote Withdrawal semantic provider artifacts "
        f"({changed} changed, {len(outputs)} owned)"
    )


if __name__ == "__main__":
    main()
