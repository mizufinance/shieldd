"""Checked full-API comparison of compressed and prepared native proving-key storage."""
from contextlib import ExitStack
from dataclasses import dataclass, asdict
from pathlib import Path
import json, os, statistics, subprocess, sys, time
from api_gate import CACHE, ROOT, SPIKE, digest, record, require
from selected_workers import SelectedWorker
from selected_gate import fixtures
from desktop import Monitor, Sample, checked_sample
from native_api_gate import WITNESSES

@dataclass(frozen=True)
class Variant:
    name: str
    binary: Path
    key: Path

VARIANTS = (
    Variant('candidate', CACHE/'c-prepared-key381-source/worker', CACHE/'c-prepared-key381-conversion/native.prepared.pk'),
    Variant('control', CACHE/'c-parallel-ntt-source/worker', CACHE/'c-comparator34-full-gate/keys/native.pk'),
)

class SubsetWorker(SelectedWorker):
    def __init__(self, variant, on_start):
        self.backend = 'C'
        self.schema = 'shieldd.proving_experiment.selected_c.v1'
        args = [variant.binary,'serve',variant.key,WITNESSES/'transfer.witness']
        self.process = subprocess.Popen([str(p) for p in args],stdin=subprocess.PIPE,stdout=subprocess.PIPE)
        try:
            on_start(self.process.pid)
            self.ready = self.read()
            require(self.ready.header.op=='ready' and not self.ready.header.error,'worker initialization failed')
        except BaseException:
            self.close()
            raise

def identities(variants, scenarios):
    paths = [Path(__file__), CACHE/'c-prepared-key381-source/identity.json', CACHE/'c-prepared-key381-source/source.tar.gz', CACHE/'c-parallel-ntt-polynomial.json', CACHE/'c-prepared-key381-proof-gate/complete.json', SPIKE/'desktop.py', SPIKE/'selected_workers.py', SPIKE/'api_gate.py', SPIKE/'guard.py', SPIKE/'selected_gate.py', WITNESSES/'manifest.json', WITNESSES/'invalid.witness']
    paths += [f.path for f in scenarios]
    paths += [CACHE/'c-prepared-key381-conversion/complete.json', CACHE/'c-parallel-ntt-api-gate/complete.json']
    paths += sorted((CACHE/'c-parallel-ntt-api-gate/proofs').glob('*.bin'))
    paths += sorted((CACHE/'c-prepared-key381-proof-gate').glob('*.proof'))
    for variant in variants:
        paths += [variant.binary,variant.key]
    return [{'path':str(p),'sha256':digest(p.read_bytes())} for p in sorted(set(paths))]

@dataclass(frozen=True)
class CrossVerification:
    stage: str
    sample_id: str
    verifier: str
    proof_sha256: str
    verified: bool

def cross_verify(sample: Sample, workers, standard, out, log):
    other='control' if sample.candidate=='candidate' else 'candidate'
    proof=(out/'proofs'/(sample.sample_id.replace('/','-')+'.bin')).read_bytes()
    require(digest(proof)==sample.proof_sha256,'timing proof changed')
    checked=workers[other].call('verify',proof,standard.statement)
    require(not checked.header.error and checked.header.verified,'other storage worker rejected proof')
    record(log,asdict(CrossVerification('cross_verification',sample.sample_id,other,digest(proof),True)))

