#!/usr/bin/env python3
"""Apply selected isolated patches, run measurements/tests, restore source byte-for-byte."""
import argparse
import os
from pathlib import Path
import re
import subprocess
import sys

ROOT = Path('/Users/antoinecyr/Documents/Source/shieldd')
BASE = Path('/tmp/shieldd-experiments/arithmetic')
PATCHES = {'range': 'range.patch', 'routing': 'routing.patch', 'tree': 'tree.patch', 'authorization': 'authorization.patch', 'disclosure': 'disclosure.patch', 'capacity1': 'disclosure_capacity1.patch', 'width8':'history_width8.patch', 'width9':'history_width9.patch'}
TESTS = {'range': 'range::tests', 'routing': 'routing::tests', 'tree': 'tree::tests', 'authorization': 'authorization::tests', 'disclosure': 'disclosure::tests', 'capacity1':'disclosure::tests', 'width8':'history::tests', 'width9':'history::tests'}
SOURCES = {'range': 'crates/crypto/circuits/src/range.rs', 'routing': 'crates/crypto/circuits/src/routing.rs', 'tree': 'crates/crypto/circuits/src/tree.rs', 'authorization': 'crates/crypto/circuits/src/authorization.rs', 'disclosure': 'crates/crypto/circuits/src/disclosure.rs', 'capacity1':'crates/crypto/circuits/src/disclosure.rs', 'width8':'crates/crypto/circuits/src/history.rs', 'width9':'crates/crypto/circuits/src/history.rs'}


def run(args, log, env):
    with log.open('a') as f:
        f.write('$ ' + ' '.join(args) + '\n')
        f.flush()
        result = subprocess.run(args, cwd=ROOT, env=env, stdout=f, stderr=subprocess.STDOUT)
        f.write(f'EXIT={result.returncode}\n')
    if result.returncode:
        raise RuntimeError(f'Command failed ({result.returncode}): {args}')


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('variants', nargs='+', choices=PATCHES)
    ap.add_argument('--skip-tests', action='store_true')
    ap.add_argument('--family', action='append', help='Family label filter supported by current catalogue_shapes example')
    ns=ap.parse_args()
    variants=list(dict.fromkeys(ns.variants))
    saved={SOURCES[k]: (ROOT/SOURCES[k]).read_bytes() for k in variants}
    log=BASE/('run-'+'-'.join(variants)+'.log')
    log.write_text('')
    env=os.environ.copy()
    env.update(CARGO_BUILD_JOBS='2', RAYON_NUM_THREADS='2', GOMAXPROCS='2')
    try:
        for k in variants:
            patch=BASE/'variants'/PATCHES[k]
            run(['git','apply','--check',str(patch)],log,env)
            run(['git','apply',str(patch)],log,env)
        if not ns.skip_tests:
            for k in variants:
                run(['cargo','test','-p','shieldd-sdk-circuits','--profile','ci',TESTS[k],'--','--test-threads=2'],log,env)
        args=['cargo','run','-p','shieldd-sdk-circuits','--example','catalogue_shapes','--profile','ci','--']
        for family in ns.family or []:
            args += [family]
        run(args,log,env)
    finally:
        for path, content in saved.items():
            (ROOT/path).write_bytes(content)
        assert all((ROOT/path).read_bytes()==content for path,content in saved.items())
    print(log)

if __name__=='__main__':
    main()
