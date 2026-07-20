#!/usr/bin/env python3
"""Generate direct normalized note-commitment and nullifier providers."""

from __future__ import annotations

import json
import re
from pathlib import Path

import gen_note_reshape2x1_poseidon_adapters as poseidon


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
IR = ROOT / "crates/core/component/shielded-pool/formal/note_reshape2x1-deployed-slice-ir.json"
OUT = LEAN / "ShielddGnarkFormal/Deployed/Templates/Semantics"
BENCH = LEAN / "bench"
CONTRACTS = LEAN / "ShielddGnarkFormal/Deployed/Contracts/NoteReshape2x1"
RELATIONS = LEAN / "ShielddGnarkFormal/Deployed/Templates/Relations"
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041

NOTE_KEY = "gadget.note_commitment@7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f"
NULLIFIER_KEY = "gadget.nullifier@e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72"
NAMES = {
    NOTE_KEY: "TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f",
    NULLIFIER_KEY: "TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72",
}


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


def _segment(key: str, index: int, rows: int) -> dict:
    ir = json.loads(IR.read_text())
    matches = [s for s in ir["segments"] if s.get("template_key") == key and s["index"] == index]
    if len(matches) != 1:
        raise ValueError(f"expected one segment {index} for {key}")
    segment = matches[0]
    if segment["constraint_count"] != rows:
        raise ValueError(f"{key}: row-count pin drifted")
    if len(set(segment["wire_seating"])) != segment["local_wire_count"]:
        raise ValueError(f"{key}: seating is not injective")
    return segment


def _local_mapping(segment: dict, deployed_mapping: dict[int, int], used: set[int]) -> dict[int, int]:
    inverse = {global_wire: local for local, global_wire in enumerate(segment["wire_seating"])}
    result = {}
    for extracted in used:
        global_wire = deployed_mapping.get(extracted, extracted)
        if global_wire not in inverse:
            raise ValueError(f"unseated extracted wire {extracted} / deployed wire {global_wire}")
        result[extracted] = inverse[global_wire]
    return result


def _definitions() -> str:
    return f"""def Order : Nat := {ORDER}
abbrev F := ZMod Order

instance templateFactPrime : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

"""


def _note_context():
    key, name = NOTE_KEY, NAMES[NOTE_KEY]
    segment = _segment(key, 9, 430)
    stem = "GadgetNoteCommitmentWithOutput431_7f228e"
    extracted = poseidon.parse_segments(stem)
    deployed_local = poseidon.derive_mapping(stem, RELATIONS.glob(f"{name}Defs*.lean"))
    deployed = {
        wire: segment["wire_seating"][local]
        for wire, local in deployed_local.items()
    }
    used = {
        int(w[1:])
        for index, part in extracted.items()
        if index <= 85
        for field in ("binders", "witnesses", "cont")
        for w in part[field]
    }
    mapping = _local_mapping(segment, deployed, used)
    namespace = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{name}"
    relation = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{name}"
    relation_import = relation.replace("Shieldd.GnarkFormal", "ShielddGnarkFormal")
    extracted_ns = f"Shieldd.GnarkFormal.Extracted.Deployed.{stem}"
    return extracted, mapping, namespace, relation, relation_import, stem, extracted_ns


def _normalize_note_adapter_text(text: str, relation: str) -> str:
    text = text.replace("Seg9.F", "F")
    text = text.replace("Seg9.relationPart", f"{relation}.relationPart")
    text = text.replace("Seg9.relationRow", f"{relation}.relationRow")
    text = text.replace("Seg9.relation", f"{relation}.relation")
    return text


def _note_base_provider() -> str:
    _, _, namespace, _, _, _, _ = _note_context()
    return f"""import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace {namespace}

{_definitions()}end {namespace}
"""


def _note_part_provider(part: int) -> str:
    extracted, mapping, namespace, relation, relation_import, stem, extracted_ns = _note_context()
    helpers = poseidon.emit_part_helpers(
        "template",
        "Seg9",
        stem,
        extracted_ns,
        extracted,
        mapping,
        part,
        part,
        _relation_lc_names(NAMES[NOTE_KEY]),
    )
    helpers = _normalize_note_adapter_text(helpers, relation)
    return f"""import ShielddGnarkFormal.Deployed.Templates.Semantics.{NAMES[NOTE_KEY]}Base
import {relation_import}
import ShielddGnarkFormal.Extracted.Deployed.{stem}

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace {namespace}

{helpers}end {namespace}
"""


