#!/usr/bin/env python3
"""Generate exact Window2 semantic providers for the active deployed templates.

The active DTK, shared-secret, and net-balance templates use gnark's radix-4
variable-base ladder.  This generator recovers each complete ladder directly
from the digest-authenticated canonical SR1CS, pins its Boolean vector and
affine endpoints, and reuses the ACK proof renderer for the row-exact Lean
proofs.  Every claimed body owns one contiguous row interval exactly.
"""

from __future__ import annotations

import argparse
import gzip
import hashlib
import re
from contextlib import contextmanager
from dataclasses import dataclass
from pathlib import Path
from typing import Iterator

import formal_json
import gen_transfer_ack_semantics as ack
import window2_recovery as window2
from write_if_changed import write_if_changed


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
RELATIONS = LEAN / "ShielddGnarkFormal/Deployed/Templates/Relations"
OUT = LEAN / "ShielddGnarkFormal/Deployed/Templates/Semantics"
CANONICAL = ROOT / "tools/gnark/artifacts/proof-template-relations"
INVENTORY = ROOT / "tools/gnark/artifacts/certified-template-inventory.json"
ORDER = ack.ORDER


def _point(x: dict[int, int], y: dict[int, int]) -> window2.PointLC:
    return window2.PointLC.of(x, y)


@dataclass(frozen=True)
class Body:
    operation: str
    digest: str
    row_count: int
    tag: str
    namespace_suffix: str
    bits: int
    boolean_row: int
    bit_wire: int
    start_row: int
    end_row: int
    base: window2.PointLC
    output: window2.PointLC
    recomposition_row: int | None = None
    scalar_lc: tuple[tuple[int, int], ...] | None = None

    @property
    def key(self) -> str:
        return f"{self.operation}@{self.digest}"

    @property
    def stem(self) -> str:
        names = {
            "decaf.diversified_transmission_key":
                "TDecafDiversifiedTransmissionKey",
            "decaf.shared_secret": "TDecafSharedSecret",
            "decaf.net_balance_commitment": "TDecafNetBalanceCommitment",
        }
        return f"{names[self.operation]}_{self.digest}"

    @property
    def relation(self) -> str:
        return (
            "Shieldd.GnarkFormal.Deployed.Templates.Relations." + self.stem
        )

    @property
    def relation_module(self) -> str:
        return self.relation.replace(
            "Shieldd.GnarkFormal", "ShielddGnarkFormal"
        )

    @property
    def semantics_module(self) -> str:
        return (
            "ShielddGnarkFormal.Deployed.Templates.Semantics." + self.stem
        )

    @property
    def namespace(self) -> str:
        return (
            "Shieldd.GnarkFormal.Deployed.Templates.Semantics."
            f"{self.stem}.{self.namespace_suffix}"
        )


DTK_DIGEST = "a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c"
SHARED_041 = "041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41"
SHARED_0A = "0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b"
NET_DIGEST = "efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681"
ISSUER_X = 6231913487103609750640950017270618557496021698282624654949751592866266721188
ISSUER_Y = 2174545944513429084000285632212505083184015391631831920218451010714927555391


