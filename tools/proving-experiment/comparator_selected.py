"""Bounded full-API gates and matched A/B/C comparison for the comparator candidates."""
from contextlib import ExitStack
from dataclasses import dataclass, asdict
from pathlib import Path
import json, os, platform, statistics, subprocess, sys, time
from api_gate import CACHE, ROOT, SPIKE, GO_SCHEMA, Worker, digest, record, require
from selected_workers import SelectedWorker
from selected_gate import fixtures
from native_api_gate import WITNESSES
from desktop import Monitor, checked_sample
import comparator34_desktop as native_gate
import gnark_subset_desktop as old_a

CIRCUIT='94a894fdd2ae5cc993d7e96a4fb3e1c0461745be6da73d1d11acbc6443717d79'
@dataclass(frozen=True)
class Variant:
    name: str
    binary: Path
    arguments: tuple[str,...]
    artifacts: tuple[Path,...]

A_DIR=CACHE/'a-comparator377-keys'
A_BINARY=CACHE/'a-comparator377-source/bin/provingexperiment'
B_DIR=CACHE/'b-comparator377-keys'
B_BINARY=CACHE/'b-comparator377-source/worker'
B_CHILD=CACHE/'b-owned-private-child'
RELATION=CACHE/'comparator377-compile'
VARIANTS=(
    Variant('A',A_BINARY,('serve','A',str(A_DIR)),(A_DIR,)),
    Variant('B',B_BINARY,('serve',str(RELATION),str(B_DIR/'subset.pk'),str(A_BINARY),str(A_DIR),str(B_CHILD)),(B_DIR/'subset.pk',B_CHILD,RELATION/'metadata.json',RELATION/'transfer.r1cs')),
    Variant('C',CACHE/'c-comparator34-source/worker',('serve',str(CACHE/'c-comparator34-full-gate/keys/native.pk'),str(WITNESSES/'transfer.witness')),(CACHE/'c-comparator34-full-gate/keys/native.pk',WITNESSES/'manifest.json')),
)

class Candidate(SelectedWorker):
    def __init__(self, variant, on_start):
        self.backend=variant.name
        self.schema=GO_SCHEMA if self.backend=='A' else f'shieldd.proving_experiment.selected_{self.backend.lower()}.v1'
        self.process=subprocess.Popen([str(variant.binary),*variant.arguments],stdin=subprocess.PIPE,stdout=subprocess.PIPE)
        try:
            on_start(self.process.pid);self.ready=self.read()
            require(self.ready.header.op=='ready' and not self.ready.header.error,'candidate initialization failed')
            if self.backend=='A':require(self.ready.header.circuit_sha256==CIRCUIT,'wrong Groth16 relation')
        except BaseException:
            self.close();raise
    def read(self):
        return Worker.read(self) if self.backend=='A' else SelectedWorker.read(self)

def identities():
    paths=[Path(__file__),Path(native_gate.__file__),Path(old_a.__file__),SPIKE/'selected_workers.py',SPIKE/'api_gate.py',SPIKE/'desktop.py',SPIKE/'selected_gate.py',SPIKE/'guard.py',CACHE/'a-comparator377-source/identity.json',CACHE/'b-comparator377-source/identity.json',CACHE/'c-comparator34-source/identity.json']
    for v in VARIANTS:
        paths.append(v.binary)
        for p in v.artifacts:
            if p.is_dir():paths.extend(q for q in p.iterdir() if q.is_file())
            else:paths.append(p)
    for backend in ['B','C']:paths.extend(f.path for f in fixtures(backend))
    paths += [WITNESSES/'invalid.witness',ROOT/'tools/gnark/internal/testfixtures/vectors/transfer_accumulator_over_limit_witness.bin',CACHE/'a-subset-full-source/bin/provingexperiment']
    paths += list(p for p in (CACHE/'a-subset-keys').iterdir() if p.is_file())
    return [{'path':str(p),'sha256':digest(p.read_bytes())} for p in sorted(set(paths))]

