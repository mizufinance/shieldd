#!/usr/bin/env python3
"""Fail-closed recovery for the deployed Transfer composite templates.

These templates contain several nested gadgets under one wiring label.  Their
semantic providers depend on exact internal row boundaries, so every consumed
boundary and wire family is recovered here from the reviewed canonical
relations and pinned structurally.
"""

from __future__ import annotations

import gzip
import hashlib
import re
from dataclasses import dataclass
from pathlib import Path

from poseidon_constants import rounds as poseidon_rounds


ROOT = Path(__file__).resolve().parents[4]
RELATIONS = ROOT / "tools/gnark/artifacts/proof-template-relations"
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041
STREAM_DOMAIN_LABEL = "shieldd.compliance.poseidon_stream"

MDS = (
    (
        5629641166285580282832549959187697687583932890102709218623488970611606159361,
        6333346312071277818186618704086159898531924501365547870951425091938056929281,
        6755569399542696339399059951025237225100719468123251062348186764733927391233,
    ),
    (
        6333346312071277818186618704086159898531924501365547870951425091938056929281,
        6755569399542696339399059951025237225100719468123251062348186764733927391233,
        7037051457856975353540687448984622109479916112628386523279361213264507699201,
    ),
    (
        6755569399542696339399059951025237225100719468123251062348186764733927391233,
        7037051457856975353540687448984622109479916112628386523279361213264507699201,
        7238110070938603220784707090384182741179342287274911852515914390786350776321,
    ),
)

ADDRESS_DIGEST = "9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f"
AMOUNT_DIGEST = "da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e"
DETECTION_DIGEST = "cb69c394a6636349ef1ca32ae7f664980eedd6a7010cb2a2d96541cc47984b25"
DLEQ_DIGEST = "93cf915ec9286a31df97111073868ec2c4d2ea2bdda3b352386a12a6649fb54b"
COMPRESS_REFERENCE_DIGEST = (
    "f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e"
)
DLEQ_COMPRESS_REFERENCE_DIGEST = (
    "231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb"
)
ISSUER_DETECTION_DOMAIN = (
    1630815545741996755848332658063839972564516410234564928278536917260276888050
)

Lc = dict[int, int]
Row = tuple[Lc, Lc, Lc]

_ROW = re.compile(r"\(constraint \[(.*?)\] \[(.*?)\] \[(.*?)\]\)$")
_TERM = re.compile(r"\(([-0-9]+) (\d+)\)")


def _rows(digest: str, *, reduce: bool) -> list[Row]:
    """Parse one reviewed normalized relation, optionally reducing coefficients."""
    path = RELATIONS / f"{digest}.sr1cs.gz"
    parsed: list[Row] = []
    with gzip.open(path, "rt") as source:
        for row_index, raw in enumerate(source):
            match = _ROW.fullmatch(raw.strip())
            if match is None:
                raise ValueError(f"{digest}: malformed canonical row {row_index}")
            sides: list[Lc] = []
            for group in match.groups():
                side: Lc = {}
                for coefficient_text, wire_text in _TERM.findall(group):
                    wire = int(wire_text)
                    coefficient = side.get(wire, 0) + int(coefficient_text)
                    if reduce:
                        coefficient %= ORDER
                    if coefficient:
                        side[wire] = coefficient
                    else:
                        side.pop(wire, None)
                sides.append(side)
            parsed.append((sides[0], sides[1], sides[2]))
    return parsed


def rows(digest: str) -> list[Row]:
    """Parse one reviewed normalized relation with coefficients reduced mod p."""
    return _rows(digest, reduce=True)


def raw_rows(digest: str) -> list[Row]:
    """Parse the exact signed coefficients rendered by the relation generator."""
    return _rows(digest, reduce=False)


def used_wires(relation: list[Row]) -> set[int]:
    return {
        wire
        for row in relation
        for side in row
        for wire in side
    }


def _is_boolean_row(row: Row, wire: int) -> bool:
    return row == (
        {wire: 1},
        {0: 1, wire: ORDER - 1},
        {},
    )


def _is_zero_copy_row(row: Row, wire: int) -> bool:
    return row == ({0: 1}, {wire: 1}, {})


def _lc_add(left: Lc, right: Lc) -> Lc:
    result = dict(left)
    for wire, coefficient in right.items():
        value = (result.get(wire, 0) + coefficient) % ORDER
        if value:
            result[wire] = value
        else:
            result.pop(wire, None)
    return result


def _lc_scale(coefficient: int, value: Lc) -> Lc:
    return {
        wire: product
        for wire, term in value.items()
        if (product := coefficient * term % ORDER)
    }


def _lc_constant(value: int) -> Lc:
    reduced = value % ORDER
    return {0: reduced} if reduced else {}


def _lc_wire(wire: int) -> Lc:
    return {wire: 1}


def _lc_linear_combination(
    coefficients: tuple[int, ...],
    values: tuple[Lc, ...],
) -> Lc:
    result: Lc = {}
    for coefficient, value in zip(coefficients, values, strict=True):
        result = _lc_add(result, _lc_scale(coefficient, value))
    return result


def _singleton(side: Lc, label: str) -> int:
    if len(side) != 1:
        raise ValueError(f"{label}: expected singleton witness, got {side}")
    wire, coefficient = next(iter(side.items()))
    if wire == 0 or coefficient != 1:
        raise ValueError(
            f"{label}: expected coefficient-one witness, got {side}"
        )
    return wire


def _blake2b_field(label: str) -> int:
    return int.from_bytes(
        hashlib.blake2b(label.encode(), digest_size=64).digest(),
        "little",
    ) % ORDER