def _note_provider() -> str:
    key, name = NOTE_KEY, NAMES[NOTE_KEY]
    segment = _segment(key, 9, 430)
    extracted, mapping, namespace, relation, relation_import, stem, extracted_ns = _note_context()
    prefix = "template"
    final = ["w1312", "w1317", "w1322", "w1327", "w1332", "w1337", "w1342"]
    nested = poseidon.build_nested(extracted_ns, extracted, mapping, 0, 85, poseidon.conj_eq(final, mapping))
    input_ids = tuple(segment["wire_roles"]["input"])
    output_ids = tuple(segment["wire_roles"]["output"])
    inverse = {global_wire: local for local, global_wire in enumerate(segment["wire_seating"])}
    spec = (
        "def spec (rho : Nat → F) : Prop :=\n"
        "  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38\n"
        f"      {' '.join(f'(rho {inverse[w]})' for w in input_ids)} =\n"
        "    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38\n"
        f"      {' '.join(f'(rho {inverse[w]})' for w in output_ids)}\n"
    )
    sound = poseidon.emit_note_sound("Seg9", prefix, mapping)
    sound = sound.replace(f"theorem {prefix}_sound", "theorem sound")
    sound = sound.replace("Seg9.spec rho", "spec rho")
    sound = re.sub(r"simpa \[Seg9\.spec, Specs\.deployedSpec9, ", "simpa [spec, ", sound)
    part_imports = "\n".join(
        f"import ShielddGnarkFormal.Deployed.Templates.Semantics.{name}Part{part}"
        for part in range(86)
    )
    text = f"""import ShielddGnarkFormal.Deployed.Templates.Semantics.{name}Base
import {relation_import}
{part_imports}
import ShielddGnarkFormal.Extracted.Deployed.{stem}
import ShielddGnarkFormal.Deployed.NoteCommitment.RawRelationSemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace {namespace}

{spec}

def {prefix}NotePrefix (rho : Nat → F) : Prop :=
  {nested}

theorem {prefix}_relation_to_note_prefix (rho : Nat → F)
    (h : {relation}.relation rho) : {prefix}NotePrefix rho := by
  unfold {relation}.relation at h
{poseidon.rcases_parts(86)}
  unfold {prefix}NotePrefix
{poseidon.emit_apply_chain(prefix, 0, 85)}
  exact {poseidon.tuple_expr(['rfl'] * len(final))}

{sound}
end {namespace}
"""
    return _normalize_note_adapter_text(text, relation)


def _replace_rho_wires(text: str, segment: dict) -> str:
    inverse = {global_wire: local for local, global_wire in enumerate(segment["wire_seating"])}
    def replace(match: re.Match[str]) -> str:
        wire = int(match.group(1))
        if wire not in inverse:
            raise ValueError(f"nullifier adapter references unseated deployed wire {wire}")
        return f"rho {inverse[wire]}"
    return re.sub(r"rho (\d+)", replace, text)


def _nullifier_provider() -> str:
    key, name = NULLIFIER_KEY, NAMES[NULLIFIER_KEY]
    segment = _segment(key, 11, 310)
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
    inverse = {global_wire: local for local, global_wire in enumerate(segment["wire_seating"])}
    output_ids = tuple(segment["wire_roles"]["output"])
    spec = f"""def spec (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Nullifier.s38_1
      {' '.join(f'(rho {inverse[wire]})' for wire in output_ids)} =
    Shieldd.GnarkFormal.Poseidon3Bridge.permSpec3
      Shieldd.GnarkFormal.Poseidon3Bridge.nullifierDomainLit
      (rho {inverse[8]}) (rho {inverse[23]}) (rho {inverse[24]})

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

{_definitions()}{spec}{helpers}{relation_to}{sound}

end {namespace}
"""


def generated_files() -> dict[Path, str]:
    outputs = {
        OUT / f"{NAMES[NOTE_KEY]}Base.lean": _note_base_provider(),
        OUT / f"{NAMES[NOTE_KEY]}.lean": _note_provider(),
        OUT / f"{NAMES[NULLIFIER_KEY]}.lean": _nullifier_provider(),
    }
    for part in range(86):
        outputs[OUT / f"{NAMES[NOTE_KEY]}Part{part}.lean"] = _note_part_provider(part)
    for key, name in NAMES.items():
        outputs[BENCH / f"NoteReshapeTemplate{name}Import.lean"] = (
            f"import ShielddGnarkFormal.Deployed.Templates.Semantics.{name}\n"
        )
    combined = "\n".join(outputs.values())
    for marker in ("NoteReshape2x1", "representativeRho", "representativeSeating", "Seg9.", "Seg11."):
        if marker in combined:
            raise ValueError(f"direct Poseidon provider retained transport marker {marker}")
    return outputs
