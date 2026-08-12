#!/usr/bin/env python3
"""Generate direct normalized nullifier providers."""

from __future__ import annotations

import re
from pathlib import Path

import poseidon_recovery as poseidon
from formal_json import read_json_object
from lean_zmod_instances import named_instance_block
from template_ir import SegmentTemplate
from write_if_changed import write_if_changed


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
IR = ROOT / "crates/core/component/shielded-pool/formal/note_reshape1x8-deployed-slice-ir.json"
OUT = LEAN / "ShielddGnarkFormal/Deployed/Templates/Semantics"
BENCH = LEAN / "bench"
RELATIONS = LEAN / "ShielddGnarkFormal/Deployed/Templates/Relations"
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041

NULLIFIER_KEY = "gadget.nullifier@e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72"
TRANSFER_NULLIFIER_KEY = (
    "gadget.nullifier@"
    "5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4"
)
NAMES = {
    NULLIFIER_KEY: "TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72",
    TRANSFER_NULLIFIER_KEY:
        "TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4",
}


def _with_explicit_tactic_imports(source: str) -> str:
    """Declare tactics used by a generated module instead of relying on imports."""
    imports = []
    if "linear_combination" in source and "import Mathlib.Tactic.LinearCombination\n" not in source:
        imports.append("import Mathlib.Tactic.LinearCombination\n")
    if "ring_nf" in source and "import Mathlib.Tactic.Ring\n" not in source:
        imports.append("import Mathlib.Tactic.Ring\n")
    return "".join(imports) + source


def _relation_lc_names(name: str) -> dict[int, tuple[str, ...]]:
    source = "\n".join(path.read_text() for path in RELATIONS.glob(f"{name}*.lean"))
    all_names = tuple(sorted(set(re.findall(r"def (relationLc[A-Za-z0-9]+) ", source))))
    result = {}
    row_pattern = re.compile(
        r"def relationRow(\d+) \(rho[^\n]*\) : Prop :=\n(.*?)(?=\ndef |\Z)",
        re.DOTALL,
    )
    for match in row_pattern.finditer(source):
        row = int(match.group(1))
        refs = set(re.findall(r"\b(relationLc\d+)\b", match.group(2)))
        result[row] = tuple(
            candidate
            for candidate in all_names
            if any(candidate == ref or candidate.startswith(ref + "Part") for ref in refs)
        )
    return result


def _segment(key: str, rows: int) -> dict:
    ir = read_json_object(IR, canonical="pretty")
    operation = key.split("@", 1)[0]
    matches = [
        segment for segment in ir["segments"]
        if segment.get("proof_template_id") == key and segment.get("op") == operation
    ]
    if not matches:
        raise ValueError(f"missing deployed representative for {key}")
    role_projections = []
    for segment in matches:
        if segment["constraint_count"] != rows:
            raise ValueError(f"{key}: row-count pin drifted")
        seating = SegmentTemplate.parse(segment).canonical_wire_seating
        if len(set(seating)) != len(seating):
            raise ValueError(f"{key}: seating is not injective")
        inverse = {wire: local for local, wire in enumerate(seating)}
        role_projections.append({
            role: tuple(inverse[wire] for wire in segment["wire_roles"][role])
            for role in ("input", "output")
        })
    if any(roles != role_projections[0] for roles in role_projections[1:]):
        raise ValueError(f"{key}: canonical boundary roles differ across instances")
    return min(matches, key=lambda item: item["template_equivalence_witness"]["witness_sha256_hex"])


def _definitions(*, include_add_semigroup: bool = False) -> str:
    return f"""def Order : Nat := {ORDER}
abbrev F := ZMod Order

instance templateFactPrime : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

{named_instance_block("base", include_add_semigroup=include_add_semigroup)}
"""