def validate_source_and_parity():
    source=CACHE/'c-prepared-key381-source'
    identity=json.loads((source/'identity.json').read_text())
    for name,h in identity['files'].items():require(digest((ROOT/name).read_bytes())==h,'prepared source changed: '+name)
    for name,h in identity['binaries'].items():require(digest((source/name).read_bytes())==h,'prepared binary/archive changed: '+name)
    converted=json.loads((CACHE/'c-prepared-key381-conversion/complete.json').read_text())
    require(converted['complete_key_equal'] and converted['original_canonical_bytes_equal'] and len(converted['rejections'])==8 and all(r['rejected'] for r in converted['rejections']),'incomplete prepared-key conversion gate')
    require(digest((CACHE/'c-prepared-key381-conversion/native.prepared.pk').read_bytes())==converted['prepared_key_sha256'],'prepared key changed')
    require(digest((CACHE/'c-comparator34-full-gate/keys/native.pk').read_bytes())==converted['source_key_sha256'],'source key changed')
    prior=CACHE/'c-parallel-ntt-api-gate'
    for name,h in json.loads((prior/'complete.json').read_text())['hashes'].items():require(digest((prior/name).read_bytes())==h,'prior API evidence changed')
    polynomial=json.loads((CACHE/'c-parallel-ntt-polynomial.json').read_text())
    require(polynomial['gates']==6 and polynomial['relation']=='722fba7093a6188bba83708f0abe409a39cf34fa4451b95594e82781b68f3783','incomplete polynomial gate')
    proofdir=CACHE/'c-prepared-key381-proof-gate'
    proof=json.loads((proofdir/'complete.json').read_text())
    require(proof['paired_proof_equality']==6 and proof['invalid_witness_rejected'] and len(proof['samples'])==12,'incomplete seeded proof gate')
    for fixture in fixtures('C'):
        left=(proofdir/f'{fixture.scenario}-current.proof').read_bytes()
        right=(proofdir/f'{fixture.scenario}-prepared_coset.proof').read_bytes()
        require(left==right and left,'seeded full proof mismatch')

def validate_gate():
    out=CACHE/'c-prepared-key381-api-gate'
    complete=json.loads((out/'complete.json').read_text())
    for name,h in complete['hashes'].items():require(digest((out/name).read_bytes())==h,'gate evidence changed')
    identity=json.loads((out/'identity.json').read_text())
    require(identity['files']==identities(VARIANTS[:1],fixtures('C')),'gate sources or artifacts changed')
    rows=[json.loads(line) for line in (out/'samples.jsonl').read_text().splitlines()]
    gates=[r for r in rows if r.get('stage')=='gate']
    require(len(gates)==6 and all(r['verified'] and r['negatives_rejected'] and r['wrong_domain_rejected'] and r['prior_proof_verified'] for r in gates),'incomplete subset gates')
    for r in gates:require(digest((out/'proofs'/f"{r['scenario']}.bin").read_bytes())==r['proof_sha256'],'gate proof changed')
    require(any(r.get('stage')=='invalid_witness' and r['rejected'] for r in rows),'missing invalid witness gate')

