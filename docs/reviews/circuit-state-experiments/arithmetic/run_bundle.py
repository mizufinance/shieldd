#!/usr/bin/env python3
"""Install one combined candidate temporarily, measure/test, restore source bytes."""
import argparse
import os
from pathlib import Path
import subprocess

ROOT=Path('/Users/antoinecyr/Documents/Source/shieldd')
BASE=Path('/tmp/shieldd-experiments/arithmetic')
PATCHES=['range_with_limbs.patch','routing.patch','authorization.patch','tree_position.patch',
         'note_position_bounded.patch','seizure_position_bounded.patch','volume_bounded.patch',
         'balance.patch','disclosure_combined.patch','registry_limbs.patch','history_combined.patch']

def run(cmd, log, env):
    with log.open('a') as f:
        f.write('$ '+' '.join(map(str,cmd))+'\n');f.flush()
        result=subprocess.run(list(map(str,cmd)),cwd=ROOT,env=env,stdout=f,stderr=subprocess.STDOUT)
        f.write(f'EXIT={result.returncode}\n')
    if result.returncode:raise RuntimeError(f'failed: {cmd}; see {log}')

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--history-width',type=int,choices=[8,9,10,11,12],default=10)
    ap.add_argument('--extra-patch',action='append',type=Path,default=[])
    ap.add_argument('--capacity-semantics',action='store_true')
    ap.add_argument('--capacity-one',action='store_true')
    ap.add_argument('--limb-equality',action='store_true')
    ap.add_argument('--full-tests',action='store_true')
    ap.add_argument('--test-filter',action='append')
    ap.add_argument('--skip-tests',action='store_true')
    ns=ap.parse_args()
    patches=[BASE/'variants'/p for p in PATCHES]
    if ns.limb_equality:patches[0]=BASE/'variants'/'range_limbs_eq.patch'
    if ns.capacity_one:patches[8]=BASE/'variants'/'disclosure_combined_capacity1.patch'
    if ns.history_width!=10:patches[-1]=BASE/'variants'/f'history_combined_width{ns.history_width}.patch'
    patches.extend(ns.extra_patch)
    files=set()
    for patch in patches:
        for line in patch.read_text().splitlines():
            if line.startswith('+++ b/'):files.add(line[6:])
    backup={path:(ROOT/path).read_bytes() for path in files}
    log=BASE/f'run-bundle-width{ns.history_width}{"-eq" if ns.limb_equality else ""}{"-cap1" if ns.capacity_one else ""}.log';log.write_text('')
    env=os.environ.copy();env.update(CARGO_BUILD_JOBS='2',RAYON_NUM_THREADS='2',GOMAXPROCS='2')
    example_target=ROOT/'crates/crypto/circuits/examples/capacity_semantics.rs'
    example_backup=example_target.read_bytes() if example_target.exists() else None
    try:
        for patch in patches:
            run(['git','apply','--check',patch],log,env)
            run(['git','apply',patch],log,env)
        if not ns.skip_tests:
            if ns.full_tests:
                run(['cargo','test','-p','shieldd-sdk-circuits','--profile','ci','--lib','--','--test-threads=1'],log,env)
            elif ns.test_filter:
                for filter in ns.test_filter:
                    run(['cargo','test','-p','shieldd-sdk-circuits','--profile','ci','--lib',filter,'--','--test-threads=1'],log,env)
            else:
                for filter in ['range::tests','routing::tests','tree::tests','authorization::tests',
                               'disclosure::tests','balance::tests','history::tests','seizure::tests','note::tests']:
                    run(['cargo','test','-p','shieldd-sdk-circuits','--profile','ci',filter,'--','--test-threads=2'],log,env)
        if ns.capacity_semantics:
            example_target.write_bytes((BASE/'capacity_semantics.rs').read_bytes())
            run(['cargo','run','-p','shieldd-sdk-circuits','--example','capacity_semantics','--profile','ci'],log,env)
        run(['cargo','run','-p','shieldd-sdk-circuits','--example','catalogue_shapes','--profile','ci','--'],log,env)
    finally:
        if example_backup is None:example_target.unlink(missing_ok=True)
        else:example_target.write_bytes(example_backup)
        for path,data in backup.items():(ROOT/path).write_bytes(data)
        assert all((ROOT/path).read_bytes()==data for path,data in backup.items())
    print(log)
if __name__=='__main__':main()
