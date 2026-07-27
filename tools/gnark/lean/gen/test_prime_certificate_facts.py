#!/usr/bin/env python3
"""Tests for the choice-free field-primality certificate facts."""

from __future__ import annotations

import unittest

import gen_prime_certificate_facts as generator


class PrimeCertificateFactTests(unittest.TestCase):
    def test_generated_files_are_current(self) -> None:
        expected = generator.expected_files()
        stale = set(generator.OUTPUT.glob("*.lean")) - set(expected)
        self.assertEqual(stale, set())
        for path, source in expected.items():
            self.assertTrue(path.is_file(), path)
            self.assertEqual(path.read_text(), source, path)

    def test_all_modular_facts_hold(self) -> None:
        for name, prime, witness, exponent, non_one in generator.facts():
            with self.subTest(name=name):
                residue = pow(witness, exponent, prime)
                self.assertEqual(residue != 1, non_one)

    def test_certificate_chain_ends_at_decaf377_scalar_order(self) -> None:
        self.assertEqual(
            generator.CERTIFICATES[-1][0],
            8444461749428370424248824938781546531375899335154063827935233455917409239041,
        )


if __name__ == "__main__":
    unittest.main()