def _powers17(value: int) -> tuple[int, int, int, int, int]:
    value %= ORDER
    q2 = value * value % ORDER
    q4 = q2 * q2 % ORDER
    q8 = q4 * q4 % ORDER
    q16 = q8 * q8 % ORDER
    return q2, q4, q8, q16, q16 * value % ORDER


@dataclass(frozen=True)
class Poseidon2SliceRecovery:
    rows: range
    label: int
    nonce_lc: tuple[tuple[int, int], ...]
    inputs: tuple[tuple[tuple[int, int], ...], ...]
    outputs: tuple[int, ...]
    gate_parts: tuple[tuple[int, ...], ...]
    states: tuple[
        tuple[
            tuple[tuple[int, int], ...],
            tuple[tuple[int, int], ...],
            tuple[tuple[int, int], ...],
        ],
        ...,
    ]
    output_lc: tuple[tuple[int, int], ...]
    domain: int
    domain_powers: tuple[int, int, int, int, int]
    label_powers: tuple[int, int, int, int, int]


@dataclass(frozen=True)
class Poseidon2TwoInputRecovery:
    rows: range
    domain: int
    first_inputs: tuple[
        tuple[tuple[int, int], ...],
        tuple[tuple[int, int], ...],
    ]
    inputs: tuple[tuple[tuple[int, int], ...], ...]
    outputs: tuple[int, ...]
    gate_parts: tuple[tuple[int, ...], ...]
    states: tuple[
        tuple[
            tuple[tuple[int, int], ...],
            tuple[tuple[int, int], ...],
            tuple[tuple[int, int], ...],
        ],
        ...,
    ]
    output_lc: tuple[tuple[int, int], ...]
    domain_powers: tuple[int, int, int, int, int]


def _freeze_lc(value: Lc) -> tuple[tuple[int, int], ...]:
    return tuple(sorted(value.items()))


def _thaw_lc(value: tuple[tuple[int, int], ...]) -> Lc:
    return dict(value)


def _recover_poseidon2_slice(
    relation: list[Row],
    block: range,
    *,
    nonce_lc: Lc,
    label: int,
) -> Poseidon2SliceRecovery:
    """Recover one exact 265-row Poseidon2 stream block.

    The capacity and counter lanes are compile-time constants, so their first
    S-box chains are constant-folded out of the normalized relation. The nonce
    lane and every later live S-box remain byte-authenticated rows.
    """
    if len(block) != 265:
        raise ValueError(
            f"Poseidon2 block {block.start}: expected 265 rows, got {len(block)}"
        )
    rows_ = relation[block.start : block.stop]
    domain = _blake2b_field(STREAM_DOMAIN_LABEL)
    rounds = poseidon_rounds(2)
    first_constants = rounds[0][1]
    domain_powers = _powers17(domain + first_constants[0])
    label_powers = _powers17(label + first_constants[2])

    gate_parts: list[tuple[int, ...]] = []
    inputs: list[Lc] = []
    outputs: list[int] = []
    states: list[tuple[Lc, Lc, Lc]] = []
    previous: tuple[Lc, Lc, Lc] | None = None
    cursor = 0

    for gate, (kind, constants) in enumerate(rounds):
        count = 3 if kind == "fr3" else 1
        lanes = tuple(range(count))
        if gate == 0:
            count = 1
            lanes = (1,)
        parts = tuple(range(cursor, cursor + count))
        gate_parts.append(parts)

        if gate == 0:
            expected_inputs = (
                _lc_add(nonce_lc, _lc_constant(constants[1])),
            )
            sbox_values: list[Lc] = [
                _lc_constant(domain_powers[-1]),
                {},
                _lc_constant(label_powers[-1]),
            ]
        elif kind == "fr3":
            assert previous is not None
            expected_inputs = tuple(
                _lc_add(previous[lane], _lc_constant(constants[lane]))
                for lane in lanes
            )
            sbox_values = [{}, {}, {}]
        else:
            assert previous is not None
            expected_inputs = (
                _lc_add(previous[0], _lc_constant(constants[0])),
            )
            sbox_values = [
                {},
                _lc_add(previous[1], _lc_constant(constants[1])),
                _lc_add(previous[2], _lc_constant(constants[2])),
            ]

        for part, lane, expected_input in zip(
            parts,
            lanes,
            expected_inputs,
            strict=True,
        ):
            chunk = rows_[part * 5 : part * 5 + 5]
            first = chunk[0]
            if first[0] != first[1] or first[0] != expected_input:
                raise ValueError(
                    f"Poseidon2 block {block.start}: gate {gate} lane {lane} "
                    "input drifted"
                )
            chain_outputs = tuple(
                _singleton(
                    row[2],
                    f"Poseidon2 block {block.start}: part {part}",
                )
                for row in chunk
            )
            if chunk[1][0] != _lc_wire(chain_outputs[0]):
                raise ValueError(
                    f"Poseidon2 block {block.start}: part {part} square-2 "
                    "input drifted"
                )
            if chunk[1][1] != chunk[1][0]:
                raise ValueError(
                    f"Poseidon2 block {block.start}: part {part} square-2 "
                    "row drifted"
                )
            if chunk[2][0] != _lc_wire(chain_outputs[1]):
                raise ValueError(
                    f"Poseidon2 block {block.start}: part {part} square-4 "
                    "input drifted"
                )
            if chunk[2][1] != chunk[2][0]:
                raise ValueError(
                    f"Poseidon2 block {block.start}: part {part} square-4 "
                    "row drifted"
                )
            if chunk[3][0] != _lc_wire(chain_outputs[2]):
                raise ValueError(
                    f"Poseidon2 block {block.start}: part {part} square-8 "
                    "input drifted"
                )
            if chunk[3][1] != chunk[3][0]:
                raise ValueError(
                    f"Poseidon2 block {block.start}: part {part} square-8 "
                    "row drifted"
                )
            if chunk[4][0] != _lc_wire(chain_outputs[3]):
                raise ValueError(
                    f"Poseidon2 block {block.start}: part {part} x17 "
                    "input drifted"
                )
            if chunk[4][1] != expected_input:
                raise ValueError(
                    f"Poseidon2 block {block.start}: part {part} x17 row drifted"
                )
            inputs.append(expected_input)
            outputs.append(chain_outputs[-1])
            sbox_values[lane] = _lc_wire(chain_outputs[-1])

        current = tuple(
            _lc_linear_combination(MDS[lane], tuple(sbox_values))
            for lane in range(3)
        )
        states.append(current)  # type: ignore[arg-type]
        previous = current  # type: ignore[assignment]
        cursor += count

    if cursor != 53 or len(inputs) != 53 or len(outputs) != 53:
        raise ValueError(
            f"Poseidon2 block {block.start}: surviving S-box count drifted"
        )
    output_lc = states[-1][1]
    return Poseidon2SliceRecovery(
        rows=block,
        label=label,
        nonce_lc=_freeze_lc(nonce_lc),
        inputs=tuple(_freeze_lc(value) for value in inputs),
        outputs=tuple(outputs),
        gate_parts=tuple(gate_parts),
        states=tuple(
            tuple(_freeze_lc(lane) for lane in state)  # type: ignore[arg-type]
            for state in states
        ),
        output_lc=_freeze_lc(output_lc),
        domain=domain,
        domain_powers=domain_powers,
        label_powers=label_powers,
    )


