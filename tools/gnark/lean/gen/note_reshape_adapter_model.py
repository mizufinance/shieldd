#!/usr/bin/env python3
"""Fail-closed access to authenticated NoteReshape manifest/IR roles."""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path
from typing import Iterable

import gen_note_reshape_family as family
import manifest_discovery as discovery
from template_ir import SegmentTemplate


ROOT = Path(__file__).resolve().parents[4]
FORMAL = ROOT / "crates/core/component/shielded-pool/formal"
ARTIFACTS = ROOT / "tools/gnark/artifacts"
MANIFEST_FIELDS = {
    "schema",
    "circuit",
    "shape",
    "sr1cs_sha256_hex",
    "nb_constraints",
    "nb_public_variables",
    "nb_secret_variables",
    "nb_internal_variables",
    "breakdown",
    "segments",
    "witness_wires",
    "semantic_bindings",
}
IR_FIELDS = {
    "schema",
    "circuit",
    "sr1cs_sha256_hex",
    "nb_constraints",
    "segments",
    "classes",
}
SEGMENT_COMMON_FIELDS = {
    "index",
    "op",
    "kind",
    "start",
    "end",
    "constraint_count",
}
MANIFEST_PROOF_SEGMENT_FIELDS = (
    SEGMENT_COMMON_FIELDS | {"args", "gadget_label", "bridge_theorem"}
)
MANIFEST_EMPTY_SEGMENT_FIELDS = (
    SEGMENT_COMMON_FIELDS | {"args", "classification_note"}
)
IR_PROOF_SEGMENT_FIELDS = SEGMENT_COMMON_FIELDS | {
    "class_key",
    "constant_vector_sha256_hex",
    "deployed_normalized_relation_sha256_hex",
    "proof_template_id",
    "relation_sha256_hex",
    "template_equivalence_witness",
    "wire_role_sha256_hex",
    "wire_roles",
}
IR_EMPTY_SEGMENT_FIELDS = SEGMENT_COMMON_FIELDS | {"wire_roles"}
IR_CLASS_FIELDS = {
    "class_key",
    "op",
    "constraint_count",
    "shape_sha256_hex",
    "representative_segment_index",
    "instance_segment_indices",
    "distinct_constant_vectors",
}
TEMPLATE_WITNESS_FIELDS = {
    "proof_template_id",
    "canonical_local_to_deployed_wire_seating",
    "canonical_row_to_deployed_row",
    "row_transforms",
    "witness_sha256_hex",
}
BREAKDOWN_FIELDS = {
    "total_constraints",
    "constraints_by_kind",
    "segments_by_kind",
    "unclassified_constraints",
    "unclassified_segments",
}
SEGMENT_KINDS = {"adapter", "gadget", "glue", "marker"}


