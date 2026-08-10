#!/usr/bin/env python3
"""Generate the exact deployed AssetRegistryGap semantic provider.

The 3,542-row template is the gap body only.  It proves three canonical field
decompositions, two strict comparisons, exact equality, their product, and the
algebraic selector equation.  Selector Booleanity and terminal acceptance are
intentionally not smuggled into this provider: they are separate circuit rows.
"""

from __future__ import annotations

import gzip
import hashlib
import json
import re
from contextlib import contextmanager
from dataclasses import dataclass
from pathlib import Path

import composite_recovery as canonical
import dtk_recovery as dtk
import formal_json
from lean_zmod_instances import named_instance_block
from write_if_changed import write_if_changed


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
FORMAL = LEAN / "ShielddGnarkFormal"
RELATIONS = FORMAL / "Deployed/Templates/Relations"
OUT = FORMAL / "Deployed/Templates/Semantics"
ARTIFACTS = ROOT / "tools/gnark/artifacts"
REGISTRY = ARTIFACTS / "proof-template-registry.json"
INVENTORY = ARTIFACTS / "certified-template-inventory.json"

OPERATION = "gadget.asset_registry_gap"


@dataclass(frozen=True)
class Provider:
    digest: str
    circuit: str
    segment_index: int
    constant_vector_sha256_hex: str
    class_key: str

    @property
    def key(self) -> str:
        return f"{OPERATION}@{self.digest}"

    @property
    def name(self) -> str:
        return f"TGadgetAssetRegistryGap_{self.digest}"


WITHDRAWAL_PROVIDER = Provider(
    digest=(
        "065363064f972be51f745a7bec46e6e0"
        "f0c9c09b4e427ff20db1f565927ea6c3"
    ),
    circuit="shielded_ics20_withdrawal",
    segment_index=14,
    constant_vector_sha256_hex=(
        "0b873499921546bdd7daf37a1d363829"
        "39d8f51f493f1e7d70a7f7432f9ad0bb"
    ),
    class_key="gadget.asset_registry_gap@07f861b269e76a86",
)
TRANSFER_PROVIDER = Provider(
    digest=(
        "591fb66ca52e78949435ff7a2c295491"
        "598433f2c79f6bc52f502bf9c7dc4b16"
    ),
    circuit="transfer",
    segment_index=25,
    constant_vector_sha256_hex=(
        "80f749d35ec65bcc26fc64a1eb12b16"
        "d32380937c38fe7577974926aae25f396"
    ),
    class_key="gadget.asset_registry_gap@07f861b269e76a86",
)
PROVIDERS = (WITHDRAWAL_PROVIDER, TRANSFER_PROVIDER)

# The rendering helpers are intentionally shared because both active deployed
# relations have exactly the same canonical rows.  This context selects the
# exact relation module being rendered; generated_files validates row equality
# before it accepts either provider family.
DIGEST = TRANSFER_PROVIDER.digest
KEY = TRANSFER_PROVIDER.key
NAME = TRANSFER_PROVIDER.name
RELATION = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{NAME}"
RELATION_IMPORT = RELATION.replace(
    "Shieldd.GnarkFormal", "ShielddGnarkFormal"
)
NAMESPACE = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{NAME}"
MODULE_PREFIX = NAMESPACE.replace(
    "Shieldd.GnarkFormal", "ShielddGnarkFormal"
)

ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041
ROW_COUNT = 3542
LOCAL_WIRE_COUNT = 3046
PART_SIZE = 80
CANONICAL_CHUNK = 16
# Two algebra-heavy steps keep a fresh comparator chunk comfortably below the
# strict 120-second aggregator budget; the facade composes 127 opaque ranges.
COMPARATOR_CHUNK = 2


@contextmanager
def _provider_context(provider: Provider):
    global DIGEST, KEY, NAME, RELATION, RELATION_IMPORT, NAMESPACE
    global MODULE_PREFIX

    saved = (
        DIGEST,
        KEY,
        NAME,
        RELATION,
        RELATION_IMPORT,
        NAMESPACE,
        MODULE_PREFIX,
    )
    DIGEST = provider.digest
    KEY = provider.key
    NAME = provider.name
    RELATION = (
        "Shieldd.GnarkFormal.Deployed.Templates.Relations."
        f"{NAME}"
    )
    RELATION_IMPORT = RELATION.replace(
        "Shieldd.GnarkFormal", "ShielddGnarkFormal"
    )
    NAMESPACE = (
        "Shieldd.GnarkFormal.Deployed.Templates.Semantics."
        f"{NAME}"
    )
    MODULE_PREFIX = NAMESPACE.replace(
        "Shieldd.GnarkFormal", "ShielddGnarkFormal"
    )
    try:
        yield
    finally:
        (
            DIGEST,
            KEY,
            NAME,
            RELATION,
            RELATION_IMPORT,
            NAMESPACE,
            MODULE_PREFIX,
        ) = saved


@dataclass(frozen=True)
class CanonicalBlock:
    label: str
    start: int
    bit_base: int
    input_wire: int

    @property
    def dtk(self) -> dtk.CanonicalBlock:
        return dtk.CanonicalBlock(
            self.label,
            self.input_wire,
            self.bit_base,
            self.start,
            self.start + 253,
            self.start + 254,
        )


CANONICAL_BLOCKS = (
    CanonicalBlock("Leaf", 0, 1, 254),
    CanonicalBlock("Id", 506, 341, 594),
    CanonicalBlock("Next", 1012, 681, 934),
)


@dataclass(frozen=True)
class Comparator:
    label: str
    start: int
    left_bits: str
    left_base: int
    right_bits: str
    right_base: int
    term0: int
    product0: int
    term_start: int
    pe_start: int

    @property
    def prefix(self) -> str:
        return self.label[0].lower() + self.label[1:]

    def rows(self, processed: int) -> tuple[int, ...]:
        if processed == 0:
            return (self.start, self.start + 1)
        base = self.start + 2 + 4 * (processed - 1)
        return (base, base + 1, base + 2, base + 3)


COMPARATORS = (
    Comparator(
        "Lower", 1520, "leafBits", 1, "idBits", 341,
        1023, 1024, 1026, 1028,
    ),
    Comparator(
        "Upper", 2530, "idBits", 341, "nextBits", 681,
        2033, 2034, 2036, 2038,
    ),
)


def lc_wire(wire: int, coefficient: int = 1) -> canonical.Lc:
    return canonical._lc_scale(
        coefficient % ORDER, canonical._lc_wire(wire)
    )


def lc_add(*values: canonical.Lc) -> canonical.Lc:
    result: canonical.Lc = {}
    for value in values:
        result = canonical._lc_add(result, value)
    return result


def lc_scale(coefficient: int, value: canonical.Lc) -> canonical.Lc:
    return canonical._lc_scale(coefficient % ORDER, value)


def singleton(value: canonical.Lc, label: str) -> int:
    if len(value) != 1:
        raise ValueError(f"{label}: expected singleton, got {value}")
    wire, coefficient = next(iter(value.items()))
    if wire == 0 or coefficient != 1:
        raise ValueError(
            f"{label}: expected coefficient-one wire, got {value}"
        )
    return wire