def _nullifier_provider() -> str:
    key, name = NULLIFIER_KEY, NAMES[NULLIFIER_KEY]
    segment = _segment(key, 310)
    stem = "GadgetNullifier310_6eee7c"
    extracted = poseidon.parse_segments(stem)
    mapping = poseidon.derive_mapping(
        stem, RELATIONS.glob(f"{name}Defs*.lean")
    )
    namespace = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{name}"
    relation = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{name}"
    relation_import = relation.replace("Shieldd.GnarkFormal", "ShielddGnarkFormal")
    extracted_ns = f"Shieldd.GnarkFormal.Extracted.Deployed.{stem}"
    part_count = len(extracted)
    final = [1637, 1642, 1647, 1652]
    nested = poseidon.build_nested(
        extracted_ns,
        extracted,
        mapping,
        0,
        part_count - 1,
        poseidon.conj_eq([f"w{wire}" for wire in final], mapping),
    )
    inverse = {
        global_wire: local
        for local, global_wire in enumerate(SegmentTemplate.parse(segment).canonical_wire_seating)
    }
    output_ids = tuple(segment["wire_roles"]["output"])
    spec = f"""def spec (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Nullifier.s38_1
      {' '.join(f'(rho {inverse[wire]})' for wire in output_ids)} =
    Shieldd.GnarkFormal.Poseidon3Bridge.permSpec3
      Shieldd.GnarkFormal.Poseidon3Bridge.nullifierDomainLit
      (rho {mapping[8]}) (rho {mapping[23]}) (rho {mapping[24]})

"""
    sound_inputs = " ".join(f"(rho {mapping[wire]})" for wire in (8, 23, 24))
    sound_outputs = ", ".join(f"w{wire}" for wire in final)
    sound_output_args = " ".join(f"(rho {mapping[wire]})" for wire in final)
    sound = f"""theorem sound (rho : Nat → F) (h : {relation}.relation rho) : spec rho := by
  have hExtracted := template_relation_to_nullifier rho h
  rcases Shieldd.GnarkFormal.Deployed.Nullifier.relation_sound_permSpec
      {sound_inputs} _ hExtracted with
    ⟨{sound_outputs}, hk, hperm⟩
  rcases hk with ⟨{', '.join(f'hw{wire}' for wire in final)}⟩
  simpa [spec, {', '.join(f'hw{wire}' for wire in final)}] using hperm
"""
    helpers = poseidon.emit_part_helpers(
        "template",
        relation,
        stem,
        extracted_ns,
        extracted,
        mapping,
        0,
        part_count - 1,
        _relation_lc_names(name),
        "baseAddSemigroup",
    )
    helpers = helpers.replace(f"{relation}.F", "F")
    relation_to = f"""theorem template_relation_to_nullifier (rho : Nat → F)
    (h : {relation}.relation rho) :
    {extracted_ns}.relation
      {' '.join(f'(rho {mapping[wire]})' for wire in (8, 23, 24))}
      (fun {' '.join(f'w{wire}' for wire in final)} =>
        {' ∧ '.join(f'w{wire} = rho {mapping[wire]}' for wire in final)}) := by
  unfold {relation}.relation at h
{poseidon.rcases_parts(part_count)}
  unfold {extracted_ns}.relation
{poseidon.emit_apply_chain('template', 0, part_count - 1)}
  exact ⟨{', '.join(['rfl'] * len(final))}⟩
"""
    return f"""import {relation_import}
import ShielddGnarkFormal.Deployed.Nullifier.SemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace {namespace}

{_definitions(include_add_semigroup=True)}{spec}{helpers}{relation_to}{sound}

end {namespace}
"""


def _transfer_nullifier_context():
    """Recover the Transfer nullifier's inlined commitment boundary exactly."""
    key, name = TRANSFER_NULLIFIER_KEY, NAMES[TRANSFER_NULLIFIER_KEY]
    stem = "GadgetNullifier310_6eee7c"
    extracted = poseidon.parse_segments(stem)
    relation_files = tuple(RELATIONS.glob(f"{name}Defs*.lean"))
    source = "\n".join(path.read_text() for path in relation_files)
    row5 = re.search(
        r"def relationRow5 .*? :=\n    \((.*?)\) \* \(\1\) =",
        source,
        re.S,
    )
    if row5 is None:
        raise ValueError(f"{key}: cannot recover the inlined commitment input")
    round_constant = (
        "6428238367987262728380227088231207564575448754570094797343562439968130973414"
    )
    prefix = f"({round_constant} : F) + "
    if not row5.group(1).startswith(prefix):
        raise ValueError(f"{key}: nullifier round-zero constant drifted")
    commitment_expression = row5.group(1)[len(prefix):]
    if set(map(int, re.findall(r"\brho (\d+)\b", commitment_expression))) != set(
        range(7, 13)
    ):
        raise ValueError(f"{key}: inlined commitment wire support drifted")
    if source.count(commitment_expression) != 3:
        raise ValueError(f"{key}: inlined commitment occurrence count drifted")

    def canonical_to_legacy_relation(text: str) -> str:
        if text.count(commitment_expression) != 3:
            raise ValueError(f"{key}: transformed commitment occurrence drifted")
        text = text.replace(commitment_expression, "(1 : F) * rho 7")
        return re.sub(
            r"\brho (\d+)\b",
            lambda match: (
                f"rho {int(match.group(1)) - 5}"
                if int(match.group(1)) >= 13
                else match.group(0)
            ),
            text,
        )

    legacy_mapping = poseidon.derive_mapping(
        stem,
        relation_files,
        canonical_to_legacy_relation,
    )
    mapping = {
        wire: (
            "stateCommitment rho"
            if local == 7
            else local if local < 7 else local + 5
        )
        for wire, local in legacy_mapping.items()
    }
    expected_pins = {
        8: 1,
        23: "stateCommitment rho",
        24: 18,
        1637: 303,
        1642: 308,
        1647: 313,
        1652: 318,
    }
    actual_pins = {wire: mapping[wire] for wire in expected_pins}
    if actual_pins != expected_pins:
        raise ValueError(
            f"{key}: recovered semantic pins drifted: {actual_pins}"
        )
    numeric_wires = {
        value for value in mapping.values() if isinstance(value, int)
    }
    if min(numeric_wires) != 1 or max(numeric_wires) != 318:
        raise ValueError(f"{key}: recovered local wire range drifted")
    return extracted, mapping, commitment_expression


