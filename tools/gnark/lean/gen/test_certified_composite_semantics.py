#!/usr/bin/env python3

import copy
import inspect
import unittest

import gen_certified_composite_semantics as gen


class CertifiedCompositeSemanticsTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.outputs = gen.generated_files()

    def test_generated_sources_have_canonical_whitespace(self):
        for path, source in self.outputs.items():
            self.assertTrue(source.endswith("\n"), path.name)
            self.assertFalse(source.endswith("\n\n"), path.name)
            self.assertTrue(
                all(line == line.rstrip() for line in source.splitlines()),
                path.name,
            )

    def test_address_compress_uses_exact_recovered_seating(self):
        family = gen._address_compress_family()
        self.assertEqual(family.relation_stem, gen.ADDRESS_NAME)
        self.assertEqual(
            family.semantic_stem,
            f"{gen.ADDRESS_NAME}Compress",
        )
        self.assertEqual(family.row_offset, 0)
        self.assertEqual(family.affine_delta, -203)
        self.assertEqual(family.head_mapping[0], 4)
        self.assertEqual(
            family.head_mapping[1:],
            (
                8, 9, 10, 11, 12, 13, 14, 19, 16, 15,
                17, 18, 20, 21, 22, 23, 24, 25, 26, 27,
            ),
        )

    def test_address_canonical_imports_match_materialized_modules(self):
        address_outputs = {
            path: source
            for path, source in self.outputs.items()
            if path.name.startswith(gen.ADDRESS_NAME)
            and "AddressCanon" in path.name
        }
        self.assertTrue(address_outputs)
        combined = "\n".join(address_outputs.values())
        self.assertNotIn("AddressCanonCanon", combined)
        prefix = (
            "import ShielddGnarkFormal.Deployed.Templates.Semantics."
            f"{gen.ADDRESS_NAME}Address"
        )
        for source in address_outputs.values():
            for line in source.splitlines():
                if not line.startswith(prefix):
                    continue
                module = line.removeprefix("import ")
                target = gen.OUT / f"{module.rsplit('.', 1)[-1]}.lean"
                self.assertIn(target, self.outputs, module)

    def test_current_unconditional_encryption_templates_are_pinned(self):
        self.assertEqual(
            gen.recovery.ADDRESS_DIGEST,
            "9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f",
        )
        self.assertEqual(
            gen.recovery.AMOUNT_DIGEST,
            "da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e",
        )
        self.assertEqual(
            gen.recovery.DETECTION_DIGEST,
            "63775682d65609fcb7205087c01734b96d2d3337f3d614c8ffd568df5c38c49c",
        )
        families = (
            (gen._address_compress_family(), 2191, 3),
            (gen._amount_compress_family(), 978, 1),
            (gen._detection_compress_family(), 2115, 4),
        )
        for family, local_wire_count, equality_count in families:
            self.assertEqual(family.local_wire_count, local_wire_count)
            source = self.outputs[gen.OUT / f"{family.name}.lean"]
            self.assertIn("def Equality (plaintext block ciphertext", source)
            self.assertIn("def CiphertextSpec", source)
            self.assertIn("theorem ciphertext_sound", source)
            self.assertEqual(
                source.count("linear_combination h"),
                equality_count,
            )
            self.assertIn("import Mathlib.Tactic.LinearCombination", source)
            self.assertNotIn("add_assoc", source)
            self.assertNotIn("simpa only [one_mul] using", source)
            for retired in (
                "GatedEquality",
                "GateSpec",
                "gate_sound",
                "is_regulated",
                "condition *",
            ):
                self.assertNotIn(retired, source)

    def test_active_deployment_roster_rejects_registry_inventory_and_ir_drift(self):
        registry = gen.compress.read_json_object(gen.compress.REGISTRY, canonical="pretty")
        inventory = gen.compress.read_json_object(gen.compress.INVENTORY, canonical="pretty")
        ir = gen.compress.read_json_object(
            gen.compress.IR_DIR / "transfer-deployed-slice-ir.json", canonical="pretty"
        )
        gen._validate_deployment_roster(registry, inventory, ir)
        for label, payload_index, field in (
            ("registry", 0, "proof_template_id"),
            ("inventory", 1, "template_key"),
        ):
            changed = copy.deepcopy(registry if label == "registry" else inventory)
            entries = [entry for entry in changed["templates"]
                       if str(entry.get(field, "")).startswith("gadget.poseidon_encryption.")]
            entries[payload_index][field] += "-retired"
            with self.assertRaisesRegex(ValueError, f"encryption {label} key roster drifted"):
                gen._validate_deployment_roster(
                    changed if label == "registry" else registry,
                    changed if label == "inventory" else inventory,
                    ir,
                )
        changed_ir = copy.deepcopy(ir)
        segment = next(segment for segment in changed_ir["segments"]
                       if segment.get("index") == 103)
        segment["index"] = 108
        with self.assertRaisesRegex(ValueError, "IR segment roster drifted"):
            gen._validate_deployment_roster(registry, inventory, changed_ir)

    def test_detection_u32_ranges_and_plaintexts_are_exact(self):
        recovery = gen.recovery.recover_detection()
        self.assertEqual(
            recovery.sender_slot_binary.bit_wires,
            tuple(range(1, 33)),
        )
        self.assertEqual(
            recovery.receiver_slot_binary.bit_wires,
            tuple(range(34, 66)),
        )
        self.assertEqual(
            recovery.plaintext_lcs[2],
            ((33, 1), (2112, 1 << 33), (2113, 1 << 32)),
        )
        slot = self.outputs[
            gen.OUT / f"{gen.DETECTION_NAME}SlotBits.lean"
        ]
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod", slot)
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod", slot
        )
        self.assertIn("attribute [-instance] ZMod.instField", slot)
        for marker in (
            "def senderSlotBits",
            "def receiverSlotBits",
            "def assetId",
            "def detectionSalt",
            "def isFlagged",
            "def senderWord",
            "def spec",
            "theorem sound",
            "theorem senderToBinary_of_spec",
            "theorem receiverToBinary_of_spec",
            "theorem slotBounds_of_spec",
            "ChoiceFreeBinary.range_of_to_binary",
            "BinaryRecomposition.recBits rho 1 32",
            "BinaryRecomposition.recBits rho 34 32",
            "List.Vector.getElem_def",
            "List.Vector.toList_ofFn",
            "List.getElem_ofFn",
        ):
            self.assertIn(marker, slot)
        for forbidden in (
            "unfold senderSlot\n    rw [h.2.1]",
            "unfold receiverSlot\n    rw [h.2.2.2]",
            "simpa [senderSlotBits] using",
            "simpa [receiverSlotBits] using",
        ):
            self.assertNotIn(forbidden, slot)
        main = self.outputs[gen.OUT / f"{gen.DETECTION_NAME}.lean"]
        self.assertIn(f"{gen.DETECTION_NAME}.SlotBits.spec rho", main)
        self.assertIn(f"{gen.DETECTION_NAME}.SlotBits.sound rho h", main)
        for index in range(4):
            self.assertIn(
                f"{gen.DETECTION_NAME}.SlotBits.plaintext{index} rho",
                main,
            )
        detection_outputs = {
            path: source
            for path, source in self.outputs.items()
            if path.name.startswith(gen.DETECTION_NAME)
        }
        # Five Poseidon blocks are each split into one base, 39 bounded gate
        # leaves, and one tiny block aggregator (40 additional files per block
        # relative to the former monolith).
        self.assertEqual(len(detection_outputs), 28 + 5 * 40)
        self.assertTrue(
            all("GENERATED by" in source for source in detection_outputs.values())
        )

    def test_every_embedded_compress_slice_is_materialized(self):
        mains = {
            path.name
            for path in self.outputs
            if path.name.endswith("Compress.lean")
            or any(
                path.name.endswith(f"Compress{index}.lean")
                for index in range(5)
            )
        }
        expected = {
            f"{gen.ADDRESS_NAME}Compress.lean",
            f"{gen.AMOUNT_NAME}Compress.lean",
            f"{gen.DETECTION_NAME}Compress.lean",
        }
        self.assertEqual(mains, expected)

    def test_standalone_dleq_research_generation_is_deleted(self):
        marker = f"TGadgetDleq_{gen.recovery.DLEQ_DIGEST}"
        self.assertFalse(
            any(marker in path.name for path in self.outputs)
        )
        self.assertEqual(
            tuple(inspect.signature(gen.generated_compress_files).parameters),
            (),
        )
        self.assertFalse(
            any(
                marker in path.name
                for path in gen.compress.RELATIONS.glob("*.lean")
            )
        )

    def test_encryption_poseidon_blocks_are_exact_and_bounded(self):
        blocks = {
            path.name: source
            for path, source in self.outputs.items()
            if "PoseidonBlock" in path.name
        }
        expected_blocks = set()
        for family, block_count in (
            (gen.ADDRESS_NAME, 3),
            (gen.AMOUNT_NAME, 1),
            (gen.DETECTION_NAME, 5),
        ):
            for index in range(block_count):
                expected_blocks.add(f"{family}PoseidonBlock{index}.lean")
                expected_blocks.add(f"{family}PoseidonBlock{index}Base.lean")
                expected_blocks.update(
                    f"{family}PoseidonBlock{index}Gate{gate}.lean"
                    for gate in range(39)
                )
        self.assertEqual(set(blocks), expected_blocks)
        self.assertFalse(hasattr(gen, "_render_poseidon_facts"))
        mains = {
            name: source
            for name, source in blocks.items()
            if name.endswith(tuple(
                f"PoseidonBlock{index}.lean" for index in range(5)
            ))
        }
        bases = {
            name: source
            for name, source in blocks.items()
            if name.endswith("Base.lean")
        }
        gates = {
            name: source
            for name, source in blocks.items()
            if "Gate" in name
        }
        self.assertEqual(len(mains), 9)
        self.assertEqual(len(bases), 9)
        self.assertEqual(len(gates), 9 * 39)
        self.assertEqual(len(blocks), 9 * 41)
        self.assertTrue(all(len(source) < 15_000 for source in mains.values()))
        self.assertTrue(all(len(source) < 550_000 for source in bases.values()))
        self.assertTrue(all(len(source) < 80_000 for source in gates.values()))
        self.assertTrue(all("relationRow" not in source for source in mains.values()))
        self.assertTrue(all(
            "attribute [-instance] ZMod.instField" in source
            and "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod" in source
            for source in gates.values()
        ))
        for name in (gen.ADDRESS_NAME, gen.AMOUNT_NAME, gen.DETECTION_NAME):
            aggregator = self.outputs[gen.OUT / f"{name}Poseidon.lean"]
            self.assertIn("attribute [-instance] ZMod.instField", aggregator)
            self.assertIn(
                "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
                aggregator,
            )
            provider = self.outputs[gen.OUT / f"{name}.lean"]
            self.assertIn("attribute [-instance] ZMod.instField", provider)
            self.assertIn(
                "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
                provider,
            )

    def test_detection_seed_negative_coefficient_is_cast_explicitly(self):
        gate = self.outputs[
            gen.OUT / f"{gen.DETECTION_NAME}PoseidonBlock0Gate0.lean"
        ]
        self.assertIn("hblock0Input0Coeff433", gate)
        self.assertIn(
            f"({gen.recovery.ORDER - 1} : F) = (-1 : F)",
            gate,
        )
        self.assertIn(
            "rw [hblock0Input0Coeff433]",
            gate,
        )
        self.assertNotIn(
            "unfold block0RoundInput0; linear_combination h1112",
            gate,
        )

    def test_address_canonical_packing_is_materialized(self):
        names = {path.name for path in self.outputs}
        self.assertIn(f"{gen.ADDRESS_NAME}AddressPacking.lean", names)
        self.assertIn(f"{gen.ADDRESS_NAME}AddressCanon1.lean", names)
        self.assertIn(f"{gen.ADDRESS_NAME}AddressCanon2.lean", names)
        canonical_base = self.outputs[
            gen.OUT / f"{gen.ADDRESS_NAME}AddressCanonBase.lean"
        ]
        self.assertIn(
            "abbrev F := Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F",
            canonical_base,
        )
        self.assertIn(
            "Nat.Prime Shieldd.GnarkFormal.Extracted.CanonicalFqBits.Order",
            canonical_base,
        )
        self.assertNotIn(f"Relations.{gen.ADDRESS_NAME}.F", canonical_base)
        canon_defs = self.outputs[
            gen.OUT / f"{gen.ADDRESS_NAME}AddressCanon1TrueDefs.lean"
        ]
        self.assertIn("attribute [-instance] ZMod.instField", canon_defs)
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod", canon_defs
        )
        address_packing = self.outputs[
            gen.OUT / f"{gen.ADDRESS_NAME}AddressPacking.lean"
        ]
        self.assertIn(
            "PoseidonEncryptionBridge.AddressPackingBackendCircuit",
            address_packing,
        )
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
            address_packing,
        )
        self.assertIn(
            "attribute [-instance] ZMod.instField", address_packing
        )
        self.assertIn("canon1Bits_take_248", address_packing)
        self.assertIn("canon2Bits_drop_240", address_packing)
        self.assertIn(
            "ChoiceFreeBinary.recover_binary_map_toZMod_eq_ofBitsLE",
            address_packing,
        )
        self.assertNotIn("ChoiceFreeBinary.\n", address_packing)
        self.assertIn("exact ⟨hDivBinary, hDivLt⟩", address_packing)
        self.assertIn("exact ⟨hTransBinary, hTransLt⟩", address_packing)
        self.assertNotIn(
            "addressPacking_of_canonical_bits", address_packing
        )
        address_main = self.outputs[gen.OUT / f"{gen.ADDRESS_NAME}.lean"]
        self.assertIn("AddressPacking.spec rho", address_main)
        self.assertIn("AddressPacking.sound rho h", address_main)

    def test_composite_generation_is_deterministic_and_transport_free(self):
        self.assertEqual(self.outputs, gen.generated_files())
        combined = "\n".join(self.outputs.values())
        for forbidden in (
            "representativeRho",
            "representativeSeating",
            "axiom ",
            "sorry",
        ):
            self.assertNotIn(forbidden, combined)

    def test_removed_standalone_equivalence_cannot_return(self):
        formal_root = gen.compress.ROOT / "tools/gnark/lean/ShielddGnarkFormal"
        obsolete = formal_root / "Extracted/DecafAssertEquivalent.lean"
        self.assertFalse(obsolete.exists())

        stale = "Extracted.DecafAssertEquivalent"
        stale_references = []
        for path in formal_root.rglob("*.lean"):
            if stale in path.read_text():
                stale_references.append(path.relative_to(formal_root))
        self.assertEqual(stale_references, [])

        bridge = (formal_root / "DleqBridge.lean").read_text()
        self.assertNotIn("def DleqCircuit", bridge)
        self.assertNotIn("theorem dleq_sound", bridge)

        combined = "\n".join(self.outputs.values())
        self.assertNotIn("def DleqCircuit", combined)
        self.assertNotIn("theorem dleq_sound", combined)

    def test_dleq_closure_has_one_canonical_prime_dependency(self):
        formal_root = gen.compress.ROOT / "tools/gnark/lean/ShielddGnarkFormal"
        assumptions = (formal_root / "Decaf377Assumptions.lean").read_text()
        bridge = (formal_root / "DleqBridge.lean").read_text()

        canonical = (
            "variable [Fact "
            "(Nat.Prime Extracted.DecafCompressToField.Order)]"
        )
        encode_variable = (
            "variable [Fact "
            "(Nat.Prime Extracted.DecafEncodeToCurve.Order)]"
        )
        self.assertEqual(assumptions.count(canonical), 1)
        self.assertNotIn(encode_variable, assumptions)
        self.assertIn(
            "local instance : Fact "
            "(Nat.Prime Extracted.DecafEncodeToCurve.Order) := ‹_›",
            assumptions,
        )

        self.assertEqual(bridge.count(canonical), 1)
        for redundant in (
            encode_variable,
            "variable [Fact "
            "(Nat.Prime Extracted.DecafEdwardsAdd.Order)]",
            "variable [Fact "
            "(Nat.Prime Extracted.PoseidonHash7.Order)]",
        ):
            self.assertNotIn(redundant, bridge)
        for derived in (
            "local instance : Fact "
            "(Nat.Prime Extracted.DecafEdwardsAdd.Order) := ‹_›",
            "local instance : Fact "
            "(Nat.Prime Extracted.PoseidonHash7.Order) := ‹_›",
        ):
            self.assertIn(derived, bridge)

    def test_encode_to_curve_semantic_definitions_are_choice_free(self):
        formal_root = gen.compress.ROOT / "tools/gnark/lean/ShielddGnarkFormal"
        source = (formal_root / "EncodeToCurveBridge.lean").read_text()
        extracted = (
            formal_root / "Extracted/DecafEncodeToCurve.lean"
        ).read_text()
        self.assertIn(
            "local instance (priority := 2000) : CommRing F := "
            "ZMod.commRing _",
            extracted.split("def reducedStepOne", 1)[0],
        )
        namespace_prefix = source.split(
            "namespace Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve", 1
        )[1].split("theorem relation_to_protocol", 1)[0]
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
            namespace_prefix,
        )
        projection = source.split(
            "theorem relation_to_protocol", 1
        )[1]
        self.assertNotIn("Nat.cast_sub", projection)
        self.assertIn(
            "change (((Order - 1 : Nat) : Nat) : F) = -1\n"
            "    decide",
            projection,
        )
        low_bit = source.split(
            "theorem map_toZMod_getElem_zero", 1
        )[1].split("theorem normalizeT_absF", 1)[0]
        self.assertIn("⟨0, by decide⟩", low_bit)
        self.assertNotIn("norm_num", low_bit)
        self.assertIn("section ChoiceFreeSemanticDefinitions", source)
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod", source
        )
        section = source.split(
            "section ChoiceFreeSemanticDefinitions", 1
        )[1].split("end ChoiceFreeSemanticDefinitions", 1)[0]
        self.assertIn("def NormalizeT", section)
        self.assertIn("def Relation", section)


if __name__ == "__main__":
    unittest.main()
