#!/usr/bin/env python3
"""Fail-closed recovery for deployed gnark radix-4 variable-base ladders."""

from __future__ import annotations

from dataclasses import dataclass
from typing import Iterable, Mapping, Sequence


Lc = dict[int, int]
Row = tuple[Lc, Lc, Lc]


@dataclass(frozen=True)
class PointLC:
    x: tuple[tuple[int, int], ...]
    y: tuple[tuple[int, int], ...]

    @staticmethod
    def of(x: Mapping[int, int], y: Mapping[int, int]) -> "PointLC":
        return PointLC(tuple(sorted(x.items())), tuple(sorted(y.items())))

    def x_lc(self) -> Lc:
        return dict(self.x)

    def y_lc(self) -> Lc:
        return dict(self.y)


@dataclass(frozen=True)
class DoubleBlock:
    rows: tuple[int, ...]
    source: PointLC
    output: PointLC


@dataclass(frozen=True)
class AddBlock:
    rows: tuple[int, ...]
    left: PointLC
    right: PointLC
    output: PointLC


@dataclass(frozen=True)
class LookupBlock:
    rows: tuple[int, ...]
    high_wire: int
    low_wire: int
    output: PointLC


@dataclass(frozen=True)
class WindowBlock:
    high_index: int
    low_index: int
    first_double: DoubleBlock
    second_double: DoubleBlock
    lookup: LookupBlock
    addition: AddBlock


@dataclass(frozen=True)
class TailBlock:
    low_wire: int
    double: DoubleBlock
    addition: AddBlock
    select_rows: tuple[int, int]
    output: PointLC


@dataclass(frozen=True)
class Window2Trace:
    bit_count: int
    start_row: int
    end_row: int
    bit_wires: tuple[int, ...]
    base: PointLC
    twice: DoubleBlock
    triple: AddBlock
    initial_lookup: LookupBlock
    windows: tuple[WindowBlock, ...]
    tail: TailBlock | None
    output: PointLC

    @property
    def owned_rows(self) -> tuple[int, ...]:
        return tuple(range(self.start_row, self.end_row))


def _clean(value: Mapping[int, int], order: int) -> Lc:
    result: Lc = {}
    for wire, coefficient in value.items():
        reduced = coefficient % order
        if reduced:
            result[wire] = reduced
    return result


def _add(order: int, *values: Mapping[int, int]) -> Lc:
    result: Lc = {}
    for value in values:
        for wire, coefficient in value.items():
            result[wire] = (result.get(wire, 0) + coefficient) % order
    return _clean(result, order)


def _scale(order: int, coefficient: int, value: Mapping[int, int]) -> Lc:
    return _clean(
        {wire: coefficient * item for wire, item in value.items()}, order
    )


def _wire(wire: int) -> Lc:
    return {wire: 1}


def _singleton(value: Mapping[int, int], label: str) -> int:
    if len(value) != 1:
        raise ValueError(f"{label}: expected one wire, got {dict(value)}")
    wire, coefficient = next(iter(value.items()))
    if wire == 0 or coefficient != 1:
        raise ValueError(f"{label}: expected a positive unit wire, got {dict(value)}")
    return wire


def _expect(row: Row, expected: Row, label: str) -> None:
    if row != expected and row != (expected[1], expected[0], expected[2]):
        raise ValueError(f"{label} drifted: got {row}, expected {expected}")


def recover_double(
    rows: Sequence[Row], row: int, source: PointLC, *, order: int
) -> DoubleBlock:
    x, y = source.x_lc(), source.y_lc()
    xy = _singleton(rows[row][2], f"double row {row} xy")
    xx = _singleton(rows[row + 1][2], f"double row {row + 1} xx")
    yy = _singleton(rows[row + 2][2], f"double row {row + 2} yy")
    _expect(rows[row], (x, y, _wire(xy)), f"double row {row}")
    _expect(rows[row + 1], (x, x, _wire(xx)), f"double row {row + 1}")
    _expect(rows[row + 2], (y, y, _wire(yy)), f"double row {row + 2}")
    out_x = _singleton(rows[row + 3][0], f"double row {row + 3} out X")
    out_y = _singleton(rows[row + 4][0], f"double row {row + 4} out Y")
    _expect(
        rows[row + 3],
        (_wire(out_x), _add(order, _wire(yy), _scale(order, -1, _wire(xx))),
         _scale(order, 2, _wire(xy))),
        f"double row {row + 3}",
    )
    _expect(
        rows[row + 4],
        (_wire(out_y), _add(order, {0: 2}, _wire(xx), _scale(order, -1, _wire(yy))),
         _add(order, _wire(xx), _wire(yy))),
        f"double row {row + 4}",
    )
    return DoubleBlock(
        tuple(range(row, row + 5)), source,
        PointLC.of(_wire(out_x), _wire(out_y)),
    )


