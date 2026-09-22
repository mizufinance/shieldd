#!/usr/bin/env python3
import os,subprocess
from pathlib import Path
repo=Path('/Users/antoinecyr/Documents/Source/shieldd');out=Path(__file__).parent;dest=repo/'crates/crypto/circuits/examples/poseidon2_shapes.rs';params=dest.with_name('poseidon2_params.json')
assert not dest.exists() and not params.exists()
env=os.environ.copy();env.update(CARGO_BUILD_JOBS='2',RAYON_NUM_THREADS='2',GOMAXPROCS='2')
try:
 dest.write_bytes((out/'poseidon2_shapes.rs').read_bytes());params.write_bytes((out/'poseidon2_params.json').read_bytes())
 with (out/'poseidon2_shapes.log').open('w') as f:result=subprocess.run(['cargo','run','-p','shieldd-sdk-circuits','--profile','ci','--example','poseidon2_shapes'],cwd=repo,env=env,stdout=f,stderr=subprocess.STDOUT)
finally:
 dest.unlink(missing_ok=True);params.unlink(missing_ok=True)
raise SystemExit(result.returncode)
