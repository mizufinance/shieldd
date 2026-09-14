from pathlib import Path
import sys,json,subprocess,signal,time
sys.path.insert(0,str(Path('tools/proving-experiment/phone').resolve()))
import run_controlled as r
s=sys.argv[1];out=r.CACHE/'phone-memory377-device';out.mkdir(exist_ok=False);status={'schema':'shieldd.phone_memory_run.v2','variant':'B lifetime candidate','stages':[]};active=None
try:
 state=r.power(s);status['preflight_power']=state
 if state['wakefulness']!='Awake':raise RuntimeError('phone not awake')
 r.shell(s,'settings','put','system','screen_off_timeout','1800000')
 assert r.power(s)['screen_timeout_ms']=='1800000'
 binary=r.CACHE/'phone-memory377-artifacts/android';receipt=json.loads(binary.with_suffix('.json').read_text());assert r.digest(binary)==receipt['binary_sha256']
 config=json.loads((r.OLD/'B.json').read_text());remote=r.REMOTE/'v2/bin/B-memory'
 config.update(schema='shieldd.phone_config.v2',guard_policy='stage-aware-v2',minimum_start_bytes=1792*1024**2,minimum_available_bytes=512*1024**2)
 config['command'][0]=str(remote);config['artifacts'][0]={'path':str(r.SUPERVISOR),'sha256':r.digest(r.CACHE/'phone-build-api33/supervisor-v2')};config['artifacts'][1]={'path':str(remote),'sha256':r.digest(binary)}
 r.record(out/'B.json',config);r.record(out/'binary.json',receipt)
 r.adb(s,'push',binary,remote,timeout=30);r.shell(s,'chmod','700',remote)
 assert r.shell(s,'sha256sum',remote).split()[0]==r.digest(binary)
 cfg=r.REMOTE/'v2/B-memory.json';r.adb(s,'push',out/'B.json',cfg)
 for mode in ['gate','measure']:
  if r.power(s)['wakefulness']!='Awake':raise RuntimeError('phone no longer awake')
  available=int(next(x.split()[1] for x in r.shell(s,'cat','/proc/meminfo').splitlines() if x.startswith('MemAvailable:')))*1024
  if available<config['minimum_start_bytes']:
   status['stages'].append({'mode':mode,'status':'skipped_preflight','available_bytes':available,'required_bytes':config['minimum_start_bytes']});break
  active=r.REMOTE/'v2/runs/B-memory'/mode;r.shell(s,'mkdir','-p',active.parent)
  start=time.perf_counter_ns()
  with (out/f'{mode}-stdout.jsonl').open('xb') as stdout,(out/f'{mode}-stderr.txt').open('xb') as stderr:
   p=subprocess.run([r.ADB,'-s',s,'shell','-T',str(r.SUPERVISOR),str(cfg),mode,str(active)],stdout=stdout,stderr=stderr,timeout=600)
  r.adb(s,'pull',active,out/mode,timeout=30)
  if p.returncode or not (out/mode/'complete.json').exists():raise RuntimeError(f'{mode} incomplete; see failure receipt')
  r.verify_stage(out/mode,out/'B.json');active=None
  status['stages'].append({'mode':mode,'status':'complete','available_bytes':available,'host_wall_ns':time.perf_counter_ns()-start});r.record(out/'status.json',status);print(mode+' complete',flush=True)
except BaseException as e:status['error']=str(e);raise
finally:
 if active:r.cleanup(s,active)
 r.restore(s,status);r.record(out/'status.json',status)
