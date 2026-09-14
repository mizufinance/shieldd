"""Paired persistent arithmetic workers; includes checked scalar-file input and output transport."""
from contextlib import ExitStack
from dataclasses import dataclass, asdict
from pathlib import Path
import hashlib, json, os, statistics, subprocess, sys, time
from desktop import Monitor
from api_gate import CACHE, ROOT, SPIKE, require, record

@dataclass(frozen=True)
class Response:
    stage: str
    backend: str
    wall_ns: int
    kernel_ns: int
    point_hex: str
    rejected: bool
    error: str | None

@dataclass(frozen=True)
class Sample:
    backend: str
    block: int
    stage: str
    wall_ns: int
    peak_rss_bytes: int
    response: Response

class Worker:
    def __init__(self, binary, manifest):
        self.process=subprocess.Popen([str(binary),str(manifest)],stdin=subprocess.PIPE,stdout=subprocess.PIPE)
    def read(self):
        line=self.process.stdout.readline(1<<20)
        require(line.endswith(b'\n'),'worker failed or response oversized')
        return json.loads(line)
    def call(self, op):
        self.process.stdin.write((json.dumps({'op':op})+'\n').encode());self.process.stdin.flush()
        return Response(**self.read())
    def close(self):
        self.process.stdin.close()
        try:self.process.wait(timeout=10)
        except subprocess.TimeoutExpired:
            self.process.terminate();self.process.wait(timeout=5)

def check_identity(source):
    identity=json.loads((source/'identity.json').read_text())
    for name,h in identity['files'].items():require(hashlib.sha256((ROOT/name).read_bytes()).hexdigest()==h,'changed source: '+name)
    for name,h in identity['artifacts'].items():require(hashlib.sha256((source/name).read_bytes()).hexdigest()==h,'changed artifact: '+name)
    return identity

def main():
    require(len(sys.argv)==2,'new output path required')
    out=Path(sys.argv[1]).resolve();require(out.is_relative_to(CACHE) and not out.exists(),'preserve existing evidence')
    require(all(os.environ.get(k)=='2' for k in ['CARGO_BUILD_JOBS','RAYON_NUM_THREADS','GOMAXPROCS']),'two worker profile')
    source=CACHE/'gpu381-opening-source';identity=check_identity(source)
    gate=json.loads((CACHE/'gpu381-finite-small-gate/complete.json').read_text())
    require(len(gate['gates'])==8 and all(g['exact'] for g in gate['gates']),'small GPU gate incomplete')
    manifest=CACHE/'gnark381-operands/manifest.json'
    op=next(o for o in json.loads(manifest.read_text())['operations'] if o['name']=='opening_r')
    expected=Path(op['expected']['path']).read_bytes().hex()
    out.mkdir();workers={};samples=[]
    (out/'identity.json').write_text(json.dumps(identity,indent=2)+'\n')
    with ExitStack() as stack,(out/'samples.jsonl').open('x') as log,Monitor(out/'memory.jsonl') as monitor:
        for backend in ['native','gpu']:
            monitor.phase='initialization/'+backend;start=time.perf_counter_ns()
            worker=Worker(source/backend,manifest);stack.callback(worker.close);monitor.roots[backend]=worker.process.pid
            ready=worker.read();require(ready['stage']=='ready' and ready['backend']==backend,'worker readiness')
            record(log,{'stage':'initialization','backend':backend,'wall_ns':time.perf_counter_ns()-start,'worker':ready})
            workers[backend]=worker
        for backend,worker in workers.items():
            for name in ['invalid_scalar','wrong_count']:
                response=worker.call(name);require(response.rejected and response.error and not response.point_hex,'negative accepted')
                record(log,{'stage':'negative','backend':backend,'case':name,'response':asdict(response)})
        for block in range(-1,8):
            for backend in (['native','gpu'] if block%2==0 else ['gpu','native']):
                stage='gate' if block<0 else ('warmup' if block<3 else 'warm')
                phase=f'{stage}/{block}/{backend}';monitor.phase=phase;start=time.perf_counter_ns()
                response=workers[backend].call('msm');elapsed=time.perf_counter_ns()-start;monitor.phase='validation'
                require(response.stage=='msm' and not response.rejected and not response.error and response.point_hex==expected,'real opening mismatch')
                sample=Sample(backend,block,stage,elapsed,monitor.peak.get((phase,backend),0),response)
                samples.append(sample);record(log,asdict(sample))
                print(f'{phase}: {elapsed/1e9:.6f}s exact result',flush=True)
    require(all(w.process.returncode==0 for w in workers.values()),'worker exit failure')
    require(identity==check_identity(source),'identity changed during run')
    rows=[]
    for backend in ['native','gpu']:
        values=[s for s in samples if s.backend==backend and s.stage=='warm'];require(len(values)==5,'incomplete cell')
        rows.append({'backend':backend,'values_s':[s.wall_ns/1e9 for s in values],'median_s':statistics.median(s.wall_ns for s in values)/1e9,'peak_process_rss_bytes':max(s.peak_rss_bytes for s in values),'kernel_values_s':[s.response.kernel_ns/1e9 for s in values]})
    result={'schema':'shieldd.gpu381_arithmetic_comparison.v1','operation':'opening_r','points':op['count'],'rows':rows,'exact_outputs':len(samples),'limits':'Historical native Transfer operation, current Commonware PreparedG1Msm and separate unmodified GPU library with finite-base filtering. Each persistent request includes checked scalar-file reads/hashing/decoding, arithmetic, output checking/encoding and IPC. Initialization separate. GPU path includes current per-call serialization/GLV sorting/upload/readback; no persistent GPU bases yet. No complete proof or phone measurement.'}
    (out/'results.json').write_text(json.dumps(result,indent=2)+'\n')
    (out/'complete.json').write_text(json.dumps({'hashes':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(out.iterdir()) if p.is_file()}},indent=2)+'\n')
    print(json.dumps(result),flush=True)

if __name__=='__main__':main()