BODIES = (
    Body(
        "decaf.diversified_transmission_key", DTK_DIGEST, 5477,
        "DtkWindow2", "DtkWindowSupport", 251, 1322, 983, 2719, 5477,
        _point({2211: 1}, {2212: 1}),
        _point({4961: 1, 4969: 1}, {4962: 1, 4970: 1}),
    ),
    Body(
        "decaf.shared_secret", SHARED_041, 7326,
        "UserWindow2", "UserWindowSupport", 251, 0, 1, 1808, 4566,
        _point({1810: 1, 1811: 1}, {1812: 1, 1813: 1}),
        _point({4562: 1, 4570: 1}, {4563: 1, 4571: 1}),
        251, ((252, 1),),
    ),
    Body(
        "decaf.shared_secret", SHARED_041, 7326,
        "IssuerWindow2", "IssuerWindowSupport", 251, 0, 1, 4566, 7324,
        _point({0: ISSUER_X, 4572: 1}, {0: ISSUER_Y, 4573: 1}),
        _point({7322: 1, 7330: 1}, {7323: 1, 7331: 1}),
        251, ((252, 1),),
    ),
    Body(
        "decaf.shared_secret", SHARED_0A, 7327,
        "UserWindow2", "UserWindowSupport", 251, 1, 2, 1809, 4567,
        _point({1811: 1, 1812: 1}, {1813: 1, 1814: 1}),
        _point({4563: 1, 4571: 1}, {4564: 1, 4572: 1}),
        252, ((253, 1),),
    ),
    Body(
        "decaf.shared_secret", SHARED_0A, 7327,
        "IssuerWindow2", "IssuerWindowSupport", 251, 1, 2, 4567, 7325,
        _point({0: ISSUER_X, 4573: 1}, {0: ISSUER_Y, 4574: 1}),
        _point({7323: 1, 7331: 1}, {7324: 1, 7332: 1}),
        252, ((253, 1),),
    ),
    Body(
        "decaf.net_balance_commitment", NET_DIGEST, 6202,
        "InputsWindow2", "InputsWindowSupport", 129, 1292, 1120, 1422, 2838,
        _point({598: 1}, {600: 1}),
        _point({2655: 1, 2663: 1}, {2656: 1, 2664: 1}),
        1421, ((732, 1), (861, 1)),
    ),
    Body(
        "decaf.net_balance_commitment", NET_DIGEST, 6202,
        "OutputsWindow2", "OutputsWindowSupport", 129, 2838, 2665, 2968, 4384,
        _point({598: 1}, {600: 1}),
        _point({4200: 1, 4208: 1}, {4201: 1, 4209: 1}),
        2967, ((990, 1), (1119, 1)),
    ),
)


def _canonical_rows(body: Body) -> list[window2.Row]:
    path = CANONICAL / f"{body.digest}.sr1cs.gz"
    with gzip.open(path, "rb") as source:
        canonical = source.read()
    digest = hashlib.sha256(canonical).hexdigest()
    if digest != body.digest:
        raise ValueError(f"{body.key}: canonical digest {digest} drifted")
    try:
        text = canonical.decode("utf-8")
    except UnicodeDecodeError as error:
        raise ValueError(f"{body.key}: canonical relation is not UTF-8") from error
    rows: list[window2.Row] = []
    for line in text.splitlines():
        if not line.strip().startswith("(constraint "):
            raise ValueError(f"{body.key}: malformed canonical row {len(rows)}")
        sides: list[window2.Lc] = []
        for raw in re.findall(r"\[([^]]*)\]", line):
            value: window2.Lc = {}
            for coefficient, wire in re.findall(
                r"\((-?(?:0x[0-9a-fA-F]+|[0-9]+)) ([0-9]+)\)", raw
            ):
                index = int(wire)
                value[index] = (
                    value.get(index, 0) + int(coefficient, 0)
                ) % ORDER
            sides.append({wire: c for wire, c in value.items() if c})
        if len(sides) != 3:
            raise ValueError(f"{body.key}: row {len(rows)} has != 3 sides")
        rows.append((sides[0], sides[1], sides[2]))
    if len(rows) != body.row_count:
        raise ValueError(
            f"{body.key}: {len(rows)} rows, expected {body.row_count}"
        )
    return rows


def _relation_source(body: Body) -> str:
    shards = sorted(
        RELATIONS.glob(f"{body.stem}Defs*.lean"),
        key=lambda path: int(path.stem.removeprefix(body.stem + "Defs")),
    )
    facade = RELATIONS / f"{body.stem}.lean"
    indices = [
        int(path.stem.removeprefix(body.stem + "Defs")) for path in shards
    ]
    if not shards or not facade.is_file() or indices != list(range(len(indices))):
        raise ValueError(f"{body.key}: exact relation shards are missing")
    source = "\n".join(path.read_text() for path in (*shards, facade))
    rows = {int(row) for row in re.findall(r"def relationRow(\d+) ", source)}
    if rows != set(range(body.row_count)):
        raise ValueError(f"{body.key}: extracted relation rows drifted")
    return source


def _relation_parts(body: Body, source: str) -> list[list[int]]:
    parts: list[list[int]] = []
    for match in re.finditer(
        r"def relationPart(\d+) \(rho : Nat -> F\) : Prop :=\n(.*?)"
        r"(?=\n\ndef relationPart|\n\ndef relation \()",
        source,
        re.S,
    ):
        if int(match.group(1)) != len(parts):
            raise ValueError(f"{body.key}: relation parts are not contiguous")
        parts.append([
            int(row)
            for row in re.findall(r"relationRow(\d+) rho", match.group(2))
        ])
    if [row for part in parts for row in part] != list(range(body.row_count)):
        raise ValueError(f"{body.key}: relation parts do not own every row")
    return parts


