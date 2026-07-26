from __future__ import annotations

import unittest

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
        self.assertEqual(masks["final"], audit.ACCEPTED_MASK)

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


if __name__ == "__main__":
    unittest.main()
