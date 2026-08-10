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


def require_lane(
    required: list[tuple[str, str]], selected: str, label: str, result: str
) -> None:
    if selected == "true":
        required.append((label, result))
    elif selected == "false":
        if result != "skipped":
            raise ValueError(
                f"unselected {label} lane returned {result}; expected skipped"
            )
    else:
        raise ValueError(f"invalid impact selection for {label}: {selected}")


def require_cached_lane(
    required: list[tuple[str, str]],
    selected: str,
    label: str,
    result: str,
    cache_hit: str,
    *,
    force_run: bool = False,
) -> None:
    if cache_hit not in {"", "false", "true"}:
        raise ValueError(f"invalid exact-cache result for {label}: {cache_hit}")
    if selected == "false":
        if cache_hit == "true":
            raise ValueError(f"unselected {label} lane reported an exact cache hit")
        require_lane(required, selected, label, result)
        return
    if selected != "true":
        raise ValueError(f"invalid impact selection for {label}: {selected}")
    if force_run and cache_hit == "true":
        raise ValueError(f"forced {label} lane was incorrectly served from cache")
    if cache_hit == "true" and not force_run:
        if result != "skipped":
            raise ValueError(
                f"cached {label} lane returned {result}; expected skipped"
            )
        return
    required.append((label, result))


def require_not_selected(selected: str, label: str) -> None:
    if selected != "false":
        raise ValueError(
            f"SnarkPack skip unexpectedly selected {label}: {selected}"
        )