def _registry_entry() -> dict:
    entries = formal_json.read_template_registry(REGISTRY)["templates"]
    matches = [
        entry for entry in entries
        if entry["proof_template_id"] == KEY
    ]
    if len(matches) != 1:
        raise ValueError(f"{KEY}: expected one registry entry")
    entry = matches[0]
    expected = {
        "op": "gadget.asset_registry_gap",
        "canonical_relation_sha256_hex": DIGEST,
        "canonical_relation_file":
            f"proof-template-relations/{DIGEST}.sr1cs.gz",
        "row_count": ROW_COUNT,
        "local_wire_count": LOCAL_WIRE_COUNT,
    }
    for field, value in expected.items():
        if entry.get(field) != value:
            raise ValueError(
                f"{KEY}: registry {field} drifted: "
                f"{entry.get(field)!r} != {value!r}"
            )
    return entry


def _validate_registry_roster() -> None:
    entries = formal_json.read_template_registry(REGISTRY)["templates"]
    keys = [
        entry.get("proof_template_id")
        for entry in entries
        if entry.get("op") == OPERATION
        or str(entry.get("proof_template_id", "")).startswith(
            OPERATION + "@"
        )
    ]
    expected = {provider.key for provider in PROVIDERS}
    if len(keys) != len(set(keys)) or set(keys) != expected:
        raise ValueError(
            "asset-registry-gap registry key roster drifted: "
            f"{sorted(keys)!r} != {sorted(expected)!r}"
        )


def rows() -> list[canonical.Row]:
    entry = _registry_entry()
    path = ARTIFACTS / entry["canonical_relation_file"]
    with gzip.open(path, "rb") as source:
        raw = source.read()
    if hashlib.sha256(raw).hexdigest() != DIGEST:
        raise ValueError(f"{KEY}: canonical relation digest mismatch")
    relation = canonical.rows(DIGEST)
    if len(relation) != ROW_COUNT:
        raise ValueError(
            f"{KEY}: expected {ROW_COUNT} rows, got {len(relation)}"
        )
    if canonical.used_wires(relation) != set(range(LOCAL_WIRE_COUNT)):
        raise ValueError(
            f"{KEY}: local wire domain is not exactly "
            f"0..{LOCAL_WIRE_COUNT - 1}"
        )
    return relation


def rows_for(provider: Provider) -> list[canonical.Row]:
    with _provider_context(provider):
        return rows()


def _validate_inventory_payload(payload: dict) -> None:
    templates = payload.get("templates")
    if not isinstance(templates, list):
        raise ValueError("asset-registry-gap inventory is not an array")
    entries = [
        entry
        for entry in templates
        if isinstance(entry, dict)
        and (
            entry.get("op") == OPERATION
            or str(entry.get("template_key", "")).startswith(
                OPERATION + "@"
            )
        )
    ]
    expected_keys = {provider.key for provider in PROVIDERS}
    actual_keys = [entry.get("template_key") for entry in entries]
    if len(actual_keys) != len(set(actual_keys)):
        raise ValueError(
            "asset-registry-gap inventory contains duplicate template keys"
        )
    if set(actual_keys) != expected_keys:
        raise ValueError(
            "asset-registry-gap inventory key roster drifted: "
            f"{sorted(actual_keys)!r} != {sorted(expected_keys)!r}"
        )

    expected_entry_fields = {
        "template_key",
        "op",
        "normalized_relation_sha256_hex",
        "constraint_count",
        "local_wire_count",
        "instances",
        "circuits",
        "distinct_constant_vectors",
        "representative",
    }
    by_key = {entry["template_key"]: entry for entry in entries}
    instance_fields = {
        "circuit",
        "segment_index",
        "constraint_count",
        "constant_vector_sha256_hex",
        "class_key",
    }
    for provider in PROVIDERS:
        entry = by_key[provider.key]
        if set(entry) != expected_entry_fields:
            raise ValueError(
                f"{provider.key}: inventory entry fields drifted"
            )
        expected = {
            "template_key": provider.key,
            "op": OPERATION,
            "normalized_relation_sha256_hex": provider.digest,
            "constraint_count": ROW_COUNT,
            "local_wire_count": LOCAL_WIRE_COUNT,
            "circuits": [provider.circuit],
            "distinct_constant_vectors": 1,
            "representative": {
                "circuit": provider.circuit,
                "segment_index": provider.segment_index,
            },
        }
        for field, value in expected.items():
            if entry.get(field) != value:
                raise ValueError(
                    f"{provider.key}: inventory {field} drifted: "
                    f"{entry.get(field)!r} != {value!r}"
                )

        instances = entry.get("instances")
        if not isinstance(instances, list) or len(instances) != 1:
            raise ValueError(
                f"{provider.key}: expected exactly one deployed instance"
            )
        instance = instances[0]
        if not isinstance(instance, dict):
            raise ValueError(
                f"{provider.key}: deployed instance is not an object"
            )
        if set(instance) != instance_fields:
            raise ValueError(
                f"{provider.key}: deployed instance fields drifted"
            )
        expected_instance = {
            "circuit": provider.circuit,
            "segment_index": provider.segment_index,
            "constraint_count": ROW_COUNT,
            "constant_vector_sha256_hex": (
                provider.constant_vector_sha256_hex
            ),
            "class_key": provider.class_key,
        }
        for field, value in expected_instance.items():
            if instance.get(field) != value:
                raise ValueError(
                    f"{provider.key}: deployed instance {field} drifted: "
                    f"{instance.get(field)!r} != {value!r}"
                )


def _validate_inventory() -> None:
    _validate_inventory_payload(
        formal_json.read_template_inventory(INVENTORY)
    )


def _validate_modulus_ladder(
    relation: list[canonical.Row], block: CanonicalBlock
) -> None:
    if ((ORDER - 1) >> 252) & 1 != 1:
        raise AssertionError("scalar modulus top-bit assumption drifted")

    flags = {252: block.bit_base + 252}
    cursor = block.start + 254
    allocated = {
        0,
        block.input_wire,
        *range(block.bit_base, block.bit_base + 253),
    }
    next_flag = block.input_wire + 1
    for bit in range(251, -1, -1):
        if ((ORDER - 1) >> bit) & 1 == 0:
            flags[bit] = flags[bit + 1]
            continue
        row = relation[cursor]
        output = singleton(
            row[2], f"{block.label}: modulus true row {cursor}"
        )
        expected = (
            lc_wire(flags[bit + 1]),
            lc_wire(block.bit_base + bit),
            lc_wire(output),
        )
        if row != expected:
            raise ValueError(
                f"{block.label}: modulus true row {cursor} drifted"
            )
        if output in allocated:
            raise ValueError(
                f"{block.label}: modulus flag wire {output} is not fresh"
            )
        if output != next_flag:
            raise ValueError(
                f"{block.label}: modulus flag wire {output} != "
                f"normalized wire {next_flag}"
            )
        allocated.add(output)
        flags[bit] = output
        next_flag += 1
        cursor += 1

    for bit in range(251, -1, -1):
        if ((ORDER - 1) >> bit) & 1 == 1:
            continue
        expected = (
            lc_wire(block.bit_base + bit),
            lc_add(
                lc_wire(0),
                lc_wire(block.bit_base + bit, -1),
                lc_wire(flags[bit + 1], -1),
            ),
            {},
        )
        if relation[cursor] != expected:
            raise ValueError(
                f"{block.label}: modulus false row {cursor} drifted"
            )
        cursor += 1

    if cursor != block.start + 506:
        raise AssertionError(
            f"{block.label}: modulus ladder ended at {cursor}"
        )


