"""Build and check the single B lifetime candidate without changing retained sources."""
from pathlib import Path
import argparse
import hashlib
import json
import os
import shutil
import subprocess
import sys

HERE=Path(__file__).resolve().parent
SPIKE=HERE.parent
ROOT=SPIKE.parents[1]
CACHE=SPIKE/'cache'
BASE=SPIKE/'candidates/owned-comparator377'
SOURCE=CACHE/'phone-memory377'
ARTIFACTS=CACHE/'phone-memory377-artifacts'
TARGET=SPIKE/'native/target'
sys.path.insert(0,str(SPIKE))
from selected_gate import fixtures

def digest(p):
    with p.open('rb') as f:return hashlib.file_digest(f,'sha256').hexdigest()

def record(p,r):p.write_text(json.dumps(r,indent=2)+'\n')

def checked_sources():
    r=json.loads((ARTIFACTS/'sources.json').read_text())
    for name,h in r['files'].items():
        if digest(ROOT/name)!=h:raise RuntimeError(f'candidate source changed: {name}')
    return r

def prepare():
    if SOURCE.exists() or ARTIFACTS.exists():raise RuntimeError('preserve existing candidate/checkpoint')
    manifest=json.loads((CACHE/'b-comparator377-source/identity.json').read_text())['files']
    paths=[BASE/'Cargo.toml',BASE/'Cargo.lock',*sorted((BASE/'src').glob('*.rs'))]
    for p in paths:
        if digest(p)!=manifest[str(p.relative_to(ROOT))]:raise RuntimeError(f'frozen B source changed: {p}')
    shutil.copytree(BASE/'src',SOURCE/'src')
    for name in ('Cargo.toml','Cargo.lock'):shutil.copy2(BASE/name,SOURCE/name)
    subprocess.run(['git','apply','--directory',str(SOURCE.relative_to(ROOT)),str(HERE/'memory.patch')],cwd=ROOT,check=True)
    ARTIFACTS.mkdir()
    changed=[SOURCE/'Cargo.toml',SOURCE/'Cargo.lock',*sorted((SOURCE/'src').glob('*.rs'))]
    paths += changed+[HERE/'memory.patch',HERE/'memory.py',CACHE/'b-comparator377-source/identity.json']
    paths += sorted((SPIKE/'vendor/zkpari/src').rglob('*.rs'))
    paths += [SPIKE/'vendor/zkpari/Cargo.toml',SPIKE/'candidates/prepared-key-pari377/src/protocol.rs',SPIKE/'transport.rs']
    record(ARTIFACTS/'sources.json',{'schema':'shieldd.phone_memory_sources.v1','files':{str(p.relative_to(ROOT)):digest(p) for p in paths}})
    rows=fixtures('B')
    facts=[{'scenario':r.scenario,'witness':{'path':str(r.path),'sha256':r.sha256},'statement':r.statement} for r in rows]
    invalid=ROOT/'tools/gnark/internal/testfixtures/vectors/transfer_accumulator_over_limit_witness.bin'
    record(ARTIFACTS/'fixtures.json',{'schema':'shieldd.phone_memory_fixtures.v1','facts':facts,'invalid':{'path':str(invalid),'sha256':digest(invalid)}})

def environment(android=False):
    e=os.environ.copy();e.update(CARGO_BUILD_JOBS='2',RAYON_NUM_THREADS='2',GOMAXPROCS='2',CARGO_TARGET_DIR=str(TARGET))
    if android:
        from build import LLVM
        e.update(CC=str(LLVM/'aarch64-linux-android33-clang'),AR=str(LLVM/'llvm-ar'),CARGO_TARGET_AARCH64_LINUX_ANDROID_LINKER=str(LLVM/'aarch64-linux-android33-clang'))
        for name in ('RUSTFLAGS','CFLAGS','CXXFLAGS'):e.pop(name,None)
    return e

def cargo(action,extra,android=False):
    checked_sources()
    command=['cargo','+1.89.0',action,'--release','--locked','--manifest-path',str(SOURCE/'Cargo.toml')]
    if android:command+=['--target','aarch64-linux-android']
    subprocess.run(command+extra,cwd=ROOT,env=environment(android),check=True)
    checked_sources()

def build(android):
    name='android' if android else 'desktop'
    if (ARTIFACTS/f'{name}.json').exists():raise RuntimeError('completed binary retained')
    cargo('build',[],android)
    source=TARGET/('aarch64-linux-android/release' if android else 'release')/'shieldd-phone-memory377'
    target=ARTIFACTS/name;shutil.copy2(source,target)
    record(ARTIFACTS/f'{name}.json',{'schema':'shieldd.phone_memory_binary.v1','target':name,'binary_sha256':digest(target),'sources_sha256':digest(ARTIFACTS/'sources.json'),'rust':'1.89.0','cargo_lock_sha256':digest(SOURCE/'Cargo.lock')})

def gate():
    checked_sources()
    binary=ARTIFACTS/'desktop';receipt=json.loads((ARTIFACTS/'desktop.json').read_text())
    if digest(binary)!=receipt['binary_sha256']:raise RuntimeError('binary changed')
    relation=CACHE/'comparator377-compile';key=CACHE/'b-comparator377-keys/subset.pk'
    go=CACHE/'a-comparator377-source/bin/provingexperiment';keys=CACHE/'a-comparator377-keys';child=CACHE/'b-owned-private-child';reference=CACHE/'b-comparator377-equivalence'
    out=CACHE/'phone-memory377-gate'
    if out.exists():raise RuntimeError('preserve gate')
    inputs=[binary,key,go,child,ARTIFACTS/'fixtures.json',relation/'metadata.json',relation/'transfer.r1cs',keys/'circuit_metadata.json',keys/'setup_provenance.json',*[reference/f'{r.scenario}.proof' for r in fixtures('B')]]
    record(ARTIFACTS/'gate-inputs.json',{'schema':'shieldd.phone_memory_gate_inputs.v1','files':{str(p):digest(p) for p in inputs}})
    subprocess.run([str(binary),'lifetime-gate',str(relation),str(key),str(go),str(keys),str(child),str(ARTIFACTS/'fixtures.json'),str(reference),str(out)],cwd=ROOT,env=environment(),check=True)
    for name,h in json.loads((ARTIFACTS/'gate-inputs.json').read_text())['files'].items():
        if digest(Path(name))!=h:raise RuntimeError('gate inputs changed')
    checked_sources()

def main():
    p=argparse.ArgumentParser();p.add_argument('stage',choices=['prepare','build-desktop','tests','owned-test','gate','build-android']);a=p.parse_args()
    if a.stage=='prepare':prepare()
    elif a.stage.startswith('build-'):build(a.stage=='build-android')
    elif a.stage=='tests':cargo('test',['--','--test-threads=2'])
    elif a.stage=='owned-test':cargo('test',['actual_child_admission_exact_proof_and_poisoned_failure','--','--ignored','--test-threads=1'])
    else:gate()

if __name__=='__main__':main()