def recover_add(
    rows: Sequence[Row], row: int, left: PointLC, right: PointLC, *, order: int
) -> AddBlock:
    px, py = left.x_lc(), left.y_lc()
    qx, qy = right.x_lc(), right.y_lc()
    t0 = _singleton(rows[row][2], f"add row {row} t0")
    t1 = _singleton(rows[row + 1][2], f"add row {row + 1} t1")
    t2 = _singleton(rows[row + 2][2], f"add row {row + 2} t2")
    t3 = _singleton(rows[row + 3][2], f"add row {row + 3} t3")
    _expect(rows[row], (_add(order, px, py), _add(order, qx, qy), _wire(t0)),
            f"add row {row}")
    _expect(rows[row + 1], (px, qy, _wire(t1)), f"add row {row + 1}")
    _expect(rows[row + 2], (py, qx, _wire(t2)), f"add row {row + 2}")
    _expect(rows[row + 3], ({t1: 3021}, _wire(t2), _wire(t3)),
            f"add row {row + 3}")
    out_x = _singleton(rows[row + 4][0], f"add row {row + 4} out X")
    out_y = _singleton(rows[row + 5][0], f"add row {row + 5} out Y")
    _expect(rows[row + 4], (_wire(out_x), _add(order, {0: 1}, _wire(t3)),
                                 _add(order, _wire(t1), _wire(t2))),
            f"add row {row + 4}")
    _expect(rows[row + 5], (_wire(out_y), _add(order, {0: 1}, _scale(order, -1, _wire(t3))),
                                 _add(order, _wire(t0), _scale(order, -1, _wire(t1)),
                                      _scale(order, -1, _wire(t2)))),
            f"add row {row + 5}")
    return AddBlock(
        tuple(range(row, row + 6)), left, right,
        PointLC.of(_wire(out_x), _wire(out_y)),
    )


def recover_lookup(
    rows: Sequence[Row], row: int, *, high_wire: int, low_wire: int,
    base: PointLC, twice: PointLC, triple: PointLC, order: int,
) -> LookupBlock:
    outputs: list[Lc] = []
    identity = PointLC.of({}, {0: 1})
    for axis, offset in (("x", 0), ("y", 3)):
        i0 = getattr(identity, f"{axis}_lc")()
        i1 = getattr(twice, f"{axis}_lc")()
        i2 = getattr(base, f"{axis}_lc")()
        i3 = getattr(triple, f"{axis}_lc")()
        first = _singleton(rows[row + offset][2], f"lookup {axis} tmp product")
        second = _singleton(rows[row + offset + 1][2], f"lookup {axis} high product")
        third = _singleton(rows[row + offset + 2][2], f"lookup {axis} low product")
        interpolation = _add(order, i3, i0, _scale(order, -1, i2),
                             _scale(order, -1, i1))
        tmp1 = _add(order, _wire(first), i1, _scale(order, -1, i0))
        _expect(rows[row + offset], (_wire(low_wire), interpolation, _wire(first)),
                f"lookup {axis} row {row + offset}")
        _expect(rows[row + offset + 1], (_wire(high_wire), tmp1, _wire(second)),
                f"lookup {axis} row {row + offset + 1}")
        _expect(rows[row + offset + 2],
                (_wire(low_wire), _add(order, i2, _scale(order, -1, i0)), _wire(third)),
                f"lookup {axis} row {row + offset + 2}")
        outputs.append(_add(order, i0, _wire(second), _wire(third)))
    return LookupBlock(
        tuple(range(row, row + 6)), high_wire, low_wire,
        PointLC.of(outputs[0], outputs[1]),
    )