def _recover_poseidon2_two_input_slice(
    relation: list[Row],
    block: range,
    *,
    domain: int,
    first_inputs: tuple[Lc, Lc],
) -> Poseidon2TwoInputRecovery:
    """Recover a fixed-domain 270-row Poseidon2 block with two live inputs."""
    if len(block) != 270:
        raise ValueError(
            f"Poseidon2 two-input block {block.start}: expected 270 rows, "
            f"got {len(block)}"
        )
    rows_ = relation[block.start : block.stop]
    rounds = poseidon_rounds(2)
    domain_powers = _powers17(domain + rounds[0][1][0])
    gate_parts: list[tuple[int, ...]] = []
    inputs: list[Lc] = []
    outputs: list[int] = []
    states: list[tuple[Lc, Lc, Lc]] = []
    previous: tuple[Lc, Lc, Lc] | None = None
    cursor = 0

    for gate, (kind, constants) in enumerate(rounds):
        count = 3 if kind == "fr3" else 1
        lanes = tuple(range(count))
        if gate == 0:
            count = 2
            lanes = (1, 2)
        parts = tuple(range(cursor, cursor + count))
        gate_parts.append(parts)
        if gate == 0:
            expected_inputs = (
                _lc_add(first_inputs[0], _lc_constant(constants[1])),
                _lc_add(first_inputs[1], _lc_constant(constants[2])),
            )
            sbox_values: list[Lc] = [
                _lc_constant(domain_powers[-1]),
                {},
                {},
            ]
        elif kind == "fr3":
            assert previous is not None
            expected_inputs = tuple(
                _lc_add(previous[lane], _lc_constant(constants[lane]))
                for lane in lanes
            )
            sbox_values = [{}, {}, {}]
        else:
            assert previous is not None
            expected_inputs = (
                _lc_add(previous[0], _lc_constant(constants[0])),
            )
            sbox_values = [
                {},
                _lc_add(previous[1], _lc_constant(constants[1])),
                _lc_add(previous[2], _lc_constant(constants[2])),
            ]

        for part, lane, expected_input in zip(
            parts, lanes, expected_inputs, strict=True
        ):
            chunk = rows_[part * 5 : part * 5 + 5]
            first = chunk[0]
            if first[0] != first[1] or first[0] != expected_input:
                raise ValueError(
                    f"Poseidon2 two-input block {block.start}: gate {gate} "
                    f"lane {lane} input drifted"
                )
            chain_outputs = tuple(
                _singleton(
                    row[2],
                    f"Poseidon2 two-input block {block.start}: part {part}",
                )
                for row in chunk
            )
            if chunk[1][0] != _lc_wire(chain_outputs[0]):
                raise ValueError(
                    f"Poseidon2 two-input block {block.start}: part {part} "
                    "square-2 input drifted"
                )
            if chunk[1][1] != chunk[1][0]:
                raise ValueError(
                    f"Poseidon2 two-input block {block.start}: part {part} "
                    "square-2 row drifted"
                )
            if chunk[2][0] != _lc_wire(chain_outputs[1]):
                raise ValueError(
                    f"Poseidon2 two-input block {block.start}: part {part} "
                    "square-4 input drifted"
                )
            if chunk[2][1] != chunk[2][0]:
                raise ValueError(
                    f"Poseidon2 two-input block {block.start}: part {part} "
                    "square-4 row drifted"
                )
            if chunk[3][0] != _lc_wire(chain_outputs[2]):
                raise ValueError(
                    f"Poseidon2 two-input block {block.start}: part {part} "
                    "square-8 input drifted"
                )
            if chunk[3][1] != chunk[3][0]:
                raise ValueError(
                    f"Poseidon2 two-input block {block.start}: part {part} "
                    "square-8 row drifted"
                )
            if chunk[4][0] != _lc_wire(chain_outputs[3]):
                raise ValueError(
                    f"Poseidon2 two-input block {block.start}: part {part} "
                    "x17 input drifted"
                )
            if chunk[4][1] != expected_input:
                raise ValueError(
                    f"Poseidon2 two-input block {block.start}: part {part} "
                    "x17 row drifted"
                )
            inputs.append(expected_input)
            outputs.append(chain_outputs[-1])
            sbox_values[lane] = _lc_wire(chain_outputs[-1])

        current = tuple(
            _lc_linear_combination(MDS[lane], tuple(sbox_values))
            for lane in range(3)
        )
        states.append(current)  # type: ignore[arg-type]
        previous = current  # type: ignore[assignment]
        cursor += count

    if cursor != 54 or len(inputs) != 54 or len(outputs) != 54:
        raise ValueError(
            f"Poseidon2 two-input block {block.start}: surviving S-box "
            "count drifted"
        )
    return Poseidon2TwoInputRecovery(
        rows=block,
        domain=domain,
        first_inputs=tuple(
            _freeze_lc(value) for value in first_inputs
        ),  # type: ignore[arg-type]
        inputs=tuple(_freeze_lc(value) for value in inputs),
        outputs=tuple(outputs),
        gate_parts=tuple(gate_parts),
        states=tuple(
            tuple(_freeze_lc(lane) for lane in state)  # type: ignore[arg-type]
            for state in states
        ),
        output_lc=_freeze_lc(states[-1][1]),
        domain_powers=domain_powers,
    )


