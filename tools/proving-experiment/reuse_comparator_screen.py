"""Freeze and run exact-reuse inventory and the inclusive-comparator solve screen."""
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
TARGET = HERE / "native/target/release"
WITNESSES = CACHE / "native-tuned-witnesses"


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    assert len(sys.argv) == 2, "usage: reuse_comparator_screen.py NEW_CACHE_DIRECTORY"
    out = Path(sys.argv[1]).resolve()
    assert out.is_relative_to(CACHE) and not out.exists()
    assert all(os.environ.get(k) == "2" for k in ("CARGO_BUILD_JOBS", "RAYON_NUM_THREADS", "GOMAXPROCS"))
    paths = {Path(__file__).resolve(), HERE / "guard.py"}
    for candidate in ("native-subset", "reuse-screen", "range-comparator"):
        paths.update(p for p in (HERE / "candidates" / candidate).rglob("*")
                     if p.is_file() and p.suffix in (".rs", ".toml", ".lock", ".json"))
    baseline = json.loads((CACHE / "hinted-scalar-prepared/identity.json").read_text())
    for path, expected in baseline["files"].items():
        path = Path(path)
        if "commonware-subset381" in path.parts:
            assert digest(path) == expected, path
            paths.add(path)
    paths.update(p for p in WITNESSES.iterdir() if p.is_file())
    before = {str(p): digest(p) for p in sorted(paths)}
    out.mkdir()
    binaries = {"reuse": "shieldd-native-reuse-screen", "gadget": "shieldd-native-comparator-screen", "full": "comparator-transfer-screen"}
    for name, binary in binaries.items():
        shutil.copy2(TARGET/binary, out/name)
    with tarfile.open(out/"source.tar.gz", "x:gz") as archive:
        for path in sorted(paths):
            if path.is_relative_to(HERE/"candidates") or path.parent == HERE:
                archive.add(path, arcname=str(path.relative_to(HERE)))
    identity = {"schema": "shieldd.reuse_comparator_sources.v1", "files": before,
                "binaries": {name: digest(out/name) for name in binaries}, "source_archive": digest(out/"source.tar.gz"),
                "workers": 2, "platform": platform.platform(),
                "rustc": subprocess.check_output(["rustup", "run", "1.95.0", "rustc", "-Vv"], text=True).strip()}
    (out/"identity.json").write_text(json.dumps(identity, indent=2)+"\n")
    subprocess.run([str(out/"reuse"), str(WITNESSES), str(out/"reuse.json")], check=True)
    print("Exact reuse inventory and six unchanged-relation gates complete", flush=True)
    subprocess.run([str(out/"gadget"), str(out/"gadget.json")], check=True)
    for mode in ("control", "comparator"):
        subprocess.run([str(out/"full"), mode, str(WITNESSES), str(out/f"{mode}.json")], check=True)
        print(f"{mode}: six original/converted assignments and negatives complete", flush=True)
    assert before == {str(p): digest(p) for p in sorted(paths)}, "sources changed"
    assert identity["binaries"] == {name: digest(out/name) for name in binaries}, "binaries changed"
    (out/"complete.json").write_text(json.dumps({"schema": "shieldd.reuse_comparator_complete.v1",
        "files": {p.name: digest(p) for p in sorted(out.iterdir()) if p.is_file()}}, indent=2)+"\n")


if __name__ == "__main__":
    main()
