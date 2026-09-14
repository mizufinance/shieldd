"""Observe a fresh lifetime-candidate worker without oracle allocations in its process."""
from dataclasses import asdict, dataclass
import json
import struct
import subprocess
import time
from memory import ARTIFACTS, CACHE, HERE, checked_sources, digest, environment, fixtures, record
from api_gate import Initialization, RequestTimings, Worker, parse_header, read_exact, require
from selected_workers import BInitialization, Header, Packet
from desktop import Monitor

@dataclass
class ReleasedInitialization(Initialization):
    released_original_storage_bytes: int
    released_compilation_storage_bytes: int

def parse(raw):
    if raw['initialization'] is not None:
        initial=raw['initialization']
        initial['prover']=ReleasedInitialization(**initial['prover'])
        raw['initialization']=BInitialization(**initial)
    if raw['request'] is not None:
        timing=raw['request'];timing['go']=parse_header(timing['go'])
        raw['request']=RequestTimings(**timing)
    h=Header(**raw)
    require(h.schema=='shieldd.proving_experiment.selected_b.v1' and type(h.payload_bytes) is int and 0<=h.payload_bytes<=1024*1024,'bounded B response')
    return h

class Candidate(Worker):
    def __init__(self,monitor):
        self.schema='shieldd.proving_experiment.selected_b.v1'
        self.process=subprocess.Popen([str(ARTIFACTS/'desktop'),'serve',str(CACHE/'comparator377-compile'),str(CACHE/'b-comparator377-keys/subset.pk'),str(CACHE/'a-comparator377-source/bin/provingexperiment'),str(CACHE/'a-comparator377-keys'),str(CACHE/'b-owned-private-child')],stdin=subprocess.PIPE,stdout=subprocess.PIPE,env=environment())
        monitor.roots['B-memory']=self.process.pid
        try:
            self.ready=self.read()
            require(self.ready.header.op=='ready' and not self.ready.header.error and not self.ready.payload,'candidate initialization')
        except BaseException:self.close();raise
    def read(self):
        n=struct.unpack('>I',read_exact(self.process.stdout,4))[0]
        require(0<n<=4096,'header bound')
        h=parse(json.loads(read_exact(self.process.stdout,n)))
        return Packet(h,read_exact(self.process.stdout,h.payload_bytes))

def main():
    checked_sources()
    gate=CACHE/'phone-memory377-gate/complete.json'
    complete=json.loads(gate.read_text())
    require(complete['invalid_witness_rejected'] and len(complete['records'])==6 and all(r['same_key_seeded_proof_equal'] and r['verified'] and r['negatives_rejected'] for r in complete['records']),'correctness precedes memory screen')
    inputs=json.loads((ARTIFACTS/'gate-inputs.json').read_text())['files']
    from pathlib import Path
    require(all(digest(Path(p))==h for p,h in inputs.items()),'gate inputs changed')
    out=CACHE/'phone-memory377-fresh-worker'
    out.mkdir();(out/'proofs').mkdir()
    record(out/'identity.json',{'schema':'shieldd.phone_memory_screen_identity.v1','files':inputs,'sources_sha256':digest(ARTIFACTS/'sources.json'),'gate_sha256':digest(gate),'runner_sha256':digest(HERE/'memory_screen.py')})
    rows=[];hashes=set()
    with Monitor(out/'memory.jsonl') as monitor:
        monitor.phase='initialization';start=time.perf_counter_ns();worker=Candidate(monitor);initialized=time.perf_counter_ns()-start
        record(out/'initialization.json',asdict(worker.ready.header))
        try:
            for fact in fixtures('B'):
                require(digest(fact.path)==fact.sha256,'witness changed')
                payload=fact.path.read_bytes();monitor.phase='proof/'+fact.scenario
                start=time.perf_counter_ns();proof=worker.call('prove',payload);elapsed=time.perf_counter_ns()-start
                monitor.phase='verification'
                require(not proof.header.error and proof.header.statement==fact.statement and proof.payload,'proof request failed')
                checked=worker.call('verify',proof.payload,fact.statement)
                require(not checked.header.error and checked.header.verified,'proof verification failed')
                file=out/'proofs'/f'{fact.scenario}.proof';file.write_bytes(proof.payload);h=digest(file)
                require(h not in hashes,'duplicate fresh proof');hashes.add(h)
                rows.append({'scenario':fact.scenario,'diagnostic_request_ns':elapsed,'proof_sha256':h,'verified':True,'response':asdict(proof.header)})
                record(out/'records.json',rows)
                print(f'{fact.scenario}: fresh-worker proof verified',flush=True)
        finally:
            monitor.phase='shutdown';worker.close()
        require(worker.process.returncode==0,'worker failed')
    checked_sources()
    record(out/'complete.json',{'schema':'shieldd.phone_memory_screen.v1','fresh_worker':True,'initialization_ns':initialized,'fresh_proofs':len(hashes),'all_verified':True,'sampled_peak_rss_bytes':max(monitor.peak.values()),'sampled_initialization_peak_rss_bytes':monitor.peak.get(('initialization','B-memory'),0),'sampled_proof_peak_rss_bytes':max(v for (phase,_),v in monitor.peak.items() if phase.startswith('proof/')),'memory_sample_interval_s':0.1,'memory_sha256':digest(out/'memory.jsonl'),'records_sha256':digest(out/'records.json'),'identity_sha256':digest(out/'identity.json')})

if __name__=='__main__':main()
