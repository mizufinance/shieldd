#!/usr/bin/env python3
"""Generate one kernel-checked modular-power fact per Lean module."""

from __future__ import annotations

import argparse
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / "ShielddGnarkFormal" / "PrimeCertificates" / "Generated"
MODULE_PREFIX = "ShielddGnarkFormal.PrimeCertificates.Generated"

CERTIFICATES = (
    (2, 1, ()),
    (3, 2, (2,)),
    (5, 2, (2,)),
    (7, 3, (2, 3)),
    (13, 2, (2, 3)),
    (29, 2, (2, 7)),
    (41, 6, (2, 5)),
    (83, 2, (2, 41)),
    (167, 5, (2, 83)),
    (499, 7, (2, 3, 83)),
    (3511, 7, (2, 3, 5, 13)),
    (126397, 5, (2, 3, 3511)),
    (1832756501, 2, (2, 5, 29, 126397)),
    (49484425527001, 14, (2, 3, 5, 1832756501)),
    (958612291309063373, 2, (2, 29, 167, 49484425527001)),
    (9586122913090633729, 11, (2, 3, 7, 13, 499)),
    (
        8444461749428370424248824938781546531375899335154063827935233455917409239041,
        22,
        (2, 3, 5, 7, 13, 499, 958612291309063373, 9586122913090633729),
    ),
)


def facts() -> list[tuple[str, int, int, int, bool]]:
    result: list[tuple[str, int, int, int, bool]] = []
    for prime, witness, divisors in CERTIFICATES:
        result.append((f"P{prime}Full", prime, witness, prime - 1, False))
        result.extend(
            (f"P{prime}Q{divisor}", prime, witness, (prime - 1) // divisor, True)
            for divisor in divisors
        )
    return result


def render(name: str, prime: int, witness: int, exponent: int, non_one: bool, previous: str | None) -> str:
    imported = (
        "ShielddGnarkFormal.PrimeCertificateTactic"
        if previous is None
        else f"{MODULE_PREFIX}.{previous}"
    )
    relation = "≠" if non_one else "="
    return f"""import {imported}

namespace Shieldd.GnarkFormal.PrimeCertificates.Generated

theorem {name} :
    Nat.mod (Nat.pow (nat_lit {witness}) (nat_lit {exponent})) (nat_lit {prime})
      {relation} nat_lit 1 := by
  prove_pow_mod

end Shieldd.GnarkFormal.PrimeCertificates.Generated
"""


def expected_files() -> dict[Path, str]:
    rendered: dict[Path, str] = {}
    previous: str | None = None
    for name, prime, witness, exponent, non_one in facts():
        rendered[OUTPUT / f"{name}.lean"] = render(
            name, prime, witness, exponent, non_one, previous
        )
        previous = name
    rendered[OUTPUT / "Facts.lean"] = (
        f"import {MODULE_PREFIX}.{previous}\n"
        if previous is not None
        else "import ShielddGnarkFormal.PrimeCertificateTactic\n"
    )
    return rendered


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    expected = expected_files()
    stale = set(OUTPUT.glob("*.lean")) - set(expected)
    changed = [path for path, content in expected.items() if not path.exists() or path.read_text() != content]
    if args.check:
        if stale or changed:
            for path in sorted(stale | set(changed)):
                print(path.relative_to(ROOT))
            return 1
        return 0
    OUTPUT.mkdir(parents=True, exist_ok=True)
    for path in stale:
        path.unlink()
    for path, content in expected.items():
        if not path.exists() or path.read_text() != content:
            path.write_text(content)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