def _definition_body(source: str, name: str) -> str:
    match = re.search(
        rf"def {re.escape(name)} \(rho : Nat -> F\) : F :=\n"
        r"(.*?)(?=\n\ndef |\nend )",
        source,
        re.S,
    )
    if match is None:
        raise ValueError(f"missing normalized definition {name}")
    return match.group(1)


def _definition_closure(source: str, root: str) -> tuple[str, ...]:
    ordered: list[str] = []
    seen: set[str] = set()

    def visit(name: str) -> None:
        if name in seen:
            return
        seen.add(name)
        for dependency in re.findall(
            r"\b(relationLc[A-Za-z0-9]+) rho",
            _definition_body(source, name),
        ):
            visit(dependency)
        ordered.append(name)

    visit(root)
    return tuple(reversed(ordered))


def _row_body(source: str, row: int) -> str:
    match = re.search(
        rf"def relationRow{row} \(rho : Nat -> F\) : Prop :=\n"
        r"(.*?)(?=\n\ndef )",
        source,
        re.S,
    )
    if match is None:
        raise ValueError(f"missing normalized row {row}")
    return match.group(1)


def _validate_boolean_rows(body: Body, rows: list[window2.Row]) -> None:
    for index in range(body.bits):
        wire = body.bit_wire + index
        expected = ({wire: 1}, {0: 1, wire: ORDER - 1}, {})
        row = rows[body.boolean_row + index]
        if row != expected and row != (expected[1], expected[0], expected[2]):
            raise ValueError(
                f"{body.key}/{body.tag}: Boolean row "
                f"{body.boolean_row + index} drifted"
            )
    if (body.recomposition_row is None) != (body.scalar_lc is None):
        raise ValueError(f"{body.key}/{body.tag}: incomplete scalar boundary")
    if body.recomposition_row is not None and body.scalar_lc is not None:
        bits = {
            body.bit_wire + index: pow(2, index, ORDER)
            for index in range(body.bits)
        }
        expected = ({0: 1}, bits, dict(body.scalar_lc))
        row = rows[body.recomposition_row]
        if row != expected and row != (expected[1], expected[0], expected[2]):
            raise ValueError(
                f"{body.key}/{body.tag}: recomposition row drifted"
            )


def recover(body: Body) -> tuple[list[window2.Row], list[list[int]], window2.Window2Trace]:
    rows = _canonical_rows(body)
    source = _relation_source(body)
    parts = _relation_parts(body, source)
    _validate_boolean_rows(body, rows)
    trace = window2.recover_window2(
        rows,
        start_row=body.start_row,
        bit_wires=tuple(range(body.bit_wire, body.bit_wire + body.bits)),
        base=body.base,
        order=ORDER,
        expected_output=body.output,
        expected_end_row=body.end_row,
    )
    if trace.owned_rows != tuple(range(body.start_row, body.end_row)):
        raise ValueError(f"{body.key}/{body.tag}: row ownership is not exact")
    return rows, parts, trace


_ACK_GLOBALS = (
    "NAME", "KEY", "ROW_COUNT", "BITS", "RELATION", "RELATION_MODULE",
    "NAMESPACE", "SEMANTICS_MODULE", "MODULE_TAG", "BIT_WIRE_START",
    "LOW_BIT_BOOLEAN_ROW", "_CANONICAL_ROWS", "_TRACE",
)


@contextmanager
def _renderer(body: Body, rows: list[window2.Row], trace: window2.Window2Trace) -> Iterator[None]:
    missing = object()
    old = {name: getattr(ack, name, missing) for name in _ACK_GLOBALS}
    values = {
        "NAME": body.stem,
        "KEY": body.key,
        "ROW_COUNT": body.row_count,
        "BITS": body.bits,
        "RELATION": body.relation,
        "RELATION_MODULE": body.relation_module,
        "NAMESPACE": body.namespace,
        "SEMANTICS_MODULE": body.semantics_module,
        "MODULE_TAG": body.tag,
        "BIT_WIRE_START": body.bit_wire,
        "LOW_BIT_BOOLEAN_ROW": body.boolean_row,
        "_CANONICAL_ROWS": rows,
        "_TRACE": trace,
    }
    try:
        for name, value in values.items():
            setattr(ack, name, value)
        yield
    finally:
        for name, value in old.items():
            if value is missing:
                delattr(ack, name)
            else:
                setattr(ack, name, value)