def _validate_canonical_blocks(relation: list[canonical.Row]) -> None:
    for block in CANONICAL_BLOCKS:
        recovered = canonical._canonical_block(
            relation, block.start, block.bit_base
        )
        if recovered != lc_wire(block.input_wire):
            raise ValueError(
                f"{block.label}: canonical input LC drifted: {recovered}"
            )
        _validate_modulus_ladder(relation, block)


def _pe_lc(comparator: Comparator, processed: int) -> canonical.Lc:
    if processed == 0:
        return lc_wire(0)
    if processed == 1:
        return lc_add(
            lc_wire(0),
            lc_wire(comparator.product0, 2),
            lc_wire(comparator.left_base + 252, -1),
            lc_wire(comparator.right_base + 252, -1),
        )
    return lc_wire(comparator.pe_start + 4 * (processed - 2))


def _validate_comparator(
    relation: list[canonical.Row], comparator: Comparator
) -> None:
    a0 = comparator.left_base + 252
    b0 = comparator.right_base + 252
    expected_first = (
        lc_wire(b0),
        lc_add(lc_wire(0), lc_wire(a0, -1)),
        lc_wire(comparator.term0),
    )
    expected_product = (
        lc_wire(a0),
        lc_wire(b0),
        lc_wire(comparator.product0),
    )
    if relation[comparator.start] != expected_first:
        raise ValueError(f"{comparator.label}: first less row drifted")
    if relation[comparator.start + 1] != expected_product:
        raise ValueError(f"{comparator.label}: first product row drifted")

    terms = [comparator.term0]
    for processed in range(1, 253):
        row0, row1, row2, row3 = comparator.rows(processed)
        bit = 252 - processed
        a = comparator.left_base + bit
        b = comparator.right_base + bit
        helper = singleton(
            relation[row0][2],
            f"{comparator.label} step {processed} helper",
        )
        term = singleton(
            relation[row1][2],
            f"{comparator.label} step {processed} term",
        )
        product = singleton(
            relation[row2][2],
            f"{comparator.label} step {processed} product",
        )
        pe = singleton(
            relation[row3][2],
            f"{comparator.label} step {processed} prefix",
        )
        first_left = lc_add(lc_wire(0), lc_wire(a, -1))
        first_right = _pe_lc(comparator, processed)
        if processed > 1:
            first_left, first_right = first_right, first_left
        expected = (
            (
                first_left,
                first_right,
                lc_wire(helper),
            ),
            (lc_wire(helper), lc_wire(b), lc_wire(term)),
            (lc_wire(a), lc_wire(b), lc_wire(product)),
            (
                _pe_lc(comparator, processed),
                lc_add(
                    lc_wire(0),
                    lc_wire(a, -1),
                    lc_wire(b, -1),
                    lc_wire(product, 2),
                ),
                lc_wire(pe),
            ),
        )
        actual = (
            relation[row0],
            relation[row1],
            relation[row2],
            relation[row3],
        )
        if actual != expected:
            raise ValueError(
                f"{comparator.label}: step {processed} drifted"
            )
        expected_term = comparator.term_start + 4 * (processed - 1)
        expected_helper = expected_term - 1
        expected_product = expected_term + 1
        expected_pe = comparator.pe_start + 4 * (processed - 1)
        if (
            helper != expected_helper
            or term != expected_term
            or product != expected_product
            or pe != expected_pe
        ):
            raise ValueError(
                f"{comparator.label}: stride seating drifted at "
                f"step {processed}"
            )
        terms.append(term)
    if len(terms) != 253:
        raise AssertionError("comparator term accounting bug")


def _validate_tail(relation: list[canonical.Row]) -> None:
    expected_zero = (
        (
            lc_wire(1021),
            lc_add(lc_wire(254), lc_wire(594, -1)),
            lc_add(lc_wire(0, -1), lc_wire(1022)),
        ),
        (
            lc_wire(1022),
            lc_add(lc_wire(254, -1), lc_wire(594)),
            {},
        ),
    )
    if tuple(relation[1518:1520]) != expected_zero:
        raise ValueError("exact-match is-zero rows drifted")
    lower = lc_add(
        lc_wire(COMPARATORS[0].term0),
        *(
            lc_wire(COMPARATORS[0].term_start + 4 * index)
            for index in range(252)
        ),
    )
    upper = lc_add(
        lc_wire(COMPARATORS[1].term0),
        *(
            lc_wire(COMPARATORS[1].term_start + 4 * index)
            for index in range(252)
        ),
    )
    expected_product = (lower, upper, lc_wire(3043))
    if relation[3540] != expected_product:
        raise ValueError("comparison product row drifted")
    expected_select = (
        lc_wire(3044),
        lc_add(lc_wire(1022), lc_wire(3043, -1)),
        lc_wire(3045),
    )
    if relation[3541] != expected_select:
        raise ValueError("algebraic selector row drifted")


def _validate_partition() -> None:
    claimed: list[int] = []
    for block in CANONICAL_BLOCKS:
        claimed.extend(range(block.start, block.start + 506))
    claimed.extend(range(1518, 1520))
    for comparator in COMPARATORS:
        claimed.extend(range(comparator.start, comparator.start + 1010))
    claimed.extend((3540, 3541))
    if claimed != list(range(ROW_COUNT)):
        raise AssertionError(
            "IMT-gap semantic block partition is not exact and contiguous"
        )


def validate_relation(relation: list[canonical.Row]) -> None:
    _validate_partition()
    _validate_canonical_blocks(relation)
    for comparator in COMPARATORS:
        _validate_comparator(relation, comparator)
    _validate_tail(relation)


def _relation_sources() -> str:
    base = RELATIONS / f"{NAME}Base.lean"
    facade = RELATIONS / f"{NAME}.lean"
    shards = sorted(
        RELATIONS.glob(f"{NAME}Defs*.lean"),
        key=lambda path: int(path.stem.removeprefix(NAME + "Defs")),
    )
    if not base.is_file() or not facade.is_file() or not shards:
        raise ValueError(f"{KEY}: normalized relation modules are missing")
    indices = [
        int(path.stem.removeprefix(NAME + "Defs"))
        for path in shards
    ]
    if indices != list(range(len(indices))):
        raise ValueError(f"{KEY}: relation shards are not contiguous")
    source = "\n".join(
        path.read_text() for path in (base, *shards, facade)
    )
    found = {
        int(value)
        for value in re.findall(r"def relationRow(\d+) ", source)
    }
    if found != set(range(ROW_COUNT)):
        raise ValueError(f"{KEY}: normalized Lean rows are not exact")
    return source


