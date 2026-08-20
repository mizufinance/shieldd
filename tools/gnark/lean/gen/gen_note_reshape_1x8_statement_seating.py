#!/usr/bin/env python3
"""Generate the exact 1x8 statement-hash and public-assertion seating leaves."""

from __future__ import annotations

import argparse
import hashlib
from dataclasses import dataclass
from pathlib import Path

from note_reshape_adapter_model import Deployment
from write_if_changed import write_if_changed


ROOT = Path(__file__).resolve().parents[4]
DEPLOYED = ROOT / "tools/gnark/lean/ShielddGnarkFormal/Deployed"
GENERATOR = "gen_note_reshape_1x8_statement_seating.py"
HASH_ARGS = (
    "family=note_reshape1x8",
    "fields=statement_fields",
    "out=statement_hash",
)
ASSERT_ARGS = (
    "lhs=statement_hash",
    "rhs=claimed_statement_hash",
)
HASH_TEMPLATE = (
    "statement.hash@"
    "7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66"
)
ASSERT_TEMPLATE = (
    "assert.eq@"
    "001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69"
)
FIRST_A_LOCALS = (
    1,
    *range(7, 13),
    *range(18, 24),
    *range(29, 35),
)
FIRST_B_LOCALS = (
    *range(40, 46),
    *range(51, 57),
    *range(62, 68),
)
SECOND_LOCALS = (
    *range(513, 519),
    *range(524, 530),
    535,
    536,
    542,
    548,
    554,
)
THIRD_LOCALS = (1000, 1006, *range(1012, 1016), 1021, 1022, 1028)
HASH_OUTPUT_LOCALS = tuple(range(1433, 1469, 5))
ASSERT_INPUT_LOCALS = tuple(range(1, 9))
ASSERT_OUTPUT_LOCAL = 9
SEATING_SPECS = (
    (
        "NoteReshape1x8StatementSeatingFirstA.lean",
        "the first half of statement block 0",
        FIRST_A_LOCALS,
    ),
    (
        "NoteReshape1x8StatementSeatingFirstB.lean",
        "the second half of statement block 0",
        FIRST_B_LOCALS,
    ),
    (
        "NoteReshape1x8StatementSeatingSecond.lean",
        "statement block 1",
        SECOND_LOCALS,
    ),
    (
        "NoteReshape1x8StatementSeatingThird.lean",
        "statement block 2",
        THIRD_LOCALS,
    ),
)
REVIEWED_CONSUMER_DIGESTS = {
    "NoteReshape1x8StatementFirst.lean":
        "03966a4b295aaa4946ce5259fd3f846588fba6a27d79c300bfd69b3173e1325c",
    "NoteReshape1x8StatementSecond.lean":
        "2c5a9210147181e07971ed9bc5def737393ef15cfd8e7f01adbcaeaa49ffcaf8",
    "NoteReshape1x8StatementThird.lean":
        "b5ee79f8fefbc69ef0b53b4726560189aa5944c41afc246424f2ec58892fe44f",
    "NoteReshape1x8StatementOutput.lean":
        "6f2de2c5d73b07bdb48d411b1255edb0042b46b2ee9547d5a9165eb18a00e47a",
    "NoteReshape1x8TranscriptSeams.lean":
        "6098545a8795fdd2944092143fc93313dfc6252d2064e3a83ffb619c529e58da",
}


@dataclass(frozen=True)
class StatementRoles:
    model: Deployment
    statement: dict
    assertion: dict
    statement_seating: tuple[int, ...]
    assertion_seating: tuple[int, ...]


def discover(
    model: Deployment | None = None,
) -> StatementRoles:
    """Authenticate both exact segments and the complete local-role partition."""

    if model is None:
        model = Deployment.load(
            "note_reshape1x8", "NoteReshape1x8", (1, 8)
        )
    statement = model.segment("statement.hash", HASH_ARGS)
    assertion = model.segment("assert.eq", ASSERT_ARGS)
    model.consecutive((statement, assertion))
    if (
        statement["proof_template_id"],
        assertion["proof_template_id"],
    ) != (HASH_TEMPLATE, ASSERT_TEMPLATE):
        raise ValueError(
            "note_reshape1x8: statement seam templates drifted"
        )
    model.require_binding_role(
        statement, "statement.fields", "input", exact=True, arity=18
    )
    model.require_binding_role(
        statement, "statement.hash", "output", exact=True, arity=1
    )
    model.require_binding_role(
        assertion, "statement.hash", "input", exact=True, arity=1
    )
    model.require_binding_role(
        assertion,
        "claimed.statement_hash",
        "output",
        exact=True,
        arity=1,
    )

    statement_seating = model.seating(statement)
    assertion_seating = model.seating(assertion)
    input_locals = (
        *FIRST_A_LOCALS,
        *FIRST_B_LOCALS,
        *SECOND_LOCALS,
        *THIRD_LOCALS,
    )
    if (
        len(input_locals) != len(set(input_locals))
        or {statement_seating[local] for local in input_locals}
        != set(statement["wire_roles"]["input"])
        or {
            statement_seating[local] for local in HASH_OUTPUT_LOCALS
        }
        != set(statement["wire_roles"]["output"])
        or {
            assertion_seating[local] for local in ASSERT_INPUT_LOCALS
        }
        != set(assertion["wire_roles"]["input"])
        or {
            assertion_seating[ASSERT_OUTPUT_LOCAL]
        }
        != set(assertion["wire_roles"]["output"])
    ):
        raise ValueError(
            "note_reshape1x8: statement seating role partition drifted"
        )
    return StatementRoles(
        model,
        statement,
        assertion,
        statement_seating,
        assertion_seating,
    )


