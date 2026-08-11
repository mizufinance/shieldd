from __future__ import annotations

import json
import re
import unittest
from pathlib import Path


class Poseidon5LinkTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.root = Path(__file__).resolve().parents[4]
        cls.bridge = (
            cls.root
            / "tools/gnark/lean/ShielddGnarkFormal/Poseidon5Bridge.lean"
        ).read_text()
        cls.link = (
            cls.root
            / "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
            "Poseidon5Link.lean"
        ).read_text()
        vectors = json.loads(
            (
                cls.root
                / "tools/gnark/internal/primitives/vectors/"
                "phase05_vectors.json"
            ).read_text()
        )
        cls.mds = tuple(
            int(value) for value in vectors["poseidon377"]["rate_5"]["mds"]
        )

    def theorem_body(self, name: str, following: str) -> str:
        start = self.link.index(f"theorem {name}")
        end = self.link.index(f"theorem {following}", start)
        return self.link[start:end]

    def test_bridge_exposes_the_independent_width_six_round_spec(self) -> None:
        for definition in ("p17", "fr6", "pr6", "permSpec5"):
            self.assertIn(f"def {definition}", self.bridge)

    def test_full_and_partial_round_links_use_the_canonical_mds(self) -> None:
        full = self.theorem_body("fr_eq6", "pr_eq6")
        partial = self.link[self.link.index("theorem pr_eq6") :]
        for source in (full, partial):
            constants = tuple(
                int(value)
                for value in re.findall(r"\((\d+) : F\)", source)
            )
            self.assertEqual(constants, self.mds)

    def test_link_has_no_trust_shortcuts(self) -> None:
        for expected in ("def row6", "theorem fr_eq6", "theorem pr_eq6"):
            self.assertIn(expected, self.link)
        for forbidden in ("axiom ", "sorry", "native_decide"):
            self.assertNotIn(forbidden, self.bridge + self.link)


if __name__ == "__main__":
    unittest.main()
