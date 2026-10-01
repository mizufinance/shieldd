#!/usr/bin/env python3
"""Run a CI command with numeric resource counters as check annotations."""

from __future__ import annotations

import argparse
import json
import os
import shutil
import subprocess
import time
from dataclasses import asdict, dataclass, replace
from pathlib import Path

from run_with_annotation import escape_workflow_command, normalized_status, redact


@dataclass(frozen=True)
class Resources:
    memory_total_bytes: int | None
    memory_available_bytes: int | None
    memory_sampled_peak_used_bytes: int | None
    cgroup_memory_limit_bytes: int | None
    cgroup_oom_kills: int | None
    disk_available_bytes: int | None
    load_1m: float | None


def read_counters(path: Path) -> dict[str, int]:
    try:
        return {
            fields[0].removesuffix(":"): int(fields[1])
            for line in path.read_text().splitlines()
            if len(fields := line.split()) >= 2 and fields[1].isdecimal()
        }
    except OSError:
        return {}


def sample() -> Resources:
    memory = read_counters(Path("/proc/meminfo"))
    limit = None
    oom_kills = None
    try:
        for line in Path("/proc/self/cgroup").read_text().splitlines():
            if line.startswith("0::"):
                directory = Path("/sys/fs/cgroup") / line[3:].lstrip("/")
                value = (directory / "memory.max").read_text().strip()
                limit = int(value) if value.isdecimal() else None
                oom_kills = read_counters(directory / "memory.events").get("oom_kill")
                break
    except OSError:
        pass
    try:
        disk_available = shutil.disk_usage(Path.cwd()).free
    except OSError:
        disk_available = None
    try:
        load = os.getloadavg()[0]
    except (OSError, AttributeError):
        load = None
    return Resources(
        memory_total_bytes=memory.get("MemTotal", 0) * 1024 or None,
        memory_available_bytes=memory.get("MemAvailable", 0) * 1024
        if "MemAvailable" in memory
        else None,
        memory_sampled_peak_used_bytes=None,
        cgroup_memory_limit_bytes=limit,
        cgroup_oom_kills=oom_kills,
        disk_available_bytes=disk_available,
        load_1m=load,
    )


def run(command: list[str], title: str) -> int:
    peak = 0
    next_annotation = 0.0
    safe_title = escape_workflow_command(redact(title)[:120])
    with subprocess.Popen(command) as process:
        while True:
            resources = sample()
            if (
                resources.memory_total_bytes is not None
                and resources.memory_available_bytes is not None
            ):
                peak = max(
                    peak,
                    resources.memory_total_bytes - resources.memory_available_bytes,
                )
                resources = replace(resources, memory_sampled_peak_used_bytes=peak)
            status = process.poll()
            now = time.monotonic()
            if now >= next_annotation or status is not None:
                counters = escape_workflow_command(json.dumps(asdict(resources)))
                print(f"\n::notice title=Runner resources - {safe_title}::{counters}", flush=True)
                next_annotation = now + 60
            if status is not None:
                return normalized_status(status)
            try:
                process.wait(timeout=5)
            except subprocess.TimeoutExpired:
                pass


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--title", required=True)
    parser.add_argument("command", nargs=argparse.REMAINDER)
    args = parser.parse_args()
    command = args.command[1:] if args.command[:1] == ["--"] else args.command
    if not command:
        parser.error("a command is required after --")
    return run(command, args.title)


if __name__ == "__main__":
    raise SystemExit(main())
