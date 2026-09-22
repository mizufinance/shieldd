#!/usr/bin/env python3
"""Temporarily install extracted gadget example, run one bounded build, restore in finally."""
import os, subprocess
from pathlib import Path
REPO=Path('/Users/antoinecyr/Documents/Source/shieldd')
OUT=Path(__file__).parent
source=OUT/'gadget_shapes.rs';dest=REPO/'crates/crypto/circuits/examples/gadget_shapes.rs'
assert not dest.exists(), f'{dest} already exists'
env=os.environ.copy();env.update(CARGO_BUILD_JOBS='2',RAYON_NUM_THREADS='2',GOMAXPROCS='2')
try:
 dest.write_bytes(source.read_bytes())
 with (OUT/'gadget_shapes.log').open('w') as f:
  result=subprocess.run(['cargo','run','-p','shieldd-sdk-circuits','--profile','ci','--example','gadget_shapes'],cwd=REPO,env=env,stdout=f,stderr=subprocess.STDOUT)
 finally_code=result.returncode
finally:
 dest.unlink(missing_ok=True)
raise SystemExit(finally_code)
