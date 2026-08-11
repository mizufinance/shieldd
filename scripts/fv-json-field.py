#!/usr/bin/env python3
"""Print one scalar top-level field from strict JSON."""

from __future__ import annotations

import argparse
from pathlib import Path
from typing import Any

from fv_strict_json import StrictJsonError, load as load_strict_json


def scalar_field(path: Path, key: str) -> Any:
    try:
        value = load_strict_json(path, f"FV JSON input {path}")
    except StrictJsonError as error:
        raise SystemExit(str(error)) from error
    if not isinstance(value, dict):
        raise SystemExit(f"FV JSON input {path} is not an object")
    if key not in value:
        raise SystemExit(f"FV JSON input {path} has no field {key!r}")
    field = value[key]
    if isinstance(field, bool) or not isinstance(field, (int, str)):
        raise SystemExit(
            f"FV JSON input {path} field {key!r} is not an integer or string"
        )
    return field


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("path", type=Path)
    parser.add_argument("key")
    args = parser.parse_args()
    print(scalar_field(args.path, args.key))


if __name__ == "__main__":
    main()
