"""Six-scenario proof admission and matched complete-request proving comparison."""
from pathlib import Path
from dataclasses import dataclass,asdict
from contextlib import ExitStack
import json,os,statistics,subprocess,sys,time
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
sys.path.insert(0,str(ROOT))
from api_gate import digest,record,require
from selected_workers import SelectedWorker
from selected_gate import fixtures
from desktop import Monitor,checked_sample
CACHE=ROOT/'cache'

@dataclass(frozen=True)
class Variant:
    name:str
    binary:Path
    key:Path

CONTROL=Variant('control',CACHE/'c-prepared-key381-source/worker',CACHE/'c-prepared-key381-conversion/native.prepared.pk')
CANDIDATE=Variant('outlined',ROOT/'native/target/release/examples/outlined_worker',CACHE/'native-outlined-keys/native.prepared.pk')

class Process(SelectedWorker):
    def __enter__(self):return self
    def __exit__(self,*_):self.close()
    def __init__(self,variant,on_start):
        self.backend='C';self.schema='shieldd.proving_experiment.selected_c.v1'
        self.process=subprocess.Popen(list(map(str,[variant.binary,'serve',variant.key,CACHE/'native-tuned-witnesses/transfer.witness'])),stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
        try:
            on_start(self.process.pid);self.ready=self.read()
            require(self.ready.header.op=='ready' and not self.ready.header.error,'worker initialization rejected')
        except BaseException:
            self.close();raise

@dataclass
class Gate:
    scenario:str
    witness_sha256:str
    statement:str
    proof_sha256:str
    verified:bool
    rejected:list[str]


def main():
    require(len(sys.argv)==3 and sys.argv[1] in ('gate','measure'),'desktop.py gate|measure NEW_OUTPUT')
    mode=sys.argv[1];out=Path(sys.argv[2]);require(not out.exists(),'preserve existing output')
    require(all(os.environ.get(k)=='2' for k in ['CARGO_BUILD_JOBS','RAYON_NUM_THREADS','GOMAXPROCS']),'two-worker proving profile required')
    relation=json.loads((CACHE/'native-outlined-relations.json').read_text());require(len(relation)==6 and all(r['exact_rewrite_and_assignment_checks'] and r['public_rows']==2 for r in relation),'relation gate incomplete')
    if mode=='measure':
        gate=CACHE/'native-outlined-api-gate'
        prior=json.loads((gate/'complete.json').read_text())
        require(len(prior['gate'])==6 and all(x['verified'] for x in prior['gate']),'real-proof gate incomplete')
        for item in prior['files']:require(digest((gate/item['path']).read_bytes())==item['sha256'],'gate artifact changed')
    out.mkdir();(out/'proofs').mkdir();scenarios=fixtures('C');standard=scenarios[0]
    identities=[{'path':str(p),'sha256':digest(p.read_bytes())} for p in [Path(__file__),CANDIDATE.binary,CANDIDATE.key,CONTROL.binary,CONTROL.key,HERE/'Cargo.lock',HERE/'constant-outline.patch',CACHE/'native-outlined-relations.json',CACHE/'native-outlined-keys/complete.json']]
    (out/'identity.json').write_text(json.dumps(identities,indent=2)+'\n')
    hashes=set();samples=[];gates=[]
    with ExitStack() as stack,Monitor(out/'memory.jsonl') as monitor,(out/'samples.jsonl').open('x') as log:
        workers={}
        for v in ([CANDIDATE] if mode=='gate' else [CONTROL,CANDIDATE]):
            monitor.phase='initialization/'+v.name;start=time.perf_counter_ns()
            worker=stack.enter_context(Process(v,lambda pid,name=v.name:monitor.roots.__setitem__(name,pid)))
            ready=time.perf_counter_ns()-start;workers[v.name]=worker
            record(log,{'stage':'initialization','candidate':v.name,'host_ready_ns':ready,'worker':asdict(worker.ready.header)})
            if mode=='measure':samples.append(checked_sample(worker,v.name,standard.path.read_bytes(),standard.statement,'first/'+v.name,False,monitor,out,log,hashes,first_start=start,ready_ns=ready))
        if mode=='gate':
            w=workers['outlined']
            for f in scenarios:
                proof=w.call('prove',f.path.read_bytes());require(not proof.header.error and proof.header.statement==f.statement,'proving rejected')
                verified=w.call('verify',proof.payload,f.statement);require(verified.header.verified,'valid proof rejected')
                h=digest(proof.payload);require(h not in hashes,'fresh proof repeated');hashes.add(h)
                badstatement=bytearray.fromhex(f.statement);badstatement[-1]^=1
                negatives=[('wrong_statement',proof.payload,badstatement.hex(),'verify'),('truncated',proof.payload[:-1],f.statement,'verify'),('trailing',proof.payload+b'\0',f.statement,'verify'),('wrong_domain',proof.payload,f.statement,'verify_wrong_domain')]
                altered=bytearray(proof.payload);altered[-1]^=1;negatives.append(('altered_proof',bytes(altered),f.statement,'verify'))
                for name,body,statement,op in negatives:
                    result=w.call(op,body,statement);require(result.header.error or not result.header.verified,'negative accepted: '+name)
                (out/'proofs'/f'{f.scenario}.bin').write_bytes(proof.payload)
                gate=Gate(f.scenario,digest(f.path.read_bytes()),f.statement,h,True,[x[0] for x in negatives]);gates.append(asdict(gate));record(log,{'stage':'gate',**asdict(gate)})
            bad=w.call('prove',(CACHE/'native-tuned-witnesses/invalid.witness').read_bytes());require(bad.header.error,'invalid witness accepted');record(log,{'stage':'invalid_witness','rejected':True})
            prior=(CACHE/'phone-controlled-v2/C/measure/warm-transfer-00.proof').read_bytes();bad=w.call('verify',prior,standard.statement);require(bad.header.error or not bad.header.verified,'old-key proof accepted');record(log,{'stage':'old_key_proof','rejected':True})
        else:
            for i in range(3):
                for name in ['control','outlined']:samples.append(checked_sample(workers[name],name,standard.path.read_bytes(),standard.statement,f'warmup/{name}/{i}',False,monitor,out,log,hashes))
            for i in range(5):
                for name in (['control','outlined'] if i%2==0 else ['outlined','control']):samples.append(checked_sample(workers[name],name,standard.path.read_bytes(),standard.statement,f'warm/{name}/{i}',True,monitor,out,log,hashes))
    report={'schema':'shieldd.native_outline_desktop.v1','mode':mode,'gate':gates,'fresh_unique_proofs':len(hashes),'rows':[]}
    for name in ['control','outlined']:
        warm=[s.wall_ns/1e9 for s in samples if s.candidate==name and s.kind=='warm']
        if warm:report['rows'].append({'candidate':name,'warm_seconds':warm,'median_seconds':statistics.median(warm),'first_seconds':next(s.wall_ns/1e9 for s in samples if s.candidate==name and s.kind=='first')})
    report['files']=[{'path':str(p.relative_to(out)),'sha256':digest(p.read_bytes())} for p in out.rglob('*') if p.is_file()]
    (out/'complete.json').write_text(json.dumps(report,indent=2)+'\n')

if __name__=='__main__':main()
