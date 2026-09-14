"""One compact matched matrix for the implemented circuit and polynomial winners."""
from contextlib import ExitStack
from dataclasses import asdict
from pathlib import Path
import json,os,platform,statistics,sys,time
from api_gate import CACHE,SPIKE,digest,record,require
from campaign_workers import CampaignWorker,files
from selected_gate import fixtures
from desktop import Monitor,checked_sample,load_samples
ORDERS=('ABC','BCA','CAB','CBA','ACB')

def validate_gate(backend):
    p=CACHE/f'campaign-{backend.lower()}-api-gate'
    c=json.loads((p/'complete.json').read_text());require(c['proofs']==6 and c['all_verified'] and c['all_negative_cases_rejected'],'incomplete API gate')
    require(digest((p/'identity.json').read_bytes())==c['identity_sha256'] and digest((p/'gate.jsonl').read_bytes())==c['samples_sha256'],'gate record changed')
    identity=json.loads((p/'identity.json').read_text());known={f['path']:f['sha256']for f in identity['files']}
    for f in files(backend):require(known.get(str(f))==digest(f.read_bytes()),'gate used another executable or artifact')
    for row in map(json.loads,(p/'gate.jsonl').read_text().splitlines()):
        if row['stage']=='scenario':require(row['verified'] and row['all_negatives_rejected'] and digest((p/f"{row['scenario']}.proof").read_bytes())==row['proof_sha256'],'invalid gate proof record')
    return [p/f for f in ['identity.json','complete.json','gate.jsonl']]

def main():
    require(len(sys.argv)==2,'usage: campaign_desktop.py NEW_OUTPUT')
    out=Path(sys.argv[1]).resolve();require(out.is_relative_to(CACHE),'cache required')
    require(all(os.environ.get(k)=='2'for k in ['CARGO_BUILD_JOBS','RAYON_NUM_THREADS','GOMAXPROCS']),'matched two-worker profile required')
    paths=[Path(__file__),SPIKE/'desktop.py',SPIKE/'guard.py',CACHE/'optimized-circuit-source/final-manifest.json']
    for c in 'ABC':paths+=files(c)+validate_gate(c)
    logical={c:fixtures('C'if c=='C'else'B')[0]for c in'ABC'}
    for c,f in logical.items():require(f.scenario=='transfer' and digest(f.path.read_bytes())==f.sha256,'wrong standard witness');paths.append(f.path)
    paths=sorted(set(paths));identity={'schema':'shieldd.proving_experiment.campaign_desktop.v1','platform':platform.platform(),'workers':2,'orders':ORDERS,'files':[{'path':str(p),'sha256':digest(p.read_bytes())}for p in paths]}
    out.mkdir(exist_ok=True);(out/'proofs').mkdir(exist_ok=True);identity_path=out/'identity.json'
    if identity_path.exists():require(json.loads(identity_path.read_text())==json.loads(json.dumps(identity)),'source identity changed; use another cache')
    else:identity_path.write_text(json.dumps(identity,indent=2)+'\n')
    samples,completed,hashes=load_samples(out)
    if (out/'complete.json').exists():
        d=json.loads((out/'complete.json').read_text())
        for name in ['identity.json','samples.jsonl','results.json']:require(digest((out/name).read_bytes())==d['hashes'][name],'completed report changed')
        return
    session=len(list(out.glob('memory-*.jsonl')));workers={}
    with ExitStack()as stack,(out/'samples.jsonl').open('a')as log,Monitor(out/f'memory-{session}.jsonl')as monitor:
        for c in'ABC':
            monitor.phase=f'first/{c}';start=time.perf_counter_ns()
            w=CampaignWorker(c,lambda pid:monitor.roots.__setitem__(c,pid));ready_ns=time.perf_counter_ns()-start
            stack.callback(w.close);workers[c]=w;record(log,{'stage':'initialization','candidate':c,'ready_ns':ready_ns,'response':asdict(w.ready.header)})
            if f'first/{c}'not in completed:samples.append(checked_sample(w,c,logical[c].path.read_bytes(),logical[c].statement,f'first/{c}',True,monitor,out,log,hashes,start,ready_ns))
            for prior in samples:
                if prior.candidate==c:
                    proof=(out/'proofs'/f"{prior.sample_id.replace('/','-')}.bin").read_bytes();result=w.call('verify',proof,logical[c].statement);require(result.header.verified and not result.header.error,'resumed proof rejected')
        for i,order in enumerate(('CBA','ABC','BAC')):
            for c in order:samples.append(checked_sample(workers[c],c,logical[c].path.read_bytes(),logical[c].statement,f'warmup/{session}/{i}/{c}',False,monitor,out,log,hashes))
        for i,order in enumerate(ORDERS):
            for c in order:
                if f'warm/{i}/{c}'not in completed:samples.append(checked_sample(workers[c],c,logical[c].path.read_bytes(),logical[c].statement,f'warm/{i}/{c}',True,monitor,out,log,hashes))
    require(all(w.process.returncode==0 for w in workers.values()),'worker shutdown failed')
    rows=[]
    for c in'ABC':
        warm=[s for s in samples if s.candidate==c and s.kind=='warm'];first=[s for s in samples if s.candidate==c and s.kind=='first'];require(len(warm)==5 and len(first)==1,'incomplete compact matrix')
        rows.append({'candidate':c,'warm_values_s':[s.wall_ns/1e9 for s in warm],'warm_median_s':statistics.median(s.wall_ns for s in warm)/1e9,'first_s':first[0].wall_ns/1e9,'warm_peak_rss_bytes':max(s.peak_candidate_rss_bytes for s in warm),'first_peak_rss_bytes':first[0].peak_candidate_rss_bytes,'proof_bytes':first[0].proof_bytes})
    result={'schema':identity['schema'],'rows':rows,'limits':'Updated Groth16 control and B use the identical selected-DH Transfer. C uses full native affine Transfer. Complete APIs, checked preparation, fresh randomness, one fresh-process first proof plus five warm samples each. Three warmups. No tail, phone, network TPS, validator comparison, or exhausted-domain-research claim.'}
    (out/'results.json').write_text(json.dumps(result,indent=2)+'\n')
    (out/'complete.json').write_text(json.dumps({'schema':identity['schema'],'all_verified':True,'measured_proofs':18,'warmups':sum(not s.measured for s in samples),'hashes':{n:digest((out/n).read_bytes())for n in ['identity.json','samples.jsonl','results.json']}},indent=2)+'\n')
if __name__=='__main__':main()
