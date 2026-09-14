"""Admit selected optimized binaries only after six complete API proofs and negatives."""
from dataclasses import asdict
from pathlib import Path
import json,sys,time
from api_gate import CACHE,ROOT,digest,record,require
from campaign_workers import CampaignWorker,files
from selected_gate import fixtures
from native_api_gate import WITNESSES

def main():
    require(len(sys.argv)==3 and sys.argv[1]in 'ABC','usage: campaign_gate.py A|B|C NEW_OUTPUT')
    backend=sys.argv[1];out=Path(sys.argv[2]).resolve();require(out.is_relative_to(CACHE) and not out.exists(),'new cache required');out.mkdir()
    rows=fixtures('C' if backend=='C' else 'B');paths=files(backend)+[r.path for r in rows]+[Path(__file__)]
    identity={'schema':'shieldd.proving_experiment.campaign_gate.v1','backend':backend,'files':[{'path':str(p),'sha256':digest(p.read_bytes())}for p in sorted(set(paths))]}
    (out/'identity.json').write_text(json.dumps(identity,indent=2)+'\n')
    worker=CampaignWorker(backend);hashes=set()
    try:
        with (out/'gate.jsonl').open('x')as log:
            record(log,{'stage':'initialization','response':asdict(worker.ready.header)})
            for f in rows:
                payload=f.path.read_bytes();require(digest(payload)==f.sha256,'witness changed')
                start=time.perf_counter_ns();proof=worker.call('prove',payload);elapsed=time.perf_counter_ns()-start
                require(not proof.header.error and proof.payload and proof.header.statement==f.statement,f'{backend}/{f.scenario}: {proof.header.error}')
                checked=worker.call('verify',proof.payload,f.statement);require(not checked.header.error and checked.header.verified,'proof rejected')
                bad=bytearray(proof.payload);bad[90 if backend=='C' else 40]^=1
                for label,value,statement in [('truncated',proof.payload[:-1],f.statement),('trailing',proof.payload+b'\x00',f.statement),('altered',bytes(bad),f.statement),('statement',proof.payload,'00'*32)]:
                    result=worker.call('verify',value,statement);require(result.header.error or not result.header.verified,f'{label} accepted')
                h=digest(proof.payload);require(h not in hashes,'duplicate proof');hashes.add(h)
                (out/f'{f.scenario}.proof').write_bytes(proof.payload)
                record(log,{'stage':'scenario','scenario':f.scenario,'witness_sha256':f.sha256,'proof_sha256':h,'verified':True,'all_negatives_rejected':True,'diagnostic_api_wall_ns':elapsed,'response':asdict(proof.header)})
                print(f'{backend}/{f.scenario}: complete API and negatives passed',flush=True)
            invalid=(WITNESSES/'invalid.witness')if backend=='C' else ROOT/'tools/gnark/internal/testfixtures/vectors/transfer_accumulator_over_limit_witness.bin'
            rejected=worker.call('prove',invalid.read_bytes());require(rejected.header.error and not rejected.payload,'invalid witness accepted');record(log,{'stage':'invalid_witness','rejected':True})
    finally:worker.close()
    require(worker.process.returncode==0,'worker failed')
    (out/'complete.json').write_text(json.dumps({'schema':identity['schema'],'backend':backend,'identity_sha256':digest((out/'identity.json').read_bytes()),'samples_sha256':digest((out/'gate.jsonl').read_bytes()),'proofs':6,'all_verified':True,'all_negative_cases_rejected':True},indent=2)+'\n')
if __name__=='__main__':main()