@dataclass(frozen=True)
class Deployment:
    circuit: str
    module: str
    manifest: dict
    ir: dict

    @classmethod
    def load(
        cls,
        circuit: str,
        module: str,
        shape: tuple[int, int],
    ) -> "Deployment":
        manifest = discovery.read_json_object(
            ARTIFACTS / circuit / f"{circuit}-manifest.json"
        )
        ir = discovery.read_json_object(
            FORMAL / f"{circuit}-deployed-slice-ir.json"
        )
        return cls.from_data(circuit, module, shape, manifest, ir)

    @classmethod
    def from_data(
        cls,
        circuit: str,
        module: str,
        shape: tuple[int, int],
        manifest: dict,
        ir: dict,
    ) -> "Deployment":
        if set(manifest) != MANIFEST_FIELDS:
            raise ValueError(f"{circuit}: manifest top-level fields drifted")
        if set(ir) != IR_FIELDS:
            raise ValueError(f"{circuit}: deployed IR top-level fields drifted")
        if manifest.get("schema") != "shieldd.gnark.constraint_manifest.v1":
            raise ValueError(f"{circuit}: unsupported constraint manifest schema")
        if ir.get("schema") != "shieldd.gnark.deployed_slice_ir.v3":
            raise ValueError(f"{circuit}: unsupported deployed IR schema")
        if manifest.get("circuit") != circuit or ir.get("circuit") != circuit:
            raise ValueError(f"{circuit}: artifact circuit identity mismatch")
        if module != family.camel(circuit):
            raise ValueError(f"{circuit}: Lean module identity mismatch")
        expected_shape = {"n_in": shape[0], "n_out": shape[1]}
        if manifest.get("shape") != expected_shape:
            raise ValueError(
                f"{circuit}: circuit shape drifted: "
                f"{manifest.get('shape')!r} != {expected_shape!r}"
            )
        discovery.validate_manifest(manifest, circuit=circuit)
        discovery.validate_ir(ir, circuit=circuit)
        cls._validate_counts(circuit, manifest)
        cls._validate_breakdown(circuit, manifest)
        for field in ("sr1cs_sha256_hex", "nb_constraints"):
            if manifest.get(field) != ir.get(field):
                raise ValueError(f"{circuit}: manifest/IR {field} mismatch")
        digest = manifest.get("sr1cs_sha256_hex")
        if (
            not isinstance(digest, str)
            or len(digest) != 64
            or any(char not in "0123456789abcdef" for char in digest)
        ):
            raise ValueError(f"{circuit}: invalid SR1CS digest")
        manifest_segments = manifest.get("segments")
        ir_segments = ir.get("segments")
        if (
            not isinstance(manifest_segments, list)
            or not isinstance(ir_segments, list)
            or len(manifest_segments) != len(ir_segments)
        ):
            raise ValueError(f"{circuit}: manifest/IR segment roster mismatch")
        for manifest_segment, ir_segment in zip(
            manifest_segments, ir_segments, strict=True
        ):
            count = manifest_segment["constraint_count"]
            expected_manifest_fields = (
                MANIFEST_PROOF_SEGMENT_FIELDS
                if manifest_segment["kind"] == "gadget"
                else MANIFEST_EMPTY_SEGMENT_FIELDS
            )
            expected_ir_fields = (
                IR_PROOF_SEGMENT_FIELDS
                if count > 0
                else IR_EMPTY_SEGMENT_FIELDS
            )
            if set(manifest_segment) != expected_manifest_fields:
                raise ValueError(
                    f"{circuit}: manifest segment "
                    f"{manifest_segment['index']} fields drifted"
                )
            descriptive_fields = (
                ("gadget_label", "bridge_theorem")
                if manifest_segment["kind"] == "gadget"
                else ("classification_note",)
            )
            if any(
                not isinstance(manifest_segment.get(field), str)
                or not manifest_segment[field]
                for field in descriptive_fields
            ):
                raise ValueError(
                    f"{circuit}: manifest segment "
                    f"{manifest_segment['index']} description drifted"
                )
            if set(ir_segment) != expected_ir_fields:
                raise ValueError(
                    f"{circuit}: IR segment "
                    f"{ir_segment['index']} fields drifted"
                )
            if any(
                manifest_segment.get(field) != ir_segment.get(field)
                for field in SEGMENT_COMMON_FIELDS
            ):
                raise ValueError(
                    f"{circuit}: manifest/IR segment "
                    f"{manifest_segment.get('index')} mismatch"
                )
            args = manifest_segment.get("args")
            if not isinstance(args, list) or any(
                not isinstance(arg, str) or not arg for arg in args
            ) or len(args) != len(set(args)):
                raise ValueError(
                    f"{circuit}: invalid semantic trace arguments at segment "
                    f"{manifest_segment.get('index')}"
                )
            roles = ir_segment.get("wire_roles")
            if (
                not isinstance(roles, dict)
                or set(roles) != {"input", "output", "internal"}
                or any(
                    not isinstance(roles[role], list)
                    or roles[role] != sorted(set(roles[role]))
                    or any(
                        type(wire) is not int or wire < 1
                        for wire in roles[role]
                    )
                    for role in roles
                )
            ):
                raise ValueError(
                    f"{circuit}: invalid IR wire roles at segment "
                    f"{manifest_segment.get('index')}"
                )
            role_sets = [set(roles[role]) for role in roles]
            if any(
                left & right
                for index, left in enumerate(role_sets)
                for right in role_sets[index + 1 :]
            ):
                raise ValueError(
                    f"{circuit}: overlapping IR wire roles at segment "
                    f"{manifest_segment.get('index')}"
                )
            if ir_segment.get("constraint_count", 0) > 0:
                cls._validate_proof_segment(
                    circuit, manifest_segment, ir_segment, manifest
                )
        cls._validate_classes(circuit, ir)
        family.semantic_bindings(manifest, ir)
        cls._validate_witness_wires(circuit, manifest)
        return cls(circuit, module, manifest, ir)

    @staticmethod
    def _validate_counts(circuit: str, manifest: dict) -> None:
        for field in (
            "nb_constraints",
            "nb_public_variables",
            "nb_secret_variables",
            "nb_internal_variables",
        ):
            value = manifest.get(field)
            if type(value) is not int or value < 0:
                raise ValueError(f"{circuit}: invalid {field}")
        if (
            manifest["nb_public_variables"] < 1
            or manifest["nb_secret_variables"] < 1
            or manifest["nb_internal_variables"] < 1
        ):
            raise ValueError(f"{circuit}: empty witness variable class")

    @staticmethod
    def _validate_breakdown(circuit: str, manifest: dict) -> None:
        breakdown = manifest.get("breakdown")
        if not isinstance(breakdown, dict) or set(breakdown) != BREAKDOWN_FIELDS:
            raise ValueError(f"{circuit}: constraint breakdown fields drifted")
        if (
            breakdown.get("total_constraints") != manifest["nb_constraints"]
            or breakdown.get("unclassified_constraints") != 0
            or breakdown.get("unclassified_segments") != 0
        ):
            raise ValueError(f"{circuit}: constraint breakdown totals drifted")
        for field in ("constraints_by_kind", "segments_by_kind"):
            counts = breakdown.get(field)
            if (
                not isinstance(counts, dict)
                or set(counts) != SEGMENT_KINDS
                or any(type(value) is not int or value < 0 for value in counts.values())
            ):
                raise ValueError(f"{circuit}: invalid {field}")
        segments = manifest["segments"]
        actual_segment_counts = {
            kind: sum(segment["kind"] == kind for segment in segments)
            for kind in SEGMENT_KINDS
        }
        actual_constraint_counts = {
            kind: sum(
                segment["constraint_count"]
                for segment in segments
                if segment["kind"] == kind
            )
            for kind in SEGMENT_KINDS
        }
        if (
            breakdown["segments_by_kind"] != actual_segment_counts
            or breakdown["constraints_by_kind"] != actual_constraint_counts
        ):
            raise ValueError(f"{circuit}: constraint breakdown roster drifted")

    @staticmethod
    def _validate_digest(value: object, label: str) -> None:
        if (
            not isinstance(value, str)
            or len(value) != 64
            or any(char not in "0123456789abcdef" for char in value)
        ):
            raise ValueError(f"{label}: invalid SHA-256 digest")

    @classmethod
    def _validate_proof_segment(
        cls,
        circuit: str,
        manifest_segment: dict,
        ir_segment: dict,
        manifest: dict,
    ) -> None:
        index = ir_segment["index"]
        descriptive_fields = (
            ("gadget_label", "bridge_theorem")
            if manifest_segment["kind"] == "gadget"
            else ("classification_note",)
        )
        for field in descriptive_fields:
            if (
                not isinstance(manifest_segment.get(field), str)
                or not manifest_segment[field]
            ):
                raise ValueError(
                    f"{circuit}: segment {index} has invalid {field}"
                )
        for field in (
            "constant_vector_sha256_hex",
            "relation_sha256_hex",
            "wire_role_sha256_hex",
            "deployed_normalized_relation_sha256_hex",
        ):
            cls._validate_digest(
                ir_segment.get(field), f"{circuit}: segment {index} {field}"
            )
        template = SegmentTemplate.parse(ir_segment)
        op, separator, digest = template.proof_template_id.rpartition("@")
        if (
            separator != "@"
            or op != ir_segment["op"]
            or digest != template.deployed_normalized_relation_sha256_hex
        ):
            raise ValueError(
                f"{circuit}: segment {index} template identity drifted"
            )
        cls._validate_digest(
            digest, f"{circuit}: segment {index} proof template"
        )
        witness = ir_segment["template_equivalence_witness"]
        if set(witness) != TEMPLATE_WITNESS_FIELDS:
            raise ValueError(
                f"{circuit}: segment {index} template witness fields drifted"
            )
        cls._validate_digest(
            witness.get("witness_sha256_hex"),
            f"{circuit}: segment {index} template witness",
        )
        if witness.get("canonical_row_to_deployed_row") != {
            "kind": "identity",
            "row_count": ir_segment["constraint_count"],
        } or witness.get("row_transforms") != []:
            raise ValueError(
                f"{circuit}: segment {index} row equivalence drifted"
            )
        max_wire = (
            manifest["nb_public_variables"]
            + manifest["nb_secret_variables"]
            + manifest["nb_internal_variables"]
            - 1
        )
        seating = template.canonical_wire_seating
        if any(
            type(wire) is not int or wire < 0 or wire > max_wire
            for wire in seating
        ):
            raise ValueError(
                f"{circuit}: segment {index} canonical seating drifted"
            )
        classified = set().union(
            *(set(wires) for wires in ir_segment["wire_roles"].values())
        )
        if classified != set(seating) - {0}:
            raise ValueError(
                f"{circuit}: segment {index} wire-role roster is incomplete"
            )

    @classmethod
    def _validate_classes(cls, circuit: str, ir: dict) -> None:
        classes = ir.get("classes")
        if not isinstance(classes, list) or not classes:
            raise ValueError(f"{circuit}: missing IR template classes")
        proof_segments = {
            segment["index"]: segment
            for segment in ir["segments"]
            if segment["constraint_count"] > 0
        }
        covered: list[int] = []
        class_keys: set[str] = set()
        for row in classes:
            if not isinstance(row, dict) or set(row) != IR_CLASS_FIELDS:
                raise ValueError(f"{circuit}: IR template class fields drifted")
            key = row.get("class_key")
            indices = row.get("instance_segment_indices")
            representative = row.get("representative_segment_index")
            if (
                not isinstance(key, str)
                or not key
                or key in class_keys
                or not isinstance(indices, list)
                or not indices
                or any(type(index) is not int for index in indices)
                or indices != sorted(set(indices))
                or representative not in indices
                or type(row.get("constraint_count")) is not int
                or type(row.get("distinct_constant_vectors")) is not int
                or row["distinct_constant_vectors"] < 1
            ):
                raise ValueError(f"{circuit}: invalid IR template class")
            cls._validate_digest(
                row.get("shape_sha256_hex"),
                f"{circuit}: IR template class {key}",
            )
            class_keys.add(key)
            for index in indices:
                segment = proof_segments.get(index)
                if (
                    segment is None
                    or segment.get("class_key") != key
                    or segment.get("op") != row.get("op")
                    or segment.get("constraint_count")
                    != row.get("constraint_count")
                ):
                    raise ValueError(
                        f"{circuit}: IR template class {key} roster drifted"
                    )
            covered.extend(indices)
        if sorted(covered) != sorted(proof_segments):
            raise ValueError(f"{circuit}: IR template classes are not exhaustive")

    @staticmethod
    def _validate_witness_wires(circuit: str, manifest: dict) -> None:
        rows = manifest.get("witness_wires")
        if not isinstance(rows, list) or not rows:
            raise ValueError(f"{circuit}: missing witness-wire roster")
        ids = [row.get("wire_id") for row in rows if isinstance(row, dict)]
        paths = [row.get("path") for row in rows if isinstance(row, dict)]
        if (
            len(ids) != len(rows)
            or len(paths) != len(rows)
            or any(not isinstance(wire, int) or wire < 1 for wire in ids)
            or any(not isinstance(path, str) or not path for path in paths)
            or len(ids) != len(set(ids))
            or len(paths) != len(set(paths))
        ):
            raise ValueError(f"{circuit}: invalid witness-wire roster")
        visibility_counts = {
            visibility: sum(row.get("visibility") == visibility for row in rows)
            for visibility in ("public", "secret")
        }
        if visibility_counts != {
            "public": manifest["nb_public_variables"] - 1,
            "secret": manifest["nb_secret_variables"],
        }:
            raise ValueError(f"{circuit}: witness visibility counts drifted")
        max_wire = (
            manifest["nb_public_variables"]
            + manifest["nb_secret_variables"]
            + manifest["nb_internal_variables"]
            - 1
        )
        expected_witness_ids = list(
            range(
                1,
                manifest["nb_public_variables"]
                + manifest["nb_secret_variables"],
            )
        )
        if ids != expected_witness_ids:
            raise ValueError(f"{circuit}: witness-wire roster is not exhaustive")
        for row in rows:
            if set(row) != {
                "wire_id",
                "path",
                "visibility",
                "constraint_rows",
            }:
                raise ValueError(f"{circuit}: witness-wire fields drifted")
            if row["visibility"] not in {"public", "secret"}:
                raise ValueError(f"{circuit}: invalid witness visibility")
            if (
                row["wire_id"] > max_wire
                or type(row["constraint_rows"]) is not int
                or row["constraint_rows"] < 0
                or row["constraint_rows"] > manifest["nb_constraints"]
            ):
                raise ValueError(f"{circuit}: invalid witness constraint rows")

    def segment(
        self,
        op: str,
        args: Iterable[str],
    ) -> dict:
        expected_args = list(args)
        matches = [
            segment
            for segment in self.manifest["segments"]
            if segment["op"] == op and segment["args"] == expected_args
        ]
        if len(matches) != 1:
            raise ValueError(
                f"{self.circuit}: expected one {op} segment with semantic "
                f"roles {expected_args!r}, found {len(matches)}"
            )
        index = matches[0]["index"]
        exact = self.ir["segments"][index - 1]
        if exact["constraint_count"] <= 0:
            raise ValueError(
                f"{self.circuit}: semantic segment {index} has no constraints"
            )
        return exact

    def consecutive(self, segments: Iterable[dict]) -> None:
        indices = [segment["index"] for segment in segments]
        if indices != list(range(indices[0], indices[0] + len(indices))):
            raise ValueError(
                f"{self.circuit}: semantic segment sequence is not consecutive: "
                f"{indices!r}"
            )

    def binding(self, name: str, arity: int | None = None) -> dict:
        matches = [
            binding
            for binding in family.semantic_bindings(self.manifest, self.ir)
            if binding["name"] == name
        ]
        if len(matches) != 1:
            raise ValueError(
                f"{self.circuit}: expected one semantic binding {name!r}"
            )
        binding = matches[0]
        if arity is not None and len(binding["expressions"]) != arity:
            raise ValueError(
                f"{self.circuit}: semantic binding {name!r} arity drifted"
            )
        return binding

    def binding_wires(self, name: str, arity: int | None = None) -> set[int]:
        binding = self.binding(name, arity)
        return {
            term["wire_id"]
            for expression in binding["expressions"]
            for term in expression["terms"]
        }

    def binding_expression_wires(
        self,
        name: str,
        expression_index: int,
        arity: int | None = None,
    ) -> set[int]:
        binding = self.binding(name, arity)
        try:
            expression = binding["expressions"][expression_index]
        except IndexError as error:
            raise ValueError(
                f"{self.circuit}: semantic binding {name!r} has no "
                f"expression {expression_index}"
            ) from error
        return {term["wire_id"] for term in expression["terms"]}

    def require_binding_role(
        self,
        segment: dict,
        binding_name: str,
        role: str,
        *,
        exact: bool = False,
        arity: int | None = None,
    ) -> None:
        wires = self.binding_wires(binding_name, arity)
        role_wires = set(segment["wire_roles"][role])
        valid = wires == role_wires if exact else wires <= role_wires
        if not wires or not valid:
            qualifier = "exact " if exact else ""
            raise ValueError(
                f"{self.circuit}: binding {binding_name!r} is not the "
                f"{qualifier}{role} role of segment {segment['index']}"
            )

    def witness_wire(self, path: str, visibility: str = "secret") -> int:
        matches = [
            row
            for row in self.manifest["witness_wires"]
            if row["path"] == path
        ]
        if len(matches) != 1 or matches[0].get("visibility") != visibility:
            raise ValueError(
                f"{self.circuit}: expected one {visibility} witness role {path!r}"
            )
        return matches[0]["wire_id"]

    def require_wire_role(self, segment: dict, wire: int, role: str) -> None:
        if wire not in segment["wire_roles"][role]:
            raise ValueError(
                f"{self.circuit}: wire {wire} is not an {role} role of "
                f"segment {segment['index']}"
            )

    def require_inverse_guard(
        self,
        segment: dict,
        binding_name: str,
        *,
        expression_index: int = 0,
        arity: int,
    ) -> None:
        guarded = self.binding_expression_wires(
            binding_name, expression_index, arity
        )
        all_binding_wires = self.binding_wires(binding_name, arity)
        inputs = set(segment["wire_roles"]["input"])
        if (
            not guarded
            or not guarded < inputs
            or len(inputs) != len(guarded) + 1
            or (all_binding_wires - guarded) & inputs
            or segment["wire_roles"]["output"]
            or segment["wire_roles"]["internal"]
        ):
            raise ValueError(
                f"{self.circuit}: {binding_name!r} expression "
                f"{expression_index} is not the exact inverse guard at "
                f"segment {segment['index']}"
            )

    @staticmethod
    def seating(segment: dict) -> tuple[int, ...]:
        return tuple(SegmentTemplate.parse(segment).canonical_wire_seating)

    def local(self, segment: dict, wire: int) -> int:
        locals_ = [
            local
            for local, seated_wire in enumerate(self.seating(segment))
            if seated_wire == wire
        ]
        if len(locals_) != 1:
            raise ValueError(
                f"{self.circuit}: wire {wire} has {len(locals_)} local seats "
                f"in segment {segment['index']}"
            )
        return locals_[0]


def template_digest(segment: dict, expected_op: str) -> str:
    key = SegmentTemplate.parse(segment).proof_template_id
    op, digest = key.split("@", 1)
    if op != expected_op:
        raise ValueError(
            f"template operation drifted: {op!r} != {expected_op!r}"
        )
    return digest