def _theorems(
    segment: int,
    seating: tuple[int, ...],
    locals_: tuple[int, ...],
) -> str:
    return "\n".join(
        f"theorem hw{local} : Seg{segment}.wireSeating {local} = "
        f"{seating[local]} := by decide +kernel"
        for local in locals_
    )


def render_hash_seating(
    roles: StatementRoles,
    description: str,
    locals_: tuple[int, ...],
) -> str:
    segment = roles.statement["index"]
    return f"""import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg{segment}

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

/-! Exact seating facts for {description}.
GENERATED by {GENERATOR} — do not edit. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementSeating

open Contracts.NoteReshape1x8

{_theorems(segment, roles.statement_seating, locals_)}

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementSeating
"""


def render_output_seating(roles: StatementRoles) -> str:
    statement = roles.statement["index"]
    assertion = roles.assertion["index"]
    return f"""import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg{statement}
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg{assertion}

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

/-! Exact final-state and public-assertion statement seating facts.
GENERATED by {GENERATOR} — do not edit. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementSeating

open Contracts.NoteReshape1x8

{_theorems(statement, roles.statement_seating, HASH_OUTPUT_LOCALS)}

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementSeating

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementPublicSeating

open Contracts.NoteReshape1x8

{_theorems(assertion, roles.assertion_seating, ASSERT_INPUT_LOCALS + (ASSERT_OUTPUT_LOCAL,))}

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementPublicSeating
"""


def outputs(roles: StatementRoles | None = None) -> dict[Path, str]:
    if roles is None:
        roles = discover()
    rendered = {
        DEPLOYED / filename:
            render_hash_seating(roles, description, locals_)
        for filename, description, locals_ in SEATING_SPECS
    }
    rendered[
        DEPLOYED / "NoteReshape1x8StatementSeatingOutput.lean"
    ] = render_output_seating(roles)
    return rendered


def check_generated(path: Path, expected: str) -> None:
    if not path.is_file() or path.read_text() != expected:
        raise SystemExit(f"generated file is stale: {path}")


def validate_consumers(roles: StatementRoles | None = None) -> None:
    """Pin the hand-reviewed composition around the generated seating leaves."""

    if roles is None:
        roles = discover()
    if not REVIEWED_CONSUMER_DIGESTS:
        raise ValueError("reviewed 1x8 statement consumer digests are absent")
    stale_segments = ("Seg60", "Seg61")
    for filename, expected in REVIEWED_CONSUMER_DIGESTS.items():
        path = DEPLOYED / filename
        source = path.read_bytes()
        actual = hashlib.sha256(source).hexdigest()
        if actual != expected:
            raise ValueError(
                f"reviewed statement consumer digest drifted: {path}: "
                f"{actual} != {expected}"
            )
        text = source.decode("utf-8", errors="strict")
        if any(token in text for token in stale_segments):
            raise ValueError(
                f"reviewed statement consumer has stale segment: {path}"
            )

        if filename == "NoteReshape1x8TranscriptSeams.lean":
            required = (
                f"StatementHashSeg{roles.statement['index']}",
                f"AssertEqSeg{roles.assertion['index']}",
                f"Seg{roles.statement['index']}.localRho",
                f"Seg{roles.assertion['index']}.localRho",
            )
        else:
            required = (f"Seg{roles.statement['index']}.localRho",)
            if f"Seg{roles.assertion['index']}.localRho" in text:
                raise ValueError(
                    f"reviewed statement hash consumer uses assertion segment: "
                    f"{path}"
                )
        if any(text.count(marker) == 0 for marker in required):
            raise ValueError(
                f"reviewed statement consumer roles drifted: {path}"
            )

    main = (DEPLOYED / "NoteReshape1x8TranscriptSeams.lean").read_text()
    if main.count(f"StatementHashSeg{roles.statement['index']}") != 1:
        raise ValueError("reviewed 1x8 statement hash fact drifted")
    if main.count(f"AssertEqSeg{roles.assertion['index']}") != 1:
        raise ValueError("reviewed 1x8 public assertion fact drifted")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    roles = discover()
    rendered = outputs(roles)
    for path, source in rendered.items():
        if args.check:
            check_generated(path, source)
        elif write_if_changed(path, source):
            print(path)
    validate_consumers(roles)


if __name__ == "__main__":
    main()
