from __future__ import annotations

import copy
import tempfile
import unittest
from pathlib import Path
from unittest import mock

import gen_note_reshape_canonical_address as canonical
from note_reshape_adapter_model import Deployment


class NoteReshapeCanonicalAddressTests(unittest.TestCase):
    def test_discovers_fresh_canonical_crypto_chain(self) -> None:
        expected = {
            "note_reshape1x8": (2, 3, 5, 6, 7, 8, 9),
            "note_reshape8x1": (12, 13, 15, 16, 17, 18, 19),
        }
        for config in canonical.CONFIGS:
            roles = canonical.discover(config)
            with self.subTest(circuit=config.circuit):
                self.assertEqual(
                    (
                        roles.auth_non_identity["index"],
                        roles.div_non_identity["index"],
                        roles.div_compress["index"],
                        roles.ivk_nonzero["index"],
                        roles.dtk["index"],
                        roles.transmission_non_identity["index"],
                        roles.transmission_compress["index"],
                    ),
                    expected[config.circuit],
                )

    def test_render_derives_divgen_curve_only_from_compression(self) -> None:
        for config in canonical.CONFIGS:
            rendered = canonical.render(config)
            with self.subTest(circuit=config.circuit):
                self.assertIn(
                    "Decaf377Assumptions.onCurve_of_compress", rendered
                )
                self.assertNotIn("DecafAssertOnCurveSeg", rendered)

    def test_render_uses_current_window2_dtk_and_compression_layout(self) -> None:
        retired_transmission_template = (
            "134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2"
        )
        for config in canonical.CONFIGS:
            roles = canonical.discover(config)
            rendered = canonical.render(config)
            with self.subTest(circuit=config.circuit):
                self.assertIn(canonical.TRANSMISSION_TEMPLATE, rendered)
                self.assertNotIn(retired_transmission_template, rendered)
                self.assertIn("have hw2212", rendered)
                self.assertIn("localRho rho 2212", rendered)
                self.assertNotIn("have hw2213", rendered)
                self.assertEqual(rendered.count(":= by rfl"), 2)
                self.assertNotIn("by decide +kernel", rendered)
                self.assertIn(
                    "simpa only [NoteReshapeCanonical.toDecafPoint, "
                    "shared, divGenFq,",
                    rendered,
                )
                self.assertIn(
                    "simpa only [transmission, transmissionFq,", rendered
                )
                self.assertIn(
                    "simpa only [transmission, authorization, shared,",
                    rendered,
                )
                self.assertIn(
                    f"Contracts.{config.module}.Seg{roles.dtk['index']}."
                    "wireSeatingTable",
                    rendered,
                )
                self.assertIn(
                    f"Contracts.{config.module}."
                    f"Seg{roles.transmission_compress['index']}.contract",
                    rendered,
                )
                self.assertIn(
                    "NoteReshapeRefinement."
                    "circuitSpec_of_diversifiedTransmissionKey",
                    rendered,
                )
                self.assertIn(
                    "NoteReshapeRefinement.toDecafPoint_toProtocolPoint\n"
                    "      (transmission rho)",
                    rendered,
                )

    def test_rejects_divgen_trace_alias(self) -> None:
        config = canonical.CONFIGS[0]
        original = Deployment.load(
            config.circuit, config.module, config.shape
        )
        manifest = copy.deepcopy(original.manifest)
        manifest["segments"][4]["args"][0] = "in=claimed.balance_commitment"
        mutated = Deployment(
            config.circuit,
            config.module,
            manifest,
            copy.deepcopy(original.ir),
        )
        with mock.patch.object(
            canonical.Deployment, "load", return_value=mutated
        ):
            with self.assertRaisesRegex(ValueError, "found 0"):
                canonical.discover(config)

    def test_exact_check_rejects_unrewritten_theorem_mutation(self) -> None:
        expected = canonical.render(canonical.CONFIGS[0])
        mutated = expected.replace(
            "have h :=\n"
            "      Contracts.NoteReshape1x8."
            "sharedTransmissionComputedNonIdentity_of_exact",
            "have h : True := by trivial\n"
            "    have h' :=\n"
            "      Contracts.NoteReshape1x8."
            "sharedTransmissionComputedNonIdentity_of_exact",
            1,
        )
        self.assertNotEqual(expected, mutated)
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "Canonical.lean"
            path.write_text(mutated)
            with self.assertRaisesRegex(SystemExit, "generated file is stale"):
                canonical.check_generated(path, expected)


if __name__ == "__main__":
    unittest.main()
