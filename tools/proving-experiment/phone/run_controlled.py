"""Run A/C under guard policy v2 and restore the temporary screen timeout."""
from pathlib import Path, PurePosixPath
import argparse
import hashlib
import json
import signal
import subprocess
import time

HERE=Path(__file__).resolve().parent
CACHE=HERE.parent/'cache'
OLD=CACHE/'phone-bundle-api33'
OUT=CACHE/'phone-controlled-v2'
REMOTE=PurePosixPath('/data/local/tmp/shieldd-phone-20260914')
SUPERVISOR=REMOTE/'v2/bin/supervisor'
ADB='/opt/homebrew/bin/adb'

def digest(p):
    with p.open('rb') as f:return hashlib.file_digest(f,'sha256').hexdigest()
def record(p,r):p.write_text(json.dumps(r,indent=2)+'\n')
def adb(serial,*args,timeout=5):return subprocess.run([ADB,'-s',serial,*map(str,args)],check=True,capture_output=True,timeout=timeout)
def shell(serial,*args):return adb(serial,'shell',*args).stdout.decode().strip()

def restore(serial,status):
    try:
        shell(serial,'settings','put','system','screen_off_timeout','120000')
        value=shell(serial,'settings','get','system','screen_off_timeout')
        status['restored_timeout_ms']=value;status['timeout_restore_verified']=value=='120000'
        if value!='120000':raise RuntimeError('screen timeout restoration readback mismatch')
    except BaseException as e:status['timeout_restore_verified']=False;status['restore_error']=str(e)

def prepare():
    OUT.mkdir(exist_ok=False)
    binary=CACHE/'phone-build-api33/supervisor-v2'
    manifest={'schema':'shieldd.phone_controlled_bundle.v2','supervisor_sha256':digest(binary),'configs':[],'sources':[]}
    for backend,start in [('A',1152),('C',1408)]:
        c=json.loads((OLD/f'{backend}.json').read_text())
        c.update(schema='shieldd.phone_config.v2',guard_policy='stage-aware-v2',minimum_start_bytes=start*1024**2,minimum_available_bytes=512*1024**2)
        c['artifacts'][0]={'path':str(SUPERVISOR),'sha256':digest(binary)}
        if backend=='A':c['reuse_gate_config']={'path':str(REMOTE/'A.json'),'sha256':digest(OLD/'A.json')}
        record(OUT/f'{backend}.json',c)
        manifest['configs'].append({'backend':backend,'sha256':digest(OUT/f'{backend}.json')})
    for p in [*sorted(HERE.glob('*.go')),HERE/'go.mod',HERE/'run_controlled.py',HERE/'build.py']:
        manifest['sources'].append({'path':str(p),'sha256':digest(p)})
    record(OUT/'bundle.json',manifest)

def power(serial):
    raw=shell(serial,'dumpsys','power')
    wake=next((line.strip().split('=',1)[1] for line in raw.splitlines() if line.strip().startswith('mWakefulness=')),None)
    return {'wakefulness':wake,'screen_timeout_ms':shell(serial,'settings','get','system','screen_off_timeout')}

def verify_stage(path,config):
    result=json.loads((path/'complete.json').read_text())
    if result['config_sha256']!=digest(config):raise RuntimeError('completion configuration changed')
    for a in result['proofs']+[result['samples'],result['resources']]:
        if digest(path/Path(a['path']).name)!=a['sha256']:raise RuntimeError('retrieved evidence changed')
    return result

def cleanup(serial,remote):
    try:
        process=json.loads(shell(serial,'cat',remote/'process.json'));pid=int(process['supervisor_pid'])
        cmdline=adb(serial,'exec-out','cat',f'/proc/{pid}/cmdline',timeout=2).stdout.split(b'\0')
        if cmdline and cmdline[0].decode()==str(SUPERVISOR) and str(remote).encode() in cmdline:
            shell(serial,'kill','-TERM',str(pid))
    except BaseException:pass