def recover_window2(
    rows: Sequence[Row], *, start_row: int, bit_wires: Sequence[int],
    base: PointLC, order: int, expected_output: PointLC | None = None,
    expected_end_row: int | None = None,
) -> Window2Trace:
    """Recover one complete Window2 block and prove exact row ownership.

    `bit_wires` is little-endian. `start_row` is the first precomputation
    double row, after Booleanity and recomposition owned by the caller.
    """
    if len(bit_wires) < 2:
        raise ValueError("Window2 recovery requires at least two scalar bits")
    if len(set(bit_wires)) != len(bit_wires):
        raise ValueError("Window2 bit wires must be distinct")
    bit_count = len(bit_wires)
    row = start_row
    twice = recover_double(rows, row, base, order=order)
    row += 5
    triple = recover_add(rows, row, twice.output, base, order=order)
    row += 6
    high_index = bit_count - 1
    initial = recover_lookup(
        rows, row, high_wire=bit_wires[high_index],
        low_wire=bit_wires[high_index - 1], base=base,
        twice=twice.output, triple=triple.output, order=order,
    )
    row += 6
    accumulator = initial.output
    windows: list[WindowBlock] = []
    high_index -= 2
    while high_index >= 1:
        first = recover_double(rows, row, accumulator, order=order)
        row += 5
        second = recover_double(rows, row, first.output, order=order)
        row += 5
        lookup = recover_lookup(
            rows, row, high_wire=bit_wires[high_index],
            low_wire=bit_wires[high_index - 1], base=base,
            twice=twice.output, triple=triple.output, order=order,
        )
        row += 6
        addition = recover_add(rows, row, second.output, lookup.output, order=order)
        row += 6
        windows.append(WindowBlock(
            high_index, high_index - 1, first, second, lookup, addition
        ))
        accumulator = addition.output
        high_index -= 2

    tail: TailBlock | None = None
    if bit_count % 2 == 1:
        shifted = recover_double(rows, row, accumulator, order=order)
        row += 5
        with_low = recover_add(rows, row, shifted.output, base, order=order)
        row += 6
        deltas: list[int] = []
        for axis, select_row in (("x", row), ("y", row + 1)):
            shifted_lc = getattr(shifted.output, f"{axis}_lc")()
            with_low_lc = getattr(with_low.output, f"{axis}_lc")()
            delta = _singleton(rows[select_row][2], f"tail select {axis} delta")
            _expect(
                rows[select_row],
                (_wire(bit_wires[0]),
                 _add(order, with_low_lc, _scale(order, -1, shifted_lc)),
                 _wire(delta)),
                f"tail select {axis} row {select_row}",
            )
            deltas.append(delta)
        output = PointLC.of(
            _add(order, shifted.output.x_lc(), _wire(deltas[0])),
            _add(order, shifted.output.y_lc(), _wire(deltas[1])),
        )
        tail = TailBlock(
            bit_wires[0], shifted, with_low, (row, row + 1), output
        )
        row += 2
    else:
        output = accumulator

    if expected_end_row is not None and row != expected_end_row:
        raise ValueError(f"Window2 block ended at row {row}, expected {expected_end_row}")
    if expected_output is not None and output != expected_output:
        raise ValueError(f"Window2 output drifted: got {output}, expected {expected_output}")
    return Window2Trace(
        bit_count, start_row, row, tuple(bit_wires), base, twice, triple,
        initial, tuple(windows), tail, output,
    )


def render_lc(
    value: Mapping[int, int], *, order: int, rho: str = "rho",
    signed: bool = True, constant_unsigned: bool = False,
) -> str:
    """Render an LC as a small Lean expression, including affine outputs."""
    terms: list[str] = []
    for wire, coefficient in sorted(_clean(value, order).items()):
        rendered = (
            coefficient
            if not signed or (wire == 0 and constant_unsigned)
                or coefficient <= order // 2
            else coefficient - order
        )
        atom = "(1 : F)" if wire == 0 else f"{rho} {wire}"
        if rendered == 1:
            terms.append(atom)
        elif rendered == -1:
            terms.append(f"-({atom})")
        else:
            terms.append(f"({rendered} : F) * ({atom})")
    return "0" if not terms else " + ".join(terms)


def render_point(
    point: PointLC, *, order: int, rho: str = "rho", signed: bool = True,
    constant_unsigned: bool = False,
) -> str:
    return (
        f"⟨{render_lc(point.x_lc(), order=order, rho=rho, signed=signed, constant_unsigned=constant_unsigned)}, "
        f"{render_lc(point.y_lc(), order=order, rho=rho, signed=signed, constant_unsigned=constant_unsigned)}⟩"
    )


def all_block_rows(trace: Window2Trace) -> set[int]:
    """Return exact owned rows for composition with enclosing templates."""
    return set(trace.owned_rows)