def _canonical_block(
    relation: list[Row],
    start: int,
    bit_base: int,
) -> Lc:
    """Validate a 253-bit canonical decomposition; return its input LC wires."""
    for offset in range(253):
        if not _is_boolean_row(relation[start + offset], bit_base + offset):
            raise ValueError(
                f"canonical block {start}: boolean row {offset} drifted"
            )
    recomposition = relation[start + 253]
    expected_bits = {
        bit_base + offset: pow(2, offset, ORDER)
        for offset in range(253)
    }
    if recomposition[0] != {0: 1} or recomposition[1] != expected_bits:
        raise ValueError(f"canonical block {start}: recomposition LHS drifted")
    if not recomposition[2]:
        raise ValueError(f"canonical block {start}: empty input LC")
    # The 252 remaining rows are the exact p-1 prefix ladder.  Comparing their
    # coefficient-only shapes between every block catches rung/order drift
    # while allowing the normalized wire renaming to differ.
    if len(relation[start + 254 : start + 506]) != 252:
        raise ValueError(f"canonical block {start}: truncated comparison ladder")
    return dict(recomposition[2])


def _coefficient_shape(row: Row) -> tuple[tuple[int, ...], ...]:
    return tuple(
        tuple(sorted(side.values()))
        for side in row
    )


def _assert_same_canonical_ladder(
    relation: list[Row],
    reference_start: int,
    candidate_start: int,
) -> None:
    reference = [
        _coefficient_shape(row)
        for row in relation[reference_start + 254 : reference_start + 506]
    ]
    candidate = [
        _coefficient_shape(row)
        for row in relation[candidate_start + 254 : candidate_start + 506]
    ]
    if candidate != reference:
        raise ValueError(
            f"canonical block {candidate_start}: p-1 ladder shape drifted"
        )


def exact_wire_isomorphism(
    reference: list[Row],
    candidate: list[Row],
) -> tuple[int, ...]:
    """Recover and verify an exact row-preserving local-wire bijection."""
    if len(reference) != len(candidate):
        raise ValueError(
            "relation isomorphism row count drifted: "
            f"{len(reference)} != {len(candidate)}"
        )

    def signatures(block: list[Row]) -> dict[int, tuple[tuple[int, int, int], ...]]:
        result: dict[int, list[tuple[int, int, int]]] = {}
        for row_index, row in enumerate(block):
            for side_index, side in enumerate(row):
                for wire, coefficient in side.items():
                    result.setdefault(wire, []).append(
                        (row_index, side_index, coefficient)
                    )
        return {
            wire: tuple(signature)
            for wire, signature in result.items()
        }

    reference_signatures = signatures(reference)
    candidate_signatures = signatures(candidate)
    inverse: dict[tuple[tuple[int, int, int], ...], list[int]] = {}
    for wire, signature in candidate_signatures.items():
        inverse.setdefault(signature, []).append(wire)
    mapping: dict[int, int] = {}
    for wire, signature in reference_signatures.items():
        matches = inverse.get(signature, [])
        if len(matches) != 1:
            raise ValueError(
                "relation isomorphism is not unique at reference wire "
                f"{wire}: {matches}"
            )
        mapping[wire] = matches[0]
    if set(mapping) != set(range(max(mapping) + 1)):
        raise ValueError("relation isomorphism reference wire domain has gaps")
    if len(set(mapping.values())) != len(mapping):
        raise ValueError("relation isomorphism candidate mapping is not injective")
    mapped = [
        tuple(
            {mapping[wire]: coefficient for wire, coefficient in side.items()}
            for side in row
        )
        for row in reference
    ]
    if mapped != candidate:
        raise ValueError("relation isomorphism row reconstruction failed")
    return tuple(mapping[wire] for wire in range(len(mapping)))


