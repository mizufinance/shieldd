"""Stage a hash-bound phone bundle and retain device-timed proof evidence."""
from dataclasses import asdict, dataclass
from pathlib import Path, PurePosixPath
import argparse
import hashlib
import json
import shutil
import subprocess
import sys
import time

HERE = Path(__file__).resolve().parent
SPIKE = HERE.parent
ROOT = SPIKE.parents[1]
CACHE = SPIKE/'cache'
BUILD = CACHE/'phone-build-api33'
BUNDLE = CACHE/'phone-bundle-api33'
REMOTE = PurePosixPath('/data/local/tmp/shieldd-phone-20260914')
sys.path.insert(0, str(SPIKE))
from selected_gate import fixtures

@dataclass(frozen=True)
class Artifact:
    path: str
    sha256: str

@dataclass(frozen=True)
class Scenario:
    name: str
    witness: Artifact
    statement: str

@dataclass(frozen=True)
class Config:
    schema: str
    backend: str
    worker_schema: str
    command: list[str]
    artifacts: list[Artifact]
    scenarios: list[Scenario]
    invalid: Artifact
    minimum_start_bytes: int
    minimum_available_bytes: int = 1024**3

def digest(path):
    with path.open('rb') as f:
        return hashlib.file_digest(f, 'sha256').hexdigest()

def record(path, data):
    path.write_text(json.dumps(data, indent=2)+'\n')

def stage(source, relative):
    target = BUNDLE/relative
    target.parent.mkdir(parents=True, exist_ok=True)
    h = digest(source)
    if target.exists():
        if digest(target) != h:
            raise RuntimeError(f'staged artifact changed: {target}')
    else:
        shutil.copy2(source, target)
    return Artifact(str(REMOTE/relative), h)

def bind_sources():
    paths = [CACHE/f'{name}/identity.json' for name in (
        'a-comparator377-source', 'b-comparator377-source', 'b-owned-source', 'c-prepared-key381-source')]
    bound = []
    for manifest in paths:
        files = json.loads(manifest.read_text())['files']
        count = 0
        for name, h in files.items():
            p = ROOT/Path(name)
            # The preserved desktop binary and setup artifacts have separate bundle identities.
            if p.suffix not in ('.rs', '.go', '.mod', '.sum', '.toml', '.lock', '.json'):
                continue
            if digest(p) != h:
                raise RuntimeError(f'frozen source changed: {p}')
            count += 1
        bound.append({'manifest': asdict(Artifact(str(manifest),digest(manifest))), 'checked_files': count})
    return bound

def prepare():
    if (BUNDLE/'complete.json').exists():
        raise RuntimeError('completed bundle retained; use deploy or run')
    bound = bind_sources()
    BUNDLE.mkdir(exist_ok=True)
    binaries = {name: stage(BUILD/name, 'bin/'+name) for name in ('A','B','C','private','supervisor')}
    a = [stage(CACHE/'a-comparator377-keys'/name,'keys/A/'+name) for name in (
        'circuit_metadata.json','proving_key.bin','verifying_key.bin','setup_provenance.json')]
    b = [stage(CACHE/'comparator377-compile'/name,'relation/'+name) for name in ('metadata.json','transfer.r1cs')]
    b.append(stage(CACHE/'b-comparator377-keys/subset.pk','keys/B/subset.pk'))
    c = stage(CACHE/'c-prepared-key381-conversion/native.prepared.pk','keys/C/native.prepared.pk')
    configs = []
    for name in ('A','C','B'):
        facts = fixtures('C' if name == 'C' else 'B')
        scenarios = []
        for fact in facts:
            witness = stage(fact.path, f'witnesses/{name}/{fact.scenario}.bin')
            if witness.sha256 != fact.sha256:
                raise RuntimeError('witness source hash changed')
            scenarios.append(Scenario(fact.scenario,witness,fact.statement))
        invalid_path = CACHE/'native-tuned-witnesses/invalid.witness' if name == 'C' else ROOT/'tools/gnark/internal/testfixtures/vectors/transfer_accumulator_over_limit_witness.bin'
        invalid = stage(invalid_path,f'witnesses/{name}/invalid.bin')
        common = [binaries['supervisor'],binaries[name]]
        if name == 'A':
            command = [binaries[name].path,'serve','A',str(REMOTE/'keys/A')]
            artifacts = common+a
        elif name == 'B':
            command = [binaries[name].path,'serve',str(REMOTE/'relation'),str(REMOTE/'keys/B/subset.pk'),binaries['A'].path,str(REMOTE/'keys/A'),binaries['private'].path]
            artifacts = common+b+[a[0],a[3],binaries['A'],binaries['private']]
        else:
            template = next(s.witness.path for s in scenarios if s.name == 'transfer')
            command = [binaries[name].path,'serve',c.path,template]
            artifacts = common+[c]
        schema = 'shieldd.proving_experiment.gnark_worker.v1' if name=='A' else f'shieldd.proving_experiment.selected_{name.lower()}.v1'
        config = Config('shieldd.phone_config.v1', name, schema, command, artifacts, scenarios,invalid,int({'A':1.7,'C':2.2,'B':3.5}[name]*1024**3))
        record(BUNDLE/f'{name}.json',asdict(config));configs.append(asdict(Artifact(f'{name}.json',digest(BUNDLE/f'{name}.json'))))
    builds = [json.loads((BUILD/f'{name}.json').read_text()) for name in binaries]
    record(BUNDLE/'complete.json',{'schema':'shieldd.phone_bundle.v1','remote':str(REMOTE),'sources':bound,'builds':builds,'configs':configs})