def _cfg() -> dtk.Instance:
    return dtk.Instance(
        seg=1,
        internal_base=dtk.BASE_INTERNAL,
        div_x=1,
        div_y=2,
        following_seg=2,
        wire_seating=tuple(range(LOCAL_WIRE_COUNT)),
    )


@contextmanager
def _dtk_canonical_context(source: str):
    saved_source = dtk.source
    saved_rows = dtk.ROW_COUNT
    saved_bits_field = dtk.bits_field
    saved_source_cache = dict(dtk._SOURCE_CACHE)
    saved_parts_cache = dict(dtk._RELATION_PARTS_CACHE)
    try:
        dtk.source = lambda seg: source if seg == 1 else saved_source(seg)
        dtk.ROW_COUNT = ROW_COUNT
        dtk.bits_field = lambda _cfg, _label: (
            "Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F"
        )
        dtk._SOURCE_CACHE.clear()
        dtk._RELATION_PARTS_CACHE.clear()
        yield
    finally:
        dtk.source = saved_source
        dtk.ROW_COUNT = saved_rows
        dtk.bits_field = saved_bits_field
        dtk._SOURCE_CACHE.clear()
        dtk._SOURCE_CACHE.update(saved_source_cache)
        dtk._RELATION_PARTS_CACHE.clear()
        dtk._RELATION_PARTS_CACHE.update(saved_parts_cache)


def _rewrite_canonical(source: str) -> str:
    old_module = (
        "ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1"
    )
    old_namespace = (
        "Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1"
    )
    source = "import ShielddGnarkFormal.ChoiceFreeZMod\n" + source
    source = source.replace(
        old_module + f".{NAME}Gap", MODULE_PREFIX + "Gap"
    )
    source = source.replace(
        old_module + ".DtkAdapterSeg1", MODULE_PREFIX + "Gap"
    )
    source = source.replace(old_module + ".Seg1", RELATION_IMPORT)
    source = source.replace(
        old_module + ".CompressAdapterCommon",
        "ShielddGnarkFormal.Deployed.Templates.Semantics."
        "BinaryRecomposition",
    )
    source = source.replace(
        f"namespace {old_namespace}", f"namespace {NAMESPACE}"
    ).replace(
        f"end {old_namespace}", f"end {NAMESPACE}"
    )
    source = source.replace("Seg1.F", "F")
    source = source.replace("Seg1.", RELATION + ".")
    source = source.replace("DtkAdapterSeg1", NAME + "Gap")
    source = source.replace("seg1", "gap")
    for label in ("Leaf", "Id", "Next"):
        source = source.replace(
            f"gap{label}Bits",
            f"{label[0].lower() + label[1:]}Bits",
        )
    anchor = f"namespace {NAMESPACE}\n\n"
    if source.count(anchor) != 1:
        raise ValueError("gap canonical namespace anchor drifted")
    source = source.replace(
        anchor,
        anchor
        + "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n",
        1,
    )
    for forbidden in (
        "NoteReshape2x1",
        "representativeRho",
        "representativeSeating",
        "Seg1.",
        "seg1",
    ):
        if forbidden in source:
            raise ValueError(
                f"gap canonical provider leaked {forbidden}"
            )
    return source


def emit_base() -> str:
    lines = [
        f"import {RELATION_IMPORT}",
        "import ShielddGnarkFormal.ChoiceFreeZMod",
        "import ShielddGnarkFormal.Deployed.PrimeOrder",
        "import ShielddGnarkFormal.Extracted.CanonicalFqBits",
        "import ShielddGnarkFormal.ImtGapBridge",
        "import ShielddGnarkFormal.StructuredLC",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 50000000",
        "set_option linter.unusedVariables false",
        "",
        f"namespace {NAMESPACE}",
        "",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
        "",
        f"def Order : Nat := {ORDER}",
        "abbrev F := Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F",
        "",
        "instance gapFactPrime : Fact (Nat.Prime Order) :=",
        "  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩",
        "",
        "instance gapCanonicalFactPrime : Fact (Nat.Prime "
        "Shieldd.GnarkFormal.Extracted.CanonicalFqBits.Order) :=",
        "  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩",
        "",
        "instance gapImtFactPrime : Fact (Nat.Prime "
        "Shieldd.GnarkFormal.Extracted.ImtGap.Order) :=",
        "  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩",
        "",
        named_instance_block(
            "gapProvider", include_add_semigroup=True
        ).rstrip(),
        "",
        "def toImtF (x : F) :",
        "    Shieldd.GnarkFormal.Extracted.ImtGap.F :=",
        "  cast (by rfl) x",
        "",
        "theorem toImtF_zero : toImtF (0 : F) = 0 := by rfl",
        "theorem toImtF_one : toImtF (1 : F) = 1 := by rfl",
        "theorem toImtF_add (a b : F) :",
        "    toImtF (a + b) = toImtF a + toImtF b := by rfl",
        "theorem toImtF_sub (a b : F) :",
        "    toImtF (a - b) = toImtF a - toImtF b := by rfl",
        "theorem toImtF_mul (a b : F) :",
        "    toImtF (a * b) = toImtF a * toImtF b := by rfl",
        "theorem toImtF_natCast (n : Nat) :",
        "    toImtF (n : F) =",
        "      (n : Shieldd.GnarkFormal.Extracted.ImtGap.F) := by rfl",
        "theorem toImtF_injective : Function.Injective toImtF := by",
        "  intro a b h",
        "  simpa only [toImtF] using h",
        "theorem toImtF_boolToZMod (b : Bool) :",
        "    toImtF (Bool.toZMod b : F) =",
        "      (Bool.toZMod b :",
        "        Shieldd.GnarkFormal.Extracted.ImtGap.F) := by",
        "  cases b <;> rfl",
        "",
        "def toImtBits (bits : List.Vector F 253) :",
        "    List.Vector Shieldd.GnarkFormal.Extracted.ImtGap.F 253 :=",
        "  cast (by rfl) bits",
        "",
    ]
    for block in CANONICAL_BLOCKS:
        bits = block.label[0].lower() + block.label[1:] + "Bits"
        lines += [
            f"def {bits} (rho : Nat → F) :",
            "    List.Vector Shieldd.GnarkFormal.Extracted."
            "CanonicalFqBits.F 253 :=",
            "  List.Vector.ofFn "
            f"(fun i : Fin 253 => rho ({block.bit_base} + i.val))",
            "",
            f"theorem {bits}_get (rho : Nat → F) "
            "(i : Nat) (hi : i < 253) :",
            f"    ({bits} rho)[i]! = rho ({block.bit_base} + i) := by",
            "  rw [getElem!_pos _ i (by simpa using hi)]",
            "  conv_lhs => rw [List.Vector.getElem_def]",
            f"  simp only [{bits}, List.Vector.toList_ofFn, "
            "List.getElem_ofFn]",
            "",
            f"def {bits}Imt (rho : Nat → F) :",
            "    List.Vector Shieldd.GnarkFormal.Extracted."
            "ImtGap.F 253 :=",
            f"  toImtBits ({bits} rho)",
            "",
            f"theorem {bits}Imt_get (rho : Nat → F) "
            "(i : Nat) (hi : i < 253) :",
            f"    ({bits}Imt rho)[i]! =",
            f"      toImtF (rho ({block.bit_base} + i)) := by",
            f"  change toImtF (({bits} rho)[i]!) =",
            f"    toImtF (rho ({block.bit_base} + i))",
            f"  rw [{bits}_get rho i hi]",
            "",
        ]
    lines += [
        "def lowerPe (rho : Nat → F) : Nat → F",
        "  | 0 => 1",
        "  | 1 => 1 + 2 * rho 1024 - rho 253 - rho 593",
        "  | n + 2 => rho (1028 + n * 4)",
        "",
        "def lowerIl (rho : Nat → F) : Nat → F",
        "  | 0 => 0",
        "  | n + 1 => rho 1023 +",
        "      Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 n",
        "",
        "def upperPe (rho : Nat → F) : Nat → F",
        "  | 0 => 1",
        "  | 1 => 1 + 2 * rho 2034 - rho 593 - rho 933",
        "  | n + 2 => rho (2038 + n * 4)",
        "",
        "def upperIl (rho : Nat → F) : Nat → F",
        "  | 0 => 0",
        "  | n + 1 => rho 2033 +",
        "      Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 n",
        "",
        "def lowerPeImt (rho : Nat → F) (n : Nat) :",
        "    Shieldd.GnarkFormal.Extracted.ImtGap.F :=",
        "  toImtF (lowerPe rho n)",
        "",
        "def lowerIlImt (rho : Nat → F) (n : Nat) :",
        "    Shieldd.GnarkFormal.Extracted.ImtGap.F :=",
        "  toImtF (lowerIl rho n)",
        "",
        "def upperPeImt (rho : Nat → F) (n : Nat) :",
        "    Shieldd.GnarkFormal.Extracted.ImtGap.F :=",
        "  toImtF (upperPe rho n)",
        "",
        "def upperIlImt (rho : Nat → F) (n : Nat) :",
        "    Shieldd.GnarkFormal.Extracted.ImtGap.F :=",
        "  toImtF (upperIl rho n)",
        "",
        "def selected (rho : Nat → F) : F := rho 3043 + rho 3045",
        "",
        "def spec (rho : Nat → F) : Prop :=",
        "  Shieldd.GnarkFormal.Extracted.ImtGap.BodyRelationSpec",
        "    (rho 594) (rho 3044) (rho 254) (rho 934)",
        "    (selected rho)",
        "",
        f"end {NAMESPACE}",
        "",
    ]
    return "\n".join(lines)


