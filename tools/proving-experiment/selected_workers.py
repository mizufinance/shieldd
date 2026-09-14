"""Typed persistent workers for the selected arithmetic implementations."""
from dataclasses import dataclass
from pathlib import Path
import json
import struct
import subprocess
from api_gate import CACHE, OLD, ROOT, SPIKE, Initialization as BProverInitialization, RequestTimings, Worker, parse_header, read_exact, require
from native_api_gate import KEY, WITNESSES, Initialization as CProverInitialization, Timings as CTimings

BINARY_B = SPIKE / 'target/release/examples/gnark_msm_full'
BINARY_C = SPIKE / 'native/target/release/examples/prepared_msm_full'
MSM = CACHE / 'msmworker-combined'
OPERANDS = CACHE / 'gnark-msm-operands'
B_KEY = CACHE / 'b-lowered/lowered.pk'

@dataclass
class BInitialization:
    prover: BProverInitialization
    arithmetic_preparation_ns: int
    go_initialization_ns: int
    resident_base_bytes: int
    total_ns: int

@dataclass
class CInitialization:
    prover: CProverInitialization
    arithmetic_preparation_ns: int
    resident_base_bytes: int
    total_ns: int

@dataclass
class Header:
    schema: str
    op: str
    payload_bytes: int
    error: str | None
    statement: str | None
    verified: bool
    initialization: BInitialization | CInitialization | None
    request: RequestTimings | CTimings | None

@dataclass
class Packet:
    header: Header
    payload: bytes

def parse_selected(raw, backend):
    require(backend in ('B', 'C'), 'unknown selected backend')
    if raw['initialization'] is not None:
        initial = raw['initialization']
        initial['prover'] = (BProverInitialization if backend == 'B' else CProverInitialization)(**initial['prover'])
        raw['initialization'] = (BInitialization if backend == 'B' else CInitialization)(**initial)
    if raw['request'] is not None:
        timing = raw['request']
        if backend == 'B':
            timing['go'] = parse_header(timing['go'])
        raw['request'] = (RequestTimings if backend == 'B' else CTimings)(**timing)
    header = Header(**raw)
    require(header.schema == f'shieldd.proving_experiment.selected_{backend.lower()}.v1', 'wrong selected schema')
    require(type(header.payload_bytes) is int and 0 <= header.payload_bytes <= 1024*1024, 'unbounded selected payload')
    return header

class SelectedWorker(Worker):
    def __init__(self, backend, on_start=None):
        require(backend in ('B', 'C'), 'unknown selected backend')
        self.backend = backend
        self.schema = f'shieldd.proving_experiment.selected_{backend.lower()}.v1'
        command = [BINARY_B, 'serve', OLD, B_KEY, CACHE / 'provingexperiment-go', ROOT / 'tools/gnark/artifacts/transfer', OPERANDS, MSM] if backend == 'B' else [BINARY_C, 'serve', KEY, WITNESSES / 'transfer.witness']
        self.process = subprocess.Popen([str(x) for x in command], stdin=subprocess.PIPE, stdout=subprocess.PIPE)
        try:
            if on_start is not None:
                on_start(self.process.pid)
            self.ready = self.read()
            require(self.ready.header.op == 'ready' and not self.ready.payload and not self.ready.header.error and self.ready.header.initialization is not None, 'selected initialization failed')
        except BaseException:
            self.close()
            raise

    def read(self):
        size = struct.unpack('>I', read_exact(self.process.stdout, 4))[0]
        require(0 < size <= 4096, 'unbounded selected header')
        header = parse_selected(json.loads(read_exact(self.process.stdout, size)), self.backend)
        return Packet(header, read_exact(self.process.stdout, header.payload_bytes))

def artifacts(backend):
    if backend == 'B':
        paths = [BINARY_B, B_KEY, MSM, CACHE / 'provingexperiment-go', OPERANDS / 'manifest.json', OLD / 'metadata.json', OLD / 'transfer.r1cs']
        paths += [Path(x['bases']['path']) for x in json.loads((OPERANDS / 'manifest.json').read_text())['operations']]
        paths += sorted(p for p in (ROOT / 'tools/gnark/artifacts/transfer').iterdir() if p.is_file())
        return paths
    require(backend == 'C', 'unknown backend artifacts')
    return [BINARY_C, KEY, WITNESSES / 'manifest.json']

def sources(backend):
    common = [Path(__file__), SPIKE/'api_gate.py', SPIKE/'native_api_gate.py', SPIKE/'transport.rs', SPIKE/'selected_gate.py', SPIKE/'guard.py']
    if backend == 'B':
        return common + [SPIKE/'Cargo.toml', SPIKE/'Cargo.lock', ROOT/'tools/gnark/go.mod', ROOT/'tools/gnark/go.sum', SPIKE/'examples/gnark_msm.rs', SPIKE/'examples/gnark_msm_full.rs'] + sorted((SPIKE/'src').glob('*.rs')) + sorted((SPIKE/'vendor/zkpari').rglob('*.rs')) + sorted((ROOT/'tools/gnark/cmd/msmworker').glob('*.go')) + sorted((ROOT/'tools/gnark/cmd/provingexperiment').glob('*.go'))
    return common + [SPIKE/'native/Cargo.toml', SPIKE/'native/Cargo.lock', SPIKE/'native/examples/prepared_msm_full.rs', SPIKE/'native/patches/commonware-polynomial-migration.patch'] + sorted((SPIKE/'native/src').glob('*.rs')) + sorted((SPIKE/'native/params').glob('*.json'))
