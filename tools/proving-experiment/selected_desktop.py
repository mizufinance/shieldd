"""Matched selected-arithmetic comparison; preserves the frozen desktop-final run."""
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
from selected_workers import SelectedWorker, artifacts, sources
from desktop import Monitor, checked_sample, report, load_samples, validate_gate

ORDERS = ("ABC", "BCA", "CAB", "CBA", "ACB")

def main():
    require(len(sys.argv) == 2, "usage: selected_desktop.py NEW_CACHE_DIRECTORY")
    out = Path(sys.argv[1]).resolve()
    require(out.is_relative_to(CACHE.resolve()), "desktop samples must remain in experiment cache")
    require(all(os.environ.get(name) == "2" for name in ["CARGO_BUILD_JOBS", "RAYON_NUM_THREADS", "GOMAXPROCS"]), "final comparison requires the common two-worker profile")
    validate_gate(CACHE / "a-binary-api-gate", [CACHE / "provingexperiment-go"])
    for candidate in "BC":
        validate_gate(CACHE / f"selected-{candidate.lower()}-api-gate", artifacts(candidate) + sources(candidate))
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
    paths = [Path(__file__), SPIKE/'desktop.py', SPIKE/'api_gate.py', SPIKE/'native_api_gate.py', SPIKE/'guard.py', CACHE/'provingexperiment-go', CACHE/'desktop-selected-source/manifest.json', CACHE/'desktop-selected-source/source.tar.gz', CACHE/'logical-facts.json', source, WITNESSES/'transfer.witness']
    for candidate in 'BC':
        paths += artifacts(candidate) + sources(candidate)
    for gate in ['a-binary-api-gate', 'selected-b-api-gate', 'selected-c-api-gate']:
        paths += [CACHE/gate/name for name in ['identity.json', 'complete.json', 'gate.jsonl']]
    paths = sorted(set(paths))
    identity = {"schema": "shieldd.proving_experiment.selected_desktop_identity.v1", "platform": platform.platform(), "machine": platform.machine(), "cpu": subprocess.check_output(["sysctl", "-n", "machdep.cpu.brand_string"], text=True).strip(), "ram_bytes": int(subprocess.check_output(["sysctl", "-n", "hw.memsize"])), "workers": 2, "orders": ORDERS, "files": [{"path": str(p), "sha256": digest(p.read_bytes())} for p in paths]}
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
            worker = Worker(candidate, on_start) if candidate == "A" else SelectedWorker(candidate, on_start)
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
