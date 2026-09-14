"""Six real proofs and checked negative cases for each selected worker binary."""
from dataclasses import asdict, dataclass
from pathlib import Path
import json
import sys
import time
from api_gate import CACHE, ROOT, OLD, digest, record, require
from native_api_gate import WITNESSES
from selected_workers import SelectedWorker, artifacts, sources

@dataclass
class Fixture:
    scenario: str
    path: Path
    sha256: str
    statement: str

def fixtures(backend):
    if backend == 'B':
        facts = json.loads((CACHE/'logical-facts.json').read_text())['facts']
        return [Fixture(f['scenario'], OLD/'over_limit_disclosure.bin' if f['scenario']=='transfer_over_limit_disclosure' else ROOT/f"tools/gnark/internal/testfixtures/vectors/{f['scenario']}_witness.bin", f['witness_sha256'], bytes.fromhex(f['claimed_statement'])[::-1].hex()) for f in facts]
    return [Fixture(f['scenario'], WITNESSES/f"{f['scenario']}.witness", f['witness_sha256'], f['claimed_statement']) for f in json.loads((WITNESSES/'manifest.json').read_text())['facts']]

def main():
    require(len(sys.argv)==3 and sys.argv[1] in ('B','C'), 'usage: selected_gate.py B|C NEW_CACHE_DIRECTORY')
    backend, out = sys.argv[1], Path(sys.argv[2]).resolve()
    require(out.is_relative_to(CACHE.resolve()) and not out.exists(), 'preserve completed gate')
    rows = fixtures(backend)
    require(len(rows)==6 and len({r.scenario for r in rows})==6, 'six scenarios required')
    paths = artifacts(backend)+sources(backend)+[r.path for r in rows]
    out.mkdir()
    (out/'identity.json').write_text(json.dumps({'schema':'shieldd.proving_experiment.selected_gate.v1','backend':backend,'files':[{'path':str(p),'sha256':digest(p.read_bytes())} for p in paths]},indent=2)+'\n')
    worker = SelectedWorker(backend)
    hashes=set()
    try:
        with (out/'gate.jsonl').open('x') as log:
            record(log, {'stage':'initialization','response':asdict(worker.ready.header)})
            for fact in rows:
                payload=fact.path.read_bytes()
                require(digest(payload)==fact.sha256, 'witness hash changed')
                start=time.perf_counter_ns(); proof=worker.call('prove',payload); elapsed=time.perf_counter_ns()-start
                require(not proof.header.error and proof.payload and proof.header.statement==fact.statement, f'{backend}/{fact.scenario}: {proof.header.error}')
                checked=worker.call('verify',proof.payload,fact.statement)
                require(not checked.header.error and checked.header.verified, 'selected proof rejected')
                bad=bytearray(proof.payload); bad[40 if backend=='B' else 90]^=1
                rejections=[]
                for label, value, statement in [('truncated',proof.payload[:-1],fact.statement),('altered_proof',bytes(bad),fact.statement),('wrong_statement',proof.payload,'00'*32)]:
                    checked=worker.call('verify',value,statement)
                    require(checked.header.error or not checked.header.verified, f'{label} accepted')
                    rejections.append(label)
                h=digest(proof.payload); require(h not in hashes, 'duplicate proof'); hashes.add(h)
                (out/f'{fact.scenario}.proof').write_bytes(proof.payload)
                record(log, {'stage':'scenario','scenario':fact.scenario,'witness_sha256':fact.sha256,'proof_sha256':h,'encoded_bytes':len(proof.payload),'verified':True,'rejections':rejections,'diagnostic_complete_api_wall_ns':elapsed,'response':asdict(proof.header)})
                print(f'{backend}/{fact.scenario}: selected proof and negatives passed', file=sys.stderr, flush=True)
            invalid=(ROOT/'tools/gnark/internal/testfixtures/vectors/transfer_accumulator_over_limit_witness.bin').read_bytes() if backend=='B' else (WITNESSES/'invalid.witness').read_bytes()
            checked=worker.call('prove',invalid)
            require(checked.header.error and not checked.payload, 'invalid witness proved')
            record(log, {'stage':'invalid_witness','witness_sha256':digest(invalid),'rejected':True,'response':asdict(checked.header)})
    finally:
        worker.close()
    require(worker.process.returncode==0, 'selected worker failed at shutdown')
    (out/'complete.json').write_text(json.dumps({'identity_sha256':digest((out/'identity.json').read_bytes()),'gate_sha256':digest((out/'gate.jsonl').read_bytes()),'proofs':len(hashes),'invalid_witness_rejected':True},indent=2)+'\n')

if __name__=='__main__': main()
