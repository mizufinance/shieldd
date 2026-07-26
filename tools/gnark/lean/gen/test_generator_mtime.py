#!/usr/bin/env python3
"""Regression test for byte-stable generator output."""

from __future__ import annotations

import json
import subprocess
import sys
import tempfile
import time
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[4]
GEN = Path(__file__).with_name("gen_template_inventory.py")


class GeneratorMtimeTests(unittest.TestCase):
    def test_regenerating_identical_inventory_preserves_mtime(self) -> None:
        source = ROOT / "crates/core/component/shielded-pool/formal/note_reshape2x1-deployed-slice-ir.json"
        with tempfile.TemporaryDirectory() as tmp:
            out = Path(tmp) / "inventory.json"
            command = [
                sys.executable,
                str(GEN),
                "--ir",
                str(source),
                "--out",
            ]
            subprocess.run([*command, str(out)], check=True)
            first = out.stat().st_mtime_ns
            time.sleep(0.02)
            subprocess.run([*command, str(out)], check=True)
            self.assertEqual(first, out.stat().st_mtime_ns)
            self.assertEqual(len(json.loads(out.read_text())["circuits"]), 1)


if __name__ == "__main__":
    unittest.main()
