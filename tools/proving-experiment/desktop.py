"""Compact controlled desktop comparison; no batch, scenario or worker sweep."""
from dataclasses import asdict, dataclass
from pathlib import Path
from contextlib import ExitStack
import json
import os
import platform
import statistics
import subprocess
import sys
import threading
import time
from api_gate import CACHE, ROOT, SPIKE, Worker, digest, record, require
from native_api_gate import NativeWorker, WITNESSES, KEY, BINARY
from guard import process_snapshot

ORDERS = ("ABC", "BCA", "CAB", "CBA", "ACB")

@dataclass
class Sample:
    sample_id: str
    candidate: str
    kind: str
    measured: bool
    wall_ns: int
    api_call_ns: int
    process_start_through_ready_ns: int | None
    proof_sha256: str
    proof_bytes: int
    verified: bool
    peak_candidate_rss_bytes: int
    response: object

@dataclass
class Memory:
    time_ns: int
    phase: str
    candidate: str
    rss_bytes: int

class Monitor:
    def __init__(self, output):
        self.roots = {}
        self.phase = "idle"
        self.peak = {}
        self.stop = threading.Event()
        self.failure = None
        self.output = output
        self.thread = threading.Thread(target=self.run, daemon=True)
    def __enter__(self):
        self.thread.start()
        return self
    def __exit__(self, *_):
        self.stop.set(); self.thread.join(timeout=5)
        require(not self.thread.is_alive() and self.failure is None, f"memory monitor failed: {self.failure}")
    def run(self):
        try:
            with self.output.open("x") as out:
                while not self.stop.is_set():
                    processes = process_snapshot()
                    phase = self.phase
                    for candidate, root in list(self.roots.items()):
                        owned = {root}
                        while True:
                            children = {p.pid for p in processes if p.parent in owned}
                            if children <= owned: break
                            owned.update(children)
                        rss = sum(p.rss_bytes for p in processes if p.pid in owned)
                        self.peak[(phase, candidate)] = max(self.peak.get((phase, candidate), 0), rss)
                        record(out, asdict(Memory(time.time_ns(), phase, candidate, rss)))
                    self.stop.wait(0.1)
        except BaseException as error:
            self.failure = str(error)

def checked_sample(worker, candidate, payload, expected, sample_id, measured, monitor, out, log, hashes, first_start=None, ready_ns=None):
    monitor.phase = sample_id
    start = time.perf_counter_ns()
    proof = worker.call("prove", payload)
    end = time.perf_counter_ns()
    monitor.phase = "verification"
    require(not proof.header.error and proof.payload and proof.header.statement == expected, f"{sample_id}: proving failed")
    checked = worker.call("verify", proof.payload, expected)
    require(not checked.header.error and checked.header.verified, f"{sample_id}: invalid measured proof")
    h = digest(proof.payload)
    require(h not in hashes, "duplicate proof bytes in measured/warmup corpus")
    hashes.add(h)
    file = out / "proofs" / f"{sample_id.replace('/', '-')}.bin"
    file.write_bytes(proof.payload)
    sample = Sample(sample_id, candidate, "first" if first_start is not None else ("warm" if measured else "warmup"), measured,
                    end-(first_start if first_start is not None else start), end-start, ready_ns, h, len(proof.payload), True,
                    monitor.peak.get((sample_id, candidate), 0), asdict(proof.header))
    record(log, asdict(sample))
    return sample

def report(out, samples, identity):
    rows = []
    for candidate in "ABC":
        warm = [s.wall_ns/1e9 for s in samples if s.candidate == candidate and s.kind == "warm"]
        first = [s.wall_ns/1e9 for s in samples if s.candidate == candidate and s.kind == "first"]
        require(len(warm) == 5 and len(first) == 1, "incomplete compact comparison")
        rows.append({"candidate": candidate, "warm_values_s": warm, "warm_median_s": statistics.median(warm), "warm_min_s": min(warm), "warm_max_s": max(warm), "first_s": first[0]})
    med = {r["candidate"]: r["warm_median_s"] for r in rows}
    ratios = {f"{a}/{b}": med[a]/med[b] for a,b in [("A","B"),("A","C"),("B","C")]}
    (out / "results.json").write_text(json.dumps({"schema": "shieldd.proving_experiment.desktop_results.v1", "rows": rows, "ratios": ratios}, indent=2)+"\n")
    lines = ["# Desktop Transfer proving comparison", "", "Two workers; standard regulated Transfer; complete encoded-witness API. Two untimed warmups, five measured warm proofs and one fresh-process first proof per candidate. Every proof verified. First-proof timing includes process creation and required key preparation; the OS page cache was not flushed.", "", "| Candidate | Five warm values (s) | Median (s) | Range (s) | First proof (s) |", "|---|---|---:|---|---:|"]
    for r in rows:
        lines.append(f"| {r['candidate']} | {', '.join(f'{v:.4f}' for v in r['warm_values_s'])} | {r['warm_median_s']:.4f} | {r['warm_min_s']:.4f}–{r['warm_max_s']:.4f} | {r['first_s']:.4f} |")
    lines += ["", "A: shipping gnark Groth16/BLS12-377. B: prepared/lowered gnark-to-Arkworks ZK-Pari/BLS12-377. C: complete native Commonware/Jubjub/BLS12-381 Transfer.", "", "Ratios above one mean the denominator is faster: " + ", ".join(f"{k}={v:.3f}" for k,v in ratios.items()) + ". Five samples support descriptive comparison, not tail-percentile or strong confidence claims.", "", f"Campaign sessions: {len(list(out.glob('memory-*.jsonl')))}. Raw per-phase records, proof hashes, checked artifacts, worker identities and sampled memory are retained in this directory. These are desktop measurements, not phone latency or network TPS. Physical-phone measurements remain pending.", ""]
    (out / "report.md").write_text("\n".join(lines))

