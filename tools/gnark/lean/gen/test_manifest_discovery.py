from __future__ import annotations

import copy
import unittest

import manifest_discovery as discovery


ROLE = discovery.SegmentRole(
    op="gadget.example",
    args=("in=x", "out=y"),
    kind="gadget",
    constraint_count=2,
    gadget_label="gadget-example",
    bridge_theorem="Example.sound",
)
TEMPLATE_ID = "gadget.example@" + "d" * 64


def manifest() -> dict:
    return {
        "schema": "shieldd.gnark.constraint_manifest.v1",
        "circuit": "example",
        "nb_constraints": 3,
        "semantic_bindings": [
            {
                "name": "point",
                "expressions": [
                    {
                        "constant": "0",
                        "terms": [{"wire_id": 7, "coefficient": "1"}],
                    },
                    {
                        "constant": "0",
                        "terms": [{"wire_id": 9, "coefficient": "1"}],
                    },
                ],
            }
        ],
        "segments": [
            {
                "index": 1,
                "op": "assert.eq",
                "args": ["left=a", "right=b"],
                "kind": "glue",
                "start": 0,
                "end": 1,
                "constraint_count": 1,
            },
            {
                "index": 2,
                "op": "gadget.example",
                "args": ["in=x", "out=y"],
                "kind": "gadget",
                "gadget_label": "gadget-example",
                "bridge_theorem": "Example.sound",
                "start": 1,
                "end": 3,
                "constraint_count": 2,
            },
        ],
    }


def deployed_ir() -> dict:
    eq_template_id = "assert.eq@" + "c" * 64
    return {
        "schema": "shieldd.gnark.deployed_slice_ir.v3",
        "circuit": "example",
        "sr1cs_sha256_hex": "f" * 64,
        "nb_constraints": 3,
        "classes": [
            {
                "class_key": "assert.eq@" + "1" * 16,
                "op": "assert.eq",
                "constraint_count": 1,
                "shape_sha256_hex": "1" * 64,
                "representative_segment_index": 1,
                "instance_segment_indices": [1],
                "distinct_constant_vectors": 1,
            },
            {
                "class_key": "gadget.example@" + "2" * 16,
                "op": "gadget.example",
                "constraint_count": 2,
                "shape_sha256_hex": "2" * 64,
                "representative_segment_index": 2,
                "instance_segment_indices": [2],
                "distinct_constant_vectors": 1,
            },
        ],
        "segments": [
            {
                "index": 1,
                "op": "assert.eq",
                "kind": "glue",
                "start": 0,
                "end": 1,
                "constraint_count": 1,
                "class_key": "assert.eq@" + "1" * 16,
                "wire_roles": {
                    "input": [1, 2],
                    "output": [],
                    "internal": [],
                },
                "constant_vector_sha256_hex": "3" * 64,
                "relation_sha256_hex": "4" * 64,
                "wire_role_sha256_hex": "5" * 64,
                "deployed_normalized_relation_sha256_hex": "c" * 64,
                "proof_template_id": eq_template_id,
                "template_equivalence_witness": {
                    "proof_template_id": eq_template_id,
                    "canonical_local_to_deployed_wire_seating": [0, 1, 2],
                    "canonical_row_to_deployed_row": {
                        "kind": "identity",
                        "row_count": 1,
                    },
                    "row_transforms": [],
                    "witness_sha256_hex": "6" * 64,
                },
            },
            {
                "index": 2,
                "op": "gadget.example",
                "kind": "gadget",
                "start": 1,
                "end": 3,
                "constraint_count": 2,
                "class_key": "gadget.example@" + "2" * 16,
                "wire_roles": {
                    "input": [7, 9],
                    "output": [],
                    "internal": [],
                },
                "constant_vector_sha256_hex": "7" * 64,
                "relation_sha256_hex": "8" * 64,
                "wire_role_sha256_hex": "9" * 64,
                "deployed_normalized_relation_sha256_hex": "d" * 64,
                "proof_template_id": TEMPLATE_ID,
                "template_equivalence_witness": {
                    "proof_template_id": TEMPLATE_ID,
                    "canonical_local_to_deployed_wire_seating": [0, 7, 9],
                    "canonical_row_to_deployed_row": {
                        "kind": "identity",
                        "row_count": 2,
                    },
                    "row_transforms": [],
                    "witness_sha256_hex": "a" * 64,
                },
            },
        ],
    }


