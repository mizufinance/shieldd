#!/usr/bin/env python3
"""Sequential, resumable development benchmark. All durations are typed nanoseconds."""
from __future__ import annotations

import argparse
import contextlib
from dataclasses import asdict, dataclass
import fcntl
import hashlib
import json
import os
from pathlib import Path
import platform
import re
import shutil
import signal
import subprocess
import sys
import threading
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent.parent
ARTIFACTS = ROOT / "tools/gnark/artifacts/transfer"
SCENARIOS = ("transfer", "transfer_unregulated", "transfer_flagged", "transfer_accumulating",
             "transfer_over_limit_disclosure", "transfer_accumulator_continuation")
COUNTS = (1, 2, 8, 16, 32, 48, 64, 128, 256, 257, 512, 1024, 1025, 2048, 4096)
PIN = "a8266aac58314214552a214fead1c0258f8de418"
HEAVY_EXECUTABLES = {"cargo", "rustc", "go", "gnark-worker", "proof_spike", "shieldd-zkpari-spike", "rocqchk", "rocqc", "coqchk", "coqc", "lean"}


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def digest(path):
    h = hashlib.sha256()
    with Path(path).open("rb") as f:
        for block in iter(lambda: f.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def canonical_hash(value):
    return hashlib.sha256(json.dumps(value, sort_keys=True, separators=(",", ":")).encode()).hexdigest()


def save(path, value):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_suffix(path.suffix + ".tmp")
    with temporary.open("w") as f:
        json.dump(value, f, indent=2, sort_keys=True)
        f.write("\n")
        f.flush()
        os.fsync(f.fileno())
    temporary.replace(path)


def read(path):
    return json.loads(Path(path).read_text())


def command(args, cwd=ROOT):
    return subprocess.check_output(args, cwd=cwd, text=True).strip()


def source_identity():
    files = command(["git", "ls-files", "-z"]).split("\0")
    sources = [p for p in files if p.endswith((".rs", ".go", ".toml", ".lock", ".bin", ".json", ".sum", ".mod"))
               and not p.startswith((".git/", "tools/zkpari-spike/results/", "tools/zkpari-spike/cache/"))]
    sources += [str(p.relative_to(ROOT)) for p in (HERE / "src").glob("*.rs")]
    sources += [str(p.relative_to(ROOT)) for p in (ROOT / "tools/gnark/cmd/proofspike").glob("*.go")]
    sources += [str(p.relative_to(ROOT)) for p in HERE.glob("*.py")]
    sources += ["tools/zkpari-spike/Cargo.lock", "tools/zkpari-spike/Cargo.toml",
                "tools/zkpari-spike/requirements.txt", "crates/crypto/proof-aggregation/examples/proof_spike.rs"]
    hashes = {p: digest(ROOT / p) for p in sorted(set(sources)) if (ROOT / p).is_file()}
    return {"shieldd_revision": command(["git", "rev-parse", "HEAD"]), "zkpari_revision": PIN,
            "source_hashes": hashes, "rustc": command(["rustc", "-Vv"]), "go": command(["go", "version"]),
            "profiles": [1, 2], "cpu": command(["sysctl", "-n", "machdep.cpu.brand_string"]),
            "os": platform.platform(), "samples": 30, "warmups": 3, "first_proofs": 5,
            "python": sys.version,
            "counts": COUNTS, "scenarios": SCENARIOS}


def resources():
    vm = command(["vm_stat"])
    page = int(re.search(r"page size of (\d+)", vm).group(1))
    fields = dict((k, int(v)) for k, v in re.findall(r"^([^:]+):\s+(\d+)\.", vm, re.M))
    swap = command(["sysctl", "vm.swapusage"])
    used = float(re.search(r"used = ([\d.]+)M", swap).group(1)) * 1024**2
    return {"time_ns": time.time_ns(), "swap_bytes": int(used),
            "available_bytes": page * sum(fields.get(k, 0) for k in ("Pages free", "Pages inactive")),
            "disk_free_bytes": shutil.disk_usage(HERE).free}


def preflight():
    r = resources()
    require(r["available_bytes"] > 2 * 1024**3, "less than 2 GiB reclaimable memory")
    require(r["disk_free_bytes"] > 4 * 1024**3, "less than 4 GiB free disk")
    _, heavy = WorkloadTracker().classify(process_snapshot(), [], time.monotonic())
    require(not heavy, "competing heavy jobs; wait for these PIDs to finish: " + str(heavy))
    return r


@dataclass(frozen=True)
class ProcessUsage:
    pid: int
    parent: int
    rss_bytes: int
    executable: str
    cpu_percent: float = 0


def process_snapshot():
    return [ProcessUsage(int(pid), int(parent), int(rss)*1024, executable, float(cpu))
            for pid,parent,rss,cpu,executable in (line.strip().split(None,4) for line in command(["ps","-axo","pid=,ppid=,rss=,%cpu=,comm="]).splitlines())]


class WorkloadTracker:
    def __init__(self):
        self.busy_since: dict[int, float] = {}

    def classify(self, processes, roots, now):
        owned = set(roots)
        while True:
            children = {p.pid for p in processes if p.parent in owned}
            if children <= owned: break
            owned.update(children)
        external = [p for p in processes if p.pid not in owned]
        busy = {p.pid for p in external if p.cpu_percent > 80 and p.rss_bytes > 1024**3}
        self.busy_since = {pid: self.busy_since.get(pid, now) for pid in busy}
        # Unknown workloads must stay busy for 30 seconds; UI bursts are common.
        competing = [p.pid for p in external if Path(p.executable).name in HEAVY_EXECUTABLES
                     or (p.pid in busy and now - self.busy_since[p.pid] >= 30)]
        return sum(p.rss_bytes for p in processes if p.pid in owned), competing


class Monitor:
    def __init__(self, path):
        self.path = path
        self.processes = []
        self.stop_event = threading.Event()
        self.failure = None
        self.peak_rss = 0
        self.initial = resources()
        self.workloads = WorkloadTracker()
        self.thread = threading.Thread(target=self.loop, daemon=True)

    def __enter__(self):
        self.thread.start()
        return self

    def reset_peak(self):
        self.peak_rss = 0

    def loop(self):
        while not self.stop_event.wait(1):
            try:
                r = resources()
                roots = [p.pid for p in self.processes if p.poll() is None]
                rss, competing = self.workloads.classify(process_snapshot(), roots, time.monotonic())
                self.peak_rss = max(self.peak_rss, rss)
                r["worker_rss_bytes"] = rss
                r["competing_heavy_pids"] = competing
                with self.path.open("a") as f:
                    f.write(json.dumps(r) + "\n")
                if (competing or r["swap_bytes"] > self.initial["swap_bytes"] + 128 * 1024**2
                    or r["available_bytes"] < 1024**3 or r["disk_free_bytes"] < 2 * 1024**3):
                    self.failure = "resource pressure: " + json.dumps(r)
                    self.kill()
                    return
            except Exception as error:
                self.failure = "resource monitor failed: " + str(error)
                self.kill()
                return

    def kill(self):
        for process in self.processes:
            if process.poll() is None:
                with contextlib.suppress(ProcessLookupError):
                    os.killpg(process.pid, signal.SIGTERM)

    def check(self):
        require(self.failure is None, self.failure)

    def __exit__(self, *_):
        self.stop_event.set()
        self.thread.join()
        self.kill()


def environment(workers):
    return {**os.environ, "CARGO_BUILD_JOBS": "2", "RAYON_NUM_THREADS": str(workers), "GOMAXPROCS": str(workers)}


def run_job(args, monitor, log, cwd=ROOT, env=None, structured=False):
    with Path(log).open("w") as output, contextlib.ExitStack() as stack:
        stderr = stack.enter_context(Path(str(log) + ".stderr").open("w")) if structured else subprocess.STDOUT
        p = subprocess.Popen(args, cwd=cwd, env=env or environment(2), stdout=output, stderr=stderr, start_new_session=True)
        monitor.processes.append(p)
        code = p.wait()
        monitor.check()
        require(code == 0, f"command failed ({code}); see {log}")


class JsonWorker:
    def __init__(self, args, workers, monitor, log, ready=False):
        self.log = Path(log).open("a")
        self.process = subprocess.Popen(args, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=self.log,
                                        text=True, env=environment(workers), start_new_session=True)
        self.monitor = monitor
        monitor.processes.append(self.process)
        self.ready = self.receive() if ready else None

    def receive(self):
        line = self.process.stdout.readline()
        self.monitor.check()
        require(line, f"worker exited: {self.process.args}; see {self.log.name}")
        response = json.loads(line)
        require(not response.get("error"), response.get("error"))
        return response

    def ask(self, **request):
        self.process.stdin.write(json.dumps(request, separators=(",", ":")) + "\n")
        self.process.stdin.flush()
        return self.receive()

    def close(self):
        if self.process.poll() is None:
            self.process.stdin.close()
            try:
                self.process.wait(timeout=5)
            except subprocess.TimeoutExpired:
                os.killpg(self.process.pid, signal.SIGTERM)
                self.process.wait()
        self.process.stdout.close()
        self.log.close()


@dataclass(frozen=True)
class ProofRecord:
    scenario: str
    statement: str
    proof: str

    def __post_init__(self):
        require(self.scenario in SCENARIOS, "unknown corpus scenario")
        require(len(bytes.fromhex(self.statement)) == 32, "statement width")
        require(len(bytes.fromhex(self.proof)) in (128, 192), "proof width")
        require(bytes.fromhex(self.statement).hex() == self.statement and bytes.fromhex(self.proof).hex() == self.proof, "noncanonical hex record")


class Backend:
    def __init__(self, name, workers, cache, monitor, with_prover=True):
        self.name, self.cache = name, cache
        self.expected = {r["scenario"]: {k:r[k] for k in ("witness_sha256", "statement")} for r in read(cache / "prepared.json")["witnesses"]}
        self.go = JsonWorker([str(HERE / "cache/bin/gnark-worker"), str(ARTIFACTS)], workers, monitor, cache / "go.stderr") if with_prover else None
        self.go_init = self.go.ask(op="init") if self.go else {}
        if name == "groth16":
            self.key_init = self.go.ask(op="load_key") if self.go else {}
            args = [str(ROOT / "target/release/examples/proof_spike")]
        else:
            self.key_init = {}
            args = [str(HERE / "target/release/shieldd-zkpari-spike"), "worker" if with_prover else "verify-worker", str(cache)]
        self.rust = JsonWorker(args, workers, monitor, cache / (name + ".stderr"), ready=True)

    def prove(self, scenario):
        require(self.go is not None, "verification-only worker")
        start = time.perf_counter_ns()
        solved = self.go.ask(op="prove" if self.name == "groth16" else "solve", scenario=scenario,
                             path=str(self.cache / "over_limit_disclosure.bin"))
        require(all(solved[k] == v for k,v in self.expected[scenario].items()), "witness or statement changed during run")
        request = {"op": "import" if self.name == "groth16" else "prove", "statement": solved["statement"], "scenario": scenario}
        if self.name == "groth16":
            request["gnark_proof"] = solved["proof"]
        else:
            request["assignment"] = solved["assignment"]
        r = self.rust.ask(**request)
        wall = time.perf_counter_ns() - start
        record = ProofRecord(**r["proof"])
        return record, {"request_wall_ns": wall, "go": {k:v for k,v in solved.items() if k.endswith("_ns")},
                        "rust": {k:v for k,v in r.items() if k.endswith("_ns")},
                        "go_peak_rss_bytes": solved["peak_rss_bytes"], "rust_peak_rss_bytes": r["peak_rss_bytes"]}

    def verify(self, record):
        r = self.rust.ask(op="verify", proofs=[asdict(record)])
        require(r["accepted"], "individual verification failed")
        return r

    def close(self):
        if self.go: self.go.close()
        self.rust.close()


def batch_request(backend, proofs, aggregate=""):
    if backend == "groth16":
        return {"op":"batch", "statements":[p["statement"] for p in proofs], "aggregate":aggregate}
    require(backend == "zkpari", "unknown backend")
    return {"op":"batch", "proofs":proofs}


def build(cache, monitor):
    jobs = [(["go", "build", "-p", "2", "-o", str(HERE / "cache/bin/gnark-worker"), "./cmd/proofspike"], ROOT / "tools/gnark", "go-build.log"),
            (["cargo", "build", "--release", "--locked", "--manifest-path", str(HERE / "Cargo.toml")], ROOT, "candidate-build.log"),
            (["cargo", "build", "--release", "--locked", "-p", "shieldd-sdk-proof-aggregation", "--example", "proof_spike"], ROOT, "baseline-build.log")]
    for args, cwd, log in jobs:
        run_job(args, monitor, cache / log, cwd=cwd)


def prepare(cache, monitor):
    if (cache / "prepared.json").exists():
        validate_prepared(cache)
        return
    build(cache, monitor)
    out = cache / "over_limit_disclosure.bin"
    run_job(["cargo", "test", "--release", "--locked", "-p", "shieldd-sdk-shielded-pool", "--lib", "export_spike_over_limit_disclosure", "--", "--ignored", "--test-threads=2"],
            monitor, cache / "fixture-export.log", env={**environment(2), "SHIELDD_SPIKE_WITNESS_OUT": str(out)})
    go = JsonWorker([str(HERE / "cache/bin/gnark-worker"), str(ARTIFACTS)], 2, monitor, cache / "go.stderr")
    try:
        init = go.ask(op="init")
        save(cache / "metadata.json", init["metadata"])
        save(cache / "go-initialization.json", init)
        go.ask(op="export", path=str(cache / "transfer.r1cs"))
        for scenario in SCENARIOS:
            solved = go.ask(op="solve", scenario=scenario, path=str(out))
            save(cache / (scenario + ".json"), solved)
        try:
            go.ask(op="solve", scenario="transfer_accumulator_over_limit")
        except RuntimeError as error:
            require("not satisfied" in str(error), "wrong failure for negative accumulator fixture")
            save(cache / "negative-accumulator.json", {"accepted": False, "error": str(error)})
        else:
            raise RuntimeError("invalid accumulator fixture accepted")
    finally:
        go.close()
    run_job([str(HERE / "target/release/shieldd-zkpari-spike"), "gate", str(cache)], monitor, cache / "candidate-gate.jsonl", structured=True)
    artifacts = ["metadata.json", "transfer.r1cs", "zkpari.pk", "zkpari.vk", "over_limit_disclosure.bin"] + [s + ".json" for s in SCENARIOS]
    witnesses = []
    for scenario in SCENARIOS:
        solved = read(cache / (scenario+".json"))
        witnesses.append({k:solved[k] for k in ("scenario", "witness_sha256", "statement")})
    identity = {"files": {p: digest(cache / p) for p in artifacts}, "witnesses": witnesses,
                "baseline_pk": digest(ARTIFACTS / "proving_key.bin"), "baseline_vk": digest(ARTIFACTS / "verifying_key.bin"),
                "binaries": {str(p): digest(p) for p in (HERE / "cache/bin/gnark-worker", HERE / "target/release/shieldd-zkpari-spike", ROOT / "target/release/examples/proof_spike")}}
    identity["identity"] = canonical_hash(identity)
    save(cache / "prepared.json", identity)


def validate_prepared(cache):
    prepared = read(cache / "prepared.json")
    require(prepared["identity"] == canonical_hash({k:v for k,v in prepared.items() if k != "identity"}), "prepared manifest corrupt")
    for path, sha in prepared["files"].items():
        require(digest(cache / path) == sha, "artifact changed: " + path)
    for path, sha in prepared["binaries"].items():
        require(digest(path) == sha, "binary changed: " + path)
    require(digest(ARTIFACTS / "proving_key.bin") == prepared["baseline_pk"], "baseline PK changed")
    require(digest(ARTIFACTS / "verifying_key.bin") == prepared["baseline_vk"], "baseline VK changed")
    return prepared["identity"]


def correctness(cache, monitor):
    identity = validate_prepared(cache)
    if (cache / "correctness.json").exists():
        require(read(cache / "correctness.json")["identity"] == identity, "stale correctness gate")
        return
    checks = [
        (["go", "test", "-p", "2", "./cmd/proofspike"], ROOT / "tools/gnark", "helper"),
        (["cargo", "test", "--release", "--locked", "--manifest-path", str(HERE / "Cargo.toml"), "--", "--test-threads=2"], ROOT, "adapter"),
        (["cargo", "test", "--release", "--locked", "-p", "shieldd-sdk-proof-aggregation", "--example", "proof_spike", "--", "--test-threads=2"], ROOT, "baseline-adapter"),
        ([sys.executable, "-m", "unittest", "test_runner"], HERE, "runner"),
        ([sys.executable, "tools/gnark/check_gnark_family_registries.py"], ROOT, "registries"),
    ]
    for crate, test in (("shieldd-sdk-proof-params", "consensus_verifying_keys_are_exact_bundled_keys"),
                        ("shieldd-sdk-proof-params", "deployed_proof_key_registry_is_exhaustive_and_pairwise_distinct"),
                        ("shieldd-sdk-proof-aggregation", "preflight_"),
                        ("shieldd-sdk-proof-aggregation", "production_registry_"),
                        ("shieldd-sdk-proof-aggregation", "padding::tests")):
        checks.append((["cargo", "test", "--release", "--locked", "-p", crate, "--lib", test, "--", "--test-threads=2"], ROOT, test))
    completed = []
    for args, cwd, name in checks:
        run_job(args, monitor, cache / (name + "-test.log"), cwd=cwd)
        completed.append({"name": name, "command": args, "status": "passed", "log_sha256": digest(cache / (name + "-test.log"))})
        save(cache / "tests.json", {"completed": completed, "production_ignored_real_proof_suite": "not run; real proofs exercised by spike correctness and corpus stages", "formal_checks": "not run"})
    results = {}
    for name in ("groth16", "zkpari"):
        backend = Backend(name, 2, cache, monitor)
        try:
            records = []
            for scenario in SCENARIOS:
                record, timing = backend.prove(scenario)
                backend.verify(record)
                negative = backend.rust.ask(op="negative", proofs=[asdict(record)])
                require(negative["accepted"], "negative suite failed")
                records.append({"record": asdict(record), "timing": timing})
            for count in (1, 2, 3, 6):
                proofs = [r["record"] for r in records[:count]]
                aggregate = backend.rust.ask(op="aggregate", proofs=proofs)["aggregate"] if name == "groth16" else ""
                require(backend.rust.ask(**batch_request(name, proofs, aggregate))["accepted"], "positive batch correctness failed")
            results[name] = records
        finally:
            backend.close()
    save(cache / "correctness.json", {"identity": identity, "results": results})


def corpus_entry(index, record, identity):
    require(record.scenario == SCENARIOS[index % len(SCENARIOS)], "wrong scenario ordering")
    return {"index": index, "identity": identity, "record": asdict(record), "record_sha256": canonical_hash(asdict(record))}


def load_corpus(cache, name, identity):
    directory = cache / "corpus" / name
    result = []
    seen = set()
    for i, path in enumerate(sorted(directory.glob("*.json"))):
        entry = read(path)
        record = ProofRecord(**entry["record"])
        require(entry == corpus_entry(i, record, identity), "corrupt/stale/noncontiguous corpus: " + str(path))
        require(record.proof not in seen, "duplicated proof bytes")
        seen.add(record.proof)
        result.append(record)
    return result


def corpus(cache, monitor):
    identity = validate_prepared(cache)
    require(read(cache / "correctness.json")["identity"] == identity, "correctness required")
    for name in ("groth16", "zkpari"):
        backend = Backend(name, 2, cache, monitor)
        try:
            records = load_corpus(cache, name, identity)
            seen = {r.proof for r in records}
            for record in records:
                backend.verify(record)
            for i in range(len(records), 4096):
                record, timing = backend.prove(SCENARIOS[i % 6])
                backend.verify(record)
                require(record.proof not in seen, "duplicate randomized proof")
                seen.add(record.proof)
                save(cache / "corpus" / name / f"{i:04}.json", corpus_entry(i, record, identity))
                with (cache / "corpus-generation.jsonl").open("a") as f:
                    f.write(json.dumps({"backend": name, "index": i, "timing": timing, "time_ns": time.time_ns()}) + "\n")
                if i % 8 == 0:
                    print(f"{name}: {i+1}/4096 real proofs verified and cached", flush=True)
        finally:
            backend.close()
    save(cache / "corpus.json", {"identity": identity, "count_per_backend": 4096,
         "corpus_hashes": {n: canonical_hash([asdict(r) for r in load_corpus(cache, n, identity)]) for n in ("groth16", "zkpari")}})


def backend_order(block):
    return ("groth16", "zkpari") if block % 2 == 0 else ("zkpari", "groth16")


def load_samples(path, repair_tail=False):
    if not path.exists(): return []
    raw = path.read_bytes()
    boundary = raw.rfind(b"\n") + 1
    if boundary < len(raw):
        require(repair_tail, "incomplete final sample record")
        path.with_suffix(".interrupted-tail").write_bytes(raw[boundary:])
        with path.open("r+b") as f: f.truncate(boundary)
    return [json.loads(line) for line in raw[:boundary].splitlines()]


def measure(cache, monitor):
    identity = validate_prepared(cache)
    require(read(cache / "corpus.json")["identity"] == identity, "complete corpus required")
    records = {n: load_corpus(cache, n, identity) for n in ("groth16", "zkpari")}
    require(all(len(v) == 4096 for v in records.values()), "4096 proofs per backend required")
    require(read(cache / "corpus.json")["corpus_hashes"] == {n: canonical_hash([asdict(r) for r in rs]) for n,rs in records.items()}, "corpus hash mismatch")
    samples = cache / "samples.jsonl"
    done = set()
    if samples.exists():
        for s in load_samples(samples, repair_tail=True):
            require(s["identity"] == identity, "stale sample")
            done.add(s["sample_id"])

    def record_sample(sample_id, **data):
        with samples.open("a") as f:
            f.write(json.dumps({"sample_id": sample_id, "identity": identity, "time_ns": time.time_ns(), **data}) + "\n")
            f.flush(); os.fsync(f.fileno())
        done.add(sample_id)

    for workers in (1, 2):
        backends = {n: Backend(n, workers, cache, monitor) for n in backend_order(workers)}
        try:
            save(cache / f"initialization-{workers}.json", {n: {"go": b.go_init, "go_key": b.key_init, "rust": b.rust.ready} for n,b in backends.items()})
            for scenario in SCENARIOS:
                for block in range(-3, 30):
                    for name in backend_order(block):
                        sid = f"warm/{workers}/{scenario}/{block}/{name}"
                        if block >= 0 and sid in done: continue
                        monitor.reset_peak()
                        p, timing = backends[name].prove(scenario)
                        backends[name].verify(p)
                        if block >= 0:
                            record_sample(sid, kind="warm", workers=workers, backend=name, scenario=scenario, block=block,
                                          metrics=timing, sampled_peak_worker_rss_bytes=monitor.peak_rss)
                print(f"warm proving complete: {workers} workers / {scenario}", flush=True)
            for b in backends.values(): b.close()
            backends = {n: Backend(n, workers, cache, monitor, with_prover=False) for n in backend_order(workers)}
            save(cache / f"verifier-initialization-{workers}.json", {n:b.rust.ready for n,b in backends.items()})
            for n,b in backends.items():
                for p in records[n]: b.verify(p)
            for scenario in SCENARIOS:
                index = SCENARIOS.index(scenario)
                for block in range(-3, 30):
                    for name in backend_order(block):
                        sid = f"individual/{workers}/{scenario}/{block}/{name}"
                        if block >= 0 and sid in done: continue
                        r = backends[name].verify(records[name][index])
                        if block >= 0:
                            record_sample(sid, kind="individual", workers=workers, backend=name, scenario=scenario, block=block, metrics=r)
            save(cache / f"srs-initialization-{workers}.json", backends["groth16"].rust.ask(op="prepare_batch"))
            for count in COUNTS:
                subsets = {n: [asdict(p) for p in v[:count]] for n,v in records.items()}
                agg = backends["groth16"].rust.ask(op="aggregate", proofs=subsets["groth16"])
                for n, b in backends.items():
                    r = b.rust.ask(**batch_request(n, subsets[n], agg["aggregate"]))
                    require(r["accepted"], "benchmark batch preflight failed")
                for block in range(-3, 30):
                    for name in backend_order(block):
                        sid = f"batch/{workers}/{count}/{block}/{name}"
                        if block >= 0 and sid in done: continue
                        monitor.reset_peak()
                        if name == "groth16":
                            agg = backends[name].rust.ask(op="aggregate", proofs=subsets[name])
                        r = backends[name].rust.ask(**batch_request(name, subsets[name], agg["aggregate"]))
                        require(r["accepted"], "timed verification rejected batch")
                        if name == "groth16":
                            r.update({k: v for k,v in agg.items() if k.startswith("aggregation_")})
                            r["combined_ns"] = r["aggregation_checked_ns"] + r["batch_checked_ns"]
                        if block >= 0:
                            record_sample(sid, kind="batch", workers=workers, backend=name, count=count, block=block,
                                          metrics=r, sampled_peak_worker_rss_bytes=monitor.peak_rss)
                print(f"batch measurements complete: {workers} workers / {count} proofs", flush=True)
        finally:
            for b in backends.values(): b.close()
        for scenario in SCENARIOS:
            for block in range(5):
                for name in backend_order(block):
                    sid = f"first/{workers}/{scenario}/{block}/{name}"
                    if sid in done: continue
                    monitor.reset_peak()
                    start = time.perf_counter_ns()
                    b = Backend(name, workers, cache, monitor)
                    try:
                        p, timing = b.prove(scenario)
                        first = time.perf_counter_ns() - start
                        b.verify(p)
                        record_sample(sid, kind="first", workers=workers, backend=name, scenario=scenario, block=block,
                                      metrics={"first_proof_ns": first, "go_initialization": b.go_init, "go_key_initialization": b.key_init,
                                               "rust_initialization": b.rust.ready, **timing}, sampled_peak_worker_rss_bytes=monitor.peak_rss)
                    finally:
                        b.close()
    save(cache / "measurement-complete.json", {"identity": identity, "raw_samples_sha256": digest(samples), "sample_count": len(done)})


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("stage", choices=("prepare", "correctness", "corpus", "measure", "report", "all"))
    parser.add_argument("--cache", type=Path, help="select an existing experiment; code identity must match except for reporting")
    args = parser.parse_args()
    (HERE / "cache").mkdir(exist_ok=True)
    with (HERE / "cache/run.lock").open("w") as lock:
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        identity = source_identity()
        cache = args.cache.resolve() if args.cache else HERE / "cache" / canonical_hash(identity)[:20]
        if args.stage == "report" and args.cache is None and (HERE / "cache/latest.json").exists():
            cache = Path(read(HERE / "cache/latest.json")["path"])
        if (cache / "source.json").exists() and args.stage != "report":
            require(canonical_hash(read(cache / "source.json")) == canonical_hash(identity), "source identity changed; use a new experiment")
        cache.mkdir(exist_ok=True)
        if args.stage != "report": save(cache / "source.json", identity)
        save(HERE / "cache/latest.json", {"path": str(cache)})
        print(f"Experiment cache: {cache}", flush=True)
        if args.stage == "report":
            from report import report
            report(cache)
            return
        save(cache / "resource-preflight.json", preflight())
        with Monitor(cache / "resources.jsonl") as monitor:
            try:
                for stage in ("prepare", "correctness", "corpus", "measure"):
                    if args.stage in (stage, "all"):
                        print("Stage: " + stage, flush=True)
                        globals()[stage](cache, monitor)
                if args.stage == "all":
                    from report import report
                    report(cache)
            except BaseException as error:
                save(cache / "interrupted.json", {"stage": args.stage, "error": str(error) or type(error).__name__, "time_ns": time.time_ns()})
                from report import report
                report(cache)
                raise


if __name__ == "__main__":
    main()
