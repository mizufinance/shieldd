from __future__ import annotations

import hashlib
import unittest

import gen_note_reshape_direct_representatives as direct


class NoteReshapeDirectRepresentativesTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.outputs = direct.generated_files()

    def test_exact_provider_and_benchmark_set(self) -> None:
        self.assertEqual(len(self.outputs), 14)
        providers = [path for path in self.outputs if path.parent == direct.OUT]
        benches = [path for path in self.outputs if path.parent == direct.BENCH]
        self.assertEqual(len(providers), 7)
        self.assertEqual(len(benches), 7)

    def test_every_provider_is_direct_normalized(self) -> None:
        combined = "\n".join(self.outputs.values())
        for marker in ("NoteReshape2x1", "representativeRho", "representativeSeating"):
            self.assertNotIn(marker, combined)
        for key, _, _ in direct.templates():
            name = direct.default_template_name(key)
            source = self.outputs[direct.OUT / f"{name}.lean"]
            self.assertIn(f"Templates.Relations.{name}.relation rho", source)
            self.assertIn("theorem sound", source)

    def test_equivalence_uses_exact_normalized_operands(self) -> None:
        key = next(
            key for key, _, _ in direct.templates()
            if key.startswith("decaf.assert_equivalent@")
        )
        name = direct.default_template_name(key)
        source = self.outputs[direct.OUT / f"{name}.lean"]
        self.assertIn("((1 : F) * rho 1) * ((1 : F) * rho 2)", source)
        self.assertIn("((1 : F) * rho 4) * ((1 : F) * rho 5)", source)
        self.assertNotRegex(source, r"(?<!\.)\brelationLc\d+\b")

    def test_bytes_are_deterministic(self) -> None:
        digest = hashlib.sha256()
        for path, source in sorted(self.outputs.items(), key=lambda item: str(item[0])):
            digest.update(str(path.relative_to(direct.LEAN)).encode())
            digest.update(b"\0")
            digest.update(source.encode())
            digest.update(b"\0")
        self.assertEqual(digest.hexdigest(), self._digest())

    def _digest(self) -> str:
        digest = hashlib.sha256()
        second = direct.generated_files()
        for path, source in sorted(second.items(), key=lambda item: str(item[0])):
            digest.update(str(path.relative_to(direct.LEAN)).encode())
            digest.update(b"\0")
            digest.update(source.encode())
            digest.update(b"\0")
        return digest.hexdigest()


if __name__ == "__main__":
    unittest.main()
