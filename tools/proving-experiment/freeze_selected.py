"""Freeze source and exact selected binaries before a new measurement campaign."""
from pathlib import Path
import json
import shutil
import subprocess
import tarfile
from api_gate import ROOT, SPIKE, CACHE, digest, require
from selected_workers import BINARY_B, BINARY_C, MSM

out=CACHE/'desktop-selected-source'
require(not out.exists(),'preserve frozen selected source')
out.mkdir()
paths=set()
for base in [SPIKE/'src',SPIKE/'examples',SPIKE/'vendor',SPIKE/'native/src',SPIKE/'native/examples',SPIKE/'native/params',SPIKE/'native/patches',ROOT/'tools/gnark']:
    for f in base.rglob('*'):
        if f.is_file() and f.suffix in ('.rs','.go','.toml','.lock','.sum','.patch') and not any(x in ('target','cache','.git') for x in f.relative_to(base).parts):
            paths.add(f)
paths.update(SPIKE.glob('*.py'))
paths.update([SPIKE/'transport.rs',SPIKE/'Cargo.toml',SPIKE/'Cargo.lock',SPIKE/'native/Cargo.toml',SPIKE/'native/Cargo.lock',SPIKE/'native/bootstrap.py'])
paths.update((SPIKE/'native/params').glob('*.json'))
with tarfile.open(out/'source.tar.gz','w:gz') as archive:
    for f in sorted(paths): archive.add(f,arcname=str(f.relative_to(ROOT)),recursive=False)
binaries=[]
for name, source in [('A',CACHE/'provingexperiment-go'),('B',BINARY_B),('B-msm',MSM),('C',BINARY_C)]:
    target=out/name; shutil.copy2(source,target)
    binaries.append({'candidate':name,'source':str(source),'path':str(target),'sha256':digest(target.read_bytes())})
manifest={'schema':'shieldd.proving_experiment.selected_source.v1','archive':{'path':str(out/'source.tar.gz'),'sha256':digest((out/'source.tar.gz').read_bytes())},'files':[{'path':str(f),'sha256':digest(f.read_bytes())} for f in sorted(paths)],'binaries':binaries,'commonware_revision':subprocess.check_output(['git','-C',str(CACHE/'commonware'),'rev-parse','HEAD'],text=True).strip(),'limits':'Exact selected development worker sources and binaries. No circuit/key changes. Prior desktop-final evidence remains untouched.'}
(out/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
print(json.dumps({'source_files':len(paths),'archive_sha256':manifest['archive']['sha256']}))
