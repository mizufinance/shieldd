#!/usr/bin/env python3
"""Exercise the real NOMT storage boundary with and without Linux I/O permission."""
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import uuid

ROOT = Path(__file__).resolve().parents[2]
PROFILE = ROOT / "deployments/seccomp/nomt.json"
TEST = "store::tests::unavailable_io_uring_creates_no_store"
REOPEN_TEST = "store::tests::decided_materialization_replays_after_forest_advanced_without_raw_batch"
PHASE = "Docker availability"


def phase(value):
    global PHASE
    PHASE = value
    print(f"::notice title=Container storage gate::{value}", flush=True)


def main():
    phase(f"Docker CLI available={shutil.which('docker') is not None}")
    subprocess.run(["docker", "version", "--format", "{{.Server.Version}}"], check=True, timeout=15)
    if sys.argv[1:] == ["--check-runtime"]:
        return
    phase("Select current storage test binary")
    command = ["cargo", "test", "--locked", "--profile", "ci", "--workspace",
               "--all-features", "--no-run", "--message-format=json"]
    binaries = []
    with subprocess.Popen(command, cwd=ROOT, stdout=subprocess.PIPE, text=True) as build:
        for line in build.stdout:
            event = json.loads(line)
            if (event.get("reason") == "compiler-artifact"
                    and event["target"]["name"] == "shieldd_sdk_storage"
                    and event["profile"]["test"] and event.get("executable")):
                binaries.append(Path(event["executable"]).resolve())
        if build.wait():
            raise SystemExit("container storage test compilation failed")
    if len(binaries) != 1:
        raise SystemExit("expected exactly one current storage test binary")
    binary = "/workspace/" + str(binaries[0].relative_to(ROOT))
    phase("Pull container runtime")
    subprocess.run(["docker", "pull", "ubuntu:24.04"], check=True, timeout=180)
    base = ["docker", "run", "--rm", "--network", "none", "--memory", "1g",
            "--cpus", "2", "--mount", f"type=bind,source={ROOT},target=/workspace,readonly"]
    if Path("/nix").exists():
        base += ["--mount", "type=bind,source=/nix,target=/nix,readonly"]
        base += ["--env", f"LD_LIBRARY_PATH={os.environ.get('LD_LIBRARY_PATH', '')}"]
    def run(profile, test, denied=None, list_only=False):
        label = "binary discovery" if list_only else denied or "write/read/reopen"
        phase(f"Run {label}")
        name = "shieldd-storage-gate-" + uuid.uuid4().hex
        cmd = base + ["--name", name] + (["--security-opt", f"seccomp={profile}"] if profile else [])
        if denied:
            cmd += ["--env", f"SHIELDD_EXPECT_IO_URING_DENIAL={denied}"]
        cmd += ["ubuntu:24.04", binary, test, "--exact", "--test-threads=1"]
        if denied:
            cmd += ["--ignored"]
        if list_only:
            cmd += ["--list"]
        try:
            result = subprocess.run(cmd, timeout=180, text=True, stdout=subprocess.PIPE)
            print(result.stdout, flush=True)
            result.check_returncode()
        finally:
            subprocess.run(["docker", "rm", "--force", name], timeout=15,
                           stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        if list_only:
            if result.stdout.count(f"{test}: test") != 1:
                raise SystemExit(f"container must discover exactly one selected test: {test}")
        elif "1 passed; 0 failed" not in result.stdout:
            raise SystemExit("container storage gate must execute its selected test")
        phase(f"Passed {label}")

    run(PROFILE, TEST, list_only=True)
    run(PROFILE, REOPEN_TEST, list_only=True)
    with tempfile.TemporaryDirectory(prefix="shieldd-seccomp-") as directory:
        setup_only = json.loads(PROFILE.read_text())
        rule = setup_only["syscalls"][-1]
        assert rule["names"] == ["io_uring_setup", "io_uring_enter"]
        baseline = json.loads(PROFILE.read_text())
        baseline["syscalls"].pop()
        blocked = Path(directory) / "blocked.json"
        blocked.write_text(json.dumps(baseline))
        run(blocked, TEST, denied="io_uring_setup")
        rule["names"] = ["io_uring_setup"]
        path = Path(directory) / "setup-only.json"
        path.write_text(json.dumps(setup_only))
        run(path, TEST, denied="io_uring_enter")
    run(PROFILE, REOPEN_TEST)


if __name__ == "__main__":
    try:
        main()
    except (OSError, ValueError, subprocess.SubprocessError, SystemExit) as error:
        code = getattr(error, "returncode", None)
        print(f"::error title=Container storage gate::{PHASE}; {type(error).__name__}; exit={code}", flush=True)
        raise
