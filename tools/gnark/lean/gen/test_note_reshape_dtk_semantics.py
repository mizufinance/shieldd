from __future__ import annotations

import hashlib
import unittest

import gen_dtk_slice as reviewed
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

    def test_reviewed_deployed_path_remains_byte_identical(self) -> None:
        cfg = reviewed.INSTANCES[0]
        expected = {
            "DtkAdapterSeg6Base.lean": reviewed.emit_base(cfg),
            "DtkAdapterSeg6Bits.lean": reviewed.emit_bits(cfg),
            "DtkAdapterSeg6.lean": reviewed.emit_adapter(cfg),
        }
        for filename, source in expected.items():
            self.assertEqual((reviewed.DEFAULT_CONTRACTS / filename).read_text(), source)

    def test_generated_file_set_and_bytes_are_pinned(self) -> None:
        self.assertEqual(len(self.outputs), 627)
        digest = hashlib.sha256()
        for path in sorted(self.outputs, key=str):
            digest.update(str(path.relative_to(gen.LEAN)).encode())
            digest.update(b"\0")
            digest.update(self.outputs[path].encode())
            digest.update(b"\0")
        self.assertEqual(
            digest.hexdigest(),
            "c33fd7f6ece25c7032423fe734dacae89bb90d6c792ea924e51d61f066d129f0",
        )

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
        self.assertIn("onCurveAt (Outputs.dtkOutX rho) (Outputs.dtkOutY rho)", base)
        support = self.outputs[gen.OUT / f"{gen.NAME}Dtk.lean"]
        self.assertIn(": spec rho := by\n  unfold spec", support)
        facade = self.outputs[gen.OUT / f"{gen.NAME}.lean"]
        self.assertIn(f"{gen.NAMESPACE}.dtk_sound rho h", facade)

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
