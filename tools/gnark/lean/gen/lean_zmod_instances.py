"""Normalize generated Lean relations to choice-free ``ZMod`` operations."""

from __future__ import annotations

import pathlib
import re


INSTANCE_BLOCK = """local instance (priority := 2000) : CommRing F := ZMod.commRing _
local instance (priority := 3000) : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) : Ring F := (ZMod.commRing _).toRing
"""


def named_instance_block(owner: str, *, include_add_semigroup: bool = False) -> str:
    """Give a generated module's local ring instances collision-free names."""
    if not re.fullmatch(r"[A-Za-z][A-Za-z0-9]*", owner):
        raise ValueError(f"invalid Lean instance owner: {owner!r}")
    block = re.sub(
        r"(?m)^local instance (\(priority := \d+\)) : ([A-Za-z0-9]+) F :=",
        rf"local instance \1 {owner}\2 : \2 F :=",
        INSTANCE_BLOCK,
    )
    if include_add_semigroup:
        anchor = (
            f"local instance (priority := 3000) {owner}Add : Add F := "
            "(ZMod.commRing _).toAdd\n"
        )
        block = block.replace(
            anchor,
            anchor
            + f"local instance (priority := 3000) {owner}AddSemigroup : "
            "AddSemigroup F := (ZMod.commRing _).toAddSemigroup\n",
        )
    return block


_F_ABBREV = re.compile(r"(?m)^(abbrev F(?:\s*:\s*[^:=\n]+)?\s*:=\s*[^\n]+)\n")
_OWNED_INSTANCE = re.compile(
    r"(?m)^local instance \(priority := (?:2000|3000)\) : "
    r"(?:CommRing|Add|Mul|NatCast|Zero|One|Neg|Sub|MulOneClass|CommSemiring|Ring) F := .*\n"
)


def normalize_choice_free_zmod(text: str) -> str:
    """Seat generated field syntax on ``ZMod.commRing`` without changing terms."""
    if INSTANCE_BLOCK.rstrip() in text:
        return text
    text = _OWNED_INSTANCE.sub("", text)
    match = _F_ABBREV.search(text)
    if match is None:
        raise ValueError("generated Lean relation has no F abbreviation")
    return text[: match.end()] + INSTANCE_BLOCK + text[match.end() :]


def normalize_choice_free_zmod_file(path: pathlib.Path) -> bool:
    """Normalize ``path`` in place and report whether its bytes changed."""
    original = path.read_text()
    normalized = normalize_choice_free_zmod(original)
    if normalized == original:
        return False
    path.write_text(normalized)
    return True
