from __future__ import annotations

import copy
import re
import unittest

import gen_certified_quad_path_semantics as quad


class CertifiedQuadPathSemanticsTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.rows = {
            template: quad.canonical_rows(template)
            for template in quad.TEMPLATES
        }
        reference = cls.rows[quad.TEMPLATES[0]][
            quad.poseidon_base(0) :
            quad.poseidon_base(0) + quad.POSEIDON_ROWS
        ]
        cls.generic, _, _ = quad._generic_node_rows(reference)
        (
            cls.common,
            cls.segments,
            cls.arguments,
            _,
            cls.gendata,
        ) = quad._build_common_bridge(cls.generic)
        cls.final_wires = tuple(
            int(wire[1:])
            for wire in cls.gendata["groups"]["38"]
        )
        cls.outputs = quad.generated_files()

    def test_exact_pins_and_all_deployed_nodes_are_recovered(self) -> None:
        self.assertEqual(len(quad.TEMPLATES), 2)
        for template in quad.TEMPLATES:
            quad._validate_inventory(template)
            rows = self.rows[template]
            self.assertEqual(len(rows), quad.ROW_COUNT)
            instance, mappings = quad.recover_instance(
                template,
                rows,
                self.generic,
                self.arguments,
                self.final_wires,
            )
            self.assertEqual(len(instance.levels), quad.LEVELS)
            self.assertEqual(len(mappings), quad.LEVELS)
            for level, mapping in zip(
                instance.levels, mappings, strict=True
            ):
                self.assertEqual(
                    tuple(mapping[wire] for wire in self.final_wires),
                    level.outputs,
                )

    def test_selector_and_poseidon_drift_fail_closed(self) -> None:
        template = quad.TEMPLATES[0]

        select_rows = copy.deepcopy(self.rows[template])
        select_rows[quad.select_base(7)][0][0] = 2
        with self.assertRaisesRegex(ValueError, "selector constants drifted"):
            quad.recover_instance(
                template,
                select_rows,
                self.generic,
                self.arguments,
                self.final_wires,
            )

        poseidon_rows = copy.deepcopy(self.rows[template])
        row = quad.poseidon_base(9) + 127
        output = quad.singleton(poseidon_rows[row][2], "tamper")
        poseidon_rows[row] = (
            poseidon_rows[row][0],
            poseidon_rows[row][1],
            {output: 2},
        )
        with self.assertRaisesRegex(
            ValueError, "expected coefficient-one wire"
        ):
            quad.recover_instance(
                template,
                poseidon_rows,
                self.generic,
                self.arguments,
                self.final_wires,
            )

        cyclic = copy.deepcopy(
            self.rows[template][
                quad.poseidon_base(0) :
                quad.poseidon_base(0) + quad.POSEIDON_ROWS
            ]
        )
        first_output = quad.singleton(cyclic[0][2], "cyclic")
        cyclic[0][0][first_output] = 1
        with self.assertRaisesRegex(
            ValueError, "depends on Poseidon output wires"
        ):
            quad._generic_node_rows(cyclic)

    def test_generated_mains_state_the_full_path_spec(self) -> None:
        mains = [
            source
            for path, source in self.outputs.items()
            if any(path.name == f"{template.name}.lean"
                   for template in quad.TEMPLATES)
        ]
        self.assertEqual(len(mains), len(quad.TEMPLATES))
        for source in mains:
            self.assertIn("def spec (rho : Nat → F) : Prop :=", source)
            self.assertIn("QuadPath.recover16", source)
            self.assertIn("theorem sound", source)
            self.assertIn("theorem toBinary_of_spec", source)
            self.assertIn(
                "ChoiceFreeBinary.to_binary_of_get",
                source,
            )
            self.assertIn("bits_bool rho h", source)
            self.assertIn("position_recompose rho h", source)
            self.assertIn(
                "List.Vector.getElem_def",
                source,
            )
            self.assertIn("List.Vector.toList_ofFn", source)
            self.assertIn("List.getElem_ofFn", source)
            self.assertIn(
                "exact a15.trans (recovered15_eq_recover16 rho)",
                source,
            )
            self.assertNotIn("simpa [bits] using h.1 i hi", source)
            self.assertNotIn(
                "simpa [output, Shieldd.GnarkFormal.QuadPath.recover16",
                source,
            )
            self.assertNotIn("rw [a", source)
            self.assertIn("have a3 := block0 rho h", source)
            self.assertIn("have a7 := block1 rho h a3", source)
            self.assertIn("have a11 := block2 rho h a7", source)
            self.assertIn("have a15 := block3 rho h a11", source)

        recoveries = [
            source
            for path, source in self.outputs.items()
            if path.name.endswith("QuadPathRecovery.lean")
        ]
        self.assertEqual(len(recoveries), len(quad.TEMPLATES))
        for source in recoveries:
            self.assertEqual(source.count("def recovered"), quad.LEVELS)
            self.assertIn("theorem recovered15_eq_recover16", source)
            self.assertIn("  rfl", source)
            self.assertEqual(
                source.count("QuadPath.recoverStep"), quad.LEVELS
            )
            self.assertNotIn(
                "StateCommitmentPathChoiceFree.recoverStep", source
            )
            for level in range(quad.LEVELS):
                self.assertIn(f"(path rho)[{level}][0]", source)
                self.assertIn(f"(bits rho)[{2 * level}]", source)

        blocks = {
            path: source
            for path, source in self.outputs.items()
            if re.search(r"QuadPathBlock\d+\.lean$", path.name)
        }
        self.assertEqual(
            len(blocks), len(quad.TEMPLATES) * quad.BLOCKS
        )
        for path, source in blocks.items():
            with self.subTest(path=path.name):
                block = int(re.search(r"Block(\d+)", path.name).group(1))
                start = block * quad.BLOCK_SIZE
                end = start + quad.BLOCK_SIZE
                self.assertIn(f"theorem block{block}", source)
                for level in range(start, end):
                    self.assertIn(
                        f"change nodeOut{level} rho = recovered{level} rho "
                        f"at a{level}",
                        source,
                    )

        combined = "\n".join(self.outputs.values())
        for forbidden in (
            "representativeRho",
            "representativeSeating",
            "Classical.choice",
            "native_decide",
            "axiom ",
            "sorry",
            "spec := relation",
        ):
            self.assertNotIn(forbidden, combined)

    def test_node_helper_scalar_arguments_are_parenthesized(self) -> None:
        helpers = {
            path: source
            for path, source in self.outputs.items()
            if re.search(r"QuadPathNode\d+Rows\d+\.lean$", path.name)
        }
        self.assertTrue(helpers)
        for path, source in helpers.items():
            with self.subTest(path=path.name):
                self.assertIsNone(re.search(r"\bnext rho \d", source))
                self.assertIsNone(re.search(r"\.seg\d+ rho \d", source))
                self.assertIn("(tail : next (", source)

    def test_node_aggregators_certify_signed_output_coefficients(self) -> None:
        bases = {
            path: source
            for path, source in self.outputs.items()
            if path.name.endswith("QuadPathBase.lean")
        }
        self.assertEqual(len(bases), len(quad.TEMPLATES))
        for path, source in bases.items():
            with self.subTest(path=path.name):
                self.assertIn(
                    "import ShielddGnarkFormal.ChoiceFreeZModCast",
                    source,
                )
                self.assertIn(
                    "natCast_eq_natCast_of_mod_eq",
                    source,
                )
                self.assertEqual(
                    source.count("theorem nodeCoeff"),
                    len(quad.NODE_C),
                )
                self.assertIn("theorem leafCoeff", source)

        aggregators = {
            path: source
            for path, source in self.outputs.items()
            if re.search(r"QuadPathNode\d+\.lean$", path.name)
        }
        self.assertEqual(
            len(aggregators),
            len(quad.TEMPLATES) * quad.LEVELS,
        )
        for path, source in aggregators.items():
            with self.subTest(path=path.name):
                self.assertEqual(
                    len(re.findall(r"\bnodeCoeff\d+\b", source)),
                    len(quad.NODE_C),
                )
                self.assertIn(
                    f"{quad.COMMON_BRIDGE}.domainLit",
                    source,
                )

        steps = {
            path: source
            for path, source in self.outputs.items()
            if re.search(r"QuadPathStep\d+\.lean$", path.name)
        }
        self.assertEqual(
            len(steps),
            len(quad.TEMPLATES) * quad.LEVELS,
        )
        expected_node_rewrite = "rw [" + ", ".join(
            f"← nodeCoeff{index}" for index in range(len(quad.NODE_C))
        ) + "]"
        for path, source in steps.items():
            with self.subTest(path=path.name):
                if path.name.endswith("QuadPathStep0.lean"):
                    self.assertEqual(source.count("rw [← leafCoeff"), 4)
                    self.assertNotIn(expected_node_rewrite, source)
                else:
                    self.assertEqual(source.count(expected_node_rewrite), 4)

    def test_common_bridge_is_abstract_and_choice_free(self) -> None:
        extracted = self.common[
            quad.FORMAL / "Extracted/Deployed"
            / f"{quad.COMMON_STEM}.lean"
        ]
        self.assertIn(
            "def relation (w1 w2 w3 w4 : F)",
            extracted,
        )
        self.assertNotIn("rho", extracted)
        self.assertEqual(
            tuple(int(value) for value in self.gendata["seq"][1:6]),
            quad.NODE_C,
        )

    def test_protocol_bridge_uses_only_binary_and_path_dependencies(self) -> None:
        bridge = (
            quad.FORMAL / "QuadPathProtocolBridge.lean"
        ).read_text()
        self.assertIn("theorem pathFacts_of_toBinary", bridge)
        self.assertIn("theorem member_of_toBinary", bridge)
        self.assertIn(
            "ChoiceFreeBinary.ofBitsLE_testBit",
            bridge,
        )
        self.assertNotIn("ScalarMulBridge", bridge)

    def test_quad_path_spec_selects_choice_free_zmod_operations(self) -> None:
        source = (quad.FORMAL / "QuadPathSpec.lean").read_text()
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod", source)
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod", source
        )
        self.assertIn("attribute [-instance] ZMod.instField", source)


if __name__ == "__main__":
    unittest.main()