def check_equivalence():
    directory=CACHE/'b-comparator377-equivalence'
    expected=[B_BINARY,B_DIR/'subset.pk',B_CHILD,RELATION/'metadata.json',RELATION/'transfer.r1cs']
    binding=json.loads((directory/'inputs.json').read_text())
    require(binding['files']=={str(p):digest(p.read_bytes()) for p in expected},'equivalence input identity changed')
    rows=json.loads((directory/'records.json').read_text())
    require(len(rows)==6 and {r['scenario'] for r in rows}=={f.scenario for f in fixtures('B')},'missing B equivalence scenarios')
    for r in rows:
        require(r['verified'] and r['exact_seeded_proof_equal'] and r['exact_mask_and_combined_msms_equal'],'B proof/MSM mismatch')
        require(digest((directory/f"{r['scenario']}.proof").read_bytes())==r['proof_sha256'],'B equivalence evidence changed')

def check_gates():
    native_gate.validate_gate();check_equivalence()
    directory=CACHE/'comparator-ab-api-gate'
    complete=json.loads((directory/'complete.json').read_text())
    for name,h in complete['hashes'].items():require(digest((directory/name).read_bytes())==h,'API gate evidence changed')
    identity=json.loads((directory/'identity.json').read_text())
    require(identity['files']==identities(),'API gate artifacts changed')
    rows=[json.loads(l) for l in (directory/'samples.jsonl').read_text().splitlines()]
    gates=[r for r in rows if r.get('stage')=='gate']
    for name in ['A','B']:
        selected=[r for r in gates if r['candidate']==name]
        require(len(selected)==6 and len({r['scenario'] for r in selected})==6 and all(r['verified'] and r['negatives_rejected'] for r in selected),'incomplete API gates')
        require(any(r.get('stage')=='invalid_witness' and r['candidate']==name and r['rejected'] for r in rows),'missing invalid-witness gate')

