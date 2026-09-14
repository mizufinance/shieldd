"""Bounded matched warm screen with explicitly separate preserved startup evidence."""
from contextlib import ExitStack
from dataclasses import asdict
from pathlib import Path
import json, os, shutil, statistics, sys, time
import comparator34_desktop as base
from api_gate import CACHE, SPIKE, digest, record, require
from desktop import Monitor, checked_sample
from selected_gate import fixtures

PRIOR = CACHE/'c-comparator34-desktop'

def main():
    require(len(sys.argv)==2,'usage: comparator34_quick.py NEW_OUTPUT')
    out=Path(sys.argv[1]).resolve()
    require(out.is_relative_to(CACHE) and not out.exists(),'new cache required')
    require(all(os.environ.get(k)=='2' for k in ('CARGO_BUILD_JOBS','RAYON_NUM_THREADS','GOMAXPROCS')),'two workers required')
    base.validate_gate()
    variants=base.VARIANTS; scenarios=fixtures('C'); files=base.identities(variants,scenarios)
    prior_identity=json.loads((PRIOR/'identity.json').read_text())
    require(prior_identity['files']==files and prior_identity['workers']==2,'startup environment/artifact mismatch')
    require(digest((PRIOR/'executing-runner.py').read_bytes())==digest(Path(base.__file__).read_bytes()),'startup runner changed')
    first=[r for r in map(json.loads,(PRIOR/'samples.jsonl').read_text().splitlines()) if r.get('kind')=='first']
    require({r['candidate'] for r in first}=={v.name for v in variants},'missing startup observation')
    out.mkdir();(out/'proofs').mkdir()
    identity={'schema':'shieldd.comparator34_quick.v1','workers':2,'warmups':3,'warm_samples':5,'files':files,'quick_runner_sha256':digest(Path(__file__).read_bytes()),'startup_path':str(PRIOR),'startup_samples_sha256':digest((PRIOR/'samples.jsonl').read_bytes()),'startup_order':[r['sample_id'] for r in first],'limits':'Startup observations precede an intentional sample-budget stop. Warm observations are a separate invocation with the same checked sources, artifacts and environment. No cold-tail or uninterrupted-session claim.'}
    (out/'identity.json').write_text(json.dumps(identity,indent=2)+'\n')
    hashes=set(); samples=[];workers={}; standard=next(f for f in scenarios if f.scenario=='transfer')
    with ExitStack() as stack,(out/'samples.jsonl').open('x') as log,Monitor(out/'memory.jsonl') as monitor:
        for variant in variants:
            monitor.phase=f'initialization/{variant.name}';start=time.perf_counter_ns()
            worker=base.SubsetWorker(variant,lambda pid:monitor.roots.__setitem__(variant.name,pid))
            stack.callback(worker.close);workers[variant.name]=worker
            record(log,{'stage':'initialization','candidate':variant.name,'wall_ns':time.perf_counter_ns()-start,'response':asdict(worker.ready.header)})
            for row in (r for r in first if r['candidate']==variant.name):
                name=row['sample_id'].replace('/','-')+'.bin';path=PRIOR/'proofs'/name;proof=path.read_bytes();h=digest(proof)
                require(row['verified'] and h==row['proof_sha256'] and h not in hashes,'invalid startup evidence')
                result=worker.call('verify',proof,standard.statement)
                require(not result.header.error and result.header.verified,'startup proof re-verification failed')
                hashes.add(h);shutil.copy2(path,out/'proofs'/name)
                record(log,{'stage':'reused_startup','source_path':str(path),'reverified':True,'sample':row})
        for block in range(8):
            for label in list(workers) if block%2==0 else list(reversed(workers)):
                sample=checked_sample(workers[label],label,standard.path.read_bytes(),standard.statement,f'{"warmup" if block<3 else "warm"}/{block}/{label}',block>=3,monitor,out,log,hashes)
                samples.append(sample)
            print(f'block{block}: both complete API proofs verified',flush=True)
    require(all(w.process.returncode==0 for w in workers.values()),'worker shutdown failed')
    require(files==base.identities(variants,scenarios),'artifacts changed during measurement')
    rows=[]
    for variant in variants:
        warm=[s for s in samples if s.candidate==variant.name and s.kind=='warm'];cold=[r for r in first if r['candidate']==variant.name]
        require(len(warm)==5,'incomplete bounded cell')
        rows.append({'candidate':variant.name,'warm_values_s':[s.wall_ns/1e9 for s in warm],'median_s':statistics.median(s.wall_ns for s in warm)/1e9,'first_values_s':[r['wall_ns']/1e9 for r in cold],'warm_peak_rss_bytes':max(s.peak_candidate_rss_bytes for s in warm),'proof_bytes':warm[0].proof_bytes})
    result={'schema':identity['schema'],'rows':rows,'warm_run_proofs':len(samples),'preserved_first_proofs':len(first),'distinct_proofs':len(hashes),'all_verified':True,'limits':identity['limits']}
    (out/'results.json').write_text(json.dumps(result,indent=2)+'\n')
    (out/'complete.json').write_text(json.dumps({'schema':identity['schema'],'hashes':{p.relative_to(out).as_posix():digest(p.read_bytes()) for p in sorted(out.rglob('*')) if p.is_file()}},indent=2)+'\n')
    print(json.dumps(result),flush=True)

if __name__=='__main__':main()
