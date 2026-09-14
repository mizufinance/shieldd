"""Real six-scenario correctness gate for the persistent A/B binary APIs."""
from dataclasses import asdict, dataclass, fields
from pathlib import Path
import hashlib
import json
import struct
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[2]
SPIKE = ROOT / "tools/proving-experiment"
CACHE = SPIKE / "cache"
OLD = ROOT / "tools/zkpari-spike/cache/99228210a891ffa23aeb"
GO_SCHEMA = "shieldd.proving_experiment.gnark_worker.v1"
B_SCHEMA = "shieldd.proving_experiment.worker.v1"


@dataclass
class Initialization:
    go_compile_ns: int
    relation_preparation_ns: int
    key_file_read_ns: int
    key_checked_decode_ns: int
    key_association_ns: int
    total_ns: int


@dataclass
class RequestTimings:
    go_roundtrip_ns: int
    checked_mapping_ns: int
    prove_ns: int
    encoding_ns: int
    cleanup_ns: int
    request_ns: int
    go: "Header"


@dataclass
class Header:
    schema: str
    op: str
    payload_bytes: int
    error: str | None = None
    statement: str | None = None
    verified: bool = False
    circuit_sha256: str | None = None
    wires: int | None = None
    compile_ns: int | None = None
    key_load_ns: int | None = None
    witness_ns: int | None = None
    solve_ns: int | None = None
    prove_ns: int | None = None
    encode_ns: int | None = None
    request_ns: int | None = None
    initialization: Initialization | None = None
    request: RequestTimings | None = None


@dataclass
class Packet:
    header: Header
    payload: bytes


@dataclass
class Request:
    schema: str
    op: str
    payload_bytes: int
    statement: str = ""


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def parse_header(raw):
    require(set(raw) <= {f.name for f in fields(Header)}, "unknown response field")
    if raw.get("initialization") is not None:
        raw["initialization"] = Initialization(**raw["initialization"])
    if raw.get("request") is not None:
        timing = raw["request"]
        timing["go"] = parse_header(timing["go"])
        raw["request"] = RequestTimings(**timing)
    header = Header(**raw)
    require(type(header.payload_bytes) is int and 0 <= header.payload_bytes <= 16 * 1024 * 1024, "unbounded response payload")
    return header


def read_exact(reader, size):
    chunks = bytearray()
    while len(chunks) < size:
        chunk = reader.read(size - len(chunks))
        require(chunk, "worker closed a partial frame")
        chunks.extend(chunk)
    return bytes(chunks)


class Worker:
    def __init__(self, backend, on_start=None):
        self.schema = GO_SCHEMA if backend == "A" else B_SCHEMA
        artifacts = ROOT / "tools/gnark/artifacts/transfer"
        go = CACHE / "provingexperiment-go"
        command = [str(go), "serve", "A", str(artifacts)] if backend == "A" else [
            str(SPIKE / "target/release/shieldd-proving-experiment"), "serve", str(OLD),
            str(CACHE / "b-lowered/lowered.pk"), str(go), str(artifacts),
        ]
        self.process = subprocess.Popen(command, stdin=subprocess.PIPE, stdout=subprocess.PIPE)
        try:
            if on_start is not None:
                on_start(self.process.pid)
            self.ready = self.read()
            require(self.ready.header.op == "ready" and not self.ready.payload, "wrong readiness frame")
            require(not self.ready.header.error, f"worker initialization: {self.ready.header.error}")
        except BaseException:
            self.close()
            raise

    def read(self):
        size = struct.unpack(">I", read_exact(self.process.stdout, 4))[0]
        require(0 < size <= 4096, "unbounded worker header")
        header = parse_header(json.loads(read_exact(self.process.stdout, size)))
        require(header.schema == self.schema, "wrong worker schema")
        return Packet(header, read_exact(self.process.stdout, header.payload_bytes))

    def call(self, op, payload, statement=""):
        request = Request(self.schema, op, len(payload), statement)
        header = json.dumps(asdict(request), separators=(",", ":")).encode()
        self.process.stdin.write(struct.pack(">I", len(header)) + header + payload)
        self.process.stdin.flush()
        packet = self.read()
        require(packet.header.op == op, "response operation differs")
        return packet

    def close(self):
        self.process.stdin.close()
        try:
            self.process.wait(timeout=10)
        except subprocess.TimeoutExpired:
            self.process.kill()
            self.process.wait()
        self.process.stdout.close()


def digest(data):
    return hashlib.sha256(data).hexdigest()


def record(file, value):
    file.write(json.dumps(value, separators=(",", ":")) + "\n")
    file.flush()