def adb(serial,*args,**kwargs):
    return subprocess.run(['/opt/homebrew/bin/adb','-s',serial,*map(str,args)],check=True,**kwargs)

def shell(serial,*args):
    return adb(serial,'shell',*args,capture_output=True,text=True).stdout

def deploy(serial):
    manifest=json.loads((BUNDLE/'complete.json').read_text())
    for a in manifest['configs']:
        if digest(BUNDLE/a['path'])!=a['sha256']:
            raise RuntimeError('config changed')
    adb(serial,'shell','mkdir','-p',REMOTE)
    adb(serial,'push','--sync',str(BUNDLE)+'/.',REMOTE)
    adb(serial,'shell','chmod','700',*[REMOTE/'bin'/n for n in ('A','B','C','private','supervisor')])
    # Verify all uploaded bytes before any benchmark process is started.
    for p in BUNDLE.rglob('*'):
        if not p.is_file():continue
        remote=REMOTE/p.relative_to(BUNDLE).as_posix()
        if shell(serial,'sha256sum',remote).split()[0]!=digest(p):
            raise RuntimeError(f'upload hash mismatch: {p}')
    record(CACHE/'phone-deployed.json',{'schema':'shieldd.phone_deployed.v1','serial':serial,'bundle_sha256':digest(BUNDLE/'complete.json'),'time_ns':time.time_ns()})

def stage_error(path, exit_code):
    failure = path/'failure.json'
    if failure.exists():
        return json.loads(failure.read_text())['error']
    if exit_code:
        return f'remote command exited {exit_code}'
    if not (path/'complete.json').exists():
        return 'remote command returned without a completion receipt'
    return None

def run(serial,backend,attempt):
    if not attempt.isalnum():raise RuntimeError('alphanumeric attempt label required')
    deployed=json.loads((CACHE/'phone-deployed.json').read_text())
    if deployed['serial']!=serial or deployed['bundle_sha256']!=digest(BUNDLE/'complete.json'):
        raise RuntimeError('deployment binding mismatch')
    config=json.loads((BUNDLE/f'{backend}.json').read_text())
    out=CACHE/f'phone-{backend}-{attempt}'
    out.mkdir()
    remote=REMOTE/'runs'/f'{backend}-{attempt}'
    metadata={'schema':'shieldd.phone_run.v1','serial':serial,'backend':backend,'config_sha256':digest(BUNDLE/f'{backend}.json'),'device_clock_excludes_adb':True}
    for label,args in [('properties',('getprop',)),('memory',('cat','/proc/meminfo')),('thermal',('dumpsys','thermalservice')),('battery',('dumpsys','battery')),('disk',('df','-h','/data/local/tmp'))]:
        (out/f'preflight-{label}.txt').write_text(shell(serial,*args))
    memory=(out/'preflight-memory.txt').read_text()
    available=int(next(line.split()[1] for line in memory.splitlines() if line.startswith('MemAvailable:')))*1024
    metadata.update(available_bytes=available,required_start_bytes=config['minimum_start_bytes'])
    if available<config['minimum_start_bytes']:
        metadata.update(status='skipped_preflight',reason='Conservative desktop-RSS-plus-headroom policy; no Android prover was started. This is not an observed Android OOM.')
        record(out/'status.json',metadata);print(json.dumps(metadata));return
    adb(serial,'shell','mkdir','-p',remote)
    for mode in ('gate','measure'):
        start=time.perf_counter_ns()
        with (out/f'{mode}-stdout.jsonl').open('xb') as log,(out/f'{mode}-stderr.txt').open('xb') as errors:
            process=subprocess.run(['/opt/homebrew/bin/adb','-s',serial,'shell','-T',str(REMOTE/'bin/supervisor'),str(REMOTE/f'{backend}.json'),mode,str(remote/mode)],stdout=log,stderr=errors)
        metadata[f'{mode}_host_transport_wall_ns']=time.perf_counter_ns()-start
        metadata[f'{mode}_exit_code']=process.returncode
        adb(serial,'pull',remote/mode,out/mode)
        failure=stage_error(out/mode,process.returncode)
        if failure:
            metadata.update(status='incomplete',failed_stage=mode,reason=failure);record(out/'status.json',metadata);raise RuntimeError(f'{backend}/{mode}: {failure}; preserved {out}')
        completion=json.loads((out/mode/'complete.json').read_text())
        if completion['config_sha256']!=metadata['config_sha256']:
            raise RuntimeError('completion binding mismatch')
        for a in completion['proofs']+[completion['samples'],completion['resources']]:
            local=out/mode/Path(a['path']).name
            if digest(local)!=a['sha256']:raise RuntimeError('retrieved evidence hash mismatch')
    metadata['status']='complete'
    record(out/'status.json',metadata)

def main():
    p=argparse.ArgumentParser();p.add_argument('stage',choices=['prepare','deploy','run']);p.add_argument('--serial');p.add_argument('--backend',choices=['A','B','C']);p.add_argument('--attempt',default='01');a=p.parse_args()
    if a.stage=='prepare':prepare()
    elif not a.serial:p.error('explicit --serial required')
    elif a.stage=='deploy':deploy(a.serial)
    elif not a.backend:p.error('--backend required')
    else:run(a.serial,a.backend,a.attempt)

if __name__=='__main__':main()
