#!/usr/bin/env python3
"""Reproduce or check the pinned Commonware sources and Shieldd patch series."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import shutil
import subprocess
import tarfile
import tempfile
import urllib.request

ROOT = Path(__file__).resolve().parents[1]
DEST = ROOT / "third_party/commonware"
META = ROOT / "third_party/commonware-patches"
REVISION = "1a56762927a8ad3300e0594886c28c59d9801769"
CRATES = ["codec", "codec/macros", "conformance", "conformance/macros",
          "cryptography", "formatting", "invariants", "macros", "macros/impl",
          "math", "parallel", "utils"]


def inventory(root):
    return {str(p.relative_to(root)): hashlib.sha256(p.read_bytes()).hexdigest()
            for p in sorted(root.rglob("*")) if p.is_file()
            and "target" not in p.relative_to(root).parts and p.name != "Cargo.lock"}


def validate_source(source):
    """Only a clean checkout at the pinned commit may replace the canonical download."""
    def git(*args):
        try:
            return subprocess.check_output(["git", "-C", str(source), *args], text=True).strip()
        except subprocess.CalledProcessError as error:
            raise SystemExit("Commonware source must be a clean Git checkout") from error
    if Path(git("rev-parse", "--show-toplevel")).resolve() != source.resolve():
        raise SystemExit("Commonware source must be the checkout root")
    if git("rev-parse", "HEAD") != REVISION:
        raise SystemExit("Commonware source is not the pinned revision")
    if git("status", "--porcelain", "--untracked-files=all", "--ignored"):
        raise SystemExit("Commonware source contains modified or extra files")


def materialize(source, dest):
    dest.mkdir()
    for name in ["Cargo.toml", "LICENSE-APACHE", "LICENSE-MIT", "README.md"]:
        shutil.copy2(source / name, dest / name)
    for crate in CRATES:
        if not (dest / crate).exists():
            shutil.copytree(source / crate, dest / crate)
    manifest = (dest / "Cargo.toml").read_text()
    start = manifest.index("members = [")
    end = manifest.index("]", start) + 1
    manifest = manifest[:start] + "members = " + json.dumps(CRATES) + manifest[end:]
    (dest / "Cargo.toml").write_text(manifest)
    for patch in sorted((META / "series").glob("*.patch")):
        subprocess.run(["git", "apply", "--unsafe-paths", str(patch)], cwd=dest, check=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("command", choices=["check", "reproduce", "refresh"])
    parser.add_argument("--source", type=Path, help="Existing checkout of the exact pinned revision")
    args = parser.parse_args()
    if args.command in ("check", "reproduce"):
        expected = json.loads((META / "provenance.json").read_text())
        if expected["revision"] != REVISION or expected["files"] != inventory(DEST):
            raise SystemExit("Commonware source inventory differs from the pinned patch series")
        if expected["patches"] != inventory(META / "series"):
            raise SystemExit("Commonware patch inventory differs")
        if args.command == "check":
            print("Commonware source inventory verified")
            return
    if args.command == "refresh" and DEST.exists():
        raise SystemExit("Destination exists; refresh into a clean checkout")
    with tempfile.TemporaryDirectory(prefix="shieldd-commonware-") as tmp:
        source = args.source
        if source is not None:
            validate_source(source)
        else:
            url = f"https://codeload.github.com/commonwarexyz/monorepo/tar.gz/{REVISION}"
            data = urllib.request.urlopen(url).read()
            with tarfile.open(fileobj=io.BytesIO(data), mode="r:gz") as archive:
                archive.extractall(tmp, filter="data")
            source = Path(tmp) / f"monorepo-{REVISION}"
        destination = DEST if args.command == "refresh" else Path(tmp) / "reproduced"
        materialize(source, destination)
        if args.command == "reproduce":
            if inventory(destination) != inventory(DEST):
                raise SystemExit("Pinned upstream plus patches does not reproduce vendored sources")
            print("Pinned upstream plus patch series reproduces vendored sources")
            return
    META.mkdir(parents=True, exist_ok=True)
    (META / "provenance.json").write_text(json.dumps({
        "repository": "https://github.com/commonwarexyz/monorepo",
        "revision": REVISION,
        "files": inventory(DEST),
        "patches": inventory(META / "series"),
    }, indent=2, sort_keys=True) + "\n")


if __name__ == "__main__":
    main()
