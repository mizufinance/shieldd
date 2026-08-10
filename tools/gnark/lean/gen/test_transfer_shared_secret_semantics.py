#!/usr/bin/env python3

import copy
import json
import sys
import tempfile
import unittest
from collections import Counter
from pathlib import Path
from unittest import mock


HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import gen_transfer_shared_secret_semantics as subject


class TransferSharedSecretSemanticsTest(unittest.TestCase):
    def test_exact_shapes_boundaries_and_row_ownership(self) -> None:
        expected = (
            (
                "041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41",
                7326,
                252,
                None,
            ),
            (
                "0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b",
                7327,
                253,
                0,
            ),
        )
        for template, pins in zip(subject.TEMPLATES, expected, strict=True):
            recovery = subject.recover(template)
            self.assertEqual(
                (
                    template.digest,
                    len(recovery.rows),
                    recovery.esk_wire,
                    template.flag_row,
                ),
                pins,
            )
            referenced = {
                wire
                for row in recovery.rows
                for side in row
                for wire in side
                if wire
            }
            self.assertEqual(
                referenced,
                set(range(1, template.local_wire_count)),
            )
            self.assertEqual(len(recovery.user.bit_wires), 251)
            self.assertEqual(len(recovery.issuer.bit_wires), 251)
            self.assertIsNone(recovery.user.extra_materialization)
            self.assertEqual(recovery.user.row_map, ())
            self.assertEqual(recovery.issuer.row_map, ())
            self.assertEqual(
                Counter(recovery.ownership),
                Counter(
                    {
                        "fixed_rvk": 1805,
                        "equivalent": 3,
                        "user_ack": 2758,
                        "issuer_ack": 2758,
                        "selector": 2,
                        **({"flag_boolean": 1} if template.flag_row is not None else {}),
                    }
                ),
            )

    def test_fixed_prefix_mutation_fails_closed(self) -> None:
        template = subject.TEMPLATES[0]
        rows = list(subject._canonical_rows(template.digest))
        left, right, output = rows[73]
        mutated = dict(left)
        mutated[1] = (mutated.get(1, 0) + 1) % subject.ORDER
        rows[73] = (mutated, right, output)
        with self.assertRaisesRegex(ValueError, "fixed RVK row 73 drifted"):
            subject._validate_fixed_prefix(template, tuple(rows))

    def test_selector_endpoint_mutation_fails_closed(self) -> None:
        template = subject.TEMPLATES[0]
        recovery = subject.recover(template)
        rows = copy.deepcopy(list(recovery.rows))
        row = template.selector_start
        left, right, output = rows[row]
        mutated = dict(right)
        wire = next(wire for wire in mutated if wire != 0)
        mutated[wire] = (mutated[wire] + 1) % subject.ORDER
        rows[row] = (left, mutated, output)
        with self.assertRaisesRegex(
            ValueError,
            "selector issuer/user endpoint substitution drifted",
        ):
            subject._recover_boundaries(
                template,
                tuple(rows),
                recovery.user,
                recovery.issuer,
            )

    def test_ownership_rejects_omission_and_duplication(self) -> None:
        owners = [(index, "owned") for index in range(8)]
        owners[7] = (6, "duplicate")
        with self.assertRaisesRegex(
            ValueError, "duplicates=\\[6\\], missing=\\[7\\]"
        ):
            subject._validate_ownership(8, owners)

    def test_bridge_keeps_flag_and_curve_inputs_as_explicit_seams(self) -> None:
        bridge = (
            subject.FORMAL / "SharedSecretBridge.lean"
        ).read_text()
        body = bridge[
            bridge.index("def SharedSecretsBody") :
            bridge.index("theorem shared_secrets_sound")
        ]
        theorem = bridge[bridge.index("theorem shared_secrets_sound") :]
        self.assertIn("AckBridge.AckSpec", body)
        self.assertEqual(body.count("AckBridge.AckWindow2BodySpec"), 2)
        self.assertIn("SelectPointCircuit", body)
        self.assertNotIn("BooleanCircuit", body)
        for seam in ("hFlag", "hAck", "hDkPub", "hPublishedEpk"):
            self.assertIn(f"({seam} :", theorem)
        self.assertNotIn("AckBridge.AckCircuit", bridge)
        self.assertNotIn("AckBridge.ack_sound", bridge)
        self.assertNotIn("DleqBridge.dleq_sound", bridge)

    def test_fixed_prefix_recovery_is_exact_and_bounded(self) -> None:
        expected = (
            (1506, 1507, 0),
            (1506, 1507, 0),
        )
        for template, pins in zip(
            subject.TEMPLATES, expected, strict=True
        ):
            fixed = subject.recover_fixed(template)
            self.assertEqual(len(fixed.seams), 1508)
            self.assertEqual(
                (
                    fixed.computed_x_lc,
                    fixed.computed_y_lc,
                    fixed.flat_shared_lc,
                ),
                pins,
            )
            self.assertEqual(fixed.flat_rvk_lc, 0)
            self.assertEqual(
                {rvk for rvk, _ in fixed.seams},
                {0} | set(range(49, 1554)) | {1555, 1556},
            )

    def test_generated_providers_are_complete_and_transport_free(self) -> None:
        out = Path("/tmp/shieldd-shared-secret-static-test")
        generated = subject.generated_research_files(out)
        self.assertEqual(len(generated), 144)
        self.assertEqual(
            generated, subject.generated_research_files(out)
        )
        self.assertLess(max(map(len, generated.values())), 90_000)

        combined = "\n".join(generated.values())
        self.assertTrue(
            all(
                source.startswith(subject.GENERATED_HEADER)
                for source in generated.values()
            )
        )
        for forbidden in (
            "canonical_local_to_deployed_wire_seating",
            "wireSeating",
            "localRho",
            "axiom ",
            "sorry",
            "DleqBridge.dleq_sound",
            "AckBridge.ack_sound",
        ):
            self.assertNotIn(forbidden, combined)

        for template in subject.TEMPLATES:
            recovery = subject.recover(template)
            main = generated[out / f"{template.name}.lean"]
            fixed_base = generated[out / f"{template.name}FixedBase.lean"]
            fixed = generated[out / f"{template.name}Fixed.lean"]
            self.assertIn(
                f"import {template.relation_module}\n",
                fixed_base,
            )
            self.assertIn("abbrev F := Protocol.Common.F", fixed_base)
            self.assertIn(
                "theorem runBound\n"
                "    (start stride count : Nat)\n",
                fixed_base,
            )
            self.assertIn(
                "(Nat.mul_le_mul_right stride "
                "(Nat.le_pred_of_lt hi)) start).trans\n",
                fixed_base,
            )
            self.assertIn(
                "theorem fullRho_mapped\n"
                "    (rho : Nat → F) (wire : Nat)\n",
                fixed_base,
            )
            if template.fixed_shift == 0:
                self.assertIn("      congr 1\n", fixed_base)
                self.assertNotIn("congr 2; omega", fixed_base)
            else:
                self.assertIn("      congr 2; omega\n", fixed_base)

            fixed_lcs = generated[out / f"{template.name}FixedLcs0.lean"]
            self.assertNotIn("Nat.instStarOrderedRing", fixed_lcs)
            fixed_flat = generated[
                out / f"{template.name}FixedFlat0.lean"
            ]
            self.assertIn("theorem fixedFlatPart0", fixed_flat)
            self.assertIn("  rw [fullRho_mapped rho ", fixed_flat)
            self.assertNotIn("simp", fixed_flat)
            self.assertIn("  rw [fullRho_mapped rho ", fixed_lcs)
            self.assertNotIn("simp [fullRho, prefixRho]", fixed_lcs)
            self.assertNotIn("<;> ring", fixed_lcs)
            self.assertNotIn(
                "  simp only [fullRho, prefixRho]\n", fixed_lcs
            )
            bounded_runs = [
                source
                for path, source in generated.items()
                if path.name.startswith(f"{template.name}FixedLcs")
                and "have hrun0" in source
            ]
            self.assertTrue(bounded_runs)
            for source in bounded_runs:
                self.assertIn(
                    "have hrun0 (c : F) :\n"
                    "      c * "
                    "Shieldd.GnarkFormal.StrideRun.sumAux",
                    source,
                )
                self.assertLess(
                    source.index("  rw [hrun0 ("),
                    source.index("  all_goals abel\n"),
                )
                self.assertIn(
                    " (by decide) (runBound ",
                    source,
                )
                self.assertNotIn(
                    "(by intro index hi; omega)",
                    source,
                )
            direct_fixed = generated[
                out / f"{template.name}FixedDirectLcs0.lean"
            ]
            self.assertIn(
                "theorem directFixedLc1 (rho : Nat → F) :\n"
                f"    {subject.RVK_RELATION}.relationLc1 "
                "(fullRho rho) =\n",
                direct_fixed,
            )
            self.assertIn(
                "    Shieldd.GnarkFormal.StrideRun.sumAux,\n"
                "    mul_add, mul_zero, zero_mul, zero_add, add_zero, "
                "one_mul, mul_one,\n"
                "    two_nsmul, Nat.reduceAdd\n",
                direct_fixed,
            )
            self.assertIn("  rw [fullRho_mapped rho ", direct_fixed)
            self.assertIn("  all_goals abel\n", direct_fixed)
            self.assertNotIn("fullRho, prefixRho, mul_add", direct_fixed)
            self.assertIn("(-1 : F) * rho", direct_fixed)
            direct_part = generated[
                out / f"{template.name}FixedPart3.lean"
            ]
            self.assertIn("      simpa only [", direct_part)
            self.assertNotIn("fullRho, prefixRho] using s", direct_part)
            self.assertIn(
                "      rw [directFixedLc1 rho]\n", direct_part
            )
            self.assertNotIn(
                f"{subject.RVK_RELATION}.relationLc1, "
                "Shieldd.GnarkFormal.StructuredLC.eval",
                direct_part,
            )
            self.assertNotIn(" at hs ⊢\n", direct_part)
            fixed_tail = generated[
                out / f"{template.name}FixedPart22.lean"
            ]
            tail_simp = (
                "      simp [fullRho, computedSum, computedX, "
                "computedY]\n"
            )
            self.assertIn(tail_simp, fixed_tail)
            if template.fixed_shift:
                self.assertIn(
                    tail_simp + "      all_goals ring\n", fixed_tail
                )
            else:
                self.assertNotIn("all_goals ring", fixed_tail)
            self.assertNotIn(
                "computedY]; ring)\n",
                fixed_tail,
            )
            self.assertIn(
                "    change EdwardsBridge.onCurve ⟨(0 : F), (1 : F)⟩\n"
                "    exact EdwardsBridge.identity_onCurve\n",
                fixed,
            )
            self.assertIn(
                f"      change (rho {recovery.esk_wire}).val < 2 ^ 251 "
                "at hRange\n"
                "      exact hRange)\n",
                fixed,
            )
            self.assertIn(
                "      change\n"
                "        Decaf377Assumptions.RandomizedVerificationKeySpec\n",
                fixed,
            )
            self.assertIn(
                "      change EdwardsBridge.onCurve "
                "⟨computedX rho, computedY rho⟩ at hOutput\n",
                fixed,
            )
            self.assertNotIn("simpa [fullRho", fixed)
            self.assertNotIn("simpa [AckBridge.toProtocolPoint]", fixed)
            self.assertIn(
                "def spec (rho : Nat → F) : Prop :=\n"
                "  SharedSecretBridge.SharedSecretsBody",
                main,
            )
            self.assertIn("abbrev F := Protocol.Common.F", main)
            self.assertIn("theorem sound", main)
            self.assertIn("Fixed.sound rho h", main)
            self.assertIn("UserWindowSupport.relation_sound rho h", main)
            self.assertIn("IssuerWindowSupport.relation_sound rho h", main)
            self.assertIn("  · have hAdjustX", main)
            self.assertNotIn("\n    have hAdjustX", main)
            self.assertIn(
                f"      linear_combination -r{template.selector_start}\n",
                main,
            )
            self.assertIn(
                f"      linear_combination -r{template.selector_start + 1}\n",
                main,
            )
            self.assertIn("have hAdjustY", main)

            if template.flag_row is None:
                self.assertNotIn("theorem flag_bool", main)
                self.assertNotIn(
                    "simpa [sub_eq_add_neg, mul_comm] using r", main
                )
            else:
                self.assertNotIn("theorem flagComplement", main)
                self.assertIn("theorem flag_bool", main)
                self.assertIn(
                    f"relationRow{template.flag_row} "
                    f"at r{template.flag_row}",
                    main,
                )
                self.assertIn(
                    "simpa [sub_eq_add_neg, mul_comm] using "
                    f"r{template.flag_row}\n",
                    main,
                )

    def test_removed_inventory_keys_drop_legacy_deployed_providers(self) -> None:
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
                self.assertEqual(subject.generated_files(), {})


if __name__ == "__main__":
    unittest.main()