def _recover_boundary_compress_mapping(
    relation: list[Row],
    *,
    start: int = 0,
) -> tuple[tuple[int, ...], int]:
    """Recover a compress prefix whose caller owns six boundary rows."""
    reference = rows(COMPRESS_REFERENCE_DIGEST)
    if len(reference) != 1046:
        raise ValueError("compress reference row count drifted")
    boundary_rows = {0, 1, 4, 5, 6, 537}

    def signatures(block: list[Row]) -> dict[
        int, tuple[tuple[int, int, int], ...]
    ]:
        result: dict[int, list[tuple[int, int, int]]] = {}
        for row_index, row in enumerate(block):
            if row_index in boundary_rows:
                continue
            for side_index, side in enumerate(row):
                for wire, coefficient in side.items():
                    if wire:
                        result.setdefault(wire, []).append(
                            (row_index, side_index, coefficient)
                        )
        return {
            wire: tuple(signature)
            for wire, signature in result.items()
        }

    reference_signatures = signatures(reference)
    candidate = relation[start : start + 1046]
    if len(candidate) != 1046:
        raise ValueError("embedded compress prefix is truncated")
    candidate_signatures = signatures(candidate)
    inverse: dict[tuple[tuple[int, int, int], ...], list[int]] = {}
    for wire, signature in candidate_signatures.items():
        inverse.setdefault(signature, []).append(wire)
    mapping = {
        wire: inverse.get(signature, [])
        for wire, signature in reference_signatures.items()
    }
    if any(len(matches) != 1 for matches in mapping.values()):
        raise ValueError("embedded compress prefix is not uniquely isomorphic")
    actual = {wire: matches[0] for wire, matches in mapping.items()}
    head_reference = (
        252,
        503,
        504,
        505,
        506,
        507,
        508,
        509,
        514,
        511,
        510,
        512,
        513,
        515,
        516,
        517,
        518,
        519,
        520,
        521,
        522,
    )
    head_mapping = tuple(actual[wire] for wire in head_reference)
    affine_deltas = {
        actual[wire + 292] - wire
        for wire in range(231, 913)
    }
    if len(affine_deltas) != 1:
        raise ValueError("embedded compress extracted affine seating drifted")
    return head_mapping, affine_deltas.pop()


def _canonical_bit_base(relation: list[Row], start: int) -> int:
    bit_base = _singleton(
        relation[start][0], f"canonical block {start} first bit"
    )
    if not _is_boolean_row(relation[start], bit_base):
        raise ValueError(
            f"canonical block {start}: first Boolean row drifted"
        )
    return bit_base


def _recover_stream_nonce(
    relation: list[Row],
    block: range,
    *,
    prefix: range,
) -> tuple[Lc, int, Lc]:
    """Recover `c2 - shared_fq` from the first stream S-box row."""

    constants = poseidon_rounds(2)[0][1]
    first = relation[block.start]
    if first[0] != first[1]:
        raise ValueError(
            f"Poseidon2 block {block.start}: first input square drifted"
        )
    nonce = _lc_add(first[0], _lc_constant(-constants[1]))
    prefix_wires = used_wires(relation[prefix.start : prefix.stop])
    outside = [
        wire
        for wire, coefficient in nonce.items()
        if wire != 0 and wire not in prefix_wires and coefficient == 1
    ]
    if len(outside) != 1:
        raise ValueError(
            f"Poseidon2 block {block.start}: c2 boundary is not unique"
        )
    c2_wire = outside[0]
    shared_fq = _lc_add(_lc_wire(c2_wire), _lc_scale(ORDER - 1, nonce))
    if (
        len(shared_fq) != 2
        or sorted(shared_fq.values()) != [1, ORDER - 1]
    ):
        raise ValueError(
            f"Poseidon2 block {block.start}: shared-Fq boundary drifted"
        )
    return nonce, c2_wire, shared_fq


def _recover_two_input_boundary(
    relation: list[Row], block: range
) -> tuple[Lc, Lc]:
    """Recover both live first-round inputs of a Poseidon2 block."""

    constants = poseidon_rounds(2)[0][1]
    starts = (block.start, block.start + 5)
    inputs: list[Lc] = []
    for row, constant in zip(starts, constants[1:], strict=True):
        first = relation[row]
        if first[0] != first[1]:
            raise ValueError(
                f"Poseidon2 two-input block {block.start}: "
                "first-round square drifted"
            )
        inputs.append(_lc_add(first[0], _lc_constant(-constant)))
    if any(
        len(value) != 2
        or sorted(value.values()) != [1, ORDER - 1]
        for value in inputs
    ):
        raise ValueError(
            f"Poseidon2 two-input block {block.start}: input LC drifted"
        )
    return inputs[0], inputs[1]


@dataclass(frozen=True)
class AddressRecovery:
    compress_rows: range
    div_block: range
    transmission_block: range
    salt_blocks: tuple[range, range, range]
    equality_rows: tuple[int, int, int]
    div_bits: range
    transmission_bits: range
    div_input_lc: tuple[int, int]
    transmission_input_lc: tuple[int, int]
    c2_wire: int
    shared_fq_lc: tuple[tuple[int, int], ...]
    salt_slices: tuple[
        Poseidon2SliceRecovery,
        Poseidon2SliceRecovery,
        Poseidon2SliceRecovery,
    ]
    plaintext_lcs: tuple[
        tuple[tuple[int, int], ...],
        tuple[tuple[int, int], ...],
        tuple[tuple[int, int], ...],
    ]
    ciphertext_wires: tuple[int, int, int]
    compress_extracted_head_mapping: tuple[int, ...]
    compress_extracted_affine_delta: int


