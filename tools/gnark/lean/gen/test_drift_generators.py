#!/usr/bin/env python3
"""Fail-closed tests for deployed circuit-model generators."""

import copy
import json
import re
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path
from types import SimpleNamespace

sys.path.insert(0, str(Path(__file__).resolve().parent))
import gen_capstone
import generated_contract_source
import gen_note_reshape2x1_compress_adapters
import gen_nb_slice
import gen_rvk_deployed_adapters
import gen_scp_adapters
import gen_statement
import gen_wiring


class WiringGeneratorTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.ir = json.loads(gen_wiring.IR.read_text())

    def test_rejects_changed_operation(self) -> None:
        ir = copy.deepcopy(self.ir)
        next(seg for seg in ir["segments"] if seg["index"] == 53)["op"] = "assert.eq"
        with self.assertRaisesRegex(AssertionError, "statementHashOut.*op"):
            gen_wiring.render(ir)

    def test_rejects_missing_named_port(self) -> None:
        ir = copy.deepcopy(self.ir)
        next(seg for seg in ir["segments"] if seg["index"] == 48)["wire_roles"][
            "output"
        ] = []
        with self.assertRaisesRegex(AssertionError, "netBalanceCommitmentCompressed"):
            gen_wiring.render(ir)

    def test_rejects_wrong_circuit(self) -> None:
        ir = copy.deepcopy(self.ir)
        ir["circuit"] = "transfer"
        with self.assertRaisesRegex(AssertionError, "unexpected IR circuit"):
            gen_wiring.render(ir)

    def test_check_mode_rejects_stale_generated_file(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            stale = Path(tmp) / "Wiring.lean"
            stale.write_text("stale\n")
            result = subprocess.run(
                [
                    sys.executable,
                    str(Path(gen_wiring.__file__)),
                    "--ir",
                    str(gen_wiring.IR),
                    "--out",
                    str(stale),
                    "--check",
                ],
                capture_output=True,
                text=True,
                check=False,
            )
            self.assertNotEqual(result.returncode, 0)
            self.assertIn("stale generated wiring", result.stderr)


class CapstoneGeneratorTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.manifest = json.loads(gen_capstone.MANIFEST.read_text())

    def test_rejects_pending_class(self) -> None:
        manifest = copy.deepcopy(self.manifest)
        manifest["classes"][0]["status"] = "pending"
        with self.assertRaisesRegex(AssertionError, "class not proven"):
            gen_capstone.render(manifest)

    def test_rejects_changed_theorem_binding(self) -> None:
        manifest = copy.deepcopy(self.manifest)
        manifest["classes"][0]["instances"][0]["lean_theorem"] = "Wrong.theorem"
        with self.assertRaisesRegex(AssertionError, "lean_theorem"):
            gen_capstone.render(manifest)

    def test_rejects_duplicate_segment(self) -> None:
        manifest = copy.deepcopy(self.manifest)
        manifest["classes"][0]["instances"].append(
            copy.deepcopy(manifest["classes"][0]["instances"][0])
        )
        with self.assertRaisesRegex(AssertionError, "duplicate segment index"):
            gen_capstone.render(manifest)

    def test_check_mode_rejects_stale_generated_file(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            stale = Path(tmp) / "Capstone.lean"
            stale.write_text("stale\n")
            result = subprocess.run(
                [
                    sys.executable,
                    str(Path(gen_capstone.__file__)),
                    "--manifest",
                    str(gen_capstone.MANIFEST),
                    "--out",
                    str(stale),
                    "--check",
                ],
                capture_output=True,
                text=True,
                check=False,
            )
            self.assertNotEqual(result.returncode, 0)
            self.assertIn("stale generated capstone", result.stderr)


class StatementGeneratorTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.ir = json.loads(gen_statement.IR.read_text())
        cls.manifest = json.loads(gen_statement.MANIFEST.read_text())

    def test_rejects_changed_semantic_operation(self) -> None:
        ir = copy.deepcopy(self.ir)
        next(seg for seg in ir["segments"] if seg["index"] == 15)["op"] = (
            "decaf.assert_on_curve"
        )
        with self.assertRaisesRegex(AssertionError, "semantic seg 15: IR op"):
            gen_statement.render(ir, self.manifest)

    def test_rejects_changed_excluded_operation(self) -> None:
        ir = copy.deepcopy(self.ir)
        next(seg for seg in ir["segments"] if seg["index"] == 49)["op"] = (
            "statement.append_all"
        )
        with self.assertRaisesRegex(AssertionError, "excluded seg 49: IR op"):
            gen_statement.render(ir, self.manifest)

    def test_rejects_extra_ir_segment(self) -> None:
        ir = copy.deepcopy(self.ir)
        extra = copy.deepcopy(ir["segments"][-1])
        extra["index"] = 55
        ir["segments"].append(extra)
        with self.assertRaisesRegex(AssertionError, "IR segment partition mismatch"):
            gen_statement.render(ir, self.manifest)

    def test_rejects_missing_manifest_segment(self) -> None:
        manifest = copy.deepcopy(self.manifest)
        for cls in manifest["classes"]:
            cls["instances"] = [
                inst for inst in cls["instances"] if inst["segment_index"] != 30
            ]
        with self.assertRaisesRegex(AssertionError, "semantic manifest set mismatch"):
            gen_statement.render(self.ir, manifest)

    def test_check_mode_rejects_stale_generated_file(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            stale = Path(tmp) / "Statement.lean"
            stale.write_text("stale\n")
            result = subprocess.run(
                [
                    sys.executable,
                    str(Path(gen_statement.__file__)),
                    "--ir",
                    str(gen_statement.IR),
                    "--manifest",
                    str(gen_statement.MANIFEST),
                    "--out",
                    str(stale),
                    "--check",
                ],
                capture_output=True,
                text=True,
                check=False,
            )
            self.assertNotEqual(result.returncode, 0)
            self.assertIn("stale generated statement", result.stderr)


class RvkGeneratorTests(unittest.TestCase):
    def test_adapter_calls_match_split_aggregator_chunks(self) -> None:
        seg = 30
        cfg = gen_rvk_deployed_adapters.INSTANCES[seg]
        certs = [
            gen_rvk_deployed_adapters.split_cert(seg, cfg, k)
            for k in range(
                gen_rvk_deployed_adapters.CONT_START,
                gen_rvk_deployed_adapters.TOTAL_N + 1,
            )
        ]
        split_chunks = gen_rvk_deployed_adapters.chunks(
            certs, gen_rvk_deployed_adapters.SPLIT_CHUNK_SIZE
        )
        source = (
            gen_rvk_deployed_adapters.CONTRACTS / f"RvkAdapterSeg{seg}.lean"
        ).read_text()

        for index, chunk in enumerate(split_chunks):
            marker = f"  have hsTail{index} := seg{seg}_steps{index} rho"
            start = source.index(marker)
            if index + 1 < len(split_chunks):
                end = source.index(f"  have hsTail{index + 1} :=", start)
            else:
                end = source.index("  let bitsBool", start)
            actual_rows = [int(row) for row in re.findall(r"\br(\d+)\b", source[start:end])]
            self.assertEqual(
                actual_rows,
                gen_rvk_deployed_adapters.step_rows_for(chunk),
            )

    def test_accumulator_shards_partition_every_state(self) -> None:
        state_chunks = gen_rvk_deployed_adapters.acc_state_chunks()
        weighted_chunks = gen_rvk_deployed_adapters.acc_weighted_chunks()

        self.assertEqual(len(state_chunks), 25)
        self.assertEqual(
            [state for chunk in state_chunks for state in chunk],
            list(range(1, gen_rvk_deployed_adapters.TOTAL_N + 1)),
        )
        self.assertEqual(len(weighted_chunks), 15)
        self.assertEqual(
            [state for chunk in weighted_chunks for state in chunk],
            list(range(1, gen_rvk_deployed_adapters.PREFIX_N + 1)),
        )
        self.assertTrue(
            all(
                len(chunk) <= gen_rvk_deployed_adapters.ACC_CHUNK_SIZE
                for chunk in [*state_chunks, *weighted_chunks]
            )
        )

    def test_reads_contract_shards_in_numeric_order_before_facade(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            contracts = Path(tmp)
            (contracts / "Seg30Base.lean").write_text("base\n")
            for index in reversed(range(11)):
                (contracts / f"Seg30Defs{index}.lean").write_text(
                    f"namespace Example\ntoken{index}\nend Example\n"
                )
            (contracts / "Seg30.lean").write_text(
                "namespace Example\nfacade\nend Example\n"
            )

            source = generated_contract_source.read_source(contracts, 30)
            positions = [source.index(f"token{index}\n") for index in range(11)]
            self.assertEqual(positions, sorted(positions))
            self.assertLess(positions[-1], source.index("facade\n"))
            self.assertEqual(source.count("generatedContractShardBoundary"), 11)

    def test_contract_shard_boundary_terminates_definition_body(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            contracts = Path(tmp)
            (contracts / "Seg30Base.lean").write_text("base\n")
            (contracts / "Seg30Defs0.lean").write_text(
                "namespace Example\n\ndef relationRow0 : Prop :=\n  True\n\nend Example\n"
            )
            (contracts / "Seg30.lean").write_text(
                "namespace Example\ndef relation : Prop := True\nend Example\n"
            )

            source = generated_contract_source.read_source(contracts, 30)
            body = source.split("def relationRow0 : Prop :=\n", 1)[1].split(
                "\n\ndef ", 1
            )[0]
            self.assertEqual(body.rstrip(), "  True")

    def test_rejects_contract_shard_gaps(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            contracts = Path(tmp)
            (contracts / "Seg30Base.lean").write_text("base\n")
            (contracts / "Seg30Defs0.lean").write_text("zero\n")
            (contracts / "Seg30Defs2.lean").write_text("two\n")
            (contracts / "Seg30.lean").write_text("facade\n")

            with self.assertRaisesRegex(ValueError, "not contiguous"):
                generated_contract_source.read_source(contracts, 30)

    def test_rejects_contract_shards_without_base(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            contracts = Path(tmp)
            (contracts / "Seg30Defs0.lean").write_text("zero\n")
            (contracts / "Seg30.lean").write_text("facade\n")

            with self.assertRaisesRegex(ValueError, "incomplete sharded layout"):
                generated_contract_source.read_source(contracts, 30)

    def test_emits_every_imported_rung_leaf_once(self) -> None:
        prefix = [type("Cert", (), {"k": k})() for k in range(1, 150)]
        split = [type("Cert", (), {"k": k})() for k in range(150, 251)]
        prefix_chunks = gen_rvk_deployed_adapters.chunks(
            prefix, gen_rvk_deployed_adapters.PREFIX_CHUNK_SIZE
        )
        split_chunks = gen_rvk_deployed_adapters.chunks(
            split, gen_rvk_deployed_adapters.SPLIT_CHUNK_SIZE
        )
        split_lemma_chunks = gen_rvk_deployed_adapters.chunks(
            split, gen_rvk_deployed_adapters.SPLIT_LEMMA_CHUNK_SIZE
        )

        self.assertEqual(len(prefix_chunks), 15)
        self.assertEqual(len(split_chunks), 21)
        self.assertEqual(len(split_lemma_chunks), 101)

        prefix_outputs = list(
            gen_rvk_deployed_adapters.prefix_leaf_outputs(15, prefix_chunks)
        )
        split_outputs = list(
            gen_rvk_deployed_adapters.split_leaf_outputs(15, split)
        )

        self.assertEqual(
            [name for name, _, _ in prefix_outputs],
            [f"RvkAdapterSeg15PrefixStep{k}.lean" for k in range(1, 150)],
        )
        self.assertEqual(
            [name for name, _, _ in split_outputs],
            [f"RvkAdapterSeg15Step{k}.lean" for k in range(150, 251)],
        )
        self.assertEqual(
            [lemma_idx for _, _, lemma_idx in prefix_outputs],
            [index // gen_rvk_deployed_adapters.PREFIX_CHUNK_SIZE for index in range(149)],
        )
        self.assertEqual(
            [lemma_idx for _, _, lemma_idx in split_outputs],
            [
                index // gen_rvk_deployed_adapters.SPLIT_LEMMA_CHUNK_SIZE
                for index in range(101)
            ],
        )

    def test_deployed_adapters_do_not_rewrite_wide_accumulator_match(self) -> None:
        for seg in (15, 30):
            source = (
                gen_rvk_deployed_adapters.CONTRACTS
                / f"RvkAdapterSeg{seg}.lean"
            ).read_text()
            self.assertEqual(
                source.count(
                    "rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt"
                ),
                1,
            )
            self.assertNotIn(f"simpa [seg{seg}RvkAcc", source)
            self.assertNotIn(f"simp only [seg{seg}RvkAcc", source)
            self.assertNotIn(f"unfold seg{seg}RvkAcc", source)


class CompressAdapterGeneratorTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.hyps = gen_note_reshape2x1_compress_adapters.parse_bridge_hyps()
        cls.hyp_chunks = gen_note_reshape2x1_compress_adapters.chunks(
            cls.hyps, gen_note_reshape2x1_compress_adapters.BRIDGE_CHUNK_SIZE
        )

    def test_chunks_partition_bridge_hypotheses_in_numeric_order(self) -> None:
        self.assertEqual(len(self.hyp_chunks), 17)
        self.assertTrue(all(len(chunk) == 64 for chunk in self.hyp_chunks[:-1]))
        self.assertEqual(len(self.hyp_chunks[-1]), 20)
        self.assertEqual(
            [h for chunk in self.hyp_chunks for h, _ in chunk],
            [h for h, _ in self.hyps],
        )
        self.assertEqual(
            [h for h, _ in self.hyps],
            [
                *range(0, 281),
                *range(535, 1044),
                *range(1298, 1552),
            ],
        )

    def test_leaf_signatures_use_exact_minimal_relation_parts(self) -> None:
        for seg, *_ in gen_note_reshape2x1_compress_adapters.SEGMENTS:
            parts = gen_note_reshape2x1_compress_adapters.parse_relation_parts(seg)
            for index, hyp_chunk in enumerate(self.hyp_chunks):
                source = gen_note_reshape2x1_compress_adapters.emit_row_chunk(
                    seg, index, hyp_chunk, parts
                )
                signature = source.split(" := by", 1)[0].rsplit("theorem ", 1)[1]
                actual = [int(part) for part in re.findall(r"\(p(\d+) :", signature)]
                rows = [
                    gen_note_reshape2x1_compress_adapters.bridge_row_for_hyp(h)
                    for h, _ in hyp_chunk
                ]
                expected = gen_note_reshape2x1_compress_adapters.part_indices_for_rows(
                    parts, rows
                )
                self.assertEqual(actual, expected, (seg, index))
                self.assertLessEqual(len(actual), 14, (seg, index))
                self.assertNotIn(f"Seg{seg}.relation rho", signature)

    def test_head_imports_and_calls_every_leaf_in_numeric_order(self) -> None:
        for seg, *_ in gen_note_reshape2x1_compress_adapters.SEGMENTS:
            source = gen_note_reshape2x1_compress_adapters.emit_segment_head(
                seg,
                self.hyps,
                gen_note_reshape2x1_compress_adapters.parse_relation_parts(seg),
            )
            imports = [
                int(index)
                for index in re.findall(
                    rf"import .*CompressAdapterSeg{seg}Rows(\d+)$", source, re.M
                )
            ]
            calls = [
                int(index)
                for index in re.findall(rf"\(seg{seg}_rows(\d+) rho ", source)
            ]
            self.assertEqual(imports, list(range(len(self.hyp_chunks))))
            self.assertEqual(calls, list(range(len(self.hyp_chunks))))
            body = source.split(f"theorem seg{seg}_sound", 1)[1]
            self.assertIsNone(re.search(r"\br\d+\b", body))

    def test_cli_emits_exact_generated_family(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            out = Path(tmp)
            subprocess.run(
                [
                    sys.executable,
                    str(Path(gen_note_reshape2x1_compress_adapters.__file__)),
                    "--adapter-out",
                    str(out),
                ],
                check=True,
            )
            expected = gen_note_reshape2x1_compress_adapters.render(out)
            actual = {path: path.read_text() for path in out.glob("*.lean")}
            self.assertEqual(actual, expected)
            self.assertEqual(len(actual), 78)
            self.assertTrue(
                all(source.startswith(gen_note_reshape2x1_compress_adapters.GENERATED) for source in actual.values())
            )


class NbAdapterGeneratorTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.rungs = tuple(SimpleNamespace(index=index) for index in range(250))
        cls.chunks = gen_nb_slice.blind_chunks(cls.rungs)
        cls.nodes = gen_nb_slice.blind_selector_nodes(len(cls.chunks))

    def test_selector_tree_is_balanced_and_covers_every_chunk(self) -> None:
        self.assertEqual(len(self.chunks), 25)
        self.assertEqual(len(self.nodes), 24)
        self.assertEqual(self.nodes[-1], gen_nb_slice.BlindSelectorNode(0, 12, 25))
        spans = {(node.lo, node.hi) for node in self.nodes}
        leaves: set[int] = set()
        for node in self.nodes:
            self.assertEqual(node.split, (node.lo + node.hi) // 2)
            for lo, hi in ((node.lo, node.split), (node.split, node.hi)):
                if hi - lo == 1:
                    leaves.add(lo)
                else:
                    self.assertIn((lo, hi), spans)
        self.assertEqual(leaves, set(range(25)))

    def test_each_selector_has_two_children_and_one_split(self) -> None:
        for node in self.nodes:
            source = gen_nb_slice.emit_blind_selector(node, self.chunks)
            imports = re.findall(r"^import .*NbAdapterSeg46Blind(?:R|Sel).*$", source, re.M)
            self.assertEqual(len(imports), 2, node)
            self.assertEqual(source.count("by_cases hleft"), 1, node)
            self.assertNotIn("Nat.lt_or_ge", source)
            self.assertEqual(source.count("exact seg46Blind_hstep_"), 2, node)

    def test_step_imports_selector_root_and_seed_only(self) -> None:
        source = gen_nb_slice.emit_blind_step(self.rungs)
        imports = re.findall(r"^import .*NbAdapterSeg46Blind.*$", source, re.M)
        self.assertEqual(
            imports,
            [
                "import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1."
                "NbAdapterSeg46BlindSel0_25",
                "import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1."
                "NbAdapterSeg46BlindSeed",
            ],
        )
        self.assertEqual(source.count("seg46Blind_hstep_s0_25 rho"), 1)
        self.assertNotIn("seg46Blind_hstep_c", source)
        self.assertNotIn("Nat.lt_or_ge", source)
        self.assertNotIn("simpa [seg46BlindAccState", source)

    def test_ladder_uses_opaque_full_step_theorem(self) -> None:
        source = gen_nb_slice.emit_blind_ladder(self.rungs)
        imports = re.findall(r"^import .*NbAdapterSeg46Blind.*$", source, re.M)
        self.assertEqual(
            imports,
            [
                "import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1."
                "NbAdapterSeg46BlindStep"
            ],
        )
        self.assertEqual(source.count("seg46Blind_hstep rho h bits hbitAt"), 1)
        self.assertNotIn("seg46Blind_hstep_s", source)

    def test_top_uses_canonical_unmaterialized_endpoint(self) -> None:
        source = gen_nb_slice.emit_top()
        self.assertIn("(Specs.nbX rho) (Specs.nbY rho)", source)
        self.assertIn("⟨Specs.nbX rho, Specs.nbY rho⟩ hcircuit", source)
        self.assertNotIn("⟨rho 33463, rho 33464⟩ hcircuit", source)


class ScpGeneratorTests(unittest.TestCase):
    def test_node_helpers_cover_every_extracted_segment_once(self) -> None:
        inst = gen_scp_adapters.Instance(13)
        node = gen_scp_adapters.emit_node(inst, 23)
        helper_count = (
            gen_scp_adapters.NODE_SEGMENTS
            + gen_scp_adapters.NODE_HELPER_CHUNK_SIZE
            - 1
        ) // gen_scp_adapters.NODE_HELPER_CHUNK_SIZE

        self.assertEqual(
            node.count(
                "import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1."
                "ScpAdapterSeg13Node23Rows"
            ),
            helper_count,
        )
        calls = re.findall(r"seg13_scp_node23_seg(\d+) rho", node)
        self.assertEqual(
            [int(segment) for segment in calls],
            list(range(gen_scp_adapters.NODE_SEGMENTS)),
        )

    def test_segment_parser_rejects_missing_segment(self) -> None:
        with self.assertRaisesRegex(ValueError, "missing seg70"):
            gen_scp_adapters.segment_wires(gen_scp_adapters.node_stem(23), 70)


if __name__ == "__main__":
    unittest.main()
