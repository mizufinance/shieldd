#!/usr/bin/env python3
"""Exercise the real NOMT storage boundary with and without Linux I/O permission."""
import json
from pathlib import Path
import subprocess
import tempfile
import uuid

ROOT = Path(__file__).resolve().parents[2]
PROFILE = ROOT / "deployments/seccomp/nomt.json"
TEST = "permanent_nullifiers::store::tests::unavailable_io_uring_creates_no_store"


def main():
    command = ["cargo", "test", "--locked", "--profile", "ci", "--workspace",
               "--all-features", "--no-run", "--message-format=json"]
    binaries = []
    with subprocess.Popen(command, cwd=ROOT, stdout=subprocess.PIPE, text=True) as build:
        for line in build.stdout:
            event = json.loads(line)
            if (event.get("reason") == "compiler-artifact"
                    and event["target"]["name"] == "shieldd_sdk_sct"
                    and event["profile"]["test"] and event.get("executable")):
                binaries.append(Path(event["executable"]).resolve())
        if build.wait():
            raise SystemExit("container storage test compilation failed")
    if len(binaries) != 1:
        raise SystemExit("expected exactly one current SCT test binary")
    binary = "/workspace/" + str(binaries[0].relative_to(ROOT))
    subprocess.run(["docker", "pull", "ubuntu:24.04"], check=True, timeout=180)
    base = ["docker", "run", "--rm", "--network", "none", "--memory", "1g",
            "--cpus", "2", "--mount", f"type=bind,source={ROOT},target=/workspace,readonly"]
    if Path("/nix").exists():
        base += ["--mount", "type=bind,source=/nix,target=/nix,readonly"]
    def run(profile, test, denied=None):
        name = "shieldd-storage-gate-" + uuid.uuid4().hex
        cmd = base + ["--name", name] + (["--security-opt", f"seccomp={profile}"] if profile else [])
        if denied:
            cmd += ["--env", f"SHIELDD_EXPECT_IO_URING_DENIAL={denied}"]
        cmd += ["ubuntu:24.04", binary, test, "--exact", "--test-threads=1"]
        if denied:
            cmd += ["--ignored"]
        try:
            result = subprocess.run(cmd, check=True, timeout=180, text=True, stdout=subprocess.PIPE)
        finally:
            subprocess.run(["docker", "rm", "--force", name], timeout=15,
                           stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        print(result.stdout, end="", flush=True)
        if "1 passed; 0 failed" not in result.stdout:
            raise SystemExit("container storage gate must execute its selected test")

    run(None, TEST, denied="io_uring_setup")
    with tempfile.TemporaryDirectory(prefix="shieldd-seccomp-") as directory:
        setup_only = json.loads(PROFILE.read_text())
        rule = setup_only["syscalls"][-1]
        assert rule["names"] == ["io_uring_setup", "io_uring_enter"]
        rule["names"] = ["io_uring_setup"]
        path = Path(directory) / "setup-only.json"
        path.write_text(json.dumps(setup_only))
        run(path, TEST, denied="io_uring_enter")
    run(PROFILE, "permanent_nullifiers::store::tests::permanent_set_matches_reference_and_reopens")


if __name__ == "__main__":
    main()
