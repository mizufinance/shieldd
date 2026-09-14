"""Bounded native full-API lifetime diagnostic; preserves completed matrices."""
from contextlib import ExitStack
from dataclasses import asdict
from pathlib import Path
import json, os, statistics, subprocess, sys, time
from api_gate import CACHE, SPIKE, digest, record, require
from selected_workers import SelectedWorker
from selected_gate import fixtures
from native_api_gate import WITNESSES
from desktop import Monitor, checked_sample

KEY = CACHE / 'native-affine-full-gate/keys/native.pk'

class NativeWorker(SelectedWorker):
    def __init__(self, binary, stderr, on_start):
        self.backend = 'C'
        self.schema = 'shieldd.proving_experiment.selected_c.v1'
        self.process = subprocess.Popen([str(binary), 'serve', str(KEY), str(WITNESSES/'transfer.witness')], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=stderr)
        try:
            on_start(self.process.pid)
            self.ready = self.read()
            require(self.ready.header.op == 'ready' and not self.ready.header.error, 'initialization failed')
        except BaseException:
            self.close()
            raise

def main():
    require(len(sys.argv) in (4, 5), 'usage: lifetime_cost.py trace|gate|measure NEW_OUTPUT BINARY [CONTROL]')
    mode, destination = sys.argv[1:3]
    require(mode in ('trace', 'gate', 'measure'), 'unknown diagnostic')
    binaries = [Path(p).resolve() for p in sys.argv[3:]]
    require(len(binaries) == (2 if mode == 'measure' else 1), 'wrong variant count')
    require(all(os.environ.get(k) == '2' for k in ('CARGO_BUILD_JOBS','RAYON_NUM_THREADS','GOMAXPROCS')), 'two workers required')
    out = Path(destination).resolve()
    require(out.is_relative_to(CACHE) and not out.exists(), 'new experiment cache required')
    out.mkdir(); (out/'proofs').mkdir()
    scenarios = fixtures('C')
    paths = binaries + [KEY, Path(__file__), SPIKE/'desktop.py', SPIKE/'selected_workers.py', SPIKE/'api_gate.py', SPIKE/'guard.py', WITNESSES/'manifest.json', WITNESSES/'invalid.witness'] + [f.path for f in scenarios]
    identity = {'schema':'shieldd.native_lifetime.v1','mode':mode,'workers':2,'files':[{'path':str(p),'sha256':digest(p.read_bytes())} for p in sorted(set(paths))]}
    (out/'identity.json').write_text(json.dumps(identity,indent=2)+'\n')
    samples=[]; hashes=set(); workers={}
    with ExitStack() as stack, (out/'samples.jsonl').open('x') as log, Monitor(out/'memory.jsonl') as monitor:
        for label,binary in zip(('candidate','control'),binaries):
            stderr=stack.enter_context((out/f'{label}-allocation.jsonl').open('x'))
            monitor.phase=f'initialize/{label}'
            start=time.perf_counter_ns()
            worker=NativeWorker(binary,stderr,lambda pid:monitor.roots.__setitem__(label,pid))
            stack.callback(worker.close); workers[label]=worker
            record(log,{'stage':'initialization','candidate':label,'wall_ns':time.perf_counter_ns()-start,'response':asdict(worker.ready.header)})
        if mode == 'gate':
            worker=workers['candidate']
            for f in scenarios:
                payload=f.path.read_bytes();require(digest(payload)==f.sha256,'changed witness')
                proof=worker.call('prove',payload)
                require(not proof.header.error and proof.payload and proof.header.statement==f.statement,'gate proof failed')
                valid=worker.call('verify',proof.payload,f.statement)
                require(not valid.header.error and valid.header.verified,'gate proof rejected')
                bad=bytearray(proof.payload);bad[90]^=1
                for value,statement in [(proof.payload[:-1],f.statement),(proof.payload+b'\0',f.statement),(bytes(bad),f.statement),(proof.payload,'00'*32)]:
                    result=worker.call('verify',value,statement)
                    require(result.header.error or not result.header.verified,'negative proof accepted')
                h=digest(proof.payload);require(h not in hashes,'duplicate gate proof');hashes.add(h)
                (out/'proofs'/f'{f.scenario}.bin').write_bytes(proof.payload)
                record(log,{'stage':'gate','scenario':f.scenario,'proof_sha256':h,'verified':True,'negatives_rejected':True})
            invalid=worker.call('prove',(WITNESSES/'invalid.witness').read_bytes())
            require(invalid.header.error and not invalid.payload,'invalid witness accepted')
            record(log,{'stage':'invalid_witness','rejected':True})
        else:
            standard=next(f for f in scenarios if f.scenario=='transfer')
            payload=standard.path.read_bytes();require(digest(payload)==standard.sha256,'changed witness')
            for i in range(2 if mode=='trace' else 8):
                order=list(workers) if i%2==0 else list(reversed(workers))
                for label in order:
                    samples.append(checked_sample(workers[label],label,payload,standard.statement,f'{"trace" if mode=="trace" else "warmup" if i<3 else "warm"}/{i}/{label}',mode=='measure' and i>=3,monitor,out,log,hashes))
    require(all(w.process.returncode==0 for w in workers.values()),'worker failed')
    rows=[]
    for label in workers:
        warm=[s for s in samples if s.candidate==label and s.measured]
        if warm: rows.append({'candidate':label,'warm_values_s':[s.wall_ns/1e9 for s in warm],'median_s':statistics.median(s.wall_ns for s in warm)/1e9,'peak_rss_bytes':max(s.peak_candidate_rss_bytes for s in warm)})
    (out/'results.json').write_text(json.dumps({'mode':mode,'rows':rows,'all_verified':True,'proofs':len(hashes)},indent=2)+'\n')
    (out/'complete.json').write_text(json.dumps({'schema':identity['schema'],'hashes':{p.name:digest(p.read_bytes()) for p in sorted(out.iterdir()) if p.is_file()}},indent=2)+'\n')
    print(json.dumps({'mode':mode,'rows':rows,'all_verified':True,'proofs':len(hashes)}),flush=True)

if __name__=='__main__': main()
