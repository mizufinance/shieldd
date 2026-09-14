"""Reproduce the isolated checked prepared key storage over the frozen parallel-FFT baseline."""
from pathlib import Path
import hashlib,json,shutil,subprocess
HERE=Path(__file__).resolve().parent
CACHE=HERE.parents[1]/"cache"
BASE=CACHE/"commonware-parallel-ntt"
OUT=CACHE/"commonware-prepared-key381"
assert not OUT.exists(), "preserve existing evidence; use a fresh workspace"
for name,expected in json.loads((HERE/"upstream.json").read_text())["baseline_files"].items():
    assert hashlib.sha256((BASE/name).read_bytes()).hexdigest()==expected,name
shutil.copytree(BASE,OUT,ignore=shutil.ignore_patterns(".git","target"))
patch=HERE/"patches/commonware-prepared-key381.patch"
subprocess.run(["git","apply","--check",str(patch)],cwd=OUT,check=True)
subprocess.run(["git","apply",str(patch)],cwd=OUT,check=True)