def _defs(body: Body, trace: window2.Window2Trace) -> str:
    """Render ACK defs, sharing the net-balance field owner with Transfer FV."""
    source = ack._defs(trace)
    if body.operation != "decaf.net_balance_commitment":
        return source
    support_module = body.semantics_module + "NbSupportBase"
    relation_import = f"import {body.relation_module}\n"
    if source.count(relation_import) != 1:
        raise ValueError(f"{body.key}/{body.tag}: relation import drifted")
    source = source.replace(
        relation_import,
        relation_import + f"import {support_module}\n",
        1,
    )
    old_owner = (
        f"abbrev Order : Nat := {ORDER}\n"
        "abbrev F := EdwardsBridge.F\n\n"
        "local instance : Fact (Nat.Prime Order) :=\n"
        "  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩\n"
    )
    owner_namespace = body.semantics_module.replace(
        "ShielddGnarkFormal", "Shieldd.GnarkFormal"
    ) + ".NbSupport"
    new_aliases = (
        f"abbrev Order : Nat := {owner_namespace}.Order\n"
        f"abbrev F := {owner_namespace}.F\n"
    )
    if source.count(old_owner) != 1:
        raise ValueError(f"{body.key}/{body.tag}: field owner block drifted")
    return source.replace(old_owner, new_aliases, 1)


def _validate_net_balance_support_topology(
    outputs: dict[Path, str], out: Path = OUT
) -> None:
    for body in BODIES:
        if body.operation != "decaf.net_balance_commitment":
            continue
        path = out / f"{body.stem}{body.tag}Defs.lean"
        source = outputs[path]
        support_module = body.semantics_module + "NbSupportBase"
        if source.count(f"import {support_module}\n") != 1:
            raise ValueError(
                f"{body.key}/{body.tag}: canonical NbSupport import topology drifted"
            )
        owner_namespace = body.semantics_module.replace(
            "ShielddGnarkFormal", "Shieldd.GnarkFormal"
        ) + ".NbSupport"
        for token in (
            f"abbrev Order : Nat := {owner_namespace}.Order",
            f"abbrev F := {owner_namespace}.F",
        ):
            if source.count(token) != 1:
                raise ValueError(
                    f"{body.key}/{body.tag}: canonical NbSupport alias drifted"
                )
        if "local instance : Fact (Nat.Prime Order)" in source:
            raise ValueError(
                f"{body.key}/{body.tag}: duplicate field owner instance"
            )


