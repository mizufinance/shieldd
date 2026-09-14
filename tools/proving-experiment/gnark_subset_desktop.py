"""Checked full-API gnark subset gate and targeted comparison with frozen optimized A."""
from contextlib import ExitStack
from dataclasses import dataclass, asdict
from pathlib import Path
import json, os, statistics, subprocess, sys, time
from api_gate import CACHE, ROOT, SPIKE, GO_SCHEMA, Worker, digest, record, require
from selected_workers import SelectedWorker
from selected_gate import fixtures
from desktop import Monitor, checked_sample

@dataclass(frozen=True)
class Variant:
    name: str
    binary: Path
    artifacts: Path

VARIANTS = (
    Variant('candidate', CACHE/'a-subset-full-source/bin/provingexperiment', CACHE/'a-subset-keys'),
    Variant('control', CACHE/'optimized-circuit-source/A', CACHE/'selected-dh-a-keys'),
)

class SubsetWorker(SelectedWorker):
    def __init__(self, variant, on_start):
        self.backend = 'A'
        self.schema = GO_SCHEMA
        args = [variant.binary,'serve','A',variant.artifacts]
        self.process = subprocess.Popen([str(p) for p in args],stdin=subprocess.PIPE,stdout=subprocess.PIPE)
        try:
            on_start(self.process.pid)
            self.ready = self.read()
            require(self.ready.header.op=='ready' and not self.ready.header.error,'worker initialization failed')
            require(self.ready.header.circuit_sha256=='cc0dc2091c86777dfd21128b974d1a51f959ce0599211d90a022e5c3d9e27bde','wrong Transfer circuit')
        except BaseException:
            self.close()
            raise

    def read(self):
        return Worker.read(self)

def identities(variants, scenarios):
    paths = [Path(__file__), SPIKE/'desktop.py', SPIKE/'selected_workers.py', SPIKE/'api_gate.py', SPIKE/'guard.py', SPIKE/'selected_gate.py']
    paths += [f.path for f in scenarios] + [ROOT/'tools/gnark/internal/testfixtures/vectors/transfer_accumulator_over_limit_witness.bin']
    for variant in variants:
        paths.append(variant.binary)
        paths += [p for p in variant.artifacts.iterdir() if p.is_file()]
    return [{'path':str(p),'sha256':digest(p.read_bytes())} for p in sorted(set(paths))]

def validate_gate():
    out=CACHE/'a-subset-api-gate'
    complete=json.loads((out/'complete.json').read_text())
    for name,h in complete['hashes'].items():require(digest((out/name).read_bytes())==h,'gate evidence changed')
    identity=json.loads((out/'identity.json').read_text())
    require(identity['files']==identities(VARIANTS,fixtures('B')),'gate sources or artifacts changed')
    rows=[json.loads(line) for line in (out/'samples.jsonl').read_text().splitlines()]
    gates=[r for r in rows if r.get('stage')=='gate']
    require(len(gates)==6 and all(r['verified'] and r['negatives_rejected'] and r['wrong_key_rejected'] for r in gates),'incomplete subset gates')
    for r in gates:require(digest((out/'proofs'/f"{r['scenario']}.bin").read_bytes())==r['proof_sha256'],'gate proof changed')
    require(any(r.get('stage')=='invalid_witness' and r['rejected'] for r in rows),'missing invalid witness gate')