def _canonical_outputs(source: str) -> dict[Path, str]:
    cfg = _cfg()
    outputs: dict[Path, str] = {}
    previous: str | None = None
    with _dtk_canonical_context(source):
        relation_rows = dtk.relation_rows(cfg.seg)
        for block in CANONICAL_BLOCKS:
            proof_block = block.dtk
            component = f"{NAME}Gap{block.label}"
            rendered: dict[str, str] = {}
            rendered[f"{component}Rec"] = dtk.emit_canon_recover(
                cfg,
                proof_block,
                previous,
                base_component=f"{NAME}GapBase",
            )
            rendered[f"{component}Binary"] = dtk.emit_canon_binary(
                cfg, proof_block, f"{component}Rec"
            )
            rendered[f"{component}TrueDefs"] = (
                dtk.emit_canon_true_defs(
                    cfg,
                    proof_block,
                    relation_rows,
                    f"{component}Binary",
                )
            )
            previous_true = f"{component}TrueDefs"
            for chunk_index, _ in enumerate(dtk.canon_chunks()):
                name = f"{component}TrueChunk{chunk_index}"
                rendered[name] = dtk.emit_canon_true_chunk(
                    cfg,
                    proof_block,
                    relation_rows,
                    previous_true,
                    chunk_index,
                )
                previous_true = name
            rendered[f"{component}True"] = dtk.emit_canon_true_thread(
                cfg, proof_block, previous_true
            )
            previous_compare = f"{component}True"
            for chunk_index, _ in enumerate(dtk.canon_chunks()):
                name = f"{component}CompareChunk{chunk_index}"
                rendered[name] = dtk.emit_canon_compare_chunk(
                    cfg,
                    proof_block,
                    relation_rows,
                    previous_compare,
                    chunk_index,
                )
                previous_compare = name
            rendered[f"{component}Compare"] = dtk.emit_canon_compare(
                cfg, proof_block, previous_compare
            )
            rendered[f"{component}Chain"] = dtk.emit_canon_chain(
                cfg, proof_block, f"{component}Compare"
            )
            rendered[component] = dtk.emit_canon_block(
                cfg,
                block=proof_block,
                previous=f"{component}Chain",
            )
            for name, text in rendered.items():
                outputs[OUT / f"{name}.lean"] = _rewrite_canonical(text)
            previous = component
    return outputs


def _unpack(lines: list[str], keep_rows: set[int]) -> None:
    parts = [
        list(range(first, min(first + PART_SIZE, ROW_COUNT)))
        for first in range(0, ROW_COUNT, PART_SIZE)
    ]

    def projection(index: int, length: int) -> str:
        if not 0 <= index < length:
            raise ValueError("conjunction projection index out of range")
        suffix = ".2" * index
        if index + 1 < length:
            suffix += ".1"
        return suffix

    # Project only the rows used by the local proof. Destructuring the whole
    # relation and its 80-row shard leaves every discarded conjunction member
    # as an inaccessible hypothesis; algebraic tactics then scan dozens of
    # irrelevant equations for every comparator step.
    for row in sorted(keep_rows):
        part_index = row // PART_SIZE
        part = parts[part_index]
        row_index = row - part[0]
        proof = (
            "h"
            + projection(part_index, len(parts))
            + projection(row_index, len(part))
        )
        lines.append(
            f"  have r{row} : {RELATION}.relationRow{row} rho := "
            f"{proof}"
        )


def _component_header(imports: list[str]) -> list[str]:
    return [
        *(f"import {item}" for item in imports),
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 50000000",
        "set_option linter.unusedVariables false",
        "",
        f"namespace {NAMESPACE}",
        "",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
        "",
    ]


def _component_footer() -> list[str]:
    return ["", f"end {NAMESPACE}", ""]


def _step_name(comparator: Comparator, processed: int) -> str:
    return f"{comparator.prefix}Step{processed}"


def _pe_name(comparator: Comparator) -> str:
    return f"{comparator.prefix}Pe"


def _il_name(comparator: Comparator) -> str:
    return f"{comparator.prefix}Il"


