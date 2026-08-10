from __future__ import annotations

import unittest

from poseidon_constants import rounds


class PoseidonConstantsTests(unittest.TestCase):
    def test_every_supported_rate_has_the_expected_round_shape(self) -> None:
        for rate in (1, 2, 3, 4, 6, 7):
            with self.subTest(rate=rate):
                parsed = rounds(rate)
                width = rate + 1
                self.assertEqual(len(parsed), 39)
                self.assertEqual(
                    [kind for kind, _ in parsed],
                    [f"fr{width}"] * 4
                    + [f"pr{width}"] * 31
                    + [f"fr{width}"] * 4,
                )
                self.assertTrue(
                    all(len(constants) == width for _, constants in parsed)
                )
