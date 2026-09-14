"""Run one development job with stable ancestry ownership and resource monitoring."""
from dataclasses import dataclass
import contextlib
import fcntl
import json
import os
from pathlib import Path
import re
import shutil
import signal
import subprocess
import sys
import time
HERE = Path(__file__).resolve().parent
HEAVY_EXECUTABLES = {"cargo", "rustc", "go", "gnark-worker", "proof_spike", "shieldd-zkpari-spike", "shieldd-proving-experiment", "rocqchk", "rocqc", "coqchk", "coqc", "lean"}
def command(args):
    return subprocess.check_output(args,text=True).strip()
def require(condition, message):
    if not condition: raise RuntimeError(message)

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


def main():
    require(len(sys.argv)>3 and sys.argv[2] == "--", "usage: guard.py LOG_PREFIX -- COMMAND...")
    prefix=Path(sys.argv[1]); prefix.parent.mkdir(parents=True,exist_ok=True)
    with (HERE / "cache/heavy.lock").open("w") as lock:
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        initial=preflight()
        tracker=WorkloadTracker()
        supervisor=os.getpid()
        with prefix.with_suffix(".log").open("a") as log, prefix.with_suffix(".resources.jsonl").open("a") as records:
            process=subprocess.Popen(sys.argv[3:],stdout=log,stderr=log,start_new_session=True)
            failure=None
            def stop(signum,frame):
                nonlocal failure
                failure=f"received signal {signum}"
                with contextlib.suppress(ProcessLookupError): os.killpg(process.pid,signal.SIGTERM)
            signal.signal(signal.SIGINT,stop); signal.signal(signal.SIGTERM,stop)
            try:
                while process.poll() is None:
                    r=resources()
                    rss,competing=tracker.classify(process_snapshot(),[supervisor],time.monotonic())
                    r.update(supervisor_pid=supervisor,child_pid=process.pid,tree_rss_bytes=rss,competing_heavy_pids=competing)
                    records.write(json.dumps(r)+"\n"); records.flush()
                    if competing or r["swap_bytes"]>initial["swap_bytes"]+128*1024**2 or r["available_bytes"]<1024**3 or r["disk_free_bytes"]<2*1024**3:
                        raise RuntimeError("resource pressure: "+json.dumps(r))
                    time.sleep(1)
            except BaseException as error:
                failure=str(error)
            finally:
                if process.poll() is None:
                    with contextlib.suppress(ProcessLookupError): os.killpg(process.pid,signal.SIGTERM)
                    try: process.wait(timeout=10)
                    except subprocess.TimeoutExpired:
                        with contextlib.suppress(ProcessLookupError): os.killpg(process.pid,signal.SIGKILL)
                        process.wait()
                prefix.with_suffix(".exit.json").write_text(json.dumps({"time_ns":time.time_ns(),"argv":sys.argv[3:],"code":process.returncode,"failure":failure},indent=2)+"\n")
            require(not failure and process.returncode==0, failure or f"job exited {process.returncode}")

if __name__=="__main__": main()
