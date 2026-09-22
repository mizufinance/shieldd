#!/usr/bin/env python3
import argparse, importlib.util, os, subprocess, time
from pathlib import Path
root=Path('/Users/antoinecyr/Documents/Source/shieldd')
base=Path('/tmp/shieldd-experiments')
ap=argparse.ArgumentParser();ap.add_argument('family',choices=['transfer','disclosure','history']);ap.add_argument('--bundle',action='store_true');ap.add_argument('--limb-equality',action='store_true');ap.add_argument('--w3',action='store_true');ap.add_argument('--width',type=int,default=10);ap.add_argument('--capacity',type=int,default=32);ap.add_argument('--label',required=True);a=ap.parse_args()
patches=[]
if a.bundle:
 spec=importlib.util.spec_from_file_location('bundle',base/'arithmetic/run_bundle.py');m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
 patches=[base/'arithmetic/variants'/p for p in m.PATCHES]
 if a.limb_equality:patches[0]=base/'arithmetic/variants/range_limbs_eq.patch'
 if a.width!=10: patches=[base/'arithmetic/variants'/f'history_combined_width{a.width}.patch' if p.name=='history_combined.patch' else p for p in patches]
files=set()
for p in patches:
 for l in p.read_text().splitlines():
  if l.startswith('+++ b/'): files.add(root/l[6:])
example=root/'crates/crypto/circuits/examples/proof_bench.rs';files.add(example)
if a.w3:files.add(root/'crates/crypto/circuits/src/group.rs')
if a.capacity!=32:files.add(root/'crates/crypto/circuits/src/disclosure.rs')
backup={p:p.read_bytes() if p.exists() else None for p in files}
env=os.environ.copy();env.update(CARGO_BUILD_JOBS='2',RAYON_NUM_THREADS='2',GOMAXPROCS='2')
log=base/'proofs'/f'{a.label}.log'
try:
 for p in patches:subprocess.run(['git','apply','--check',str(p)],cwd=root,check=True);subprocess.run(['git','apply',str(p)],cwd=root,check=True)
 if a.w3:(root/'crates/crypto/circuits/src/group.rs').write_bytes((base/'crypto/group_fixed_w3.rs').read_bytes())
 if a.capacity!=32:
  p=root/'crates/crypto/circuits/src/disclosure.rs';s=p.read_text();assert 'pub const CAPACITY: usize = 32;' in s;p.write_text(s.replace('pub const CAPACITY: usize = 32;',f'pub const CAPACITY: usize = {a.capacity};'))
 example.write_bytes((base/'proofs/proof_bench.rs').read_bytes())
 with log.open('w') as f:
  cmd=['/usr/bin/time','-l','cargo','run','--locked','--profile','ci','-p','shieldd-sdk-circuits','--example','proof_bench','--',a.family];f.write('COMMAND '+repr(cmd)+'\n');f.flush();r=subprocess.run(cmd,cwd=root,env=env,stdout=f,stderr=subprocess.STDOUT);f.write(f'EXIT={r.returncode}\n')
 if r.returncode:raise SystemExit(r.returncode)
finally:
 for p,b in backup.items():
  if b is None:p.unlink(missing_ok=True)
  else:p.write_bytes(b)
 assert all(p.read_bytes()==b if b is not None else not p.exists() for p,b in backup.items())
print(log)
