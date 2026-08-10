#!/usr/bin/env python3
"""Sum resident memory for one Linux process group from procfs."""

from __future__ import annotations

import argparse
from pathlib import Path


def process_group(stat: str) -> int:
    _, separator, suffix = stat.rpartition(") ")
    if not separator:
        raise ValueError("malformed proc stat")
    fields = suffix.split()
    if len(fields) < 3:
        raise ValueError("short proc stat")
    return int(fields[2])


def resident_kb(status: str) -> int:
    for line in status.splitlines():
        if line.startswith("VmRSS:"):
            fields = line.split()
            if len(fields) != 3 or fields[2] != "kB":
                raise ValueError("malformed VmRSS")
            return int(fields[1])
    return 0


def group_rss_kb(proc_root: Path, selected_group: int) -> int:
    total = 0
    for process in proc_root.iterdir():
        if not process.name.isdigit():
            continue
        try:
            stat = (process / "stat").read_text(encoding="utf-8")
            if process_group(stat) != selected_group:
                continue
            status = (process / "status").read_text(encoding="utf-8")
            total += resident_kb(status)
        except (FileNotFoundError, PermissionError, ProcessLookupError, ValueError):
            # Processes can exit or become inaccessible during one sample.
            continue
    return total


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("process_group", type=int)
    parser.add_argument("--proc-root", type=Path, default=Path("/proc"))
    args = parser.parse_args()
    if args.process_group <= 0:
        parser.error("process_group must be positive")
    if not args.proc_root.is_dir():
        parser.error("proc root is not a directory")
    print(group_rss_kb(args.proc_root, args.process_group))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