def main():
    require(len(sys.argv) == 3 and sys.argv[1] in ("A", "B"), "usage: api_gate.py A|B NEW_CACHE_DIRECTORY")
    backend, output = sys.argv[1], Path(sys.argv[2]).resolve()
    require(output.is_relative_to(CACHE.resolve()) and not output.exists(), "preserve cache and use a new directory")
    output.mkdir()
    sources = [Path(__file__), CACHE / "logical-facts.json", CACHE / "provingexperiment-go", ROOT / "tools/gnark/go.mod", ROOT / "tools/gnark/go.sum"]
    sources += sorted((ROOT / "tools/gnark/cmd/provingexperiment").glob("*.go"))
    sources += list((ROOT / "tools/gnark/artifacts/transfer").glob("*.bin"))
    if backend == "B":
        sources += [SPIKE / "target/release/shieldd-proving-experiment", SPIKE / "Cargo.lock", CACHE / "b-lowered/lowered.pk"]
        sources += sorted((SPIKE / "src").glob("*.rs"))
    identity = {"schema": "shieldd.proving_experiment.api_gate.v1", "backend": backend,
                "files": [{"path": str(p), "sha256": digest(p.read_bytes())} for p in sources],
                "limits": "Correctness diagnostics, not final benchmark samples. Fresh proofs; repeated representative statements are not an executable block."}
    (output / "identity.json").write_text(json.dumps(identity, indent=2) + "\n")
    worker = Worker(backend)
    proof_hashes = set()
    try:
        with (output / "gate.jsonl").open("x") as log:
            record(log, {"stage": "initialization", "response": asdict(worker.ready.header)})
            facts = json.loads((CACHE / "logical-facts.json").read_text())["facts"]
            for fact in facts:
                name = fact["scenario"]
                source = OLD / "over_limit_disclosure.bin" if name == "transfer_over_limit_disclosure" else ROOT / f"tools/gnark/internal/testfixtures/vectors/{name}_witness.bin"
                payload = source.read_bytes()
                require(digest(payload) == fact["witness_sha256"], "fixture hash mismatch")
                expected = bytes.fromhex(fact["claimed_statement"])[::-1].hex()
                start = time.perf_counter_ns()
                proof = worker.call("prove", payload)
                elapsed = time.perf_counter_ns() - start
                require(not proof.header.error and proof.payload, f"{backend}/{name}: {proof.header.error}")
                require(proof.header.statement == expected, "public statement mismatch")
                checked = worker.call("verify", proof.payload, expected)
                require(not checked.header.error and checked.header.verified, "real encoded proof rejected")
                bad = bytearray(proof.payload)
                bad[52 if backend == "A" else 40] ^= 1
                rejections = []
                for label, altered, statement in [
                    ("truncated", proof.payload[:-1], expected),
                    ("altered_proof", bytes(bad), expected),
                    ("wrong_statement", proof.payload, "00" * 32),
                ]:
                    result = worker.call("verify", altered, statement)
                    rejected = bool(result.header.error) or not result.header.verified
                    require(rejected, f"{backend}/{name}: {label} accepted")
                    rejections.append(label)
                proof_hash = digest(proof.payload)
                require(proof_hash not in proof_hashes, "duplicate proof bytes")
                proof_hashes.add(proof_hash)
                (output / f"{name}.proof").write_bytes(proof.payload)
                record(log, {"stage": "scenario", "scenario": name, "witness_sha256": digest(payload),
                    "proof_sha256": proof_hash, "encoded_bytes": len(proof.payload), "verified": True,
                    "rejections": rejections, "diagnostic_complete_api_wall_ns": elapsed, "response": asdict(proof.header)})
                print(f"{backend}/{name}: real API proof and negative checks passed", file=sys.stderr, flush=True)
            invalid = (ROOT / "tools/gnark/internal/testfixtures/vectors/transfer_accumulator_over_limit_witness.bin").read_bytes()
            result = worker.call("prove", invalid)
            require(result.header.error and not result.payload, "invalid accumulator was proved")
            record(log, {"stage": "invalid_witness", "rejected": True, "response": asdict(result.header)})
    finally:
        worker.close()
    require(worker.process.returncode == 0, "worker did not exit cleanly")
    (output / "complete.json").write_text(json.dumps({"identity_sha256": digest((output / "identity.json").read_bytes()),
        "gate_sha256": digest((output / "gate.jsonl").read_bytes()), "proofs": len(proof_hashes), "invalid_witness_rejected": True}, indent=2) + "\n")


if __name__ == "__main__":
    main()