def _emit_step(
    lines: list[str],
    comparator: Comparator,
    processed: int,
) -> None:
    bit = 252 - processed
    remaining = 253 - processed
    rows = comparator.rows(processed)
    pe = _pe_name(comparator)
    il = _il_name(comparator)
    left_imt = comparator.left_bits + "Imt"
    right_imt = comparator.right_bits + "Imt"
    pe_imt = pe + "Imt"
    il_imt = il + "Imt"
    if processed == 0:
        current_pe = "(1 : F)"
    elif processed == 1:
        current_pe = (
            f"(1 + 2 * rho {comparator.product0} "
            f"- rho {comparator.left_base + 252} "
            f"- rho {comparator.right_base + 252})"
        )
    else:
        current_pe = (
            f"rho {comparator.pe_start + 4 * (processed - 2)}"
        )
    lines += [
        f"theorem {_step_name(comparator, processed)} "
        "(rho : Nat → F) (h :",
        f"    {RELATION}.relation rho)",
        "    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)",
        "    (tail :",
        "      Shieldd.GnarkFormal.Extracted.ImtGap.ltRec",
        f"        ({left_imt} rho) ({right_imt} rho) k",
        f"        {remaining - 1} ({pe_imt} rho {processed + 1}) "
        f"({il_imt} rho {processed + 1})) :",
        "    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec",
        f"      ({left_imt} rho) ({right_imt} rho) k",
        f"      {remaining} ({pe_imt} rho {processed}) "
        f"({il_imt} rho {processed}) := by",
    ]
    _unpack(lines, set(rows))
    for row in rows:
        lines.append(f"  unfold {RELATION}.relationRow{row} at r{row}")
    lines += [
        "  unfold Shieldd.GnarkFormal.Extracted.ImtGap.ltRec",
        "  rw [Shieldd.GnarkFormal.Extracted.ImtGap.lexLessStep_uncps]",
        "  change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec",
        f"    ({left_imt} rho) ({right_imt} rho) k {remaining - 1}",
        f"    ({pe_imt} rho {processed} *",
        "      (1 + 2 * "
        f"(({left_imt} rho)[{bit}]! * "
        f"({right_imt} rho)[{bit}]!)",
        f"        - ({left_imt} rho)[{bit}]!",
        f"        - ({right_imt} rho)[{bit}]!))",
        f"    ({il_imt} rho {processed} + {pe_imt} rho {processed} *",
        f"      ((1 - ({left_imt} rho)[{bit}]!) *",
        f"        ({right_imt} rho)[{bit}]!))",
        "  rw [show",
        f"      {pe_imt} rho {processed} *",
        "        (1 + 2 * "
        f"(({left_imt} rho)[{bit}]! * "
        f"({right_imt} rho)[{bit}]!)",
        f"          - ({left_imt} rho)[{bit}]!",
        f"          - ({right_imt} rho)[{bit}]!) =",
        f"        {pe_imt} rho {processed + 1} by",
        "    have hPe :",
        f"        {pe} rho {processed} *",
        "          (1 + 2 * "
        f"(({comparator.left_bits} rho)[{bit}]! * "
        f"({comparator.right_bits} rho)[{bit}]!)",
        f"            - ({comparator.left_bits} rho)[{bit}]!",
        f"            - ({comparator.right_bits} rho)[{bit}]!) =",
        f"          {pe} rho {processed + 1} := by",
        f"      rw [{comparator.left_bits}_get rho {bit} (by omega),",
        f"        {comparator.right_bits}_get rho {bit} (by omega)]",
        f"      simp only [{pe}, Nat.reduceAdd, Nat.reduceMul]",
    ]
    if processed == 0:
        lines.append(f"      linear_combination 2 * r{rows[1]}")
    else:
        lines.append(
            f"      linear_combination r{rows[3]} + "
            f"2 * ({current_pe}) * r{rows[2]}"
        )
    lines += [
        "    simpa only [",
        f"      {pe_imt},",
        f"      {comparator.left_bits}_get rho {bit} (by omega),",
        f"      {comparator.right_bits}_get rho {bit} (by omega),",
        f"      {left_imt}_get rho {bit} (by omega),",
        f"      {right_imt}_get rho {bit} (by omega),",
        "      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul,",
        "      toImtF_natCast] using congrArg toImtF hPe",
        "  , show",
        f"      {il_imt} rho {processed} + {pe_imt} rho {processed} *",
        f"        ((1 - ({left_imt} rho)[{bit}]!) *",
        f"          ({right_imt} rho)[{bit}]!) =",
        f"        {il_imt} rho {processed + 1} by",
        "    have hIl :",
        f"        {il} rho {processed} + {pe} rho {processed} *",
        f"          ((1 - ({comparator.left_bits} rho)[{bit}]!) *",
        f"            ({comparator.right_bits} rho)[{bit}]!) =",
        f"          {il} rho {processed + 1} := by",
        f"      rw [{comparator.left_bits}_get rho {bit} (by omega),",
        f"        {comparator.right_bits}_get rho {bit} (by omega)]",
        f"      simp only [{pe}, {il}, Nat.reduceAdd, Nat.reduceMul,",
        "        Shieldd.GnarkFormal.StrideRun.sumAux_zero]",
    ]
    if processed == 0:
        lines.append(f"      linear_combination r{rows[0]}")
    else:
        n = processed - 1
        term = comparator.term_start + 4 * n
        lines += [
            "      have hsum :",
            "          Shieldd.GnarkFormal.StrideRun.sumAux rho "
            f"{comparator.term_start} 4 {processed} =",
            "            Shieldd.GnarkFormal.StrideRun.sumAux rho "
            f"{comparator.term_start} 4 {n} + rho {term} := by",
            "        simpa using",
            "          (Shieldd.GnarkFormal.StrideRun.sumAux_succ rho",
            f"            {comparator.term_start} 4 {n})",
            "      rw [hsum]",
        ]
        if n == 0:
            lines += [
                "      simp only [",
                "        Shieldd.GnarkFormal.StrideRun.sumAux_zero]",
            ]
        lines += [
            f"      linear_combination "
            f"(rho {comparator.right_base + bit}) * r{rows[0]} "
            f"+ r{rows[1]}",
        ]
    lines += [
        "    simpa only [",
        f"      {pe_imt}, {il_imt},",
        f"      {comparator.left_bits}_get rho {bit} (by omega),",
        f"      {comparator.right_bits}_get rho {bit} (by omega),",
        f"      {left_imt}_get rho {bit} (by omega),",
        f"      {right_imt}_get rho {bit} (by omega),",
        "      toImtF_one, toImtF_add, toImtF_sub, toImtF_mul]",
        "      using congrArg toImtF hIl",
        "  ]",
        "  exact tail",
        "",
    ]


def emit_comparator_chunk(
    comparator: Comparator,
    chunk_index: int,
    previous: str,
) -> str:
    first = chunk_index * COMPARATOR_CHUNK
    last = min(first + COMPARATOR_CHUNK, 253)
    name = f"{NAME}Gap{comparator.label}Chunk{chunk_index}"
    lines = _component_header(
        [
            previous,
            "ShielddGnarkFormal.ImtGapBridge",
            "Mathlib.Tactic.LinearCombination",
            "Lean.Elab.Tactic.Omega",
        ]
    )
    for processed in range(first, last):
        _emit_step(lines, comparator, processed)
    range_name = f"{comparator.prefix}Range{chunk_index}"
    pe = _pe_name(comparator) + "Imt"
    il = _il_name(comparator) + "Imt"
    left = comparator.left_bits + "Imt"
    right = comparator.right_bits + "Imt"
    lines += [
        f"theorem {range_name} (rho : Nat → F)",
        f"    (h : {RELATION}.relation rho)",
        "    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)",
        "    (tail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec",
        f"      ({left} rho) ({right} rho) k",
        f"      {253 - last} ({pe} rho {last}) ({il} rho {last})) :",
        "    Shieldd.GnarkFormal.Extracted.ImtGap.ltRec",
        f"      ({left} rho) ({right} rho) k",
        f"      {253 - first} ({pe} rho {first}) "
        f"({il} rho {first}) := by",
    ]
    proof = "tail"
    for processed in reversed(range(first, last)):
        proof = (
            f"{_step_name(comparator, processed)} rho h k ({proof})"
        )
    lines += [f"  exact {proof}", ""]
    return "\n".join(lines + _component_footer())