def load_samples(out):
    samples = []
    ids = set()
    hashes = set()
    path = out / "samples.jsonl"
    if not path.exists():
        return samples, ids, hashes
    for line in path.read_text().splitlines():
        raw = json.loads(line)
        if raw.get("stage") == "initialization":
            continue
        sample = Sample(**raw)
        require(sample.sample_id not in ids and sample.proof_sha256 not in hashes and sample.verified, "duplicate or invalid resumed sample")
        proof = out / "proofs" / f"{sample.sample_id.replace('/', '-')}.bin"
        require(proof.exists() and digest(proof.read_bytes()) == sample.proof_sha256, "resumed proof hash mismatch")
        ids.add(sample.sample_id); hashes.add(sample.proof_sha256); samples.append(sample)
    return samples, ids, hashes

def validate_gate(path, artifacts):
    complete = json.loads((path / "complete.json").read_text())
    require(complete["proofs"] == 6 and complete["invalid_witness_rejected"], "incomplete correctness gate")
    require(digest((path / "identity.json").read_bytes()) == complete["identity_sha256"] and digest((path / "gate.jsonl").read_bytes()) == complete["gate_sha256"], "correctness record changed")
    identity = json.loads((path / "identity.json").read_text())
    files = {str(Path(f["path"]).resolve()): f["sha256"] for f in identity["files"]}
    for artifact in artifacts:
        require(files.get(str(artifact.resolve())) == digest(artifact.read_bytes()), "correctness gate used a different binary or key")
    records = [json.loads(line) for line in (path / "gate.jsonl").read_text().splitlines()]
    scenarios = [r for r in records if r["stage"] == "scenario"]
    require(len(scenarios) == 6 and len({r["scenario"] for r in scenarios}) == 6, "missing gate scenario")
    for row in scenarios:
        require(row["verified"] and len(row["rejections"]) == 3 and digest((path / f"{row['scenario']}.proof").read_bytes()) == row["proof_sha256"], "gate proof record invalid")