def recover_address() -> AddressRecovery:
    relation = rows(ADDRESS_DIGEST)
    if len(relation) != 2856:
        raise ValueError(f"address: expected 2856 rows, got {len(relation)}")
    if used_wires(relation) != set(range(2191)):
        raise ValueError("address: local wire domain is not exactly 0..2190")

    extracted_head_mapping, extracted_affine_delta = (
        _recover_boundary_compress_mapping(relation)
    )

    div_bit_base = _canonical_bit_base(relation, 1046)
    transmission_bit_base = _canonical_bit_base(relation, 1552)
    div_input = _canonical_block(relation, 1046, div_bit_base)
    transmission_input = _canonical_block(
        relation, 1552, transmission_bit_base
    )
    _assert_same_canonical_ladder(relation, 1046, 1552)
    div_input_wires = (div_bit_base + 253, div_bit_base + 254)
    transmission_input_wires = (
        transmission_bit_base + 253,
        transmission_bit_base + 254,
    )
    if div_input != {
        div_input_wires[0]: ORDER - 1,
        div_input_wires[1]: 1,
    }:
        raise ValueError(f"address: diversified input LC drifted: {div_input}")
    if transmission_input != {
        transmission_input_wires[0]: ORDER - 1,
        transmission_input_wires[1]: 1,
    }:
        raise ValueError(
            f"address: transmission input LC drifted: {transmission_input}"
        )

    salt_blocks = (
        range(2058, 2323),
        range(2324, 2589),
        range(2590, 2855),
    )
    if any(len(block) != 265 for block in salt_blocks):
        raise AssertionError("internal salt boundary bug")
    nonce_lc, c2_wire, shared_fq = _recover_stream_nonce(
        relation,
        salt_blocks[0],
        prefix=range(0, 1046),
    )
    salt_slices = tuple(
        _recover_poseidon2_slice(
            relation,
            block,
            nonce_lc=nonce_lc,
            label=label,
        )
        for block, label in zip(salt_blocks, range(3), strict=True)
    )
    if any(slice_.nonce_lc != _freeze_lc(nonce_lc) for slice_ in salt_slices):
        raise ValueError("address: Poseidon2 nonce reuse drifted")

    def weighted_lc(base: int, width: int, shift: int = 0) -> Lc:
        return {
            base + offset: pow(2, shift + offset, ORDER)
            for offset in range(width)
        }

    plaintext_lcs = (
        weighted_lc(div_bit_base, 248),
        _lc_add(
            weighted_lc(div_bit_base + 248, 5),
            weighted_lc(transmission_bit_base, 240, 8),
        ),
        weighted_lc(transmission_bit_base + 240, 13),
    )
    equality_rows = (2323, 2589, 2855)
    ciphertext_wires = tuple(
        _singleton(relation[row][2], f"address ciphertext {index}")
        for index, row in enumerate(equality_rows)
    )
    for index, row in enumerate(equality_rows):
        if relation[row][0] != {0: 1}:
            raise ValueError(f"address: equality row {row} unit input drifted")
        expected_right = _lc_add(
            plaintext_lcs[index],
            _thaw_lc(salt_slices[index].output_lc),
        )
        if relation[row][1] != expected_right:
            raise ValueError(
                f"address: equality row {row} plaintext/salt "
                "expression drifted"
            )
        if relation[row][2] != {ciphertext_wires[index]: 1}:
            raise ValueError(
                f"address: equality row {row} ciphertext seating drifted"
            )

    return AddressRecovery(
        compress_rows=range(0, 1046),
        div_block=range(1046, 1552),
        transmission_block=range(1552, 2058),
        salt_blocks=salt_blocks,
        equality_rows=equality_rows,
        div_bits=range(div_bit_base, div_bit_base + 253),
        transmission_bits=range(
            transmission_bit_base, transmission_bit_base + 253
        ),
        div_input_lc=div_input_wires,
        transmission_input_lc=transmission_input_wires,
        c2_wire=c2_wire,
        shared_fq_lc=_freeze_lc(shared_fq),
        salt_slices=salt_slices,  # type: ignore[arg-type]
        plaintext_lcs=tuple(
            _freeze_lc(value) for value in plaintext_lcs
        ),  # type: ignore[arg-type]
        ciphertext_wires=ciphertext_wires,
        compress_extracted_head_mapping=extracted_head_mapping,
        compress_extracted_affine_delta=extracted_affine_delta,
    )


@dataclass(frozen=True)
class AmountRecovery:
    compress_rows: range
    salt_block: range
    equality_row: int
    shared_fq_lc: tuple[tuple[int, int], ...]
    c2_wire: int
    salt_slice: Poseidon2SliceRecovery
    amount_wire: int
    ciphertext_wire: int
    compress_extracted_head_mapping: tuple[int, ...]
    compress_extracted_affine_delta: int


def recover_amount() -> AmountRecovery:
    relation = rows(AMOUNT_DIGEST)
    if len(relation) != 1312:
        raise ValueError(f"amount: expected 1312 rows, got {len(relation)}")
    if used_wires(relation) != set(range(978)):
        raise ValueError("amount: local wire domain is not exactly 0..977")
    head_mapping, affine_delta = _recover_boundary_compress_mapping(relation)
    block = range(1046, 1311)
    nonce, c2_wire, shared_fq = _recover_stream_nonce(
        relation, block, prefix=range(0, 1046)
    )
    salt_slice = _recover_poseidon2_slice(
        relation, block, nonce_lc=nonce, label=0
    )

    equality_row = 1311
    if relation[equality_row][0] != {0: 1}:
        raise ValueError("amount: equality unit input drifted")
    ciphertext = _singleton(
        relation[equality_row][2], "amount ciphertext"
    )
    plaintext = _lc_add(
        relation[equality_row][1],
        _lc_scale(ORDER - 1, _thaw_lc(salt_slice.output_lc)),
    )
    amount = _singleton(plaintext, "amount plaintext")
    expected_right = _lc_add(
        _lc_wire(amount),
        _thaw_lc(salt_slice.output_lc),
    )
    if relation[equality_row][1] != expected_right:
        raise ValueError("amount: plaintext/salt/ciphertext seating drifted")
    if relation[equality_row][2] != {ciphertext: 1}:
        raise ValueError("amount: ciphertext seating drifted")
    return AmountRecovery(
        compress_rows=range(0, 1046),
        salt_block=block,
        equality_row=equality_row,
        shared_fq_lc=_freeze_lc(shared_fq),
        c2_wire=c2_wire,
        salt_slice=salt_slice,
        amount_wire=amount,
        ciphertext_wire=ciphertext,
        compress_extracted_head_mapping=head_mapping,
        compress_extracted_affine_delta=affine_delta,
    )


@dataclass(frozen=True)
class Binary32Recovery:
    rows: range
    bit_wires: tuple[int, ...]
    recomposition_row: int
    value_wire: int


