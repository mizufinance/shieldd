#!/usr/bin/env python3
import os,subprocess
from pathlib import Path
repo=Path('/Users/antoinecyr/Documents/Source/shieldd');out=Path(__file__).parent;src=repo/'crates/crypto/circuits/src'
paths={src/'group.rs':out/'group_prepared.rs',src/'encryption.rs':out/'encryption_prepared.rs'}
backup={p:p.read_bytes() for p in paths}
env=os.environ.copy();env.update(CARGO_BUILD_JOBS='2',RAYON_NUM_THREADS='2',GOMAXPROCS='2')
try:
 for p,v in paths.items():p.write_bytes(v.read_bytes())
 with (out/'prepared_base.log').open('w') as f:
  for cmd in (['cargo','test','-p','shieldd-sdk-circuits','--profile','ci','encryption::tests','--','--test-threads=1'],['cargo','test','-p','shieldd-sdk-circuits','--profile','ci','all_branches_compile_to_one_relation_and_bind_current_audit_keys','--','--test-threads=2'],['cargo','run','-p','shieldd-sdk-circuits','--profile','ci','--example','catalogue_shapes']):
   f.write('$ '+' '.join(cmd)+'\n');f.flush();r=subprocess.run(cmd,cwd=repo,env=env,stdout=f,stderr=subprocess.STDOUT)
   if r.returncode:raise SystemExit(r.returncode)
finally:
 for p,b in backup.items():p.write_bytes(b)
 for p,b in backup.items():assert p.read_bytes()==b
