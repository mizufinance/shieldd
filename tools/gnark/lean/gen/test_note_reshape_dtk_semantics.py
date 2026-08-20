from __future__ import annotations

import hashlib
import re
import unittest

import dtk_recovery as reviewed
import gen_note_reshape_dtk_semantics as gen
from check_lean_import_closure import import_closure
from lean_affected_modules import module_sources


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
            "e887010545052a3554cb7665a364c1a6a80f46dfb4fbbb9286b99915c4b33a09",
        )
        self.assertEqual(expected, hashlib.sha256(raw).hexdigest())
        seating = reviewed._lt_seating()
        self.assertEqual({ladder["label"] for ladder in seating["ladders"]}, {"R", "Q4"})

    def test_representative_is_an_active_deployed_profile(self) -> None:
        self.assertEqual(
            gen.IR.name,
            "note_reshape1x8-deployed-slice-ir.json",
        )
        segment = gen._segment()
        self.assertEqual(segment["proof_template_id"], gen.KEY)
        self.assertEqual(segment["constraint_count"], gen.ROW_COUNT)

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

    def test_retired_binary_scalar_modules_are_not_generated(self) -> None:
        chunks = [
            path for path in self.outputs
            if re.fullmatch(
                rf"{re.escape(gen.NAME)}DtkScalarR\d+",
                path.stem,
            )
        ]
        self.assertEqual(chunks, [])
        self.assertNotIn(
            gen.OUT / f"{gen.NAME}DtkScalar.lean", self.outputs
        )
        main = self.outputs[gen.OUT / f"{gen.NAME}Dtk.lean"]
        self.assertIn(f"import {gen.WINDOW_MODULE_PREFIX}Body", main)

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
        self.assertEqual(
            re.findall(r"(?m)^import (.+)$", facade),
            [
                "ShielddGnarkFormal.ChoiceFreeZMod",
                f"{gen.MODULE_PREFIX}LtRDefsPart{len(parts) - 1}",
            ],
        )

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
        self.assertIn("Protocol.Common.Decaf.diversifiedTransmissionKey", base)
        self.assertNotIn("DiversifiedTransmissionKeySpec", base)
        self.assertEqual(base.count("def onCurveAt"), 1)
        self.assertIn(
            "def onCurveAt (x y : F) : Prop :=\n"
            "  -(x * x) + y * y = 1 + 3021 * (x * x) * (y * y)",
            base,
        )
        self.assertIn("Protocol.Common.Decaf.onCurve", base)
        self.assertIn(f"({gen.WINDOW_NAMESPACE}.output rho).x", base)
        support = self.outputs[gen.OUT / f"{gen.NAME}Dtk.lean"]
        self.assertIn(": spec rho := by\n  unfold spec", support)
        self.assertIn("theorem onCurveAt_sub_eq", support)
        self.assertIn(
            "y * y - x * x = 1 + 3021 * (x * x) * (y * y)",
            support,
        )
        self.assertIn("onCurveAt_sub_eq _ _ hdiv", support)
        self.assertNotIn("linear_combination h'", support)
        self.assertEqual(
            support.count("have hIvkBinary := dtkIvk_toBinary rho h"),
            2,
        )
        self.assertIn(
            "Shieldd.GnarkFormal.Decaf377Assumptions."
            "DiversifiedTransmissionKeyIvkProvenance",
            support,
        )
        self.assertNotIn(
            "Shieldd.GnarkFormal.Decaf377Assumptions.\n",
            support,
        )
        self.assertIn(
            "Shieldd.GnarkFormal.Deployed.NoteReshapeRefinement."
            "compressesTo_of_circuitSpec",
            support,
        )
        self.assertNotIn(
            "Shieldd.GnarkFormal.Deployed.NoteReshapeRefinement.\n",
            support,
        )
        self.assertIn(
            "using onCurveAt_sub_eq _ _ hdiv",
            support,
        )
        self.assertNotIn(
            "simpa only [onCurveAt, Protocol.Common.Decaf.onCurve",
            support,
        )
        self.assertIn("AckBridge.ack_window2_body_sound", support)
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

    def test_shared_ivk_poseidon_provider_uses_choice_free_zmod_instances(self) -> None:
        extracted = (
            reviewed.EXTRACTED_DEPLOYED / "DtkIvkPoseidon270_e622e7.lean"
        ).read_text()
        bridge = (
            reviewed.FORMAL / "Deployed/DtkIvkPoseidonDeployedBridge.lean"
        ).read_text()
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod\n", extracted)
        self.assertIn(
            "import ShielddGnarkFormal.ChoiceFreeZModCast\n",
            bridge,
        )
        for source in (extracted, bridge):
            self.assertIn(
                "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
                source,
            )
        link = (
            reviewed.FORMAL / "Deployed/Poseidon2Link.lean"
        ).read_text()
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod\n", link)
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
            link,
        )
        poseidon = reviewed.FORMAL / "Deployed/DtkIvkPoseidon"
        modules = sorted(poseidon.glob("*.lean"))
        self.assertTrue(modules)
        combined = "\n".join(path.read_text() for path in modules)
        self.assertNotIn("ZMod.natCast_eq_natCast_iff'", combined)
        self.assertIn(
            "ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq",
            combined,
        )
        for path in modules:
            with self.subTest(path=path.name):
                self.assertIn(
                    "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
                    path.read_text(),
                )

    def test_shared_deployed_scalar_rung_uses_choice_free_zmod_instances(self) -> None:
        source = (reviewed.FORMAL / "RvkDeployedRung.lean").read_text()
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod\n", source)
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
            source,
        )

    def test_normalized_bits_use_isolated_choice_free_rvk_binary(self) -> None:
        source = (reviewed.FORMAL / "RvkToBinaryChoiceFree.lean").read_text()
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod\n", source)
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
            source,
        )
        self.assertIn(
            "ChoiceFreeZMod.eq_zero_or_eq_zero_of_mul_eq_zero Order h",
            source,
        )
        self.assertNotIn("mul_eq_zero.mp h", source)
        legacy = (reviewed.FORMAL / "RvkToBinary.lean").read_text()
        self.assertNotIn("ChoiceFreeZMod", legacy)
        bits = self.outputs[gen.OUT / f"{gen.NAME}DtkBits.lean"]
        self.assertIn(
            "import ShielddGnarkFormal.RvkToBinaryChoiceFree\n",
            bits,
        )
        self.assertIn(
            "Shieldd.GnarkFormal.RvkToBinaryChoiceFree."
            "to_binary_of_deployed",
            bits,
        )

    def test_normalized_main_uses_exact_window2_body(self) -> None:
        main = self.outputs[gen.OUT / f"{gen.NAME}Dtk.lean"]
        self.assertIn(f"import {gen.WINDOW_MODULE_PREFIX}Body\n", main)
        self.assertIn(f"{gen.WINDOW_NAMESPACE}.body_relation", main)
        self.assertIn("AckBridge.ack_window2_body_sound", main)
        self.assertNotIn(f"import {gen.MODULE_PREFIX}Scalar\n", main)
        self.assertNotIn(f"import {gen.MODULE_PREFIX}Outputs\n", main)
        self.assertNotIn(f"open {gen.NAMESPACE}.Outputs\n", main)
        self.assertNotIn(gen.OUT / f"{gen.NAME}DtkOutputs.lean", self.outputs)

    def test_active_provider_does_not_reach_retired_le_semantics(self) -> None:
        main = self.outputs[gen.OUT / f"{gen.NAME}Dtk.lean"]
        self.assertNotIn(
            "import ShielddGnarkFormal.Deployed.Dtk.Compose\n",
            main,
        )
        self.assertEqual(
            main.count(f"import {gen.ACTIVE_SUPPORT_MODULE}\n"),
            1,
        )

        root = (
            "ShielddGnarkFormal.Deployed.Templates.Semantics."
            f"{gen.NAME}Dtk"
        )
        closure = import_closure(module_sources(gen.LEAN), [root])
        self.assertNotIn("ShielddGnarkFormal.Deployed.Dtk.Compose", closure)
        self.assertNotIn("ShielddGnarkFormal.DtkBridge.SemanticsC", closure)

    def test_active_bridge_support_is_safe_and_centrally_owned(self) -> None:
        formal = reviewed.FORMAL / "DtkBridge"
        core = (formal / "Core.lean").read_text()
        build = (formal / "Build.lean").read_text()
        support = (formal / "ActiveSupport.lean").read_text()

        self.assertRegex(core, r"(?m)^def ivkGuardK\b")
        self.assertRegex(core, r"(?m)^def rContK\b")
        self.assertNotRegex(build, r"(?m)^def (?:ivkGuardK|rContK)\b")
        self.assertNotRegex(build, r"\bivkGuard\b")
        self.assertEqual(
            re.findall(r"(?m)^import (.+)$", support),
            [
                "ShielddGnarkFormal.DtkBridge.Build",
                "ShielddGnarkFormal.DtkBridge.SemanticsProvenance",
                "ShielddGnarkFormal.DtkBridge.SemanticsTailPass",
            ],
        )
        self.assertEqual(
            re.findall(r"(?m)^import (.+)$", build)[:1],
            ["ShielddGnarkFormal.DtkBridge.Core"],
        )

        closure = import_closure(
            module_sources(gen.LEAN),
            [gen.ACTIVE_SUPPORT_MODULE],
        )
        self.assertNotIn("ShielddGnarkFormal.DtkBridge.Semantics", closure)
        self.assertNotIn("ShielddGnarkFormal.DtkBridge.SemanticsC", closure)
        self.assertNotIn("ShielddGnarkFormal.Deployed.Dtk.Compose", closure)

    def test_active_bridge_surface_is_exhaustive_and_fails_closed(self) -> None:
        gen._validate_active_bridge_surface(self.outputs)
        self.assertEqual(
            gen.ACTIVE_DTK_BRIDGE_SURFACE,
            {
                "dtkSeg0",
                "dtkSeg0_provenance",
                "dtkSeg1_build",
                "dtkTailK",
                "dtkTailK_laddersTail",
                "ivkGuardK",
                "perm2_intro",
                "rContK",
            },
        )

        base = gen.OUT / f"{gen.NAME}DtkBase.lean"
        mutated_reference = dict(self.outputs)
        mutated_reference[base] += (
            "\n#check Shieldd.GnarkFormal.DtkBridge.unreviewedHelper\n"
        )
        with self.assertRaisesRegex(
            ValueError, "active DTK bridge surface drifted"
        ):
            gen._validate_active_bridge_surface(mutated_reference)

        mutated_import = dict(self.outputs)
        mutated_import[base] = (
            "import ShielddGnarkFormal.DtkBridge.SemanticsC\n"
            + mutated_import[base]
        )
        with self.assertRaisesRegex(
            ValueError, "imports forbidden bridge modules"
        ):
            gen._validate_active_bridge_surface(mutated_import)

    def test_main_support_manifest_is_exhaustive_and_fails_closed(self) -> None:
        gen._validate_main_support_manifest(self.outputs)
        main_path = gen.OUT / f"{gen.NAME}Dtk.lean"
        main = self.outputs[main_path]
        self.assertEqual(
            gen.REVIEWED_QUALIFIED_MAIN_SYMBOLS,
            frozenset(
                symbol
                for symbol in gen.ACTIVE_MAIN_SUPPORT_MANIFEST
                if "." in symbol
            ),
        )
        self.assertIn(f"import {gen.MODULE_PREFIX}Bits\n", main)
        self.assertIn(
            "import ShielddGnarkFormal.Decaf377Assumptions\n",
            main,
        )
        self.assertEqual(
            gen.ACTIVE_MAIN_SUPPORT_MANIFEST["dtkIvk_toBinary"],
            gen.MODULE_PREFIX + "Bits",
        )
        self.assertEqual(
            gen.ACTIVE_MAIN_SUPPORT_MANIFEST[
                "Shieldd.GnarkFormal.Decaf377Assumptions."
                "DiversifiedTransmissionKeyIvkProvenance"
            ],
            "ShielddGnarkFormal.Decaf377Assumptions",
        )
        for symbol in gen.REVIEWED_QUALIFIED_MAIN_SYMBOLS:
            with self.subTest(symbol=symbol):
                self.assertRegex(
                    main,
                    rf"(?<![A-Za-z0-9_.]){re.escape(symbol)}"
                    rf"(?![A-Za-z0-9_])",
                )

        qualified = (
            "Shieldd.GnarkFormal.Deployed.NoteReshapeRefinement."
            "compressesTo_of_circuitSpec"
        )
        mutated_split = dict(self.outputs)
        mutated_split[main_path] = main.replace(
            qualified,
            "Shieldd.GnarkFormal.Deployed.NoteReshapeRefinement.\n"
            "        compressesTo_of_circuitSpec",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "active DTK main qualified identifier is split"
        ):
            gen._validate_main_support_manifest(mutated_split)

        mutated_reference = dict(self.outputs)
        mutated_reference[main_path] = main.replace(
            "dtkIvk_toBinary", "dtkUnreviewedExactHelper", 1
        )
        with self.assertRaisesRegex(
            ValueError, "active DTK main support surface drifted"
        ):
            gen._validate_main_support_manifest(mutated_reference)

        mutated_namespace = dict(self.outputs)
        mutated_namespace[main_path] = (
            main
            + "\n#check Shieldd.GnarkFormal.Unreviewed.helper\n"
        )
        with self.assertRaisesRegex(
            ValueError, "active DTK main support surface drifted"
        ):
            gen._validate_main_support_manifest(mutated_namespace)

        for module in (
            gen.MODULE_PREFIX + "Bits",
            "ShielddGnarkFormal.Decaf377Assumptions",
        ):
            with self.subTest(module=module):
                mutated_import = dict(self.outputs)
                mutated_import[main_path] = main.replace(
                    f"import {module}\n", "", 1
                )
                with self.assertRaisesRegex(
                    ValueError, "active DTK main support import drifted"
                ):
                    gen._validate_main_support_manifest(mutated_import)

    def test_exact_import_closure_fails_closed(self) -> None:
        gen._validate_exact_import_closure(self.outputs)
        mutated = dict(self.outputs)
        base = gen.OUT / f"{gen.NAME}DtkBase.lean"
        missing = gen.MODULE_PREFIX + "Missing"
        mutated[base] = f"import {missing}\n" + mutated[base]
        with self.assertRaisesRegex(
            ValueError, "DTK exact import closure is incomplete"
        ):
            gen._validate_exact_import_closure(mutated)

    def test_normalized_main_uses_isolated_choice_free_ivk_truncation(self) -> None:
        source = (reviewed.FORMAL / "IvkModRTruncation.lean").read_text()
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeIvkBinary\n", source)
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
            source,
        )
        main = self.outputs[gen.OUT / f"{gen.NAME}Dtk.lean"]
        self.assertIn(
            "import ShielddGnarkFormal.IvkModRTruncation\n",
            main,
        )
        self.assertIn(
            "Shieldd.GnarkFormal.Extracted.IvkModR.Truncation."
            "laddersTail_to_binary_251",
            main,
        )

    def test_generated_support_signatures_use_local_boundary_wires(self) -> None:
        base = self.outputs[gen.OUT / f"{gen.NAME}DtkBase.lean"]
        spec = reviewed.def_body(base, "spec")
        wires = [int(wire) for wire in re.findall(r"\brho (\d+)\b", spec)]
        self.assertEqual(wires[:9], [2211, 2212, 706, 1, 3, 2211, 2212, 977, 978])
        self.assertNotIn(2213, wires)

        support = self.outputs[gen.OUT / f"{gen.NAME}Dtk.lean"]
        signature = support[
            support.index("theorem dtk_prefix_seg0") :
            support.index(":= by", support.index("theorem dtk_prefix_seg0"))
        ]
        self.assertIn("ivkGuardK (rho 978)", self.outputs[gen.OUT / f"{gen.NAME}DtkLt.lean"])
        self.assertIn(
            "(rho 706)\n      (rho 1) (rho 3)\n"
            "      (rho 2211) (rho 2212)",
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