def _recover_binary32(
    relation: list[Row],
    start: int,
    *,
    label: str,
) -> Binary32Recovery:
    bit_wires: list[int] = []
    for offset in range(32):
        row_index = start + offset
        row = relation[row_index]
        bit = _singleton(row[0], f"{label} bit {offset}")
        if not _is_boolean_row(row, bit):
            raise ValueError(
                f"{label}: row {row_index} is not the exact Boolean row"
            )
        bit_wires.append(bit)
    if len(set(bit_wires)) != 32:
        raise ValueError(f"{label}: bit seating is not injective")
    if bit_wires != list(range(bit_wires[0], bit_wires[0] + 32)):
        raise ValueError(f"{label}: bit seating is not one exact contiguous run")

    recomposition_row = start + 32
    row = relation[recomposition_row]
    expected = {
        wire: 1 << offset for offset, wire in enumerate(bit_wires)
    }
    if row[0] != {0: 1} or row[1] != expected:
        raise ValueError(f"{label}: exact 32-bit recomposition row drifted")
    value_wire = _singleton(row[2], f"{label} recomposed value")
    if value_wire in bit_wires:
        raise ValueError(f"{label}: value wire aliases a bit wire")
    return Binary32Recovery(
        rows=range(start, recomposition_row + 1),
        bit_wires=tuple(bit_wires),
        recomposition_row=recomposition_row,
        value_wire=value_wire,
    )


@dataclass(frozen=True)
class DetectionRecovery:
    sender_slot_binary: Binary32Recovery
    receiver_slot_binary: Binary32Recovery
    compress_rows: range
    seed_block: range
    stream_blocks: tuple[range, range, range, range]
    equality_rows: tuple[int, int, int, int]
    shared_fq_lc: tuple[tuple[int, int], ...]
    epk_fq_lc: tuple[tuple[int, int], ...]
    seed_slice: Poseidon2TwoInputRecovery
    stream_slices: tuple[
        Poseidon2SliceRecovery,
        Poseidon2SliceRecovery,
        Poseidon2SliceRecovery,
        Poseidon2SliceRecovery,
    ]
    plaintext_lcs: tuple[
        tuple[tuple[int, int], ...],
        tuple[tuple[int, int], ...],
        tuple[tuple[int, int], ...],
        tuple[tuple[int, int], ...],
    ]
    asset_id_wire: int
    flag_wire: int
    ciphertext_wires: tuple[int, int, int, int]
    compress_extracted_head_mapping: tuple[int, ...]
    compress_extracted_affine_delta: int


def recover_detection() -> DetectionRecovery:
    relation = rows(DETECTION_DIGEST)
    if len(relation) != 2446:
        raise ValueError(f"detection: expected 2446 rows, got {len(relation)}")
    if used_wires(relation) != set(range(2115)):
        raise ValueError("detection: local wire domain is not exactly 0..2114")

    sender_slot_binary = _recover_binary32(
        relation, 0, label="detection sender slot"
    )
    receiver_slot_binary = _recover_binary32(
        relation,
        sender_slot_binary.rows.stop,
        label="detection receiver slot",
    )
    compress_start = receiver_slot_binary.rows.stop
    if compress_start != 66:
        raise ValueError("detection: exact range-check prelude drifted")
    head_mapping, affine_delta = _recover_boundary_compress_mapping(
        relation, start=compress_start
    )
    seed_block = range(1112, 1382)
    shared_fq, epk_fq = _recover_two_input_boundary(
        relation, seed_block
    )
    seed_slice = _recover_poseidon2_two_input_slice(
        relation,
        seed_block,
        domain=ISSUER_DETECTION_DOMAIN,
        first_inputs=(shared_fq, epk_fq),
    )
    stream_blocks = tuple(
        range(start, start + 265)
        for start in (1382, 1647, 1912, 2177)
    )
    seed_lc = _thaw_lc(seed_slice.output_lc)
    stream_slices = tuple(
        _recover_poseidon2_slice(
            relation,
            block,
            nonce_lc=seed_lc,
            label=label,
        )
        for block, label in zip(stream_blocks, range(4), strict=True)
    )
    equality_rows = (2442, 2443, 2444, 2445)
    ciphertext_wires = tuple(
        _singleton(relation[row][2], f"detection ciphertext {index}")
        for index, row in enumerate(equality_rows)
    )
    plaintext_lcs: list[Lc] = []
    for index, row in enumerate(equality_rows):
        if relation[row][0] != {0: 1}:
            raise ValueError(
                f"detection: equality row {row} unit input drifted"
            )
        plaintext = _lc_add(
            relation[row][1],
            _lc_scale(
                ORDER - 1,
                _thaw_lc(stream_slices[index].output_lc),
            ),
        )
        if not plaintext:
            raise ValueError(
                f"detection: equality row {row} plaintext is empty"
            )
        expected_right = _lc_add(
            plaintext,
            _thaw_lc(stream_slices[index].output_lc),
        )
        if relation[row][1] != expected_right:
            raise ValueError(
                f"detection: equality row {row} expression drifted"
            )
        if relation[row][2] != {ciphertext_wires[index]: 1}:
            raise ValueError(
                f"detection: equality row {row} ciphertext seating drifted"
            )
        plaintext_lcs.append(plaintext)

    asset_id_wire = _singleton(
        plaintext_lcs[0], "detection asset-id plaintext"
    )
    flag_terms = dict(plaintext_lcs[2])
    if flag_terms.pop(sender_slot_binary.value_wire, None) != 1:
        raise ValueError("detection: sender-word lost its exact slot input")
    flag_wire = _singleton(
        {
            wire: coefficient // (1 << 32)
            for wire, coefficient in flag_terms.items()
            if coefficient == 1 << 32
        },
        "detection sender-word flag",
    )
    if flag_terms != {flag_wire: 1 << 32}:
        raise ValueError("detection: sender-word flag coefficient drifted")
    if plaintext_lcs[3] != {receiver_slot_binary.value_wire: 1}:
        raise ValueError("detection: receiver-slot plaintext drifted")

    return DetectionRecovery(
        sender_slot_binary=sender_slot_binary,
        receiver_slot_binary=receiver_slot_binary,
        compress_rows=range(compress_start, compress_start + 1046),
        seed_block=seed_block,
        stream_blocks=stream_blocks,  # type: ignore[arg-type]
        equality_rows=equality_rows,
        shared_fq_lc=_freeze_lc(shared_fq),
        epk_fq_lc=_freeze_lc(epk_fq),
        seed_slice=seed_slice,
        stream_slices=stream_slices,  # type: ignore[arg-type]
        plaintext_lcs=tuple(
            _freeze_lc(value) for value in plaintext_lcs
        ),  # type: ignore[arg-type]
        asset_id_wire=asset_id_wire,
        flag_wire=flag_wire,
        ciphertext_wires=ciphertext_wires,
        compress_extracted_head_mapping=head_mapping,
        compress_extracted_affine_delta=affine_delta,
    )


