from __future__ import annotations

import json
import os
import tempfile
import unittest
from pathlib import Path

import formal_json


class FormalJsonTests(unittest.TestCase):
    def test_strict_decode_rejects_ambiguous_jsonl_records(self) -> None:
        cases = (
            (b'{"declarations":[],"declarations":[]}', "duplicate JSON key"),
            (b'{"declarations":NaN}', "non-finite JSON"),
            (b'{"declarations":1e10000}', "non-finite JSON"),
            (b'{"declarations":"\xff"}', "invalid UTF-8 JSON"),
            (
                b'{"declarations":"\\ud800"}',
                "unpaired Unicode surrogate",
            ),
        )
        for source, message in cases:
            with self.subTest(message=message):
                with self.assertRaisesRegex(ValueError, message):
                    formal_json.decode_json(
                        source,
                        label="olean summary JSONL record",
                        top_level=dict,
                    )

    def test_duplicate_nonfinite_invalid_utf8_and_top_level_fail_closed(
        self,
    ) -> None:
        cases = (
            (b'{"x":1,"x":2}', "duplicate JSON key"),
            (b'{"x":NaN}', "non-finite JSON"),
            (b'{"x":1e10000}', "non-finite JSON"),
            (b'{"x":"\\udfff"}', "unpaired Unicode surrogate"),
            (b'{"\\ud800":1}', "unpaired Unicode surrogate"),
            (b'{"x":"\\xff"}', "invalid JSON"),
            (b"\xff", "UTF-8 JSON"),
            (b"[]", "top-level dict"),
        )
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "input.json"
            for source, message in cases:
                with self.subTest(message=message):
                    path.write_bytes(source)
                    with self.assertRaisesRegex(ValueError, message):
                        formal_json.read_json_object(path, repo_owned=False)

    def test_schema_fields_and_canonical_encodings_are_exact(self) -> None:
        payload = {
            "schema": "example.v1",
            "arrow": "left->right",
            "items": [1, 2],
        }
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "input.json"
            path.write_text(json.dumps(payload, indent=2) + "\n")
            self.assertEqual(
                formal_json.read_json_object(
                    path,
                    repo_owned=False,
                    expected_schema="example.v1",
                    expected_fields=tuple(payload),
                    canonical="pretty",
                ),
                payload,
            )
            path.write_text(json.dumps(payload))
            self.assertEqual(
                formal_json.read_json_object(
                    path, repo_owned=False, canonical="compact"
                ),
                payload,
            )
            go_source = (
                json.dumps(payload, indent=2).replace(">", "\\u003e") + "\n"
            )
            path.write_text(go_source)
            self.assertEqual(
                formal_json.read_json_object(
                    path, repo_owned=False, canonical="pretty_go"
                ),
                payload,
            )
            utf8_payload = {"schema": "example.v1", "bound": "±3600"}
            path.write_text(
                json.dumps(utf8_payload, indent=2, ensure_ascii=False) + "\n",
                encoding="utf-8",
            )
            self.assertEqual(
                formal_json.read_json_object(
                    path, repo_owned=False, canonical="pretty_utf8"
                ),
                utf8_payload,
            )
            path.write_text(json.dumps(payload, sort_keys=True, indent=2) + "\n")
            with self.assertRaisesRegex(ValueError, "field order drifted"):
                formal_json.read_json_object(
                    path,
                    repo_owned=False,
                    expected_fields=tuple(payload),
                    canonical="pretty",
                )
            with self.assertRaisesRegex(ValueError, "schema drifted"):
                formal_json.read_json_object(
                    path, repo_owned=False, expected_schema="example.v2"
                )
            with self.assertRaisesRegex(ValueError, "fields drifted"):
                formal_json.read_json_object(
                    path, repo_owned=False, expected_fields={"schema"}
                )

    def test_source_digest_is_checked_before_interpretation(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "input.json"
            path.write_text('{"x": 1}')
            with self.assertRaisesRegex(ValueError, "source digest drifted"):
                formal_json.read_json_object(
                    path, repo_owned=False, expected_sha256_hex="0" * 64
                )

    def test_repo_paths_reject_symlink_escape_and_hardlinks(self) -> None:
        with tempfile.TemporaryDirectory(dir=formal_json.ROOT) as directory:
            root = Path(directory)
            source = root / "source.json"
            source.write_text('{"x": 1}')
            self.assertEqual(
                formal_json.read_json_object(source), {"x": 1}
            )

            symlink = root / "symlink.json"
            os.symlink(source.name, symlink)
            with self.assertRaisesRegex(ValueError, "symlinked"):
                formal_json.read_json_object(symlink)

            hardlink = root / "hardlink.json"
            os.link(source, hardlink)
            with self.assertRaisesRegex(ValueError, "hard-link aliases"):
                formal_json.read_json_object(hardlink)

        with tempfile.TemporaryDirectory() as directory:
            outside = Path(directory) / "outside.json"
            outside.write_text('{"x": 1}')
            with self.assertRaisesRegex(ValueError, "outside repository"):
                formal_json.read_json_object(outside)
            self.assertEqual(
                formal_json.read_json_object(outside, repo_owned=False),
                {"x": 1},
            )


if __name__ == "__main__":
    unittest.main()
