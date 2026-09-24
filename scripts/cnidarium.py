#!/usr/bin/env python3
"""Reproduce the narrow Cnidarium patch from its exact crates.io archive."""
import argparse
import hashlib
import json
import pathlib
import subprocess
import tarfile
import tempfile
import urllib.request

ROOT = pathlib.Path(__file__).resolve().parents[1]
PATCHES = ROOT / "third_party/cnidarium-patches"
SOURCE = ROOT / "third_party/cnidarium-0.83.0"


def inventory(root):
    return {str(path.relative_to(root)): hashlib.sha256(path.read_bytes()).hexdigest()
            for path in sorted(root.rglob("*")) if path.is_file()}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("command", choices=["check", "reproduce"])
    parser.add_argument("--archive", type=pathlib.Path)
    args = parser.parse_args()
    manifest = json.loads((PATCHES / "provenance.json").read_text())
    patch = PATCHES / "0001-commit-range-deletion.patch"
    if hashlib.sha256(patch.read_bytes()).hexdigest() != manifest["patch_sha256"]:
        raise SystemExit("Cnidarium patch checksum mismatch")
    if inventory(SOURCE) != manifest["files"]:
        raise SystemExit("Cnidarium source inventory mismatch")
    if args.command == "reproduce":
        with tempfile.TemporaryDirectory(prefix="cnidarium-reproduce-") as scratch:
            scratch = pathlib.Path(scratch)
            archive = args.archive or scratch / "cnidarium.crate"
            if args.archive is None:
                urllib.request.urlretrieve(manifest["archive_url"], archive)
            if hashlib.sha256(archive.read_bytes()).hexdigest() != manifest["archive_sha256"]:
                raise SystemExit("Cnidarium upstream archive checksum mismatch")
            with tarfile.open(archive) as tar:
                tar.extractall(scratch, filter="data")
            tree = scratch / "cnidarium-0.83.0"
            subprocess.run(["patch", "-p1", "--input", str(patch)], cwd=tree, check=True)
            if inventory(tree) != manifest["files"]:
                raise SystemExit("Cnidarium reproduction differs from vendored source")
    print("Cnidarium 0.83.0 source and maintenance patch verified")


if __name__ == "__main__":
    main()