def emit_comparator(
    comparator: Comparator,
    chunks: int,
    previous: str,
) -> str:
    lines = _component_header(
        [
            previous,
            "ShielddGnarkFormal.ImtGapBridge",
        ]
    )
    pe = _pe_name(comparator)
    il = _il_name(comparator)
    pe_imt = pe + "Imt"
    il_imt = il + "Imt"
    left = comparator.left_bits + "Imt"
    right = comparator.right_bits + "Imt"
    lines += [
        f"theorem {comparator.prefix}Gadget (rho : Nat → F)",
        f"    (h : {RELATION}.relation rho)",
        "    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)",
        f"    (tail : k ({il_imt} rho 253)) :",
        "    Shieldd.GnarkFormal.Extracted.ImtGap."
        "lexLess253Gadget_253_253",
        f"      ({left} rho) ({right} rho) k := by",
        "  apply (Shieldd.GnarkFormal.Extracted.ImtGap."
        "lexLess253Gadget_eq_ltRec",
        f"    ({left} rho) ({right} rho) k).mpr",
        "  have htail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec",
        f"      ({left} rho) ({right} rho) k",
        f"      0 ({pe_imt} rho 253) ({il_imt} rho 253) := by",
        "    simpa [Shieldd.GnarkFormal.Extracted.ImtGap.ltRec] "
        "using tail",
    ]
    proof = "htail"
    for chunk_index in reversed(range(chunks)):
        proof = (
            f"{comparator.prefix}Range{chunk_index} "
            f"rho h k ({proof})"
        )
    lines += [
        f"  simpa [{pe_imt}, {il_imt}, {pe}, {il},",
        "    toImtF_one, toImtF_zero] using " + proof,
        "",
    ]
    return "\n".join(lines + _component_footer())


def _comparator_outputs(previous: str) -> tuple[dict[Path, str], str]:
    outputs: dict[Path, str] = {}
    chunk_count = (
        253 + COMPARATOR_CHUNK - 1
    ) // COMPARATOR_CHUNK
    for comparator in COMPARATORS:
        current = previous
        for chunk_index in range(chunk_count):
            name = f"{NAME}Gap{comparator.label}Chunk{chunk_index}"
            outputs[OUT / f"{name}.lean"] = emit_comparator_chunk(
                comparator, chunk_index, current
            )
            current = MODULE_PREFIX + (
                f"Gap{comparator.label}Chunk{chunk_index}"
            )
        facade_name = f"{NAME}Gap{comparator.label}"
        outputs[OUT / f"{facade_name}.lean"] = emit_comparator(
            comparator, chunk_count, current
        )
        previous = MODULE_PREFIX + f"Gap{comparator.label}"
    return outputs, previous