def main():
    require(len(sys.argv)==3 and sys.argv[1] in ('gate','measure'),'usage: comparator_selected.py gate|measure NEW_OUTPUT')
    mode=sys.argv[1];out=Path(sys.argv[2]).resolve()
    require(out.is_relative_to(CACHE) and not out.exists(),'new cache required')
    require(all(os.environ.get(k)=='2' for k in ('CARGO_BUILD_JOBS','RAYON_NUM_THREADS','GOMAXPROCS')),'two workers required')
    if mode=='measure':check_gates()
    else:check_equivalence()
    variants=VARIANTS[:2] if mode=='gate' else VARIANTS
    files=identities();out.mkdir();(out/'proofs').mkdir()
    identity={'schema':'shieldd.comparator_selected.v1','mode':mode,'workers':2,'warmups':3,'warm_samples':5,'first_samples':1,'platform':platform.platform(),'cpu':subprocess.check_output(['sysctl','-n','machdep.cpu.brand_string'],text=True).strip(),'files':files}
    (out/'identity.json').write_text(json.dumps(identity,indent=2)+'\n')
    samples=[];workers={};hashes=set()
    standard={v.name:next(f for f in fixtures('C' if v.name=='C' else 'B') if f.scenario=='transfer') for v in variants}
    with ExitStack() as stack,(out/'samples.jsonl').open('x') as log,Monitor(out/'memory.jsonl') as monitor:
        for v in variants:
            monitor.phase=f'first/{v.name}';start=time.perf_counter_ns()
            worker=Candidate(v,lambda pid,name=v.name:monitor.roots.__setitem__(name,pid));ready=time.perf_counter_ns()-start
            workers[v.name]=worker;stack.callback(worker.close)
            record(log,{'stage':'initialization','candidate':v.name,'wall_ns':ready,'response':asdict(worker.ready.header)})
            if mode=='measure':
                f=standard[v.name];samples.append(checked_sample(worker,v.name,f.path.read_bytes(),f.statement,f'first/{v.name}',True,monitor,out,log,hashes,start,ready))
        if mode=='gate':
            with ExitStack() as extra:
                old=old_a.SubsetWorker(old_a.Variant('old',CACHE/'a-subset-full-source/bin/provingexperiment',CACHE/'a-subset-keys'),lambda pid:monitor.roots.__setitem__('oldA',pid));extra.callback(old.close)
                for name in ['A','B']:
                    w=workers[name]
                    for f in fixtures('B'):
                        payload=f.path.read_bytes();require(digest(payload)==f.sha256,'witness changed')
                        proof=w.call('prove',payload);require(not proof.header.error and proof.payload and proof.header.statement==f.statement,'valid API request failed')
                        result=w.call('verify',proof.payload,f.statement);require(not result.header.error and result.header.verified,'API proof rejected')
                        changed=bytearray(proof.payload);changed[50]^=1
                        for raw,statement in [(proof.payload[:-1],f.statement),(proof.payload+b'\0',f.statement),(bytes(changed),f.statement),(proof.payload,'00'*32)]:
                            bad=w.call('verify',raw,statement);require(bad.header.error or not bad.header.verified,'invalid proof/statement accepted')
                        if name=='A':bad=old.call('verify',proof.payload,f.statement)
                        else:bad=w.call('verify_wrong_domain',proof.payload,f.statement)
                        require(bad.header.error or not bad.header.verified,'wrong key/domain accepted')
                        h=digest(proof.payload);require(h not in hashes,'duplicate API proof');hashes.add(h)
                        (out/'proofs'/f'{name}-{f.scenario}.bin').write_bytes(proof.payload)
                        record(log,{'stage':'gate','candidate':name,'scenario':f.scenario,'verified':True,'negatives_rejected':True,'wrong_key_or_domain_rejected':True,'proof_sha256':h,'response':asdict(proof.header)})
                        print(f'{name}/{f.scenario}: checked full API gate passed',flush=True)
                    bad=w.call('prove',(ROOT/'tools/gnark/internal/testfixtures/vectors/transfer_accumulator_over_limit_witness.bin').read_bytes())
                    require(bad.header.error and not bad.payload,'invalid witness accepted');record(log,{'stage':'invalid_witness','candidate':name,'rejected':True})
            require(old.process.returncode==0,'old-key verifier shutdown failed')
        else:
            orders=[('A','B','C'),('B','C','A'),('C','A','B'),('C','B','A'),('B','A','C'),('A','C','B')]
            for block in range(8):
                for name in orders[block%len(orders)]:
                    f=standard[name];samples.append(checked_sample(workers[name],name,f.path.read_bytes(),f.statement,f'{"warmup" if block<3 else "warm"}/{block}/{name}',block>=3,monitor,out,log,hashes))
                print(f'block{block}: A/B/C proofs verified',flush=True)
    require(all(w.process.returncode==0 for w in workers.values()),'worker shutdown failed')
    require(files==identities(),'artifacts changed during run')
    rows=[]
    for v in variants:
        warm=[s for s in samples if s.candidate==v.name and s.kind=='warm'];first=[s for s in samples if s.candidate==v.name and s.kind=='first']
        if mode=='measure':
            require(len(warm)==5 and len(first)==1,'incomplete bounded matrix')
            rows.append({'candidate':v.name,'warm_values_s':[s.wall_ns/1e9 for s in warm],'median_s':statistics.median(s.wall_ns for s in warm)/1e9,'first_s':first[0].wall_ns/1e9,'warm_peak_rss_bytes':max(s.peak_candidate_rss_bytes for s in warm),'proof_bytes':warm[0].proof_bytes})
    result={'schema':identity['schema'],'mode':mode,'rows':rows,'distinct_proofs':len(hashes),'all_verified':True}
    (out/'results.json').write_text(json.dumps(result,indent=2)+'\n')
    (out/'complete.json').write_text(json.dumps({'schema':identity['schema'],'hashes':{p.relative_to(out).as_posix():digest(p.read_bytes()) for p in sorted(out.rglob('*')) if p.is_file()}},indent=2)+'\n')
    print(json.dumps(result),flush=True)

if __name__=='__main__':main()
