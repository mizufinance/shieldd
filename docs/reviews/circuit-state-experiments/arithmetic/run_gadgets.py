#!/usr/bin/env python3
from pathlib import Path
import os,subprocess
root=Path('/Users/antoinecyr/Documents/Source/shieldd')
source=Path('/tmp/shieldd-experiments/arithmetic/gadget_shapes.rs')
target=root/'crates/crypto/circuits/examples/gadget_shapes.rs'
original=target.read_bytes() if target.exists() else None
log=Path('/tmp/shieldd-experiments/arithmetic/gadget_shapes.log')
env=os.environ.copy();env.update(CARGO_BUILD_JOBS='2',RAYON_NUM_THREADS='2',GOMAXPROCS='2')
try:
    target.write_bytes(source.read_bytes())
    with log.open('w') as f:
        result=subprocess.run(['cargo','run','-p','shieldd-sdk-circuits','--example','gadget_shapes','--profile','ci'],cwd=root,env=env,stdout=f,stderr=subprocess.STDOUT)
    if result.returncode:raise RuntimeError(f'Gadget shape run failed: {log}')
finally:
    if original is None:target.unlink(missing_ok=True)
    else:target.write_bytes(original)
print(log)
