from __future__ import annotations

import io
import unittest
from unittest import mock

import olean_axiom_audit as audit


class OLeanAxiomAuditTests(unittest.TestCase):
    def test_allowed_axioms_propagate_exactly(self) -> None:
        masks: dict[str, int] = {}
        audit.resolve_module(
            masks,
            [
                {"name": "propext", "seed": 1, "deps": []},
                {"name": "Quot.sound", "seed": 2, "deps": []},
                {"name": "final", "seed": 0, "deps": ["propext", "Quot.sound"]},
            ],
        )
        self.assertEqual(masks["final"], audit.ALLOWED_MASK)

    def test_every_subset_of_allowed_axioms_is_accepted(self) -> None:
        for mask in range(audit.ALLOWED_MASK + 1):
            with self.subTest(mask=mask):
                self.assertTrue(audit.mask_is_allowed(mask))

    def test_forbidden_axiom_mask_is_rejected(self) -> None:
        self.assertFalse(audit.mask_is_allowed(audit.FORBIDDEN_MASK))
        self.assertFalse(
            audit.mask_is_allowed(
                audit.ALLOWED_MASK | audit.FORBIDDEN_MASK
            )
        )

    def test_forbidden_axiom_propagates(self) -> None:
        masks = {"Classical.choice": audit.FORBIDDEN_MASK}
        audit.resolve_module(
            masks, [{"name": "final", "seed": 0, "deps": ["Classical.choice"]}]
        )
        self.assertEqual(masks["final"], audit.FORBIDDEN_MASK)

    def test_same_module_cycle_reaches_fixed_point(self) -> None:
        masks = {"propext": 1}
        audit.resolve_module(
            masks,
            [
                {"name": "left", "seed": 0, "deps": ["right"]},
                {"name": "right", "seed": 0, "deps": ["left", "propext"]},
            ],
        )
        self.assertEqual(masks["left"], 1)
        self.assertEqual(masks["right"], 1)

    def test_batches_bound_bytes_and_count(self) -> None:
        order = [(f"M{i}", 100) for i in range(audit.MAX_BATCH_MODULES + 1)]
        result = list(audit.batches(order))
        self.assertEqual([len(batch) for batch in result], [audit.MAX_BATCH_MODULES, 1])

    def test_summary_jsonl_is_strict_utf8_unique_and_finite(self) -> None:
        class Process:
            def __init__(self, record: bytes) -> None:
                self.stdout = io.BytesIO(record + b"\n")

            def wait(self) -> int:
                return 0

        records = (
            (b'{"declarations":[],"declarations":[]}', "duplicate JSON key"),
            (b'{"declarations":NaN}', "non-finite JSON"),
            (b'{"declarations":"\xff"}', "invalid UTF-8 JSON"),
        )
        for record, message in records:
            with self.subTest(message=message):
                with mock.patch.object(
                    audit.subprocess, "Popen", return_value=Process(record)
                ):
                    with self.assertRaisesRegex(ValueError, message):
                        audit.collect_masks(
                            object(), [("Example", 1)], object(), {}
                        )


if __name__ == "__main__":
    unittest.main()
