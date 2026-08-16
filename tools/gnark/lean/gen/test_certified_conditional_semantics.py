#!/usr/bin/env python3

import sys
import tempfile
import unittest
from pathlib import Path
from unittest import mock


HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import gen_certified_conditional_semantics as subject


class CertifiedConditionalSemanticsTest(unittest.TestCase):
    def test_inventory_duplicate_keys_fail_before_template_discovery(self) -> None:
        with tempfile.TemporaryDirectory(dir=subject.ROOT) as directory:
            path = Path(directory) / subject.INVENTORY.name
            path.write_text(
                '{"schema":"shieldd.gnark.normalized_template_inventory.v1",'
                '"schema":"shieldd.gnark.normalized_template_inventory.v1"}'
            )
            with mock.patch.object(subject, "INVENTORY", path):
                with self.assertRaisesRegex(ValueError, "duplicate JSON key"):
                    subject.templates()

    def test_current_inventory_is_discovered_without_digest_switches(self) -> None:
        templates = subject.templates()
        self.assertEqual(
            {template.op for template in templates},
            {
                "assert.eq_if",
                "decaf.assert_equivalent_if",
                "select.field",
                "select.point",
            },
        )
        self.assertEqual(len(templates), 8)
        self.assertEqual(
            [template.key for template in templates],
            sorted(template.key for template in templates),
        )

    def test_generated_providers_are_deterministic_and_nonidentity(self) -> None:
        first = subject.generated_files()
        second = subject.generated_files()
        self.assertEqual(first, second)
        self.assertEqual(len(first), len(subject.templates()))
        for source in first.values():
            self.assertIn("theorem sound", source)
            self.assertIn("def spec", source)
            self.assertNotIn("spec := relation", source)
            self.assertNotIn("fun _ h => h", source)

    def test_eq_if_exposes_guard_and_residual(self) -> None:
        template = next(
            template for template in subject.templates()
            if template.key.startswith("assert.eq_if@ddee3f5d")
        )
        source = subject.render(template)
        self.assertIn("def guard", source)
        self.assertIn("def residual", source)
        self.assertIn("guard rho = 0 ∨ residual rho = 0", source)
        self.assertIn("mul_eq_zero.mp hproduct", source)

    def test_equivalent_if_exposes_cross_product_semantics(self) -> None:
        template = next(
            template for template in subject.templates()
            if template.op == "decaf.assert_equivalent_if"
        )
        source = subject.render(template)
        self.assertIn("def leftCrossProduct", source)
        self.assertIn("def rightCrossProduct", source)
        self.assertIn("guard rho = 0 ∨", source)
        self.assertIn("def selectorIsBoolean", source)
        self.assertIn("selectorIsBoolean rho ∧", source)
        self.assertIn("selector rho * (1 - selector rho) = 0", source)
        self.assertNotIn("def spec (rho : Nat → F) : Prop :=\n  relation rho", source)

    def test_point_select_exposes_both_selected_coordinates(self) -> None:
        templates = [
            template for template in subject.templates()
            if template.op == "select.point"
        ]
        self.assertEqual(len(templates), 2)
        for template in templates:
            source = subject.render(template)
            self.assertIn("def selector", source)
            self.assertIn("def deltaX", source)
            self.assertIn("def deltaY", source)
            self.assertIn("def selectedX", source)
            self.assertIn("def selectedY", source)
            self.assertIn(
                "selectedX rho = selector rho * deltaX rho",
                source,
            )
            self.assertIn(
                "selectedY rho = selector rho * deltaY rho",
                source,
            )
            self.assertIn("exact h0.symm", source)
            self.assertIn("exact h1.symm", source)
            self.assertNotIn("linear_combination h0\n", source)
            self.assertNotIn("linear_combination h1\n", source)
            self.assertNotIn(
                "def spec (rho : Nat → F) : Prop :=\n  relation rho",
                source,
            )

    def test_field_select_exposes_selected_value(self) -> None:
        template = next(
            template for template in subject.templates()
            if template.op == "select.field"
        )
        source = subject.render(template)
        self.assertIn("def selector", source)
        self.assertIn("def delta", source)
        self.assertIn("def selected", source)
        self.assertIn("selected rho = selector rho * delta rho", source)

    def test_parenthesis_parser_rejects_ambiguous_products(self) -> None:
        self.assertEqual(
            subject._product("((rho 1)) * (((1 : F) + rho 2))"),
            ("rho 1", "(1 : F) + rho 2"),
        )
        with self.assertRaisesRegex(ValueError, "expected one top-level"):
            subject._product("rho 1 * rho 2 * rho 3")

    def test_structural_checks_reject_dropped_or_miswired_rows(self) -> None:
        eq_if = subject.Template("assert.eq_if@bad", "assert.eq_if", 2, 4)
        with self.assertRaisesRegex(ValueError, "temporary is not closed"):
            subject._render_eq_if(
                eq_if,
                ["rho 1 * rho 2 = rho 3", "rho 4 = (0 : F)"],
                "Bad",
            )

        equivalent = subject.Template(
            "decaf.assert_equivalent_if@bad",
            "decaf.assert_equivalent_if",
            3,
            7,
        )
        with self.assertRaisesRegex(ValueError, "products are not joined"):
            subject._render_equivalent_if(
                equivalent,
                [
                    "rho 1 * rho 2 = rho 3",
                    "rho 4 * rho 5 = rho 6",
                    "rho 6 = rho 3",
                ],
                "Bad",
            )


if __name__ == "__main__":
    unittest.main()