def emit_main(previous: str) -> str:
    lines = _component_header(
        [
            previous,
            "ShielddGnarkFormal.ImtGapBridge",
            "Mathlib.Tactic.LinearCombination",
        ]
    )
    lines += [
        "theorem exactMatch_eq (rho : Nat → F)",
        f"    (h : {RELATION}.relation rho) :",
        "    rho 1022 = Bool.toZMod (decide (rho 594 = rho 254)) := by",
    ]
    _unpack(lines, {1518, 1519})
    lines += [
        f"  unfold {RELATION}.relationRow1518 at r1518",
        f"  unfold {RELATION}.relationRow1519 at r1519",
        "  by_cases hz : rho 594 = rho 254",
        "  · simp [hz, Bool.toZMod_one]",
        "    rw [hz] at r1518",
        "    linear_combination -r1518",
        "  · have hdiff : rho 594 - rho 254 ≠ 0 := sub_ne_zero.mpr hz",
        "    have hmul : rho 1022 * (rho 594 - rho 254) = 0 := by",
        "      linear_combination r1519",
        "    have hout : rho 1022 = 0 :=",
        "      (mul_eq_zero.mp hmul).resolve_right hdiff",
        "    simpa [hz, Bool.toZMod_zero] using hout",
        "",
        "theorem sound (rho : Nat → F)",
        f"    (h : {RELATION}.relation rho) : spec rho := by",
        "  have hLeafGadget := gapLeaf_canonical rho h",
        "    (fun bits => bits = leafBits rho) rfl",
        "  obtain ⟨leafBool, hLeafBin, hLeafLt, hLeafMap⟩ :=",
        "    Shieldd.GnarkFormal.Extracted.ImtGap."
        "canonicalFqBitsGadget_canonical",
        "      (rho 254) (fun bits => bits = leafBits rho) "
        "hLeafGadget",
        "  have hIdGadget := gapId_canonical rho h",
        "    (fun bits => bits = idBits rho) rfl",
        "  obtain ⟨idBool, hIdBin, hIdLt, hIdMap⟩ :=",
        "    Shieldd.GnarkFormal.Extracted.ImtGap."
        "canonicalFqBitsGadget_canonical",
        "      (rho 594) (fun bits => bits = idBits rho) "
        "hIdGadget",
        "  have hNextGadget := gapNext_canonical rho h",
        "    (fun bits => bits = nextBits rho) rfl",
        "  obtain ⟨nextBool, hNextBin, hNextLt, hNextMap⟩ :=",
        "    Shieldd.GnarkFormal.Extracted.ImtGap."
        "canonicalFqBitsGadget_canonical",
        "      (rho 934) (fun bits => bits = nextBits rho) "
        "hNextGadget",
        "  have hLowerGadget :",
        "      Shieldd.GnarkFormal.Extracted.ImtGap."
        "lexLess253Gadget_253_253",
        "        (leafBits rho) (idBits rho)",
        "        (fun value => value = lowerIlImt rho 253) := by",
        "    simpa only [leafBitsImt, idBitsImt, toImtBits] using",
        "      lowerGadget rho h",
        "        (fun value => value = lowerIlImt rho 253) rfl",
        "  rw [← hLeafMap, ← hIdMap] at hLowerGadget",
        "  have hLowerImt := Shieldd.GnarkFormal.Extracted.ImtGap."
        "lexLess253Gadget_sound",
        "    leafBool idBool "
        "(fun value => value = lowerIlImt rho 253) hLowerGadget",
        "  have hLower :",
        "      (Bool.toZMod (decide ((Fin.ofBitsLE leafBool).val <",
        "        (Fin.ofBitsLE idBool).val)) : F) = lowerIl rho 253 := by",
        "    apply toImtF_injective",
        "    rw [toImtF_boolToZMod]",
        "    simpa only [lowerIlImt] using hLowerImt",
        "  have hUpperGadget :",
        "      Shieldd.GnarkFormal.Extracted.ImtGap."
        "lexLess253Gadget_253_253",
        "        (idBits rho) (nextBits rho)",
        "        (fun value => value = upperIlImt rho 253) := by",
        "    simpa only [idBitsImt, nextBitsImt, toImtBits] using",
        "      upperGadget rho h",
        "        (fun value => value = upperIlImt rho 253) rfl",
        "  rw [← hIdMap, ← hNextMap] at hUpperGadget",
        "  have hUpperImt := Shieldd.GnarkFormal.Extracted.ImtGap."
        "lexLess253Gadget_sound",
        "    idBool nextBool "
        "(fun value => value = upperIlImt rho 253) hUpperGadget",
        "  have hUpper :",
        "      (Bool.toZMod (decide ((Fin.ofBitsLE idBool).val <",
        "        (Fin.ofBitsLE nextBool).val)) : F) = upperIl rho 253 := by",
        "    apply toImtF_injective",
        "    rw [toImtF_boolToZMod]",
        "    simpa only [upperIlImt] using hUpperImt",
        "  have hLeafVal := Shieldd.GnarkFormal.Extracted.ImtGap."
        "to_binary_val_eq_of_lt",
        "    (rho 254) leafBool hLeafBin hLeafLt",
        "  have hIdVal := Shieldd.GnarkFormal.Extracted.ImtGap."
        "to_binary_val_eq_of_lt",
        "    (rho 594) idBool hIdBin hIdLt",
        "  have hNextVal := Shieldd.GnarkFormal.Extracted.ImtGap."
        "to_binary_val_eq_of_lt",
        "    (rho 934) nextBool hNextBin hNextLt",
        "  have hExact := exactMatch_eq rho h",
    ]
    _unpack(lines, {3540, 3541})
    lines += [
        f"  unfold {RELATION}.relationRow3540 at r3540",
        f"  unfold {RELATION}.relationRow3541 at r3541",
        f"  unfold {RELATION}.relationLc3 {RELATION}.relationLc4 "
        "at r3540",
        "  simp only [Shieldd.GnarkFormal.StructuredLC.eval,",
        "    Shieldd.GnarkFormal.StructuredLC.sumRuns,",
        "    Shieldd.GnarkFormal.StructuredLC.sumResidual,",
        "    Shieldd.GnarkFormal.StrideRun.eval, one_mul, zero_add,",
        "    add_zero] at r3540",
        "  change",
        "    (Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 252 +",
        "      rho 1023) *",
        "      (Shieldd.GnarkFormal.StrideRun.sumAux rho 2036 4 252 +",
        "        rho 2033) = rho 3043 at r3540",
        "  have hProduct :",
        "      lowerIl rho 253 * upperIl rho 253 = rho 3043 := by",
        "    simpa only [lowerIl, upperIl, add_comm] using r3540",
        "  have boolToZMod_and (a b : Bool) :",
        "      (Bool.toZMod (a && b) : F) =",
        "        Bool.toZMod a * Bool.toZMod b := by",
        "    cases a <;> cases b <;>",
        "      simp [Bool.toZMod_zero, Bool.toZMod_one]",
        "  unfold spec Shieldd.GnarkFormal.Extracted.ImtGap."
        "BodyRelationSpec",
        "  refine ⟨decide (rho 594 = rho 254),",
        "    decide ((rho 254).val < (rho 594).val),",
        "    decide ((rho 594).val < (rho 934).val),",
        "    rfl, rfl, rfl, ?_⟩",
        "  unfold Shieldd.GnarkFormal.Extracted.ImtGap."
        "BodySelectRelation selected",
        "  rw [hLeafVal, hIdVal, hNextVal]",
        "  change rho 3043 + rho 3045 =",
        "    (Bool.toZMod",
        "      (decide ((Fin.ofBitsLE leafBool).val <",
        "        (Fin.ofBitsLE idBool).val) &&",
        "       decide ((Fin.ofBitsLE idBool).val <",
        "        (Fin.ofBitsLE nextBool).val)) : F) -",
        "      rho 3044 *",
        "        ((Bool.toZMod",
        "          (decide ((Fin.ofBitsLE leafBool).val <",
        "            (Fin.ofBitsLE idBool).val) &&",
        "           decide ((Fin.ofBitsLE idBool).val <",
        "            (Fin.ofBitsLE nextBool).val)) : F) -",
        "         (Bool.toZMod (decide (rho 594 = rho 254)) : F))",
        "  rw [boolToZMod_and]",
        "  rw [show Bool.toZMod",
        "      (decide ((Fin.ofBitsLE leafBool).val <",
        "        (Fin.ofBitsLE idBool).val)) = lowerIl rho 253",
        "    from hLower]",
        "  rw [show Bool.toZMod",
        "      (decide ((Fin.ofBitsLE idBool).val <",
        "        (Fin.ofBitsLE nextBool).val)) = upperIl rho 253",
        "    from hUpper]",
        "  rw [hProduct, ← hExact]",
        "  linear_combination -r3541",
    ]
    return "\n".join(lines + _component_footer())


def _generated_files_for_active_provider(
    relation: list[canonical.Row],
) -> dict[Path, str]:
    validate_relation(relation)
    source = _relation_sources()
    outputs: dict[Path, str] = {
        OUT / f"{NAME}GapBase.lean": emit_base()
    }
    canonical_outputs = _canonical_outputs(source)
    outputs.update(canonical_outputs)
    previous = MODULE_PREFIX + "GapNext"
    comparator_outputs, previous = _comparator_outputs(previous)
    outputs.update(comparator_outputs)
    outputs[OUT / f"{NAME}.lean"] = emit_main(previous)

    combined = "\n".join(outputs.values())
    for forbidden in (
        "representativeRho",
        "representativeSeating",
        "Classical.choice",
        "native_decide",
        "axiom ",
        "sorry",
        "spec := relation",
    ):
        if forbidden in combined:
            raise ValueError(
                f"gap provider contains forbidden {forbidden}"
            )
    main = outputs[OUT / f"{NAME}.lean"]
    if "Gates.select" in main:
        raise ValueError(
            "exact gap body must not claim selector Booleanity"
        )
    return outputs


def generated_files() -> dict[Path, str]:
    _validate_registry_roster()
    _validate_inventory()

    relations = {
        provider.key: rows_for(provider)
        for provider in PROVIDERS
    }
    reference = relations[TRANSFER_PROVIDER.key]
    for provider in PROVIDERS:
        if relations[provider.key] != reference:
            raise ValueError(
                f"{provider.key}: active registry-gap relation drifted "
                f"from {TRANSFER_PROVIDER.key}"
            )

    outputs: dict[Path, str] = {}
    for provider in PROVIDERS:
        with _provider_context(provider):
            rendered = _generated_files_for_active_provider(
                relations[provider.key]
            )
        overlap = outputs.keys() & rendered.keys()
        if overlap:
            raise ValueError(
                f"{provider.key}: generated output collision: "
                f"{sorted(map(str, overlap))}"
            )
        outputs.update(rendered)
    return outputs


def main() -> None:
    for path, source in generated_files().items():
        write_if_changed(path, source)


if __name__ == "__main__":
    main()
