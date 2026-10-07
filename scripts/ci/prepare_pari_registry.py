#!/usr/bin/env python3
"""Validate or replace the CI-owned disposable development key cache."""
import os
from pathlib import Path
import shutil
import subprocess

ROOT = Path(__file__).resolve().parents[2]


def prepare(runner_temp: Path):
    runner_temp = runner_temp.resolve(strict=True)
    directory = runner_temp / "shieldd-pari-keys"
    selected = Path(os.environ["SHIELDD_PARI_KEYS"])
    if directory.is_symlink() or selected.resolve() != directory:
        raise ValueError("registry must be the CI-owned RUNNER_TEMP/shieldd-pari-keys directory")
    # Build errors must fail the job, not cause destruction of a valid cache.
    subprocess.run(["cargo", "build", "--locked", "--profile", "ci", "-p",
                    "shieldd-sdk-proof-params", "--example", "pari_setup"], cwd=ROOT, check=True)
    setup = str(ROOT / "target/ci/examples/pari_setup")
    if directory.exists():
        validation = subprocess.run([setup,
                                     "--validate", str(directory)], cwd=ROOT)
        if validation.returncode == 0:
            print("Validated restored development Pari registry", flush=True)
            return
        print("Discarding invalid CI key cache", flush=True)
        if directory.is_dir():
            shutil.rmtree(directory)
        else:
            directory.unlink()
    subprocess.run([setup, str(directory)], cwd=ROOT, check=True)


if __name__ == "__main__":
    prepare(Path(os.environ["RUNNER_TEMP"]))