def _transfer_nullifier_provider() -> str:
    key, name = TRANSFER_NULLIFIER_KEY, NAMES[TRANSFER_NULLIFIER_KEY]
    stem = "GadgetNullifier310_6eee7c"
    extracted, mapping, commitment_expression = _transfer_nullifier_context()
    namespace = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{name}"
    relation = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{name}"
    relation_import = relation.replace("Shieldd.GnarkFormal", "ShielddGnarkFormal")
    extracted_ns = f"Shieldd.GnarkFormal.Extracted.Deployed.{stem}"
    part_count = len(extracted)
    final = [1637, 1642, 1647, 1652]
    nested = poseidon.build_nested(
        extracted_ns,
        extracted,
        mapping,
        0,
        part_count - 1,
        poseidon.conj_eq([f"w{wire}" for wire in final], mapping),
    )
    spec = f"""def stateCommitment (rho : Nat → F) : F :=
  {commitment_expression}

def spec (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Nullifier.s38_1
      {' '.join(poseidon.rho(wire, mapping) for wire in final)} =
    Shieldd.GnarkFormal.Poseidon3Bridge.permSpec3
      Shieldd.GnarkFormal.Poseidon3Bridge.nullifierDomainLit
      (rho 1) (stateCommitment rho) (rho 18)

"""
    helpers = poseidon.emit_part_helpers(
        "template",
        relation,
        stem,
        extracted_ns,
        extracted,
        mapping,
        0,
        part_count - 1,
        _relation_lc_names(name),
        "baseAddSemigroup",
    ).replace(f"{relation}.F", "F")
    # The deployed Transfer template inlines the state commitment into two
    # round-zero rows in each of the first two extracted segments, while the
    # extracted provider names that same value as an input. Normalize exactly
    # those four boundary equations.
    for hypothesis in ("h0", "h4"):
        needle = f"  · exact {hypothesis}"
        replacement = (
            "  · have choiceFreeAddAssoc (a b c : F) : "
            "a + b + c = a + (b + c) :=\n"
            "      @add_assoc F baseAddSemigroup a b c\n"
            "    have choiceFreeOneMul (a : F) : 1 * a = a :=\n"
            "      @one_mul F baseMulOneClass a\n"
            "    simpa only [stateCommitment, choiceFreeOneMul, "
            "choiceFreeAddAssoc] "
            f"using {hypothesis}"
        )
        if helpers.count(needle) < 2:
            raise ValueError(
                f"{key}: missing inlined commitment proof {hypothesis}"
            )
        helpers = helpers.replace(needle, replacement, 2)
    relation_to = f"""theorem template_relation_to_nullifier (rho : Nat → F)
    (h : {relation}.relation rho) :
    {extracted_ns}.relation
      (rho 1) (stateCommitment rho) (rho 18)
      (fun {' '.join(f'w{wire}' for wire in final)} =>
        {' ∧ '.join(f'w{wire} = {poseidon.rho(wire, mapping)}' for wire in final)}) := by
  unfold {relation}.relation at h
{poseidon.rcases_parts(part_count)}
  unfold {extracted_ns}.relation
{poseidon.emit_apply_chain('template', 0, part_count - 1)}
  exact ⟨{', '.join(['rfl'] * len(final))}⟩
"""
    sound = f"""theorem sound (rho : Nat → F)
    (h : {relation}.relation rho) : spec rho := by
  have hExtracted := template_relation_to_nullifier rho h
  rcases Shieldd.GnarkFormal.Deployed.Nullifier.relation_sound_permSpec
      (rho 1) (stateCommitment rho) (rho 18) _ hExtracted with
    ⟨{', '.join(f'w{wire}' for wire in final)}, hk, hperm⟩
  rcases hk with ⟨{', '.join(f'hw{wire}' for wire in final)}⟩
  simpa [spec, {', '.join(f'hw{wire}' for wire in final)}] using hperm
"""
    return f"""import {relation_import}
import ShielddGnarkFormal.Deployed.Nullifier.SemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace {namespace}

{_definitions(include_add_semigroup=True)}{spec}{helpers}{relation_to}{sound}

end {namespace}
"""


def generated_files() -> dict[Path, str]:
    outputs = {
        OUT / f"{NAMES[NULLIFIER_KEY]}.lean": _nullifier_provider(),
        OUT / f"{NAMES[TRANSFER_NULLIFIER_KEY]}.lean":
            _transfer_nullifier_provider(),
    }
    outputs = {
        path: _with_explicit_tactic_imports(source) if path.parent == OUT else source
        for path, source in outputs.items()
    }
    for key, name in NAMES.items():
        outputs[BENCH / f"NoteReshapeTemplate{name}Import.lean"] = (
            f"import ShielddGnarkFormal.Deployed.Templates.Semantics.{name}\n"
        )
    combined = "\n".join(outputs.values())
    for marker in ("NoteReshape2x1", "representativeRho", "representativeSeating", "Seg9.", "Seg11."):
        if marker in combined:
            raise ValueError(f"direct Poseidon provider retained transport marker {marker}")
    return outputs


def main() -> None:
    for path, source in generated_files().items():
        write_if_changed(path, source)


if __name__ == "__main__":
    main()