def run(serial):
    manifest=json.loads((OUT/'bundle.json').read_text());status={'schema':'shieldd.phone_controlled_run.v2','guard_policy':'stage-aware-v2','stages':[]};active=None
    def interrupted(*_):raise KeyboardInterrupt('controlled phone run interrupted')
    signal.signal(signal.SIGTERM,interrupted);signal.signal(signal.SIGINT,interrupted)
    try:
        for src in manifest['sources']:
            if digest(Path(src['path']))!=src['sha256']:raise RuntimeError('frozen harness source changed')
        state=power(serial);status['preflight_power']=state
        if state['wakefulness']!='Awake' or state['screen_timeout_ms']!='1800000':raise RuntimeError('phone must be awake with authorized temporary timeout')
        adb(serial,'shell','mkdir','-p',REMOTE/'v2/bin')
        binary=CACHE/'phone-build-api33/supervisor-v2'
        if digest(binary)!=manifest['supervisor_sha256']:raise RuntimeError('supervisor binary changed')
        adb(serial,'push',binary,SUPERVISOR);shell(serial,'chmod','700',SUPERVISOR)
        if shell(serial,'sha256sum',SUPERVISOR).split()[0]!=digest(binary):raise RuntimeError('supervisor upload changed')
        for backend in ('A','C'):
            adb(serial,'push',OUT/f'{backend}.json',REMOTE/'v2'/f'{backend}.json')
        probe=REMOTE/'v2/resource-probe.json'
        adb(serial,'shell','-T',SUPERVISOR,'resource-probe',probe,timeout=10)
        adb(serial,'pull',probe,OUT/'resource-probe.json')
        if not json.loads((OUT/'resource-probe.json').read_text())['resource']['rss_complete']:raise RuntimeError('Android child-process resource probe failed')
        for backend,modes in [('A',('measure',)),('C',('gate','measure'))]:
            for mode in modes:
                local=OUT/backend/mode;local.parent.mkdir(exist_ok=True)
                if (local/'complete.json').exists():verify_stage(local,OUT/f'{backend}.json');continue
                state=power(serial)
                if state['wakefulness']!='Awake':raise RuntimeError('phone screen stopped being awake')
                memory=shell(serial,'cat','/proc/meminfo')
                available=int(next(line.split()[1] for line in memory.splitlines() if line.startswith('MemAvailable:')))*1024
                config=json.loads((OUT/f'{backend}.json').read_text())
                if available<config['minimum_start_bytes']:
                    status['stages'].append({'backend':backend,'mode':mode,'status':'skipped_preflight','available_bytes':available,'required_bytes':config['minimum_start_bytes']});break
                remote=REMOTE/'runs/A-02/measure-awake-v2' if backend=='A' else REMOTE/'v2/runs/C'/mode
                shell(serial,'mkdir','-p',remote.parent);active=remote
                start=time.perf_counter_ns()
                with (local.parent/f'{mode}-stdout.jsonl').open('xb') as stdout,(local.parent/f'{mode}-stderr.txt').open('xb') as stderr:
                    result=subprocess.run([ADB,'-s',serial,'shell','-T',str(SUPERVISOR),str(REMOTE/'v2'/f'{backend}.json'),mode,str(remote)],stdout=stdout,stderr=stderr)
                elapsed=time.perf_counter_ns()-start
                adb(serial,'pull',remote,local,timeout=15)
                if result.returncode or not (local/'complete.json').exists():
                    failure=json.loads((local/'failure.json').read_text()) if (local/'failure.json').exists() else {'error':'missing completion receipt'}
                    status['stages'].append({'backend':backend,'mode':mode,'status':'incomplete','failure':failure,'host_wall_ns':elapsed});raise RuntimeError(f'{backend}/{mode}: {failure}')
                verify_stage(local,OUT/f'{backend}.json');active=None
                status['stages'].append({'backend':backend,'mode':mode,'status':'complete','host_wall_ns':elapsed,'preflight_available_bytes':available})
                record(OUT/'status.json',status)
                print(f'{backend}/{mode}: complete and evidence checked',flush=True)
        status['run_finished']=True
    except BaseException as e:
        status['error']=f'{type(e).__name__}: {e}';raise
    finally:
        if active is not None:cleanup(serial,active)
        restore(serial,status);record(OUT/'status.json',status)
        if not status.get('timeout_restore_verified'):print('Screen timeout restoration NOT verified; reconnect/check device.',flush=True)

def main():
    p=argparse.ArgumentParser();p.add_argument('stage',choices=['prepare','run']);p.add_argument('--serial');a=p.parse_args()
    if a.stage=='prepare':prepare()
    elif not a.serial:p.error('explicit --serial required')
    else:run(a.serial)

if __name__=='__main__':main()
