from __future__ import annotations

import importlib.util
import tempfile
import unittest
from pathlib import Path


def repository_root() -> Path:
    for parent in Path(__file__).resolve().parents:
        if (parent / "scripts/prepare_snarkpack_fstar_support.py").is_file():
            return parent
    raise RuntimeError("repository root not found")


SCRIPT = repository_root() / "scripts/prepare_snarkpack_fstar_support.py"
SPEC = importlib.util.spec_from_file_location("prepare_snarkpack_fstar_support", SCRIPT)
assert SPEC and SPEC.loader
SUPPORT = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(SUPPORT)


class FstarSupportInstallerTests(unittest.TestCase):
    def make_proof_libs(self, root: Path) -> Path:
        proof_libs = root / "proof-libs"
        core = proof_libs / "core"
        core.mkdir(parents=True)
        (core / "Core_models.Num.fst").write_text(
            "module Core_models.Num\n\n" + "\n".join(SUPPORT.NUM_MODELS),
            encoding="utf-8",
        )
        (core / "Core_models.Slice.fst").write_text(
            "module Core_models.Slice\n",
            encoding="utf-8",
        )
        (core / "Core_models.Convert.fst").write_text(
            "module Core_models.Convert\n",
            encoding="utf-8",
        )
        return proof_libs

    def test_installs_only_checked_definitions(self):
        with tempfile.TemporaryDirectory() as directory:
            proof_libs = self.make_proof_libs(Path(directory))
            SUPPORT.install(proof_libs)

            installed = "\n".join(
                path.read_text(encoding="utf-8")
                for path in (proof_libs / "core").glob("*.fst")
            )
            self.assertNotIn("assume val", installed)
            self.assertIn("let impl_u32__is_power_of_two", installed)
            self.assertIn("let impl__starts_with", installed)
            self.assertIn("let impl__try_into_array_self_slice", installed)

    def test_second_install_fails_closed(self):
        with tempfile.TemporaryDirectory() as directory:
            proof_libs = self.make_proof_libs(Path(directory))
            SUPPORT.install(proof_libs)
            with self.assertRaises(SystemExit) as raised:
                SUPPORT.install(proof_libs)
            self.assertIn("expected one support-model target", str(raised.exception))

    def test_upstream_definition_drift_fails_closed(self):
        with tempfile.TemporaryDirectory() as directory:
            proof_libs = self.make_proof_libs(Path(directory))
            num = proof_libs / "core/Core_models.Num.fst"
            text = num.read_text(encoding="utf-8")
            old = next(iter(SUPPORT.NUM_MODELS))
            num.write_text(text.replace(old, old.replace("u32", "u16", 1)), encoding="utf-8")

            with self.assertRaises(SystemExit) as raised:
                SUPPORT.install(proof_libs)
            self.assertIn("expected one support-model target", str(raised.exception))

    def test_repository_contains_no_local_fstar_assumption(self):
        driver = (repository_root() / "scripts/snarkpack-formal.sh").read_text(
            encoding="utf-8"
        )
        self.assertNotIn("assume val", driver)
        proof_root = (
            repository_root()
            / "crates/crypto/proof-aggregation/formal/snarkpack/fstar"
        )
        for proof in proof_root.glob("*.fst"):
            with self.subTest(proof=proof.name):
                self.assertNotIn(
                    "assume val",
                    proof.read_text(encoding="utf-8"),
                )


if __name__ == "__main__":
    unittest.main()
