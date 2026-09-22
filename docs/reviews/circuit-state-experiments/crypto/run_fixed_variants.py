#!/usr/bin/env python3
"""Serial experiment runner; copies only group.rs and restores original bytes in finally."""
import argparse, os, subprocess, time
from pathlib import Path
REPO=Path('/Users/antoinecyr/Documents/Source/shieldd')
OUT=Path(__file__).parent
SOURCE=REPO/'crates/crypto/circuits/src/group.rs'
VARIANTS={'w3':OUT/'group_fixed_w3.rs','w4':OUT/'group_fixed_w4.rs'}
p=argparse.ArgumentParser()
p.add_argument('--variant',choices=VARIANTS,required=True)
p.add_argument('--cargo-profile',default='ci')
a=p.parse_args()
env=os.environ.copy();env.update(CARGO_BUILD_JOBS='2',RAYON_NUM_THREADS='2',GOMAXPROCS='2')
original=SOURCE.read_bytes(); variant=VARIANTS[a.variant].read_bytes()
assert b'fn affine_fixed' in original and b'fn affine_fixed' in variant
assert original != variant
log=OUT/f'{a.variant}.log'
try:
 SOURCE.write_bytes(variant)
 with log.open('w') as f:
  for cmd in (["cargo","test","-p","shieldd-sdk-circuits","--profile",a.cargo_profile,"fixed_windows_match_variable_and_independent_group_boundaries","--","--test-threads=2"],["cargo","run","-p","shieldd-sdk-circuits","--profile",a.cargo_profile,"--example","catalogue_shapes"]):
   f.write('$ '+' '.join(cmd)+'\n');f.flush()
   t=time.monotonic()
   result=subprocess.run(cmd,cwd=REPO,env=env,stdout=f,stderr=subprocess.STDOUT)
   f.write(f'EXIT {result.returncode} ELAPSED_SECONDS {time.monotonic()-t:.3f}\n');f.flush()
   if result.returncode: raise SystemExit(result.returncode)
finally:
 SOURCE.write_bytes(original)
 assert SOURCE.read_bytes()==original
print(log)
