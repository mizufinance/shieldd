"""Checked native encoded-witness API and six-scenario proof gate."""
from dataclasses import asdict, dataclass
from pathlib import Path
import json
import struct
import subprocess
import sys
import time
from api_gate import CACHE, SPIKE, Worker, digest, read_exact, record, require

SCHEMA = "shieldd.proving_experiment.native_worker.v1"
WITNESSES = CACHE / "native-tuned-witnesses"
KEY = CACHE / "native-tuned-full-gate/keys/native.pk"
BINARY = SPIKE / "native/target/release/examples/native_worker"

@dataclass
class Initialization:
    relation_preparation_ns: int
    key_file_read_ns: int
    key_decode_ns: int
    key_canonical_roundtrip_ns: int
    key_checked_decode_ns: int
    total_ns: int

@dataclass
class Timings:
    checked_witness_decode_ns: int
    construction_solving_ns: int
    assignment_mapping_ns: int
    claim_ns: int
    prove_ns: int
    encoding_ns: int
    cleanup_ns: int
    total_ns: int

@dataclass
class Header:
    schema: str
    op: str
    payload_bytes: int
    error: str | None
    statement: str | None
    verified: bool
    initialization: Initialization | None
    request: Timings | None

@dataclass
class Packet:
    header: Header
    payload: bytes

@dataclass
class Fact:
    scenario: str
    source_witness_sha256: str
    witness_sha256: str
    claimed_statement: str

class NativeWorker(Worker):
    def __init__(self, on_start=None):
        self.schema = SCHEMA
        self.process = subprocess.Popen([str(BINARY), str(KEY), str(WITNESSES / "transfer.witness")], stdin=subprocess.PIPE, stdout=subprocess.PIPE)
        try:
            if on_start is not None:
                on_start(self.process.pid)
            self.ready = self.read()
            require(self.ready.header.op == "ready" and not self.ready.payload and not self.ready.header.error, "native readiness rejected")
        except BaseException:
            self.close()
            raise

    def read(self):
        size = struct.unpack(">I", read_exact(self.process.stdout, 4))[0]
        require(0 < size <= 4096, "unbounded native worker header")
        raw = json.loads(read_exact(self.process.stdout, size))
        if raw["initialization"] is not None:
            raw["initialization"] = Initialization(**raw["initialization"])
        if raw["request"] is not None:
            raw["request"] = Timings(**raw["request"])
        header = Header(**raw)
        require(header.schema == self.schema and type(header.payload_bytes) is int and 0 <= header.payload_bytes <= 1024*1024, "invalid native response")
        return Packet(header, read_exact(self.process.stdout, header.payload_bytes))


def main():
    require(len(sys.argv) == 2, "usage: native_api_gate.py NEW_CACHE_DIRECTORY")
    out = Path(sys.argv[1]).resolve()
    require(out.is_relative_to(CACHE.resolve()) and not out.exists(), "preserve native API cache")
    out.mkdir()
    sources = [Path(__file__), Path(__file__).with_name("api_gate.py"), KEY, BINARY, WITNESSES / "manifest.json", SPIKE / "native/Cargo.lock", SPIKE / "native/patches/commonware-polynomial-migration.patch"]
    sources += sorted((SPIKE / "native/src").glob("*.rs")) + sorted((SPIKE / "native/params").glob("*.json")) + sorted((SPIKE / "native/examples").glob("*.rs"))
    identity = {"schema": "shieldd.native_experiment.api_gate.v1", "files": [{"path": str(p), "sha256": digest(p.read_bytes())} for p in sources]}
    (out / "identity.json").write_text(json.dumps(identity, indent=2)+"\n")
    manifest = json.loads((WITNESSES / "manifest.json").read_text())
    worker = NativeWorker()
    hashes = set()
    try:
        with (out / "gate.jsonl").open("x") as log:
            record(log, {"stage": "initialization", "response": asdict(worker.ready.header)})
            for raw in manifest["facts"]:
                fact = Fact(**raw)
                payload = (WITNESSES / f"{fact.scenario}.witness").read_bytes()
                require(digest(payload) == fact.witness_sha256, "native witness hash mismatch")
                start = time.perf_counter_ns()
                proof = worker.call("prove", payload)
                elapsed = time.perf_counter_ns()-start
                require(not proof.header.error and proof.payload and proof.header.statement == fact.claimed_statement, "native proof API failed")
                checked = worker.call("verify", proof.payload, fact.claimed_statement)
                require(not checked.header.error and checked.header.verified, "native encoded proof rejected")
                bad = bytearray(proof.payload); bad[90] ^= 1
                rejections = []
                for label, altered, statement in [("truncated", proof.payload[:-1], fact.claimed_statement), ("altered_proof", bytes(bad), fact.claimed_statement), ("wrong_statement", proof.payload, "00"*32)]:
                    result = worker.call("verify", altered, statement)
                    require(result.header.error or not result.header.verified, "invalid native package accepted")
                    rejections.append(label)
                proof_hash = digest(proof.payload)
                require(proof_hash not in hashes, "duplicate native proof")
                hashes.add(proof_hash)
                (out / f"{fact.scenario}.proof").write_bytes(proof.payload)
                record(log, {"stage": "scenario", "scenario": fact.scenario, "witness_sha256": fact.witness_sha256, "proof_sha256": proof_hash, "verified": True, "rejections": rejections, "encoded_bytes": len(proof.payload), "diagnostic_complete_api_wall_ns": elapsed, "response": asdict(proof.header)})
                print(f"C/{fact.scenario}: real API proof and negatives passed", file=sys.stderr, flush=True)
            invalid = (WITNESSES / "invalid.witness").read_bytes()
            require(digest(invalid) == manifest["invalid_witness_sha256"], "invalid witness hash mismatch")
            result = worker.call("prove", invalid)
            require(result.header.error and not result.payload, "invalid native witness proved")
            record(log, {"stage": "invalid_witness", "rejected": True, "response": asdict(result.header)})
    finally:
        worker.close()
    require(worker.process.returncode == 0, "native worker did not exit cleanly")
    (out / "complete.json").write_text(json.dumps({"identity_sha256": digest((out / "identity.json").read_bytes()), "gate_sha256": digest((out / "gate.jsonl").read_bytes()), "proofs": len(hashes), "invalid_witness_rejected": True}, indent=2)+"\n")

if __name__ == "__main__":
    main()
