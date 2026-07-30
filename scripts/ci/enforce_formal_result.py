#!/usr/bin/env python3
"""Fail closed unless every selected formal-verification lane succeeded."""

from __future__ import annotations

import os
import sys


def value(name: str) -> str:
    current = os.environ.get(name)
    if current is None:
        raise ValueError(f"missing workflow result input: {name}")
    return current


def require_selection(
    required: list[tuple[str, str]], selected: str, label: str, result: str
) -> None:
    if selected == "true":
        required.append((label, result))
    elif selected != "false":
        raise ValueError(f"invalid impact selection for {label}: {selected}")


def require_not_selected(selected: str, label: str) -> None:
    if selected != "false":
        raise ValueError(
            f"SnarkPack skip unexpectedly selected {label}: {selected}"
        )


def enforce() -> None:
    applicability = value("APPLICABILITY")
    if applicability != "success":
        raise ValueError(
            f"applicability classification failed: {applicability}"
        )

    event_name = value("EVENT_NAME")
    required: list[tuple[str, str]] = []

    snarkpack_status = value("SNARKPACK_STATUS")
    snarkpack_tier = value("SNARKPACK_TIER")
    snarkpack_explanation = value("SNARKPACK_EXPLANATION")
    selections = {
        "snarkpack-static": value("STATIC_RUN"),
        "snarkpack-extract": value("EXTRACT_RUN"),
        "snarkpack-lean": value("SNARKPACK_LEAN_RUN"),
        "snarkpack-fstar": value("FSTAR_RUN"),
        "snarkpack-parity": value("PARITY_RUN"),
        "snarkpack-rust-reference": value("RUST_REFERENCE_RUN"),
        "snarkpack-fuzz": value("FUZZ_RUN"),
        "snarkpack-dos": value("DOS_RUN"),
    }
    results = {
        "snarkpack-static": value("STATIC"),
        "snarkpack-extract": value("EXTRACT"),
        "snarkpack-lean": value("SNARKPACK_LEAN"),
        "snarkpack-fstar": value("FSTAR"),
        "snarkpack-parity": value("PARITY"),
        "snarkpack-rust-reference": value("RUST_REFERENCE"),
        "snarkpack-slow": value("SLOW"),
        "snarkpack-fuzz": value("FUZZ"),
        "snarkpack-dos": value("DOS"),
        "snarkpack-publication": value("PUBLICATION"),
    }

    if snarkpack_status == "block":
        raise ValueError(
            f"snarkpack applicability blocked: {snarkpack_explanation}"
        )
    if snarkpack_status == "skip":
        for label, selected in selections.items():
            require_not_selected(selected, label)
        if results["snarkpack-publication"] != "skipped":
            raise ValueError(
                "SnarkPack skip unexpectedly ran publication closure: "
                f"{results['snarkpack-publication']}"
            )
        print(f"snarkpack explained skip: {snarkpack_explanation}")
    elif snarkpack_status == "run":
        if selections["snarkpack-static"] != "true":
            raise ValueError("SnarkPack run selected no static integrity gate")
        if snarkpack_tier not in {
            "static",
            "extract-changed",
            "extract-all",
            "full",
        }:
            raise ValueError(f"unsupported snarkpack tier: {snarkpack_tier}")
        for label, selected in selections.items():
            require_selection(required, selected, label, results[label])
        require_selection(
            required,
            selections["snarkpack-rust-reference"],
            "snarkpack-slow",
            results["snarkpack-slow"],
        )
        required.append(
            ("snarkpack-publication", results["snarkpack-publication"])
        )
    else:
        raise ValueError(
            f"invalid SnarkPack applicability status: {snarkpack_status}"
        )

    soundness_status = value("SOUNDNESS_STATUS")
    soundness_tier = value("SOUNDNESS_TIER")
    soundness_explanation = value("SOUNDNESS_EXPLANATION")
    if soundness_status == "block":
        raise ValueError(
            f"soundness applicability blocked: {soundness_explanation}"
        )
    if soundness_status == "skip":
        print(f"soundness explained skip: {soundness_explanation}")
    else:
        if soundness_tier not in {"stamps", "full"}:
            raise ValueError(f"unsupported soundness tier: {soundness_tier}")
        required.extend(
            [
                ("soundness-gate", value("GATE")),
                ("soundness-seam-and-pin", value("SEAM")),
                ("soundness-vk-derivation", value("VK")),
                ("soundness-lean-circuit-fv", value("LEAN")),
            ]
        )
        if event_name in {"pull_request", "merge_group"}:
            required.append(("soundness-alloy", value("ALLOY")))

    failures = [
        f"{label}={result}" for label, result in required if result != "success"
    ]
    if failures:
        raise ValueError(f"required job failed: {', '.join(failures)}")

    print(
        "formal passed "
        f"(snarkpack={snarkpack_tier} soundness={soundness_tier})"
    )


def main() -> int:
    try:
        enforce()
    except ValueError as error:
        print(error, file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
