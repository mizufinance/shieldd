"""Prepare a source-bound, isolated gnark component experiment without cache mutation."""
from pathlib import Path
import hashlib,json,shutil
HERE=Path(__file__).resolve().parent
EXPERIMENT=HERE.parents[1]
OUT=EXPERIMENT/'cache/a-subset-polynomial-source'
UPSTREAM=Path.home()/'go/pkg/mod/github.com/consensys/gnark@v0.15.0'
assert not OUT.exists()
shutil.copytree(UPSTREAM,OUT/'gnark')
shutil.copytree(EXPERIMENT/'candidates/selected-dh',OUT/'worker')
OUT.chmod(0o755)
for p in OUT.rglob('*'):
 p.chmod(0o755 if p.is_dir() else 0o644)
for p in (HERE/'gnark').glob('subset_experiment*.go'):shutil.copyfile(p,OUT/'gnark/backend/groth16/bls12-377'/p.name)
shutil.copytree(HERE/'cmd',OUT/'worker/cmd/subsetcost')
p=OUT/'worker/go.mod';p.write_text(p.read_text()+'\nreplace github.com/consensys/gnark => ../gnark\n')
paths=[p for p in OUT.rglob('*') if p.is_file()]+[p for p in HERE.rglob('*') if p.is_file()]
(OUT/'identity.json').write_text(json.dumps({'schema':'shieldd.gnark_subset.sources.v1','upstream':'github.com/consensys/gnark@v0.15.0','files':{str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(paths)}},indent=2)+'\n')
print(OUT)