def _boolean(body: Body, parts: list[list[int]], source: str) -> str:
    used = set(range(body.boolean_row, body.boolean_row + body.bits))
    if body.recomposition_row is not None:
        used.add(body.recomposition_row)
    lines = [
        ack._header(
            ack._support_module("Defs"),
            "ShielddGnarkFormal.RvkToBinaryChoiceFree",
            "ShielddGnarkFormal.Deployed.Templates.Semantics.BinaryRecomposition",
        ),
        "theorem scalarBits_binary (rho : Nat → F)\n",
        f"    (h : {body.relation}.relation rho) :\n",
        "    is_vector_binary (scalarBits rho) := by\n",
    ]
    ack._emit_unpack(lines, parts, used)
    lines.extend([
        "  apply Shieldd.GnarkFormal.RvkToBinaryChoiceFree."
        "isVectorBinary_of_booleanity\n",
        "  intro i hi\n",
        "  have key := scalarBits_get rho i hi\n",
        f"  have hgoal : rho ({body.bit_wire} + i) * "
        f"(1 - rho ({body.bit_wire} + i)) = 0 := by\n",
        "    interval_cases i\n",
    ])
    lines.extend(
        f"    · linear_combination r{body.boolean_row + index}\n"
        for index in range(body.bits)
    )
    lines.extend([
        "  rw [getElem!_pos (scalarBits rho) i "
        "(by simpa using hi)] at key\n",
        "  exact key ▸ hgoal\n\n",
        "theorem scalarBits_bool_exists (rho : Nat → F)\n",
        f"    (h : {body.relation}.relation rho) :\n",
        f"    ∃ bits : List.Vector Bool {body.bits},\n",
        "      scalarBits rho = bits.map Bool.toZMod := by\n",
        "  exact is_vector_binary_iff_exists_bool_vec.mp "
        "(scalarBits_binary rho h)\n",
    ])
    if body.recomposition_row is not None and body.scalar_lc is not None:
        scalar = window2.render_lc(
            dict(body.scalar_lc), order=ORDER, constant_unsigned=True
        )
        row_body = _row_body(source, body.recomposition_row)
        roots = re.findall(r"\b(relationLc[A-Za-z0-9]+) rho", row_body)
        definitions: list[str] = []
        for root in roots:
            for name in _definition_closure(source, root):
                if name not in definitions:
                    definitions.append(name)
        unfold = " ".join(f"{body.relation}.{name}" for name in definitions)
        lines.extend([
            "\n",
            f"def scalar (rho : Nat → F) : F := {scalar}\n\n",
            "theorem scalar_toBinary (rho : Nat → F)\n",
            f"    (h : {body.relation}.relation rho) :\n",
            f"    GatesDef.to_binary (scalar rho) {body.bits} "
            "(scalarBits rho) := by\n",
            "  have hbinary := scalarBits_binary rho h\n",
        ])
        ack._emit_unpack(lines, parts, {body.recomposition_row})
        lines.extend([
            "  refine ⟨?_, hbinary⟩\n",
            "  have hrecover := "
            "Shieldd.GnarkFormal.Deployed.Templates.Semantics."
            "BinaryRecomposition.recover_ofFn_eq_recBits "
            f"rho {body.bit_wire} {body.bits}\n",
            "  have hacc : Shieldd.GnarkFormal.Deployed.Templates.Semantics."
            "BinaryRecomposition.powSumAcc rho 0 1 "
            f"{body.bit_wire} {body.bits} = scalar rho := by\n",
        ])
        if unfold:
            lines.append(f"    unfold {unfold} at r{body.recomposition_row}\n")
        lines.extend([
            "    simp only [Shieldd.GnarkFormal.Deployed.Templates."
            "Semantics.BinaryRecomposition.powSumAcc]\n",
            f"    unfold scalar\n",
            f"    linear_combination r{body.recomposition_row}\n",
            "  simp only [scalarBits]\n",
            "  rw [hrecover]\n",
            "  rw [Shieldd.GnarkFormal.Deployed.Templates.Semantics."
            "BinaryRecomposition.powSumAcc_eq] at hacc\n",
            "  simpa using hacc\n",
        ])
    lines.append(ack._footer())
    return "".join(lines)


def _semantic(body: Body) -> str:
    m = (body.bits - 1) // 2
    if body.scalar_lc is not None and body.bits == 251:
        return ack._header(
            ack._support_module("Boolean"),
            ack._support_module("Body"),
            "ShielddGnarkFormal.AckBridge",
            "ShielddGnarkFormal.ChoiceFreeBinary",
        ) + f"""def spec (rho : Nat → F) : Prop :=
  AckBridge.AckWindow2BodySpec
    ⟨(base rho).x, (base rho).y⟩ (scalar rho)
    ⟨(output rho).x, (output rho).y⟩

theorem relation_sound (rho : Nat → F)
    (h : {body.relation}.relation rho) : spec rho := by
  unfold spec AckBridge.AckWindow2BodySpec
  intro hbase
  have hbaseEdwards : EdwardsBridge.onCurve (base rho) := by
    exact (AckBridge.toProtocolPoint_onCurve_iff
      (Decaf377Assumptions.Point.mk (base rho).x (base rho).y)).1
        (by simpa only [AckBridge.toProtocolPoint] using hbase)
  have hbinary := scalar_toBinary rho h
  rcases ChoiceFreeBinary.exists_bool_vector_of_to_binary
      ScalarMulBridge.pow251_lt_order hbinary with
    ⟨bits, hbits, _⟩
  have hbody := body_relation rho h bits hbits hbaseEdwards
  exact AckBridge.ack_window2_body_sound
    ⟨(base rho).x, (base rho).y⟩ (scalar rho)
    ⟨(output rho).x, (output rho).y⟩
    ⟨scalarBits rho, hbinary, hbody⟩ hbase
""" + ack._footer()
    return ack._header(
        ack._support_module("Boolean"),
        ack._support_module("Body"),
    ) + f"""def spec (rho : Nat → F) : Prop :=
  EdwardsBridge.onCurve (base rho) →
    ∃ bits : List.Vector Bool {body.bits},
      scalarBits rho = bits.map Bool.toZMod ∧
        EdwardsBridge.onCurve (output rho) ∧
        output rho =
          Window2ScalarMulBridge.scalarMulWindow2OddFromBits
            {m} bits (base rho)

theorem relation_sound (rho : Nat → F)
    (h : {body.relation}.relation rho) : spec rho := by
  intro hbase
  rcases scalarBits_bool_exists rho h with ⟨bits, hbits⟩
  refine ⟨bits, hbits, ?_⟩
  have hbody := body_relation rho h bits hbits hbase
  apply Window2ScalarMulBridge.bodyRelOdd_semantic {m} (by decide +kernel)
    bits (base rho) (output rho) hbase
  simpa only [hbits] using hbody
""" + ack._footer()


