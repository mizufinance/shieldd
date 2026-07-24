from __future__ import annotations

import hashlib
import re
import unittest

import dtk_recovery as reviewed
import gen_note_reshape_dtk_semantics as gen


class NoteReshapeDtkSemanticsTest(unittest.TestCase):
    def setUp(self) -> None:
        reviewed.SOURCE_CONTRACTS = reviewed.DEFAULT_CONTRACTS
        reviewed.ROW_COUNT = gen.ROW_COUNT
        reviewed._SOURCE_CACHE.clear()
        reviewed._RELATION_PARTS_CACHE.clear()

    @classmethod
    def setUpClass(cls) -> None:
        cls.outputs = gen.generated_files()

    def test_canonical_lt_seating_is_byte_pinned(self) -> None:
        raw = reviewed.LT_SEATING.read_bytes()
        expected = reviewed.LT_SEATING_SHA256.read_text().strip()
        self.assertEqual(
            hashlib.sha256(raw).hexdigest(),
            "c5361ded79b22ceab04709545e115f21e23be09543a972d3fb9a6ab4b9fe00bc",
        )
        self.assertEqual(expected, hashlib.sha256(raw).hexdigest())
        seating = reviewed._lt_seating()
        self.assertEqual({ladder["label"] for ladder in seating["ladders"]}, {"R", "Q4"})

    def test_reviewed_boundary_wires_are_seated_locally(self) -> None:
        cfg = gen._cfg()
        self.assertEqual(
            {wire: reviewed.seat_wire(cfg, wire) for wire in (6, 7, 8, 9, 10, 1265, 1266)},
            {6: 1, 7: 3, 8: 706, 9: 977, 10: 978, 1265: 361, 1266: 362},
        )

    def test_canonical_row_identity_is_distinct_from_wire_seating(self) -> None:
        cfg = gen._cfg()
        shadow = gen._deployed_shadow(gen._relation_source(), cfg.wire_seating or ())
        rows = {
            int(match.group(1)): match.group(2)
            for match in re.finditer(
                r"def relationRow(\d+) \(rho : Nat -> F\) : Prop :=\n(.*?)(?=\n\ndef )",
                shadow,
                re.S,
            )
        }
        canon1, _ = reviewed.canonical_blocks(cfg)
        flags, row_for_j = reviewed.flag_wire_map(cfg, canon1, rows)
        self.assertEqual(row_for_j[47], 367)
        self.assertEqual(flags[48], reviewed.seat_wire(cfg, 1265))
        self.assertEqual(flags[47], reviewed.seat_wire(cfg, 1266))
        self.assertEqual((flags[48], flags[47]), (361, 362))

    def test_first_middle_final_and_aggregator_benchmarks_are_managed(self) -> None:
        for suffix in gen.BENCH_CANDIDATES:
            label = suffix or "Main"
            path = gen.BENCH / f"NoteReshapeTemplateDtk{label}Import.lean"
            module = gen.MODULE_PREFIX + suffix if suffix else (
                f"ShielddGnarkFormal.Deployed.Templates.Semantics.{gen.NAME}"
            )
            self.assertEqual(
                self.outputs[path], f"import {module}\n"
            )

    def test_scalar_chunks_stay_below_the_guarded_rss_regression_size(self) -> None:
        chunks = [
            path for path in self.outputs
            if re.fullmatch(
                rf"{re.escape(gen.NAME)}DtkScalarR\d+",
                path.stem,
            )
        ]
        self.assertEqual(len(chunks), 42)
        self.assertLessEqual(reviewed.SCALAR_CHUNK_SIZE, 6)

    def test_ltr_definition_modules_are_bounded_and_ordered(self) -> None:
        prefix = gen.OUT / f"{gen.NAME}DtkLtRDefsPart"
        parts = sorted(
            (
                path for path in self.outputs
                if str(path).startswith(str(prefix))
            ),
            key=lambda path: int(path.stem.rsplit("Part", 1)[1]),
        )
        self.assertEqual(len(parts), 8)
        for index, path in enumerate(parts):
            source = self.outputs[path]
            declarations = re.findall(r"(?m)^(?:def|theorem) ", source)
            self.assertLessEqual(len(declarations), gen.LTR_DEFS_DECLARATIONS_PER_SHARD)
            if index:
                self.assertIn(parts[index - 1].stem, source)
        facade = self.outputs[gen.OUT / f"{gen.NAME}DtkLtRDefs.lean"]
        self.assertIn(parts[-1].stem, facade)
        self.assertEqual(facade.count("import "), 1)

    def test_provider_consumes_only_the_exact_normalized_relation(self) -> None:
        forbidden = (
            "NoteReshape2x1",
            "representativeRho",
            "representativeSeating",
            "Seg6.",
            "seg6",
        )
        combined = "\n".join(self.outputs.values())
        # The shared extracted Poseidon module names its internal round-segments
        # seg0..segN; round-segment 6 (`.seg6`) is a legitimate reference into
        # that module, not a leak of this slice's NoteReshape2x1 transport index.
        # Mask it before the leak scan, mirroring the generator's own scan.
        import re

        scan = re.sub(
            r"(Extracted\.Deployed\.DtkIvkPoseidon270_[0-9a-f]+\.)seg6\b",
            r"\1SEG",
            combined,
        )
        for marker in forbidden:
            self.assertNotIn(marker, scan)
        self.assertIn(f"import {gen.RELATION_MODULE}", combined)
        self.assertIn(f"(h : {gen.RELATION}.relation rho)", combined)

    def test_spec_binds_full_formula_and_output_curve(self) -> None:
        base = self.outputs[gen.OUT / f"{gen.NAME}DtkBase.lean"]
        self.assertIn("DiversifiedTransmissionKeySpec", base)
        self.assertEqual(base.count("def onCurveAt"), 1)
        self.assertIn(
            "def onCurveAt (x y : F) : Prop :=\n"
            "  -(x * x) + y * y = 1 + 3021 * (x * x) * (y * y)",
            base,
        )
        self.assertNotIn("y * y - x * x", base)
        self.assertIn("onCurveAt (Outputs.dtkOutX rho) (Outputs.dtkOutY rho)", base)
        support = self.outputs[gen.OUT / f"{gen.NAME}Dtk.lean"]
        self.assertIn(": spec rho := by\n  unfold spec", support)
        facade = self.outputs[gen.OUT / f"{gen.NAME}.lean"]
        self.assertIn(f"{gen.NAMESPACE}.dtk_sound rho h", facade)

    def test_all_normalized_shards_use_choice_free_zmod_instances(self) -> None:
        support = self.outputs[gen.OUT / f"{gen.NAME}Dtk.lean"]
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod\n", support)
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
            support,
        )
        normalized = {
            path: source
            for path, source in self.outputs.items()
            if path.parent == gen.OUT and path.stem.startswith(gen.NAME + "Dtk")
        }
        self.assertTrue(normalized)
        for path, source in normalized.items():
            with self.subTest(path=path.name):
                self.assertIn(
                    "import ShielddGnarkFormal.ChoiceFreeZMod\n",
                    source,
                )
                if f"namespace {gen.NAMESPACE}\n\n" in source:
                    self.assertIn(
                        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
                        source,
                    )
        reviewed_source = (
            "import ShielddGnarkFormal.Deployed.Dtk.Compose\n\n"
            "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n\n"
            "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n"
        )
        self.assertNotIn(
            "ShielddGnarkFormal.ChoiceFreeZMod",
            reviewed_source,
        )
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
            gen._rewrite(reviewed_source),
        )

    def test_generated_support_signatures_use_local_boundary_wires(self) -> None:
        base = self.outputs[gen.OUT / f"{gen.NAME}DtkBase.lean"]
        spec = reviewed.def_body(base, "spec")
        self.assertEqual(
            [int(wire) for wire in re.findall(r"\brho (\d+)\b", spec)],
            [2211, 2213, 706, 1, 3, 2211, 2213, 977, 978],
        )

        support = self.outputs[gen.OUT / f"{gen.NAME}Dtk.lean"]
        signature = support.split(":= by", 1)[0]
        self.assertIn("ivkGuardK (rho 978)", self.outputs[gen.OUT / f"{gen.NAME}DtkLt.lean"])
        self.assertIn(
            "(rho 706) (rho 1) (rho 3) (rho 2211) (rho 2213)\n"
            "      (rho 10) (rho 15) (rho 977) (rho 978)",
            signature,
        )
        self.assertNotIn("(rho 8) (rho 6) (rho 7)", signature)
        self.assertNotIn("(rho 9) (rho 10)", signature)

    def test_non_affine_symbolic_run_fails_closed(self) -> None:
        seating = list(range(reviewed.BASE_INTERNAL + 977 + 253))
        seating[-1], seating[-2] = seating[-2], seating[-1]
        cfg = reviewed.Instance(
            seg=6,
            internal_base=reviewed.BASE_INTERNAL,
            div_x=17,
            div_y=18,
            following_seg=7,
            wire_seating=tuple(seating),
        )
        with self.assertRaisesRegex(ValueError, "is not an affine local-wire run"):
            reviewed.affine_internal_run(cfg, 977, 253, "test bits")


if __name__ == "__main__":
    unittest.main()
