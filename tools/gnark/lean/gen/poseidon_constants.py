"""Read canonical Poseidon377 round constants from the Go parity vectors."""

from __future__ import annotations

from functools import lru_cache
from pathlib import Path

from formal_json import read_json_object


ROOT = Path(__file__).resolve().parents[4]
VECTORS = (
    ROOT / "tools/gnark/internal/primitives/vectors/phase05_vectors.json"
)


@lru_cache(maxsize=None)
def rounds(rate: int) -> tuple[tuple[str, tuple[int, ...]], ...]:
    """Return each round's fixed-module function name and constants."""

    vectors = read_json_object(VECTORS, canonical="pretty_go")["poseidon377"]
    key = f"rate_{rate}"
    if key not in vectors:
        raise ValueError(f"missing Poseidon377 {key} vectors")
    config = vectors[key]
    width = rate + 1
    full_rounds = config["full_rounds"]
    partial_rounds = config["partial_rounds"]
    if (
        config["alpha"] != 17
        or config["rate"] != rate
        or config["width"] != width
        or full_rounds <= 0
        or full_rounds % 2 != 0
        or partial_rounds <= 0
    ):
        raise ValueError(f"unsupported Poseidon377 {key} configuration")
    round_count = full_rounds + partial_rounds
    arc = config["arc"]
    if len(arc) != round_count * width:
        raise ValueError(
            f"Poseidon377 {key} has {len(arc)} constants, "
            f"expected {round_count * width}"
        )
    full_half = full_rounds // 2
    result = []
    for index in range(round_count):
        is_full = index < full_half or index >= full_half + partial_rounds
        function = f"{'fr' if is_full else 'pr'}{width}"
        offset = index * width
        result.append(
            (function, tuple(int(value) for value in arc[offset : offset + width]))
        )
    return tuple(result)