@dataclass(frozen=True)
class DleqRecovery:
    on_curve_blocks: tuple[range, range]
    scalar_blocks: tuple[range, ...]
    ladder_blocks: tuple[range, range]
    compress_blocks: tuple[range, ...]
    poseidon7_block: range
    comparison_block: range
    bit_bases: tuple[int, ...]
    is_regulated_wire: int
    compress_reference_to_local: tuple[tuple[int, ...], ...]


def recover_dleq() -> DleqRecovery:
    relation = rows(DLEQ_DIGEST)
    if len(relation) != 17834:
        raise ValueError(f"dleq: expected 17834 rows, got {len(relation)}")
    if used_wires(relation) != set(range(14879)):
        raise ValueError("dleq: local wire domain is not exactly 0..14878")

    # Two four-row affine Edwards on-curve assertions.
    on_curve_blocks = (range(0, 4), range(4, 8))
    if [
        _coefficient_shape(row) for row in relation[0:4]
    ] != [
        _coefficient_shape(row) for row in relation[4:8]
    ]:
        raise ValueError("dleq: initial on-curve block shape drifted")

    scalar_starts = (8, 514, 5313, 5819, 16316, 16822)
    bit_bases = (11, 351, 4984, 5323, 13947, 14286)
    for start, bit_base in zip(scalar_starts, bit_bases, strict=True):
        _canonical_block(relation, start, bit_base)
    for start in scalar_starts[1:]:
        _assert_same_canonical_ladder(relation, scalar_starts[0], start)

    ladder_blocks = (range(1020, 5313), range(6325, 10621))
    if tuple(map(len, ladder_blocks)) != (4293, 4296):
        raise AssertionError("internal DLEQ ladder boundary bug")

    compress_blocks = tuple(
        range(start, start + 1046)
        for start in (10621, 11667, 12713, 13759, 14805)
    )
    compress_reference = rows(DLEQ_COMPRESS_REFERENCE_DIGEST)
    if len(compress_reference) != 1046:
        raise ValueError("dleq: compress reference row count drifted")
    compress_reference_to_local = tuple(
        exact_wire_isomorphism(
            compress_reference,
            relation[block.start : block.stop],
        )
        for block in compress_blocks
    )
    if any(len(mapping) != 706 for mapping in compress_reference_to_local):
        raise ValueError("dleq: embedded compress local-wire domain drifted")
    poseidon7_block = range(15851, 16316)
    if len(poseidon7_block) != 465:
        raise AssertionError("internal DLEQ Poseidon7 boundary bug")

    comparison = range(17328, 17834)
    selector = 14625
    published_bits = range(13947, 14200)
    computed_bits = range(14286, 14539)
    cursor = comparison.start
    # Top three published bits are forced to zero when regulated.
    for bit in tuple(published_bits)[250:]:
        first, second = relation[cursor], relation[cursor + 1]
        if {frozenset(first[0].items()), frozenset(first[1].items())} != {
            frozenset({selector: 1}.items()),
            frozenset({bit: 1}.items()),
        }:
            raise ValueError(f"dleq: regulated top-bit row {cursor} drifted")
        helper = next(iter(first[2]), None)
        if helper is None or not _is_zero_copy_row(second, helper):
            raise ValueError(f"dleq: regulated top-bit pair {cursor} drifted")
        cursor += 2
    # Lower 250 bits are compared pairwise under the same selector.
    for published, computed in zip(
        tuple(published_bits)[:250],
        tuple(computed_bits)[:250],
        strict=True,
    ):
        first, second = relation[cursor], relation[cursor + 1]
        if first[0] != {selector: 1} or first[1] != {
            published: ORDER - 1,
            computed: 1,
        }:
            raise ValueError(f"dleq: regulated challenge row {cursor} drifted")
        helper = next(iter(first[2]), None)
        if helper is None or not _is_zero_copy_row(second, helper):
            raise ValueError(f"dleq: regulated challenge pair {cursor} drifted")
        cursor += 2
    if cursor != comparison.stop:
        raise ValueError("dleq: comparison rows are not covered exactly once")

    return DleqRecovery(
        on_curve_blocks=on_curve_blocks,
        scalar_blocks=tuple(range(start, start + 506) for start in scalar_starts),
        ladder_blocks=ladder_blocks,
        compress_blocks=compress_blocks,
        poseidon7_block=poseidon7_block,
        comparison_block=comparison,
        bit_bases=bit_bases,
        is_regulated_wire=selector,
        compress_reference_to_local=compress_reference_to_local,
    )
