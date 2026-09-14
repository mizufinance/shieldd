"""Apply the checked strict-comparator helpers to a frozen subset Groth16 worker."""
from pathlib import Path
import hashlib,json,shutil
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
BASE=ROOT/"cache/a-subset-full-source"
OUT=ROOT/"cache/a-comparator377-source"
assert not OUT.exists(), "preserve existing sources"
for name,h in json.loads((HERE/"upstream.json").read_text())["files"].items():
    assert hashlib.sha256((BASE/name).read_bytes()).hexdigest()==h,name
for name in ["worker","gnark"]: shutil.copytree(BASE/name,OUT/name)
for name in ["comparison.go","less_than_constant.go","comparator_screen_test.go"]:
    target=OUT/"worker/internal/compliance"/name
    if target.exists():target.chmod(0o644)
    shutil.copyfile(ROOT/"candidates/comparator377/internal/compliance"/name,target)
paths=[p for p in OUT.rglob("*") if p.is_file()]
(OUT/"identity.json").write_text(json.dumps({"schema":"shieldd.subset_comparator377.source.v1","files":{str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(paths)}},indent=2)+"\n")
print(OUT)
