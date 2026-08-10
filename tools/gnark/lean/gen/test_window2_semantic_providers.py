#!/usr/bin/env python3

import copy
import json
import sys
import tempfile
import unittest
from pathlib import Path
from unittest import mock


HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import gen_window2_semantic_providers as subject


class Window2SemanticProvidersTest(unittest.TestCase):
    def test_exact_active_bodies_and_row_ownership(self) -> None:
        expected = (
            (subject.DTK_DIGEST, "DtkWindow2", 251, 1322, 983, 2719, 5477, 124),
            (subject.SHARED_041, "UserWindow2", 251, 0, 1, 1808, 4566, 124),
            (subject.SHARED_041, "IssuerWindow2", 251, 0, 1, 4566, 7324, 124),
            (subject.SHARED_0A, "UserWindow2", 251, 1, 2, 1809, 4567, 124),
            (subject.SHARED_0A, "IssuerWindow2", 251, 1, 2, 4567, 7325, 124),
            (subject.NET_DIGEST, "InputsWindow2", 129, 1292, 1120, 1422, 2838, 63),
            (subject.NET_DIGEST, "OutputsWindow2", 129, 2838, 2665, 2968, 4384, 63),
        )
        self.assertEqual(len(subject.BODIES), len(expected))
        for body, pins in zip(subject.BODIES, expected, strict=True):
            rows, parts, trace = subject.recover(body)
            self.assertEqual(
                (
                    body.digest,
                    body.tag,
                    body.bits,
                    body.boolean_row,
                    body.bit_wire,
                    body.start_row,
                    body.end_row,
                    len(trace.windows),
                ),
                pins,
            )
            self.assertEqual(len(rows), body.row_count)
            self.assertEqual(
                [row for part in parts for row in part],
                list(range(body.row_count)),
            )
            self.assertEqual(
                trace.owned_rows,
                tuple(range(body.start_row, body.end_row)),
            )

    def test_generated_support_is_complete_transport_free_and_has_no_weak_facade(self) -> None:
        out = Path("/tmp/shieldd-window2-static-test")
        generated = subject.generated_research_files(out)
        self.assertEqual(len(generated), 176)
        self.assertEqual(generated, subject.generated_research_files(out))

        combined = "\n".join(generated.values())
        for forbidden in (
            "axiom ",
            "sorry",
            "wireSeating",
            "localRho",
            "(by omega)",
        ):
            self.assertNotIn(forbidden, combined)
        self.assertIn("(by decide +kernel)", combined)
        self.assertNotIn("simpa [scalarBits_get]", combined)
        self.assertNotIn("simpa using rho_bit_of_map", combined)

        for body in subject.BODIES:
            prefix = out / f"{body.stem}{body.tag}"
            self.assertIn(Path(str(prefix) + "Semantic.lean"), generated)
            self.assertIn(Path(str(prefix) + "Layout.lean"), generated)
            self.assertNotIn(out / f"{body.stem}.lean", generated)
            semantic = generated[Path(str(prefix) + "Semantic.lean")]
            defs = generated[Path(str(prefix) + "Defs.lean")]
            self.assertIn("attribute [-instance] ZMod.instField", defs)
            self.assertIn(
                "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod", defs
            )
            if body.bits == 251 and body.scalar_lc is not None:
                self.assertIn("AckBridge.AckWindow2BodySpec", semantic)
            else:
                self.assertIn("scalarMulWindow2OddFromBits", semantic)

        net_body = next(
            body for body in subject.BODIES
            if body.operation == "decaf.net_balance_commitment"
        )
        defs_path = out / f"{net_body.stem}{net_body.tag}Defs.lean"
        mutated = dict(generated)
        mutated[defs_path] = mutated[defs_path].replace(
            f"import {net_body.semantics_module}NbSupportBase\n", "", 1
        )
        with self.assertRaisesRegex(ValueError, "NbSupport import topology"):
            subject._validate_net_balance_support_topology(mutated, out)

    def test_boolean_mutation_fails_closed(self) -> None:
        body = subject.BODIES[0]
        rows = copy.deepcopy(subject._canonical_rows(body))
        left, right, output = rows[body.boolean_row]
        mutated = dict(left)
        wire = next(iter(mutated))
        mutated[wire] = (mutated[wire] + 1) % subject.ORDER
        rows[body.boolean_row] = (mutated, right, output)
        with mock.patch.object(subject, "_canonical_rows", return_value=rows):
            with self.assertRaisesRegex(ValueError, "Boolean row"):
                subject.recover(body)

    def test_window_body_mutation_fails_closed(self) -> None:
        body = subject.BODIES[-1]
        rows = copy.deepcopy(subject._canonical_rows(body))
        left, right, output = rows[body.start_row]
        mutated = dict(right)
        wire = next(iter(mutated))
        mutated[wire] = (mutated[wire] + 1) % subject.ORDER
        rows[body.start_row] = (left, mutated, output)
        with mock.patch.object(subject, "_canonical_rows", return_value=rows):
            with self.assertRaises(ValueError):
                subject.recover(body)

    def test_missing_inventory_keys_fail_closed(self) -> None:
        inventory = {
            "schema": "shieldd.gnark.normalized_template_inventory.v1",
            "circuits": [],
            "template_count": 0,
            "constraint_segment_count": 0,
            "templates": [],
        }
        with tempfile.TemporaryDirectory(dir=HERE) as directory:
            path = Path(directory) / "inventory.json"
            path.write_text(json.dumps(inventory, indent=2) + "\n")
            with mock.patch.object(subject, "INVENTORY", path):
                with self.assertRaisesRegex(
                    ValueError, "active Window2 provider keys missing"
                ):
                    subject.generated_files()


if __name__ == "__main__":
    unittest.main()