def main():
    require(len(sys.argv)==3 and sys.argv[1] in ('gate','measure'),'usage: prepared_key381_desktop.py gate|measure NEW_OUTPUT')
    mode=sys.argv[1];out=Path(sys.argv[2]).resolve()
    require(out.is_relative_to(CACHE) and not out.exists(),'new experiment cache required')
    require(all(os.environ.get(k)=='2' for k in ('CARGO_BUILD_JOBS','RAYON_NUM_THREADS','GOMAXPROCS')),'two workers required')
    validate_source_and_parity()
    variants=VARIANTS[:1] if mode=='gate' else VARIANTS
    if mode=='measure':validate_gate()
    out.mkdir();(out/'proofs').mkdir();scenarios=fixtures('C')
    identity={'schema':'shieldd.native_prepared_key381_desktop.v1','mode':mode,'workers':2,'warmups':3,'warm_samples':5,'fresh_process_samples':1,'files':identities(variants,scenarios)}
    (out/'identity.json').write_text(json.dumps(identity,indent=2)+'\n')
    samples=[];hashes=set();workers={}
    standard=next(f for f in scenarios if f.scenario=='transfer')
    with ExitStack() as stack,(out/'samples.jsonl').open('x') as log,Monitor(out/'memory.jsonl') as monitor:
        standard=next(f for f in scenarios if f.scenario=='transfer')
        for variant in variants:
            monitor.phase=f'first/{variant.name}';start=time.perf_counter_ns()
            worker=SubsetWorker(variant,lambda pid:monitor.roots.__setitem__(variant.name,pid))
            ready_ns=time.perf_counter_ns()-start
            stack.callback(worker.close);workers[variant.name]=worker
            record(log,{'stage':'initialization','candidate':variant.name,'wall_ns':ready_ns,'response':asdict(worker.ready.header)})
            if mode=='measure':samples.append(checked_sample(worker,variant.name,standard.path.read_bytes(),standard.statement,f'first/{variant.name}',True,monitor,out,log,hashes,start,ready_ns))
        if mode=='measure':
            for sample in samples:cross_verify(sample,workers,standard,out,log)
        if mode=='gate':
            worker=workers['candidate']
            for f in scenarios:
                payload=f.path.read_bytes();require(digest(payload)==f.sha256,'changed witness')
                proof=worker.call('prove',payload);require(not proof.header.error and proof.payload and proof.header.statement==f.statement,f'proving gate failed: {proof.header.error}')
                verified=worker.call('verify',proof.payload,f.statement);require(not verified.header.error and verified.header.verified,'valid proof rejected')
                prior=worker.call('verify',(CACHE/'c-parallel-ntt-api-gate/proofs'/f'{f.scenario}.bin').read_bytes(),f.statement)
                require(not prior.header.error and prior.header.verified,'prior compressed-key proof rejected')
                other=worker.call('verify_wrong_domain',proof.payload,f.statement);require(not other.header.error and not other.header.verified,'wrong domain accepted or audit failed')
                bad=bytearray(proof.payload);bad[90]^=1
                for value,statement in [(proof.payload[:-1],f.statement),(proof.payload+b'\0',f.statement),(bytes(bad),f.statement),(proof.payload,'00'*32)]:
                    result=worker.call('verify',value,statement);require(result.header.error or not result.header.verified,'negative proof accepted')
                h=digest(proof.payload);require(h not in hashes,'duplicate gate proof');hashes.add(h)
                (out/'proofs'/f'{f.scenario}.bin').write_bytes(proof.payload)
                record(log,{'stage':'gate','scenario':f.scenario,'proof_sha256':h,'verified':True,'negatives_rejected':True,'wrong_domain_rejected':True,'prior_proof_verified':True,'response':asdict(proof.header)})
                print(f'{f.scenario}: full API and domain/statement/encoding gates passed',flush=True)
            invalid=worker.call('prove',(WITNESSES/'invalid.witness').read_bytes())
            require(invalid.header.error and not invalid.payload,'invalid witness accepted');record(log,{'stage':'invalid_witness','rejected':True})
        else:
            for i in range(8):
                for label in (list(workers) if i%2==0 else list(reversed(workers))):
                    sample=checked_sample(workers[label],label,standard.path.read_bytes(),standard.statement,f'{"warmup" if i<3 else "warm"}/{i}/{label}',i>=3,monitor,out,log,hashes)
                    samples.append(sample)
                    cross_verify(sample,workers,standard,out,log)
    require(all(w.process.returncode==0 for w in workers.values()),'worker failed at shutdown')
    validate_source_and_parity()
    require(identity['files']==identities(variants,scenarios),'inputs changed during run')
    rows=[]
    for variant in variants:
        warm=[s for s in samples if s.candidate==variant.name and s.kind=='warm']
        first=[s for s in samples if s.candidate==variant.name and s.kind=='first']
        if warm:
            require(len(warm)==5 and len(first)==1,'incomplete matched cell')
            rows.append({'candidate':variant.name,'warm_values_s':[s.wall_ns/1e9 for s in warm],'median_s':statistics.median(s.wall_ns for s in warm)/1e9,'first_values_s':[s.wall_ns/1e9 for s in first],'first_median_s':statistics.median(s.wall_ns for s in first)/1e9,'peak_rss_bytes':max(s.peak_candidate_rss_bytes for s in warm),'proof_bytes':first[0].proof_bytes})
    result={'schema':identity['schema'],'mode':mode,'rows':rows,'proofs':len(hashes),'all_verified':True}
    (out/'results.json').write_text(json.dumps(result,indent=2)+'\n')
    (out/'complete.json').write_text(json.dumps({'schema':identity['schema'],'hashes':{p.relative_to(out).as_posix():digest(p.read_bytes()) for p in sorted(out.rglob('*')) if p.is_file()}},indent=2)+'\n')
    print(json.dumps(result),flush=True)

if __name__=='__main__':main()
