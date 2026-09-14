"""Freeze and run the bounded corrected Jubjub gadget and Transfer solve screen."""
import hashlib
import json
import os
from pathlib import Path
import platform
import shutil
import subprocess
import sys
import tarfile

HERE = Path(__file__).resolve().parent
CACHE = HERE / "cache"
CANDIDATE = HERE / "candidates/hinted-jubjub"
NATIVE = HERE / "candidates/native-subset"
TARGET = HERE / "native/target/release"
WITNESSES = CACHE / "native-tuned-witnesses"


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def source_files():
    paths = {Path(__file__).resolve(), HERE / "guard.py"}
    for root in (CANDIDATE, NATIVE):
        paths.update(p for p in root.rglob("*") if p.is_file() and p.suffix in (".rs", ".toml", ".lock", ".json"))
    previous = json.loads((CACHE / "c-subset-full-source/identity.json").read_text())
    for name, expected in previous["files"].items():
        path = Path(name)
        if "commonware-subset381" in path.parts and path.suffix in (".rs", ".toml", ".lock"):
            require(digest(path) == expected, f"prior Commonware source changed: {path}")
            paths.add(path)
    commonware = CACHE / "commonware-subset381"
    paths.update(p for p in commonware.rglob("*") if p.is_file() and p.suffix in (".rs", ".toml", ".lock") and "target" not in p.relative_to(commonware).parts)
    paths.update(p for p in WITNESSES.iterdir() if p.is_file())
    return sorted(paths)


def main():
    require(len(sys.argv) == 2, "usage: hinted_scalar_screen.py NEW_CACHE_DIRECTORY")
    out = Path(sys.argv[1]).resolve()
    require(out.is_relative_to(CACHE) and not out.exists(), "new cache directory required")
    require(all(os.environ.get(k) == "2" for k in ("CARGO_BUILD_JOBS", "RAYON_NUM_THREADS", "GOMAXPROCS")), "two-worker bounds required")
    paths = source_files()
    before = {str(p): digest(p) for p in paths}
    out.mkdir()
    for source, destination in (("shieldd-hinted-jubjub-screen", "gadget"), ("hinted-transfer-screen", "full")):
        shutil.copy2(TARGET / source, out / destination)
    with tarfile.open(out / "source.tar.gz", "x:gz") as archive:
        for path in paths:
            if path.is_relative_to(CANDIDATE) or path.is_relative_to(NATIVE) or path.parent == HERE:
                archive.add(path, arcname=str(path.relative_to(HERE)))
    identity = {"schema": "shieldd.hinted_scalar_screen.sources.v1", "platform": platform.platform(),
                "cpu": subprocess.check_output(["sysctl", "-n", "machdep.cpu.brand_string"], text=True).strip(),
                "workers": 2, "files": before,
                "rustc": subprocess.check_output(["rustup", "run", "1.95.0", "rustc", "-Vv"], text=True).strip(),
                "binaries": {name: digest(out / name) for name in ("gadget", "full")},
                "source_archive": digest(out / "source.tar.gz")}
    (out / "identity.json").write_text(json.dumps(identity, indent=2) + "\n")
    subprocess.run([str(out / "gadget"), str(out / "gadget.json")], check=True)
    for mode in ("control", "hinted"):
        subprocess.run([str(out / "full"), mode, str(WITNESSES), str(out / f"{mode}.json")], check=True)
        print(f"{mode}: all six original/converted Transfer scenarios and negatives checked", flush=True)
    require(before == {str(p): digest(p) for p in paths}, "source/witness changed during screen")
    require(identity["binaries"] == {name: digest(out/name) for name in ("gadget", "full")}, "binary changed")
    completion = {"schema": "shieldd.hinted_scalar_screen.complete.v1",
                  "files": {p.name: digest(p) for p in sorted(out.iterdir()) if p.is_file()}}
    (out / "complete.json").write_text(json.dumps(completion, indent=2) + "\n")


if __name__ == "__main__":
    main()