class ManifestDiscoveryTests(unittest.TestCase):
    def test_exact_role_join_and_semantic_seating(self) -> None:
        payload = manifest()
        segment = discovery.find_segment(payload, ROLE, circuit="example")
        joined = discovery.join_ir_template(
            segment,
            deployed_ir(),
            proof_template_id=TEMPLATE_ID,
            local_wire_count=3,
            circuit="example",
        )
        wires = discovery.singleton_binding_wires(
            payload, "point", count=2
        )
        self.assertEqual(wires, (7, 9))
        self.assertEqual(
            discovery.inverse_seating(
                joined.wire_seating, wires, label="point"
            ),
            (1, 2),
        )

    def test_missing_duplicate_and_wrong_role_geometry_fail_closed(self) -> None:
        missing = manifest()
        missing["segments"][1]["args"] = ["in=z", "out=y"]
        with self.assertRaisesRegex(ValueError, "role is missing"):
            discovery.find_segment(missing, ROLE)

        duplicate = manifest()
        duplicate["nb_constraints"] = 5
        duplicate["segments"].append(
            {
                **copy.deepcopy(duplicate["segments"][1]),
                "index": 3,
                "start": 3,
                "end": 5,
            }
        )
        with self.assertRaisesRegex(ValueError, "role is ambiguous"):
            discovery.find_segment(duplicate, ROLE)

        for field, value in (
            ("kind", "glue"),
            ("constraint_count", 1),
            ("gadget_label", "wrong"),
            ("bridge_theorem", "Wrong.sound"),
        ):
            payload = manifest()
            payload["segments"][1][field] = value
            if field == "constraint_count":
                payload["segments"][1]["end"] = 2
                payload["nb_constraints"] = 2
            with self.subTest(field=field):
                with self.assertRaisesRegex(ValueError, field):
                    discovery.find_segment(payload, ROLE)

    def test_partition_gaps_and_bad_ir_geometry_fail_closed(self) -> None:
        payload = manifest()
        payload["segments"][1]["start"] = 2
        with self.assertRaisesRegex(ValueError, "contiguous boundary"):
            discovery.validate_manifest(payload)

        segment = discovery.find_segment(manifest(), ROLE)
        for field, value in (
            ("start", 0),
            ("proof_template_id", "gadget.example@" + "b" * 64),
        ):
            payload = deployed_ir()
            payload["segments"][1][field] = value
            with self.subTest(field=field):
                with self.assertRaises(ValueError):
                    discovery.join_ir_template(
                        segment,
                        payload,
                        proof_template_id=TEMPLATE_ID,
                        local_wire_count=3,
                    )

        payload = deployed_ir()
        payload["segments"][1][
            "deployed_normalized_relation_sha256_hex"
        ] = "b" * 64
        with self.assertRaisesRegex(
            ValueError, "normalized relation digest"
        ):
            discovery.join_ir_template(
                segment,
                payload,
                proof_template_id=TEMPLATE_ID,
                local_wire_count=3,
            )

        for template_id in (
            "gadget.example@deadbeef",
            "gadget.other@" + "d" * 64,
        ):
            with self.subTest(template_id=template_id):
                with self.assertRaises(ValueError):
                    discovery.join_ir_template(
                        segment,
                        deployed_ir(),
                        proof_template_id=template_id,
                        local_wire_count=3,
                    )

    def test_future_manifest_and_ir_schemas_fail_closed(self) -> None:
        payload = manifest()
        payload["schema"] = "shieldd.gnark.constraint_manifest.v2"
        with self.assertRaisesRegex(ValueError, "unsupported schema"):
            discovery.validate_manifest(payload)

        payload = deployed_ir()
        payload["schema"] = "shieldd.gnark.deployed_slice_ir.v4"
        with self.assertRaisesRegex(ValueError, "unsupported schema"):
            discovery.validate_ir(payload)

    def test_bad_template_witness_and_binding_fail_closed(self) -> None:
        segment = discovery.find_segment(manifest(), ROLE)
        cases = (
            ("duplicate seating", "canonical_local_to_deployed_wire_seating", [0, 7, 7]),
            (
                "wrong row map",
                "canonical_row_to_deployed_row",
                {"kind": "identity", "row_count": 1},
            ),
            ("row transform", "row_transforms", [{"row": 0}]),
            ("bad digest", "witness_sha256_hex", "bad"),
        )
        for label, field, value in cases:
            payload = deployed_ir()
            payload["segments"][1]["template_equivalence_witness"][field] = value
            with self.subTest(label=label):
                with self.assertRaises(ValueError):
                    discovery.join_ir_template(
                        segment,
                        payload,
                        proof_template_id=TEMPLATE_ID,
                        local_wire_count=3,
                    )

        for mutate in (
            lambda binding: binding["expressions"][0].update(constant="1"),
            lambda binding: binding["expressions"][0]["terms"][0].update(
                coefficient="2"
            ),
            lambda binding: binding["expressions"][1]["terms"][0].update(
                wire_id=7
            ),
        ):
            payload = manifest()
            mutate(payload["semantic_bindings"][0])
            with self.assertRaises(ValueError):
                discovery.singleton_binding_wires(
                    payload, "point", count=2
                )


if __name__ == "__main__":
    unittest.main()
