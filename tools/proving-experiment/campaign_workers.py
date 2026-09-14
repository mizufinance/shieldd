"""Explicit typed worker configurations for the optimized circuit campaign."""
from dataclasses import dataclass
from pathlib import Path
import json,subprocess
from api_gate import CACHE,ROOT,SPIKE,GO_SCHEMA,Worker,require
from selected_workers import SelectedWorker
from native_api_gate import WITNESSES

@dataclass(frozen=True)
class Configuration:
    backend:str
    executable:Path
    artifacts:Path
    key:Path
    relation:Path|None=None
    solver:Path|None=None
    operands:Path|None=None
    arithmetic:Path|None=None

SOURCE=CACHE/'optimized-circuit-source'
CONFIGURATIONS={
 'A':Configuration('A',SOURCE/'A',CACHE/'selected-dh-a-keys',CACHE/'selected-dh-a-keys/proving_key.bin'),
 'B':Configuration('B',SOURCE/'B',CACHE/'selected-dh-a-keys',CACHE/'selected-dh-b-gate/lowered.pk',CACHE/'selected-dh-compile',SOURCE/'A',CACHE/'selected-dh-operands',CACHE/'msmworker-combined'),
 'C':Configuration('C',SOURCE/'C-polynomial',WITNESSES,CACHE/'native-affine-full-gate/keys/native.pk'),
}

def files(backend):
    c=CONFIGURATIONS[backend]
    paths=[Path(__file__),SPIKE/'api_gate.py',SPIKE/'selected_workers.py',c.executable,c.key]
    if backend in 'AB':paths+=sorted(p for p in c.artifacts.iterdir() if p.is_file())
    if backend=='B':
        paths += [c.solver,c.arithmetic,c.operands/'manifest.json',c.relation/'metadata.json',c.relation/'transfer.r1cs']
        paths += [Path(op['bases']['path']) for op in json.loads((c.operands/'manifest.json').read_text())['operations']]
    if backend=='C':paths += [WITNESSES/'manifest.json']
    return sorted(set(paths))

class CampaignWorker(SelectedWorker):
    def __init__(self,backend,on_start=None):
        c=CONFIGURATIONS[backend];self.backend=backend
        self.schema=GO_SCHEMA if backend=='A' else f'shieldd.proving_experiment.selected_{backend.lower()}.v1'
        if backend=='A':command=[c.executable,'serve','A',c.artifacts]
        elif backend=='B':command=[c.executable,'serve',c.relation,c.key,c.solver,c.artifacts,c.operands,c.arithmetic]
        else:command=[c.executable,'serve',c.key,WITNESSES/'transfer.witness']
        self.process=subprocess.Popen([str(p)for p in command],stdin=subprocess.PIPE,stdout=subprocess.PIPE)
        try:
            if on_start:on_start(self.process.pid)
            self.ready=self.read()
            require(self.ready.header.op=='ready' and not self.ready.payload and not self.ready.header.error,'campaign initialization failed')
            if backend=='A':require(self.ready.header.circuit_sha256=='cc0dc2091c86777dfd21128b974d1a51f959ce0599211d90a022e5c3d9e27bde','wrong Groth16 control circuit')
        except BaseException:
            self.close();raise
    def read(self):
        return Worker.read(self) if self.backend=='A' else SelectedWorker.read(self)