def main():
    require(len(sys.argv) == 2, "usage: desktop.py NEW_CACHE_DIRECTORY")
    out = Path(sys.argv[1]).resolve()
    require(out.is_relative_to(CACHE.resolve()), "desktop samples must remain in experiment cache")
    require(all(os.environ.get(name) == "2" for name in ["CARGO_BUILD_JOBS", "RAYON_NUM_THREADS", "GOMAXPROCS"]), "final comparison requires the common two-worker profile")
    validate_gate(CACHE / "a-binary-api-gate", [CACHE / "provingexperiment-go"])
    validate_gate(CACHE / "b-final-api-gate", [CACHE / "provingexperiment-go", SPIKE / "target/release/shieldd-proving-experiment", CACHE / "b-lowered/lowered.pk"])
    validate_gate(CACHE / "native-final-api-gate", [BINARY, KEY])
    out.mkdir(exist_ok=True); (out / "proofs").mkdir(exist_ok=True)
    source = ROOT / "tools/gnark/internal/testfixtures/vectors/transfer_witness.bin"
    source_payload = source.read_bytes()
    facts = json.loads((CACHE / "logical-facts.json").read_text())["facts"]
    standard = next(f for f in facts if f["scenario"] == "transfer")
    require(digest(source_payload) == standard["witness_sha256"], "source witness identity mismatch")
    native_fact = next(f for f in json.loads((WITNESSES / "manifest.json").read_text())["facts"] if f["scenario"] == "transfer")
    native_payload = (WITNESSES / "transfer.witness").read_bytes()
    require(digest(native_payload) == native_fact["witness_sha256"] and native_fact["source_witness_sha256"] == standard["witness_sha256"], "native logical mapping mismatch")
    payloads = {"A": source_payload, "B": source_payload, "C": native_payload}
    statements = {"A": bytes.fromhex(standard["claimed_statement"])[::-1].hex(), "B": bytes.fromhex(standard["claimed_statement"])[::-1].hex(), "C": native_fact["claimed_statement"]}
    paths = [Path(__file__), SPIKE / "api_gate.py", SPIKE / "native_api_gate.py", SPIKE / "guard.py", CACHE / "provingexperiment-go", SPIKE / "target/release/shieldd-proving-experiment", BINARY, KEY, CACHE / "b-lowered/lowered.pk", SPIKE / "Cargo.lock", SPIKE / "native/Cargo.lock", ROOT / "tools/gnark/go.sum", SPIKE / "native/patches/commonware-polynomial-migration.patch", WITNESSES / "manifest.json"]
    paths += sorted(p for p in (ROOT / "tools/gnark/artifacts/transfer").iterdir() if p.is_file())
    for gate in ["a-binary-api-gate", "b-final-api-gate", "native-final-api-gate"]:
        paths += [CACHE / gate / name for name in ["identity.json", "complete.json", "gate.jsonl"]]
    identity = {"schema": "shieldd.proving_experiment.desktop_identity.v1", "platform": platform.platform(), "machine": platform.machine(), "cpu": subprocess.check_output(["sysctl", "-n", "machdep.cpu.brand_string"], text=True).strip(), "ram_bytes": int(subprocess.check_output(["sysctl", "-n", "hw.memsize"])), "workers": 2, "orders": ORDERS, "files": [{"path": str(p), "sha256": digest(p.read_bytes())} for p in paths]}
    identity_path = out / "identity.json"
    if identity_path.exists():
        require(json.loads(identity_path.read_text()) == identity, "source/artifact identity changed; preserve cache and choose a new run")
    else:
        identity_path.write_text(json.dumps(identity, indent=2)+"\n")
    samples, completed, hashes = load_samples(out)
    completion = out / "complete.json"
    if completion.exists():
        saved = json.loads(completion.read_text())
        for name, field in [("identity.json", "identity_sha256"), ("samples.jsonl", "samples_sha256"), ("results.json", "results_sha256")]:
            require(digest((out/name).read_bytes()) == saved[field], "completed artifact changed")
        require(saved["measured_proofs"] == 18 and saved["all_verified"], "invalid completion record")
        return
    workers = {}
    session = sum(1 for line in (out / "samples.jsonl").read_text().splitlines() if '"stage":"initialization"' in line) if (out / "samples.jsonl").exists() else 0
    with ExitStack() as stack, (out / "samples.jsonl").open("a") as log, Monitor(out / f"memory-{session}.jsonl") as monitor:
        for candidate in "ABC":
            # The constructor blocks on checked preparation; its fresh-process cost is included.
            monitor.phase = f"first/{candidate}"
            on_start = lambda pid: monitor.roots.__setitem__(candidate, pid)
            first_start = time.perf_counter_ns()
            worker = NativeWorker(on_start) if candidate == "C" else Worker(candidate, on_start)
            ready_ns = time.perf_counter_ns()-first_start
            stack.callback(worker.close); workers[candidate] = worker
            monitor.roots[candidate] = worker.process.pid
            record(log, {"stage": "initialization", "candidate": candidate, "ready_ns": ready_ns, "response": asdict(worker.ready.header)})
            if f"first/{candidate}" not in completed:
                samples.append(checked_sample(worker, candidate, payloads[candidate], statements[candidate], f"first/{candidate}", True, monitor, out, log, hashes, first_start, ready_ns))
            for prior in samples:
                if prior.candidate == candidate:
                    proof = (out / "proofs" / f"{prior.sample_id.replace('/', '-')}.bin").read_bytes()
                    checked = worker.call("verify", proof, statements[candidate])
                    require(not checked.header.error and checked.header.verified, "resumed proof rejected by checked verifier")
        for index, order in enumerate(("CBA", "ABC")):
            for candidate in order:
                samples.append(checked_sample(workers[candidate], candidate, payloads[candidate], statements[candidate], f"warmup/{session}/{index}/{candidate}", False, monitor, out, log, hashes))
        for index, order in enumerate(ORDERS):
            for candidate in order:
                if f"warm/{index}/{candidate}" not in completed:
                    samples.append(checked_sample(workers[candidate], candidate, payloads[candidate], statements[candidate], f"warm/{index}/{candidate}", True, monitor, out, log, hashes))
    require(all(w.process.returncode == 0 for w in workers.values()), "a worker failed at shutdown")
    require(sum(s.measured for s in samples) == 18 and {s.sample_id for s in samples if s.measured} == {f"first/{c}" for c in "ABC"} | {f"warm/{i}/{c}" for i in range(5) for c in "ABC"}, "wrong measurement identities")
    report(out, samples, identity)
    (out / "complete.json").write_text(json.dumps({"identity_sha256": digest((out / "identity.json").read_bytes()), "samples_sha256": digest((out / "samples.jsonl").read_bytes()), "results_sha256": digest((out / "results.json").read_bytes()), "measured_proofs": 18, "warmups": sum(not s.measured for s in samples), "all_verified": True}, indent=2)+"\n")

if __name__ == "__main__":
    main()
