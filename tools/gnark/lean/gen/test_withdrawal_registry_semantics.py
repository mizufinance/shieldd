from __future__ import annotations

import dataclasses
import hashlib
import sys
import tempfile
import unittest
from pathlib import Path
from unittest import mock

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import gen_withdrawal_registry_semantics as subject


class WithdrawalRegistrySemanticsTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.outputs = subject.generated_files()

    def test_exact_domain_scoped_template_roster(self) -> None:
        self.assertEqual(
            [
                (
                    template.key,
                    template.rate,
                    template.domain,
                    template.row_count,
                    template.local_wire_count,
                    template.output_wires,
                )
                for template in subject.HASH_TEMPLATES
            ],
            [
                (
                    "gadget.note_commitment@"
                    "252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c",
                    5,
                    1395601591349183338445327673196897598598470771863946901251414766570764147135,
                    390,
                    398,
                    (372, 377, 382, 387, 392, 397),
                ),
                (
                    "gadget.asset_registry_params_hash@"
                    "d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086",
                    4,
                    3087648872801978871068165188801234750107370627422529216418050362074203193020,
                    350,
                    356,
                    (335, 340, 345, 350, 355),
                ),
                (
                    "gadget.asset_registry_ring_hash@"
                    "fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2",
                    5,
                    2332157431640739955796532904592455296874484311567337797924969966168817210674,
                    390,
                    397,
                    (371, 376, 381, 386, 391, 396),
                ),
                (
                    "gadget.asset_registry_leaf_hash@"
                    "9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff",
                    5,
                    7414146286439358428123110060125696348906971675449116418017868010797147357618,
                    390,
                    396,
                    (370, 375, 380, 385, 390, 395),
                ),
                (
                    "gadget.asset_registry_leaf_hash@"
                    "9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744",
                    5,
                    7414146286439358428123110060125696348906971675449116418017868010797147357618,
                    390,
                    405,
                    (379, 384, 389, 394, 399, 404),
                ),
                (
                    "gadget.compliance_leaf@"
                    "dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc",
                    6,
                    5091441079939941903017664305347261861704474070005805806880013805880773073215,
                    430,
                    439,
                    (408, 413, 418, 423, 428, 433, 438),
                ),
            ],
        )

    def test_vector_duplicate_keys_fail_before_domain_interpretation(self) -> None:
        with tempfile.TemporaryDirectory(dir=subject.ROOT) as directory:
            path = Path(directory) / subject.VECTORS.name
            path.write_text('{"poseidon377":{},"poseidon377":{}}')
            with mock.patch.object(subject, "VECTORS", path):
                with self.assertRaisesRegex(ValueError, "duplicate JSON key"):
                    subject._validate_authoritative_domain(
                        subject.HASH_TEMPLATES[0]
                    )

    def test_canonical_relations_are_byte_and_wire_namespace_pinned(self) -> None:
        for template in subject.HASH_TEMPLATES:
            rows = subject._canonical_rows(template)
            self.assertEqual(len(rows), template.row_count)
            wires = {
                wire
                for row in rows
                for side in row
                for _, wire in side
            }
            self.assertEqual(wires, set(range(template.local_wire_count)))
            entry = subject._registry_entry(template)
            path = subject.ARTIFACTS / entry["canonical_relation_file"]
            import gzip

            self.assertEqual(
                hashlib.sha256(gzip.decompress(path.read_bytes())).hexdigest(),
                template.digest,
            )

    def test_wrong_folded_domain_fails_before_emission(self) -> None:
        template = dataclasses.replace(
            subject.HASH_TEMPLATES[0],
            domain=subject.HASH_TEMPLATES[0].domain + 1,
        )
        with self.assertRaisesRegex(ValueError, "domain pin drifted"):
            subject._hash_outputs(template)

    def test_each_template_has_one_direct_poseidon_provider(self) -> None:
        mains = {
            subject.SEMANTICS / f"{template.name}.lean"
            for template in subject.HASH_TEMPLATES
        }
        self.assertEqual(mains & self.outputs.keys(), mains)
        self.assertEqual(len(self.outputs), 252)
        for template in subject.HASH_TEMPLATES:
            source = self.outputs[
                subject.SEMANTICS / f"{template.name}.lean"
            ]
            self.assertIn(
                f"Poseidon{template.rate}Bridge.permSpec{template.rate}",
                source,
            )
            self.assertIn(f"({template.domain} : F)", source)
            self.assertIn("theorem sound", source)
            self.assertIn("  unfold spec output\n", source)
            self.assertIn("  rw [← hw", source)
            self.assertNotIn("  simpa [spec, output", source)
            self.assertNotIn("def spec (rho : Nat → F) : Prop := relation rho", source)

    def test_generated_sources_use_no_trust_shortcuts_or_transport_aliases(self) -> None:
        combined = "\n".join(self.outputs.values())
        for forbidden in (
            "axiom ",
            "native_decide",
            "Classical.choice",
            "representativeRho",
            "representativeSeating",
        ):
            self.assertNotIn(forbidden, combined)

    def test_width_seven_poseidon_uses_the_link_theorem_names(self) -> None:
        template = next(
            template
            for template in subject.HASH_TEMPLATES
            if template.rate == 6
        )
        base = self.outputs[
            subject.FORMAL / "Deployed" / template.leaf / "Base.lean"
        ]
        round_four = self.outputs[
            subject.FORMAL / "Deployed" / template.leaf / "Round04.lean"
        ]
        self.assertIn("exact fr_eq ", base)
        self.assertIn("exact pr_eq ", round_four)
        self.assertNotIn("fr_eq7", base)
        self.assertNotIn("pr_eq7", round_four)


if __name__ == "__main__":
    unittest.main()
