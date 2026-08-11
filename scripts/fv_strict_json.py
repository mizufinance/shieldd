"""Unambiguous JSON decoding for formal-verification tooling."""

from __future__ import annotations

import json
import math
from pathlib import Path
from typing import Any


class StrictJsonError(ValueError):
    """JSON input has no unique finite interpretation."""


def loads(source: str | bytes, label: str) -> Any:
    """Decode UTF-8 JSON while rejecting duplicate keys and non-finite numbers."""

    if isinstance(source, bytes):
        try:
            text = source.decode("utf-8", errors="strict")
        except UnicodeError as error:
            raise StrictJsonError(f"{label}: invalid UTF-8 JSON") from error
    elif isinstance(source, str):
        text = source
    else:
        raise TypeError(f"{label}: JSON source must be str or bytes")

    def unique_object(pairs: list[tuple[str, Any]]) -> dict[str, Any]:
        result: dict[str, Any] = {}
        for key, value in pairs:
            if key in result:
                raise StrictJsonError(
                    f"{label}: duplicate JSON key {key!r}"
                )
            result[key] = value
        return result

    def finite_number(token: str) -> Any:
        raise StrictJsonError(
            f"{label}: non-finite JSON number {token!r}"
        )

    def finite_float(token: str) -> float:
        value = float(token)
        if not math.isfinite(value):
            raise StrictJsonError(
                f"{label}: non-finite JSON number {token!r}"
            )
        return value

    try:
        value = json.loads(
            text,
            object_pairs_hook=unique_object,
            parse_constant=finite_number,
            parse_float=finite_float,
        )
    except json.JSONDecodeError as error:
        raise StrictJsonError(f"{label}: invalid JSON: {error}") from error

    def reject_surrogates(item: Any) -> None:
        if isinstance(item, str):
            if any(0xD800 <= ord(character) <= 0xDFFF for character in item):
                raise StrictJsonError(
                    f"{label}: JSON string contains an unpaired Unicode surrogate"
                )
            return
        if isinstance(item, list):
            for element in item:
                reject_surrogates(element)
            return
        if isinstance(item, dict):
            for key, element in item.items():
                reject_surrogates(key)
                reject_surrogates(element)

    reject_surrogates(value)
    return value


def load(path: Path, label: str) -> Any:
    """Read and strictly decode one JSON file."""

    try:
        source = path.read_bytes()
    except OSError as error:
        raise StrictJsonError(f"{label}: cannot read {path}: {error}") from error
    return loads(source, label)
