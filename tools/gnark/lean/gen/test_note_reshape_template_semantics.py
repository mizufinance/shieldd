from __future__ import annotations

import copy
import hashlib
import json
import re
import unittest

import gen_note_reshape_template_semantics as gen
import manifest_discovery as discovery


class NoteReshapeTemplateSemanticsTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.outputs = gen.generated_files()

    def test_generated_bytes_are_pinned_per_template_owner(self) -> None:
        ownership_path = gen.ROOT / "tools/gnark/artifacts/proof-template-ownership.json"
        ownership = json.loads(ownership_path.read_text())
        pinned = {
            gen.ROOT / item["path"]: item["sha256_hex"]
            for template in ownership["templates"]
            for item in template["files"]
        }
        pinned.update(
            {
                gen.ROOT / item["path"]: item["sha256_hex"]
                for item in ownership["shared_files"]
            }
        )
        missing = sorted(path for path in self.outputs if path not in pinned)
        self.assertEqual(missing, [])
        for path, source in self.outputs.items():
            self.assertEqual(
                hashlib.sha256(source.encode()).hexdigest(),
                pinned[path],
                path.name,
            )

    def test_unified_exact_semantics_roster_is_complete(self) -> None:
        expected = {
            ("gen_note_reshape_dtk_semantics", "generated_files"),
            ("gen_note_reshape_rvk_semantics", "generated_files"),
            ("gen_note_reshape_nb_semantics", "generated_nb_semantic_files"),
            ("gen_transfer_net_balance_semantics", "generated_files"),
            ("gen_note_reshape_direct_representatives", "generated_files"),
            ("gen_certified_conditional_semantics", "generated_files"),
            ("gen_transfer_semantics", "generated_files"),
            ("gen_transfer_threshold_semantics", "generated_files"),
            ("gen_transfer_ack_semantics", "generated_files"),
            ("gen_window2_semantic_providers", "generated_files"),
            ("gen_transfer_shared_secret_semantics", "generated_files"),
            ("gen_withdrawal_registry_semantics", "generated_files"),
            ("gen_certified_imt_gap_semantics", "generated_files"),
            ("gen_certified_quad_path_semantics", "generated_files"),
            ("gen_note_reshape_poseidon_representatives", "generated_files"),
            ("gen_note_reshape_scp_semantics", "generated_files"),
            ("gen_note_reshape_compress_semantics", "generated_files"),
            ("gen_certified_composite_semantics", "generated_files"),
            ("gen_routing_semantics", "generated_files"),
            ("gen_certified_statement_hash_semantics", "generated_files"),
        }
        actual = {
            (module, function)
            for _, module, function in gen.OPERATION_GENERATORS
        }
        self.assertEqual(actual, expected)
        self.assertEqual(gen.REQUIRED_OPERATION_GENERATORS, frozenset(expected))

    def test_omitting_any_exact_semantics_generator_fails_closed(self) -> None:
        for omitted in range(len(gen.OPERATION_GENERATORS)):
            with self.subTest(generator=gen.OPERATION_GENERATORS[omitted][1]):
                roster = (
                    gen.OPERATION_GENERATORS[:omitted]
                    + gen.OPERATION_GENERATORS[omitted + 1 :]
                )
                with self.assertRaisesRegex(
                    SystemExit,
                    "generator roster drifted",
                ):
                    gen.validate_operation_generator_roster(roster)

    def test_duplicate_exact_semantics_generator_fails_closed(self) -> None:
        with self.assertRaisesRegex(
            SystemExit,
            "duplicate exact semantic generator",
        ):
            gen.validate_operation_generator_roster(
                gen.OPERATION_GENERATORS + (gen.OPERATION_GENERATORS[0],)
            )

    def test_direct_provider_main_validator_fails_closed(self) -> None:
        path = gen.OUT / "TExample_deadbeef.lean"
        valid = (
            "def spec (rho : Nat → F) : Prop := rho 1 = 0\n"
            "theorem sound\n"
            "    (rho : Nat → F)\n"
            "    (h : relation rho) :\n"
            "    spec rho := by\n  exact h\n"
        )
        gen.validate_direct_provider_main("example@deadbeef", path, valid)
        imported_spec = (
            "namespace Example\n"
            "def spec (rho : Nat → F) : Prop := rho 1 = 0\n"
            "end Example\n"
        )
        main_without_spec = valid[valid.index("theorem sound") :]
        gen.validate_direct_provider_main(
            "example@deadbeef",
            path,
            main_without_spec,
            (main_without_spec, imported_spec),
        )
        invalid = {
            "missing spec": valid.replace("def spec", "def result"),
            "duplicate spec": valid.replace(
                "theorem sound", "def spec (rho : Nat → F) : Prop := True\n"
                "theorem sound"
            ),
            "missing sound": valid.replace("theorem sound", "theorem result"),
            "duplicate sound": valid + valid,
            "wrong conclusion": valid.replace(
                "spec rho := by", "relation rho := by"
            ),
            "relation alias": valid.replace(
                "rho 1 = 0", "relation rho"
            ),
            "axiom": valid + "\naxiom escape : False\n",
            "sorry": valid.replace("exact h", "sorry"),
            "admit": valid.replace("exact h", "admit"),
        }
        for label, source in invalid.items():
            with self.subTest(label=label):
                with self.assertRaises(SystemExit):
                    gen.validate_direct_provider_main(
                        "example@deadbeef", path, source
                    )

    def test_every_inventory_template_has_one_direct_provider_main(self) -> None:
        inventory = json.loads(gen.INVENTORY.read_text())
        circuit_entries = {
            circuit["circuit"]: circuit
            for circuit in inventory["circuits"]
        }
        self.assertEqual(
            len(circuit_entries),
            len(inventory["circuits"]),
            "certified inventory contains duplicate circuit entries",
        )
        self.assertEqual(
            set(circuit_entries),
            {
                "note_reshape1x8",
                "note_reshape8x1",
                "shielded_ics20_withdrawal",
                "transfer",
            },
        )
        circuits: dict[str, int] = {}
        for circuit, entry in circuit_entries.items():
            manifest = discovery.read_json_object(
                discovery.manifest_path(circuit)
            )
            segments = discovery.validate_manifest(
                manifest, circuit=circuit
            )
            constraint_segments = sum(
                segment["constraint_count"] > 0 for segment in segments
            )
            self.assertEqual(entry["segment_count"], len(segments), circuit)
            self.assertEqual(
                entry["constraint_segment_count"],
                constraint_segments,
                circuit,
            )
            self.assertEqual(
                entry["nb_constraints"],
                manifest["nb_constraints"],
                circuit,
            )
            self.assertEqual(
                entry["sr1cs_sha256_hex"],
                manifest["sr1cs_sha256_hex"],
                circuit,
            )
            circuits[circuit] = constraint_segments
        self.assertEqual(
            inventory["constraint_segment_count"],
            sum(circuits.values()),
        )
        self.assertEqual(
            inventory["template_count"],
            len(inventory["templates"]),
        )
        expected = {
            gen.OUT / f"{gen.template_name(template['template_key'])}.lean"
            for template in inventory["templates"]
        }
        actual = expected & self.outputs.keys()
        self.assertEqual(len(expected), inventory["template_count"])
        self.assertEqual(actual, expected)

    def test_small_providers_use_choice_free_zmod_instances(self) -> None:
        source = gen.render_small_provider(gen.DUMMY_MUX)
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod\n", source)
        self.assertIn("attribute [-instance] ZMod.instField\n", source)
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
            source,
        )

    def test_generated_family_filenames_use_note_reshape_vocabulary(self) -> None:
        legacy_direction = "con" + "solidate"
        for path in self.outputs:
            relative = str(path.relative_to(gen.LEAN)).lower()
            self.assertNotIn(legacy_direction, relative)
            self.assertNotIn("split1x", relative)

    def test_deleted_dummy_rvk_template_has_no_provider(self) -> None:
        self.assertFalse(
            any("RandomizedVerificationKeyDummy" in path.name for path in self.outputs)
        )

    def test_shared_scalar_trace_is_sharded_one_round_per_module(self) -> None:
        shared = {
            path.name: text
            for path, text in self.outputs.items()
            if path.name.startswith("Poseidon3")
        }
        self.assertEqual(len(shared), 40)
        self.assertIn("Poseidon3Trace.lean", shared)
        self.assertIn("Poseidon3ScalarBase.lean", shared)
        for name, text in shared.items():
            self.assertIn(
                "import ShielddGnarkFormal.ChoiceFreeZMod",
                text,
                name,
            )
            self.assertIn("attribute [-instance] ZMod.instField", text, name)
            self.assertIn(
                "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
                text,
                name,
            )
        for gate in range(1, 39):
            name = f"Poseidon3ScalarRound{gate:02d}.lean"
            text = shared[name]
            previous = (
                "Poseidon3ScalarBase"
                if gate == 1
                else f"Poseidon3ScalarRound{gate - 1:02d}"
            )
            scalar_imports = re.findall(
                r"^import .*\.(Poseidon3Scalar(?:Base|Round\d+))$", text, re.M
            )
            self.assertEqual(scalar_imports, [previous], name)
            self.assertIn("import ShielddGnarkFormal.Deployed.Poseidon3Link", text)
            self.assertEqual(len(re.findall(r"^def state\d+Lane[0-3] ", text, re.M)), 4)
            for other_gate in range(39):
                if other_gate != gate:
                    self.assertNotRegex(text, rf"^def state{other_gate}Lane", name)
            self.assertIn("theorem state_eq_trace", text)
            self.assertEqual("theorem output_eq_permSpec3" in text, gate == 38)

    def test_round38_rewrites_the_trace_predecessor_without_vector_congruence(self) -> None:
        text = gen.render_poseidon3_scalar_round(38)
        self.assertNotIn("congrArg (fun state : List.Vector", text)
        self.assertEqual(
            text.count(
                "unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics."
                "Poseidon3Trace.state38"
            ),
            2,
        )
        self.assertEqual(
            text.count(
                "rw [← Shieldd.GnarkFormal.Deployed.Templates.Semantics."
                "Poseidon3ScalarRound37.state_eq_trace]"
            ),
            2,
        )

    def test_all_synthetic_slots_have_fixed_synthetic_round_zero(self) -> None:
        fixed = {
            path.name: text
            for path, text in self.outputs.items()
            if "SyntheticDummyNullifier" in path.name
            and path.name.endswith("Fixed.lean")
        }
        self.assertEqual(
            len(fixed),
            gen.SYNTHETIC_DUMMY_NULLIFIER_TEMPLATE_COUNT,
        )
        for name, text in fixed.items():
            self.assertIn("import ShielddGnarkFormal.Deployed.Poseidon3Link", text)
            self.assertIn("syntheticDummyNullifierDomainLit", text)
            self.assertIn("def domainLane", text)
            self.assertIn("def slotLane", text)
            for lane in range(4):
                self.assertIn(f"def s0_{lane} ", text)
                self.assertIn(f"theorem s0_{lane}_sound", text)
            self.assertNotIn("Shieldd.GnarkFormal.Deployed.Nullifier.s0_", text)
            self.assertNotIn("Shieldd.GnarkFormal.Deployed.Nullifier.arg1_", text)

    def test_cross_circuit_synthetic_domains_and_slots_are_exact(self) -> None:
        expected = {
            "gadget.synthetic_dummy_nullifier@"
            "baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd": (
                gen.TRANSFER_SYNTHETIC_DUMMY_NULLIFIER_LABEL,
                1,
                6539018564667032882904767449459259042672141079689425793113802164983541241467,
            ),
            "gadget.synthetic_dummy_nullifier@"
            "a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb": (
                gen.WITHDRAWAL_SYNTHETIC_DUMMY_NULLIFIER_LABEL,
                1,
                8431031452040580694060791815812941646157767086492607177479167856184906289835,
            ),
        }
        for key, (label, slot, domain) in expected.items():
            self.assertEqual(gen.SYNTHETIC_DUMMY_NULLIFIER[key], (label, slot))
            self.assertEqual(gen.reduced_blake2b_domain(label), domain)
            self.assertNotEqual(domain, gen.SYNTHETIC_DUMMY_NULLIFIER_DOMAIN)

    def test_synthetic_template_roster_is_exact_and_fail_closed(self) -> None:
        inventory = json.loads(gen.INVENTORY.read_text())
        gen.validate_synthetic_dummy_nullifier_roster(
            gen.SYNTHETIC_DUMMY_NULLIFIER, inventory
        )
        self.assertEqual(
            gen.SYNTHETIC_DUMMY_NULLIFIER_TEMPLATE_COUNT,
            10,
        )
        mutations = {}
        removed = dict(gen.SYNTHETIC_DUMMY_NULLIFIER)
        removed.pop(next(iter(removed)))
        mutations["removed code role"] = (removed, inventory)
        changed = dict(gen.SYNTHETIC_DUMMY_NULLIFIER)
        first = next(iter(changed))
        label, slot = changed[first]
        changed[first] = (label, slot + 1)
        mutations["changed code role"] = (changed, inventory)
        inventory_removed = copy.deepcopy(inventory)
        inventory_removed["templates"] = [
            template
            for template in inventory_removed["templates"]
            if template["template_key"] != first
        ]
        mutations["removed inventory role"] = (
            gen.SYNTHETIC_DUMMY_NULLIFIER,
            inventory_removed,
        )
        for label, (roster, mutated_inventory) in mutations.items():
            with self.subTest(label=label):
                with self.assertRaisesRegex(
                    SystemExit,
                    "synthetic-dummy nullifier",
                ):
                    gen.validate_synthetic_dummy_nullifier_roster(
                        roster, mutated_inventory
                    )

    def test_every_synthetic_lane_uses_the_exact_normalized_relation(self) -> None:
        lane_pattern = re.compile(
            r"TGadgetSyntheticDummyNullifier_[0-9a-f]+Round(\d+)Lane([0-3])\.lean$"
        )
        lanes = []
        for path, text in self.outputs.items():
            match = lane_pattern.fullmatch(path.name)
            if match is not None:
                lanes.append((path.name, int(match.group(1)), int(match.group(2)), text))
        self.assertEqual(
            len(lanes),
            gen.SYNTHETIC_DUMMY_NULLIFIER_TEMPLATE_COUNT * 39 * 4,
        )
        self.assertEqual({gate for _, gate, _, _ in lanes}, set(range(39)))
        self.assertEqual({lane for _, _, lane, _ in lanes}, set(range(4)))
        for name, gate, lane, text in lanes:
            self.assertIn(
                "import ShielddGnarkFormal.ChoiceFreeZModCast",
                text,
                name,
            )
            self.assertIn("attribute [-instance] ZMod.instField", text, name)
            self.assertIn(
                "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
                text,
                name,
            )
            scalar_module = (
                "Poseidon3ScalarBase"
                if gate == 0
                else f"Poseidon3ScalarRound{gate:02d}"
            )
            self.assertIn(f".{scalar_module}.state{gate}Lane{lane}", text, name)
            self.assertIn("syntheticDummyNullifierDomainLit", text, name)
            self.assertRegex(text, r"\.relationPart\d+ rho", name)
            self.assertRegex(text, r"\.Part\d+\.sound rho p\d+", name)
            self.assertNotIn("fr_lane", text, name)
            self.assertNotRegex(text, r"Poseidon3Trace\.state\d+", name)
            if gate == 1:
                self.assertNotIn(
                    "Shieldd.GnarkFormal.Deployed.Nullifier.s0_", text, name
                )
                self.assertNotIn(
                    "Shieldd.GnarkFormal.Deployed.Nullifier.arg1_", text, name
                )

    def test_synthetic_part_inputs_qualify_relation_atoms(self) -> None:
        parts = [
            (path.name, text)
            for path, text in self.outputs.items()
            if "SyntheticDummyNullifier" in path.name and "Part" in path.name
        ]
        self.assertEqual(
            len(parts),
            gen.SYNTHETIC_DUMMY_NULLIFIER_TEMPLATE_COUNT * 61,
        )
        for name, text in parts:
            self.assertNotRegex(text, r"(?<!\.)\brelationLc\d+\b", name)

    def test_synthetic_lane_closers_do_not_depend_on_redundant_rfl(self) -> None:
        key = next(iter(gen.SYNTHETIC_DUMMY_NULLIFIER))
        name = gen.template_name(key)
        gate1 = self.outputs[gen.OUT / f"{name}Round1Lane0.lean"]
        self.assertIn(
            "ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq",
            gate1,
        )
        self.assertNotIn("ZMod.natCast_eq_natCast_iff'", gate1)
        self.assertIn("linear_combination hc", gate1)
        self.assertRegex(gate1, r"  rw \[ha0, ha1, ha2, ha3\]\n\nend ")
        self.assertNotRegex(gate1, r"rw \[ha0, ha1, ha2, ha3\]\n\s+rfl")

        gate2 = self.outputs[gen.OUT / f"{name}Round2Lane0.lean"]
        self.assertRegex(gate2, r"  rw \[← ha0, ← ha1, ← ha2, ← ha3\]\n\nend ")
        self.assertNotRegex(gate2, r"rw \[[^\n]+\]\n\s+rfl")

    def test_synthetic_aggregation_shape_is_exact(self) -> None:
        synthetic = [
            path.name
            for path in self.outputs
            if "SyntheticDummyNullifier" in path.name
        ]
        count = gen.SYNTHETIC_DUMMY_NULLIFIER_TEMPLATE_COUNT
        self.assertEqual(
            len([name for name in synthetic if "Part" in name]),
            count * 61,
        )
        self.assertEqual(
            len([name for name in synthetic if "Round" in name]),
            count * 39 * 4,
        )
        self.assertEqual(
            len([name for name in synthetic if "Range" in name]),
            count * 9,
        )
        self.assertEqual(
            len(
                [
                    name
                    for name in synthetic
                    if name.endswith("Fixed.lean")
                ]
            ),
            count,
        )
        mains = [
            name
            for name in synthetic
            if not any(marker in name for marker in ("Part", "Round", "Range", "Fixed"))
        ]
        self.assertEqual(len(mains), count)

    def test_every_synthetic_provider_shard_is_choice_free(self) -> None:
        synthetic = [
            (path.name, text)
            for path, text in self.outputs.items()
            if "SyntheticDummyNullifier" in path.name
        ]
        self.assertEqual(
            len(synthetic),
            gen.SYNTHETIC_DUMMY_NULLIFIER_TEMPLATE_COUNT
            * (61 + 39 * 4 + 9 + 1 + 1),
        )
        for name, text in synthetic:
            self.assertIn(
                "import ShielddGnarkFormal.ChoiceFreeZModCast",
                text,
                name,
            )
            self.assertIn("attribute [-instance] ZMod.instField", text, name)
            self.assertIn(
                "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
                text,
                name,
            )
            self.assertNotIn("ZMod.natCast_eq_natCast_iff'", text, name)

    def test_synthetic_aggregators_install_the_prime_instance(self) -> None:
        synthetic_aggregators = {
            path.name: text
            for path, text in self.outputs.items()
            if "SyntheticDummyNullifier" in path.name
            and (
                "Range" in path.name
                or not any(
                    marker in path.name
                    for marker in ("Part", "Round", "Fixed")
                )
            )
        }
        count = gen.SYNTHETIC_DUMMY_NULLIFIER_TEMPLATE_COUNT
        self.assertEqual(len(synthetic_aggregators), count * 9 + count)
        for name, text in synthetic_aggregators.items():
            self.assertIn(
                "import ShielddGnarkFormal.Deployed.PrimeOrderCertificate",
                text,
                name,
            )
            self.assertIn("abbrev Order : Nat :=", text, name)
            self.assertIn(
                "local instance : Fact (Nat.Prime Order) :=", text, name
            )
            self.assertIn("decaf377ScalarFieldPrime", text, name)
            if "Range" not in name:
                self.assertIn(
                    "  unfold spec\n  rw [← ", text, name
                )


if __name__ == "__main__":
    unittest.main()
