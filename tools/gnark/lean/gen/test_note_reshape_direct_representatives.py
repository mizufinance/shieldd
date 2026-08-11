from __future__ import annotations

import hashlib
import unittest
from unittest import mock

import gen_note_reshape_direct_representatives as direct


class NoteReshapeDirectRepresentativesTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.outputs = direct.generated_files()

    def test_exact_provider_and_benchmark_set(self) -> None:
        template_count = len(direct.templates())
        self.assertEqual(len(self.outputs), 2 * template_count)
        providers = [path for path in self.outputs if path.parent == direct.OUT]
        benches = [path for path in self.outputs if path.parent == direct.BENCH]
        self.assertEqual(len(providers), template_count)
        self.assertEqual(len(benches), template_count)

    def test_every_provider_is_direct_normalized(self) -> None:
        combined = "\n".join(self.outputs.values())
        for marker in ("NoteReshape2x1", "representativeRho", "representativeSeating"):
            self.assertNotIn(marker, combined)
        for key, _, _ in direct.templates():
            name = direct.default_template_name(key)
            source = self.outputs[direct.OUT / f"{name}.lean"]
            self.assertIn(f"Templates.Relations.{name}.relation rho", source)
            self.assertIn("theorem sound", source)

    def test_equivalence_uses_exact_normalized_operands(self) -> None:
        key = next(
            key for key, _, _ in direct.templates()
            if key.startswith(
                "decaf.assert_equivalent@534c1d15097e8b552f82c9624b8deece"
            )
        )
        name = direct.default_template_name(key)
        source = self.outputs[direct.OUT / f"{name}.lean"]
        self.assertIn("((1 : F) * rho 1) * ((1 : F) * rho 2)", source)
        self.assertIn("((1 : F) * rho 4) * ((1 : F) * rho 5)", source)
        self.assertNotRegex(source, r"(?<!\.)\brelationLc\d+\b")

    def test_inverse_row_proves_nonzero_input(self) -> None:
        for op in sorted(direct.INVERSE_ROW_OPS):
            for product in (
                "((1 : F) * rho 1) * ((1 : F) * rho 2)",
                "((1 : F) * rho 2) * ((1 : F) * rho 1)",
            ):
                relation = f"""def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    {product} = ((1 : F)) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho True
"""
                key = f"{op}@deadbeef"
                name = direct.default_template_name(key)
                with mock.patch.object(direct, "_source", return_value=relation):
                    source = direct.render(key, 1, 3, name)
                self.assertIn(
                    "def spec (rho : Nat -> F) : Prop :=\n"
                    "  rho 1 ≠ 0 ∧ rho 2 ≠ 0",
                    source,
                )
                self.assertEqual(
                    source.count(
                        "simpa only [hx, one_mul, zero_mul, mul_zero]"
                    ),
                    2,
                )
                self.assertEqual(source.count("exact zero_ne_one h01"), 2)
                self.assertNotIn("spec := relation", source)

    def test_structured_inverse_row_proves_exact_lc_nonzero(self) -> None:
        relation = """def relationLc0 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2, 1, 251⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) * rho 1) * (relationLc0 rho) = ((1 : F)) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho True
"""
        key = "assert.decaf_non_identity@deadbeef"
        name = direct.default_template_name(key)
        with mock.patch.object(direct, "_source", return_value=relation):
            source = direct.render(key, 1, 253, name)
        qualified_lc = (
            "Shieldd.GnarkFormal.Deployed.Templates.Relations."
            f"{name}.relationLc0 rho"
        )
        self.assertIn(
            "def spec (rho : Nat -> F) : Prop :=\n"
            f"  rho 1 ≠ 0 ∧ {qualified_lc} ≠ 0",
            source,
        )
        self.assertEqual(
            source.count("simpa only [hx, one_mul, zero_mul, mul_zero]"),
            2,
        )

    def test_active_composite_non_identity_layout_is_exact(self) -> None:
        key = direct.COMPOSITE_NON_IDENTITY_KEY
        layout = direct.INVERSE_ROW_LAYOUTS[key]
        self.assertEqual(
            layout,
            direct.InverseRowLayout(
                row_count=1,
                local_wire_count=4,
                left=(
                    "((1 : F) * rho 1) * "
                    "((1 : F) * rho 2 + (1 : F) * rho 3)"
                ),
                right="((1 : F))",
                factors=(
                    "((1 : F) * rho 1)",
                    "((1 : F) * rho 2 + (1 : F) * rho 3)",
                ),
                nonzero_factors=("rho 1", "(rho 2 + rho 3)"),
            ),
        )
        self.assertIn((key, 1, 4), direct.templates())
        name = direct.default_template_name(key)
        source = self.outputs[direct.OUT / f"{name}.lean"]
        self.assertIn(
            "def spec (rho : Nat -> F) : Prop :=\n"
            "  rho 1 ≠ 0 ∧ (rho 2 + rho 3) ≠ 0",
            source,
        )
        self.assertEqual(
            source.count("simpa only [hx, one_mul, zero_mul, mul_zero]"),
            2,
        )

    def test_active_composite_non_identity_fails_closed_on_drift(self) -> None:
        key = direct.COMPOSITE_NON_IDENTITY_KEY
        name = direct.default_template_name(key)
        relation = direct._source(name)
        mutated_relation = relation.replace(
            "(1 : F) * rho 2 + (1 : F) * rho 3",
            "(1 : F) * rho 2 + (1 : F) * rho 2",
            1,
        )
        with mock.patch.object(
            direct, "_source", return_value=mutated_relation
        ):
            with self.assertRaisesRegex(ValueError, "row drifted"):
                direct.render(key, 1, 4, name)
        with mock.patch.object(direct, "_source", return_value=relation):
            with self.assertRaisesRegex(ValueError, "shape drifted"):
                direct.render(key, 1, 5, name)

    def test_inverse_row_provider_fails_closed_on_shape_drift(self) -> None:
        valid = """def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) * rho 1) * ((1 : F) * rho 2) = ((1 : F)) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho True
"""
        key = "assert.decaf_non_identity@deadbeef"
        name = direct.default_template_name(key)
        with mock.patch.object(direct, "_source", return_value=valid):
            with self.assertRaisesRegex(ValueError, "shape drifted"):
                direct.render(key, 1, 4, name)
        invalid = valid.replace(
            "((1 : F) * rho 1) * ((1 : F) * rho 2)",
            "((1 : F) * rho 1) + ((1 : F) * rho 2)",
        )
        with mock.patch.object(direct, "_source", return_value=invalid):
            with self.assertRaisesRegex(ValueError, "row drifted"):
                direct.render(key, 1, 3, name)

    def test_bytes_are_deterministic(self) -> None:
        digest = hashlib.sha256()
        for path, source in sorted(self.outputs.items(), key=lambda item: str(item[0])):
            digest.update(str(path.relative_to(direct.LEAN)).encode())
            digest.update(b"\0")
            digest.update(source.encode())
            digest.update(b"\0")
        self.assertEqual(digest.hexdigest(), self._digest())

    def _digest(self) -> str:
        digest = hashlib.sha256()
        second = direct.generated_files()
        for path, source in sorted(second.items(), key=lambda item: str(item[0])):
            digest.update(str(path.relative_to(direct.LEAN)).encode())
            digest.update(b"\0")
            digest.update(source.encode())
            digest.update(b"\0")
        return digest.hexdigest()


if __name__ == "__main__":
    unittest.main()