def main():
    require(len(sys.argv)==3 and sys.argv[1] in ('gate','measure'),'usage: gnark_subset_desktop.py gate|measure NEW_OUTPUT')
    mode=sys.argv[1];out=Path(sys.argv[2]).resolve()
    require(out.is_relative_to(CACHE) and not out.exists(),'new experiment cache required')
    require(all(os.environ.get(k)=='2' for k in ('CARGO_BUILD_JOBS','RAYON_NUM_THREADS','GOMAXPROCS')),'two workers required')
    variants=VARIANTS
    if mode=='measure':validate_gate()
    out.mkdir();(out/'proofs').mkdir();scenarios=fixtures('B')
    identity={'schema':'shieldd.gnark_subset_desktop.v1','mode':mode,'workers':2,'files':identities(variants,scenarios)}
    (out/'identity.json').write_text(json.dumps(identity,indent=2)+'\n')
    samples=[];hashes=set();workers={}
    standard=next(f for f in scenarios if f.scenario=='transfer')
    with ExitStack() as stack,(out/'samples.jsonl').open('x') as log,Monitor(out/'memory.jsonl') as monitor:
        for variant in variants:
            monitor.phase=f'first/{variant.name}';start=time.perf_counter_ns()
            worker=SubsetWorker(variant,lambda pid:monitor.roots.__setitem__(variant.name,pid))
            ready_ns=time.perf_counter_ns()-start
            stack.callback(worker.close);workers[variant.name]=worker
            record(log,{'stage':'initialization','candidate':variant.name,'wall_ns':ready_ns,'response':asdict(worker.ready.header)})
            if mode=='measure':samples.append(checked_sample(worker,variant.name,standard.path.read_bytes(),standard.statement,f'first/{variant.name}',True,monitor,out,log,hashes,start,ready_ns))
        if mode=='gate':
            worker=workers['candidate']
            for f in scenarios:
                payload=f.path.read_bytes();require(digest(payload)==f.sha256,'changed witness')
                proof=worker.call('prove',payload);require(not proof.header.error and proof.payload and proof.header.statement==f.statement,f'proving gate failed: {proof.header.error}')
                verified=worker.call('verify',proof.payload,f.statement);require(not verified.header.error and verified.header.verified,'valid proof rejected')
                other=workers['control'].call('verify',proof.payload,f.statement);require(other.header.error or not other.header.verified,'wrong key accepted')
                bad=bytearray(proof.payload);bad[50]^=1
                for value,statement in [(proof.payload[:-1],f.statement),(proof.payload+b'\0',f.statement),(bytes(bad),f.statement),(proof.payload,'00'*32)]:
                    result=worker.call('verify',value,statement);require(result.header.error or not result.header.verified,'negative proof accepted')
                h=digest(proof.payload);require(h not in hashes,'duplicate gate proof');hashes.add(h)
                (out/'proofs'/f'{f.scenario}.bin').write_bytes(proof.payload)
                record(log,{'stage':'gate','scenario':f.scenario,'proof_sha256':h,'verified':True,'negatives_rejected':True,'wrong_key_rejected':True,'response':asdict(proof.header)})
                print(f'{f.scenario}: full API and key/statement/encoding gates passed',flush=True)
            invalid=worker.call('prove',(ROOT/'tools/gnark/internal/testfixtures/vectors/transfer_accumulator_over_limit_witness.bin').read_bytes())
            require(invalid.header.error and not invalid.payload,'invalid witness accepted');record(log,{'stage':'invalid_witness','rejected':True})
        else:
            for i in range(8):
                for label in (list(workers) if i%2==0 else list(reversed(workers))):
                    samples.append(checked_sample(workers[label],label,standard.path.read_bytes(),standard.statement,f'{"warmup" if i<3 else "warm"}/{i}/{label}',i>=3,monitor,out,log,hashes))
    require(all(w.process.returncode==0 for w in workers.values()),'worker failed at shutdown')
    rows=[]
    for variant in variants:
        warm=[s for s in samples if s.candidate==variant.name and s.kind=='warm']
        first=[s for s in samples if s.candidate==variant.name and s.kind=='first']
        if warm:
            require(len(warm)==5 and len(first)==1,'incomplete matched cell')
            rows.append({'candidate':variant.name,'warm_values_s':[s.wall_ns/1e9 for s in warm],'median_s':statistics.median(s.wall_ns for s in warm)/1e9,'first_s':first[0].wall_ns/1e9,'peak_rss_bytes':max(s.peak_candidate_rss_bytes for s in warm),'proof_bytes':first[0].proof_bytes})
    result={'schema':identity['schema'],'mode':mode,'rows':rows,'proofs':len(hashes),'all_verified':True}
    (out/'results.json').write_text(json.dumps(result,indent=2)+'\n')
    (out/'complete.json').write_text(json.dumps({'schema':identity['schema'],'hashes':{p.name:digest(p.read_bytes()) for p in sorted(out.iterdir()) if p.is_file()}},indent=2)+'\n')
    print(json.dumps(result),flush=True)

if __name__=='__main__':main()