def any_selected(selections: dict[str, str]) -> str:
    for label, selected in selections.items():
        if selected not in {"true", "false"}:
            raise ValueError(f"invalid impact selection for {label}: {selected}")
    return "true" if "true" in selections.values() else "false"


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
        "snarkpack-fstar": value("FSTAR_RUN"),
        "snarkpack-parity": value("PARITY_RUN"),
    }
    lean_selected = value("SNARKPACK_LEAN_RUN")
    runtime_selections = {
        "snarkpack-rust-reference": value("RUST_REFERENCE_RUN"),
        "snarkpack-fuzz": value("FUZZ_RUN"),
        "snarkpack-dos": value("DOS_RUN"),
    }
    runtime_selected = any_selected(runtime_selections)
    fstar_force_all = value("FSTAR_FORCE_ALL")
    if fstar_force_all not in {"true", "false"}:
        raise ValueError(
            f"invalid force-all selection for snarkpack-fstar: {fstar_force_all}"
        )
    cache_hits = {
        "snarkpack-extract": value("EXTRACT_CACHE_HIT"),
        "snarkpack-fstar": value("FSTAR_CACHE_HIT"),
        "snarkpack-parity": value("PARITY_CACHE_HIT"),
        "snarkpack-runtime": value("RUNTIME_CACHE_HIT"),
    }
    results = {
        "snarkpack-static": value("STATIC"),
        "snarkpack-extract": value("EXTRACT"),
        "snarkpack-fstar": value("FSTAR"),
        "snarkpack-parity": value("PARITY"),
        "snarkpack-runtime": value("RUNTIME"),
        "snarkpack-publication": value("PUBLICATION"),
    }

    if snarkpack_status == "block":
        raise ValueError(
            f"snarkpack applicability blocked: {snarkpack_explanation}"
        )
    if snarkpack_status == "skip":
        selected = selections["snarkpack-static"]
        require_not_selected(selected, "snarkpack-static")
        require_lane(
            required,
            selected,
            "snarkpack-static",
            results["snarkpack-static"],
        )
        selected = selections["snarkpack-extract"]
        require_not_selected(selected, "snarkpack-extract")
        require_cached_lane(
            required,
            selected,
            "snarkpack-extract",
            results["snarkpack-extract"],
            cache_hits["snarkpack-extract"],
        )
        for label in ("snarkpack-fstar", "snarkpack-parity"):
            selected = selections[label]
            require_not_selected(selected, label)
            require_cached_lane(
                required,
                selected,
                label,
                results[label],
                cache_hits[label],
            )
        require_not_selected(lean_selected, "snarkpack-lean-cache")
        for label, selected in runtime_selections.items():
            require_not_selected(selected, label)
        require_cached_lane(
            required,
            runtime_selected,
            "snarkpack-runtime",
            results["snarkpack-runtime"],
            cache_hits["snarkpack-runtime"],
        )
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
        require_lane(
            required,
            selections["snarkpack-static"],
            "snarkpack-static",
            results["snarkpack-static"],
        )
        require_cached_lane(
            required,
            selections["snarkpack-extract"],
            "snarkpack-extract",
            results["snarkpack-extract"],
            cache_hits["snarkpack-extract"],
        )
        require_cached_lane(
            required,
            selections["snarkpack-fstar"],
            "snarkpack-fstar",
            results["snarkpack-fstar"],
            cache_hits["snarkpack-fstar"],
            force_run=fstar_force_all == "true",
        )
        require_cached_lane(
            required,
            selections["snarkpack-parity"],
            "snarkpack-parity",
            results["snarkpack-parity"],
            cache_hits["snarkpack-parity"],
        )
        if lean_selected not in {"true", "false"}:
            raise ValueError(
                "invalid impact selection for snarkpack-lean-cache: "
                f"{lean_selected}"
            )
        require_cached_lane(
            required,
            runtime_selected,
            "snarkpack-runtime",
            results["snarkpack-runtime"],
            cache_hits["snarkpack-runtime"],
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
    soundness_results = {
        "soundness-gate": value("GATE"),
        "soundness-seam-and-pin": value("SEAM"),
        "soundness-key-coherence": value("KEY_COHERENCE"),
        "soundness-alloy": value("ALLOY"),
        "soundness-lean-circuit-fv": value("LEAN"),
    }
    if soundness_status == "block":
        raise ValueError(
            f"soundness applicability blocked: {soundness_explanation}"
        )
    if soundness_status == "skip":
        for label, result in soundness_results.items():
            if result != "skipped":
                raise ValueError(
                    f"soundness skip unexpectedly ran {label}: {result}"
                )
        print(f"soundness explained skip: {soundness_explanation}")
    elif soundness_status == "run":
        if soundness_tier not in {"stamps", "typed", "full"}:
            raise ValueError(f"unsupported soundness tier: {soundness_tier}")
        required.append(
            (
                "soundness-seam-and-pin",
                soundness_results["soundness-seam-and-pin"],
            )
        )
        gate = soundness_results["soundness-gate"]
        key_coherence = soundness_results["soundness-key-coherence"]
        lean = soundness_results["soundness-lean-circuit-fv"]
        if soundness_tier == "stamps":
            for label, result in (
                ("soundness-gate", gate),
                ("soundness-key-coherence", key_coherence),
                ("soundness-lean-circuit-fv", lean),
            ):
                if result != "skipped":
                    raise ValueError(
                        f"stamp-only soundness unexpectedly ran {label}: {result}"
                    )
        elif soundness_tier == "typed":
            if gate != "skipped":
                raise ValueError(
                    f"typed soundness unexpectedly ran exhaustive gate: {gate}"
                )
            required.extend(
                [
                    ("soundness-key-coherence", key_coherence),
                    ("soundness-lean-circuit-fv", lean),
                ]
            )
        else:
            if key_coherence != "skipped":
                raise ValueError(
                    "full soundness tier unexpectedly ran standalone "
                    f"key coherence: {key_coherence}"
                )
            required.extend(
                [
                    ("soundness-gate", gate),
                    ("soundness-lean-circuit-fv", lean),
                ]
            )
        if event_name in {"pull_request", "merge_group"}:
            required.append(
                ("soundness-alloy", soundness_results["soundness-alloy"])
            )
        elif soundness_results["soundness-alloy"] != "skipped":
            raise ValueError(
                "non-candidate soundness run unexpectedly ran Alloy: "
                + soundness_results["soundness-alloy"]
            )
    else:
        raise ValueError(
            f"invalid soundness applicability status: {soundness_status}"
        )

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