def _layout(body: Body, trace: window2.Window2Trace) -> str:
    m = (body.bits - 1) // 2
    return ack._header(ack._support_module("Defs")) + f"""theorem reviewed_layout :
    ({trace.start_row}, {trace.end_row}, {body.boolean_row},
      {body.bit_wire}, {body.bits}, {len(trace.windows)}, {m}) =
    ({body.start_row}, {body.end_row}, {body.boolean_row},
      {body.bit_wire}, {body.bits}, {m - 1}, {m}) := by
  rfl

theorem reviewed_endpoints (rho : Nat → F) :
    (base rho, output rho) =
      ({window2.render_point(body.base, order=ORDER, constant_unsigned=True)},
       {window2.render_point(body.output, order=ORDER, constant_unsigned=True)}) := by
  rfl
""" + ack._footer()


def _facade(stem: str, bodies: list[Body]) -> str:
    imports = "".join(
        f"import {body.semantics_module}{body.tag}Semantic\n"
        f"import {body.semantics_module}{body.tag}Layout\n"
        for body in bodies
    )
    namespace = (
        "Shieldd.GnarkFormal.Deployed.Templates.Semantics." + stem
    )
    relation = bodies[0].relation
    clauses = " ∧\n    ".join(f"{body.namespace}.spec rho" for body in bodies)
    proofs = "\n".join(
        f"    exact {body.namespace}.relation_sound rho h" for body in bodies
    )
    if len(bodies) == 1:
        proof = f"  exact {bodies[0].namespace}.relation_sound rho h\n"
    else:
        proof = "  constructor\n" + proofs + "\n"
    return f"""{imports}
namespace {namespace}

abbrev F := {bodies[0].namespace}.F

def spec (rho : Nat → F) : Prop :=
  {clauses}

theorem sound (rho : Nat → F) (h : {relation}.relation rho) : spec rho := by
  unfold spec
{proof}
end {namespace}
"""


def generated_research_files(out: Path = OUT) -> dict[Path, str]:
    outputs: dict[Path, str] = {}
    for body in BODIES:
        rows, parts, trace = recover(body)
        with _renderer(body, rows, trace):
            prefix = out / f"{body.stem}{body.tag}"
            outputs[Path(str(prefix) + "Defs.lean")] = _defs(body, trace)
            outputs[Path(str(prefix) + "Boolean.lean")] = _boolean(
                body, parts, _relation_source(body)
            )
            outputs[Path(str(prefix) + "Prelude.lean")] = ack._prelude(parts, trace)
            outputs[Path(str(prefix) + "Tail.lean")] = ack._tail(parts, trace)
            outputs[Path(str(prefix) + "Body.lean")] = ack._body(trace)
            outputs[Path(str(prefix) + "Semantic.lean")] = _semantic(body)
            outputs[Path(str(prefix) + "Layout.lean")] = _layout(body, trace)
            for chunk, start in enumerate(
                range(0, len(trace.windows), ack.WINDOW_CHUNK)
            ):
                stop = min(start + ack.WINDOW_CHUNK, len(trace.windows))
                outputs[Path(str(prefix) + f"Windows{chunk:02d}.lean")] = (
                    ack._windows(parts, trace, start, stop)
                )
    _validate_net_balance_support_topology(outputs, out)
    return outputs


def generated_files(out: Path = OUT) -> dict[Path, str]:
    inventory = formal_json.read_template_inventory(INVENTORY)
    active = {template["template_key"] for template in inventory["templates"]}
    expected = {body.key for body in BODIES}
    missing = expected - active
    if missing:
        raise ValueError("active Window2 provider keys missing: " + str(sorted(missing)))
    return generated_research_files(out)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    outputs = generated_files()
    if args.check:
        stale = [
            str(path)
            for path, source in outputs.items()
            if not path.is_file() or path.read_text() != source
        ]
        if stale:
            raise SystemExit("stale Window2 semantic providers:\n" + "\n".join(stale))
        return
    for path, source in outputs.items():
        if write_if_changed(path, source):
            print(f"wrote {path}")


if __name__ == "__main__":
    main()
