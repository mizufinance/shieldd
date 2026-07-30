#!/usr/bin/env python3
"""Run one command and publish a bounded, redacted failure annotation."""

from __future__ import annotations

import argparse
import math
import re
import subprocess
import sys
from collections import Counter
from collections.abc import Sequence


TAIL_BYTES = 128 * 1024
MAX_ANNOTATION_BYTES = 6 * 1024
MAX_TITLE_CHARS = 120

ANSI_ESCAPE = re.compile(
    r"\x1b(?:"
    r"\[[0-?]*[ -/]*[@-~]"
    r"|\][^\x07]*(?:\x07|\x1b\\)"
    r"|[@-_]"
    r")"
)
CONTROL = re.compile(r"[\x00-\x08\x0b\x0c\x0e-\x1f\x7f-\x9f]")
AUTHORIZATION = re.compile(
    r"(?im)\b(proxy-authorization|authorization)\s*:\s*[^\r\n]*"
)
BEARER = re.compile(r"(?i)\bbearer\s+[A-Za-z0-9._~+/=-]+")
URL_USERINFO = re.compile(r"(?i)\b(https?://)[^/\s@]+@")
GITHUB_TOKEN = re.compile(
    r"\b(?:github_pat_[A-Za-z0-9_]{20,}|gh[pousr]_[A-Za-z0-9]{20,})\b"
)
JWT = re.compile(
    r"\b[A-Za-z0-9_-]{8,}\.[A-Za-z0-9_-]{8,}\.[A-Za-z0-9_-]{8,}\b"
)
CREDENTIAL = re.compile(
    r"""(?ix)
    \b(
      password|passwd|pwd|secret|token|api[_-]?key|access[_-]?key|
      client[_-]?secret|private[_-]?key|cookie
    )
    (\s*[:=]\s*)
    (?:
      "[^"\r\n]*" |
      '[^'\r\n]*' |
      [^\s,;]+
    )
    """
)
LONG_TOKEN = re.compile(r"(?<![A-Za-z0-9+/=_-])[A-Za-z0-9+/=_-]{32,}(?![A-Za-z0-9+/=_-])")
DECISIVE = re.compile(
    r"""(?ix)
    error|failed|failure|fatal|panic|exception|traceback|assert|
    timed?\s*out|timeout|out\s+of\s+memory|\boom\b|killed|
    stale|mismatch|not\s+found|no\s+such|denied|dubious|
    exit(?:ed)?(?:\s+with)?(?:\s+code|\s+status)|
    ^\s*(?:command|cwd)\s*:
    """
)


class ByteTail:
    """Retain only the final bounded byte window of a stream."""

    def __init__(self, limit: int = TAIL_BYTES) -> None:
        self.limit = limit
        self.data = bytearray()

    def append(self, chunk: bytes) -> None:
        self.data.extend(chunk)
        overflow = len(self.data) - self.limit
        if overflow > 0:
            del self.data[:overflow]

    def decode(self) -> str:
        return bytes(self.data).decode("utf-8", errors="replace")


def _entropy(value: str) -> float:
    counts = Counter(value)
    size = len(value)
    return -sum((count / size) * math.log2(count / size) for count in counts.values())


def _looks_secret(value: str) -> bool:
    classes = sum(
        (
            any(char.islower() for char in value),
            any(char.isupper() for char in value),
            any(char.isdigit() for char in value),
            any(char in "+/=" for char in value),
        )
    )
    return classes >= 2 and _entropy(value) >= 3.5


def redact(text: str) -> str:
    """Remove terminal controls and likely credentials from diagnostic text."""

    text = ANSI_ESCAPE.sub("", text)
    text = CONTROL.sub("", text)
    text = AUTHORIZATION.sub(
        lambda match: f"{match.group(1)}: [REDACTED]", text
    )
    text = BEARER.sub("Bearer [REDACTED]", text)
    text = URL_USERINFO.sub(lambda match: f"{match.group(1)}[REDACTED]@", text)
    text = GITHUB_TOKEN.sub("[REDACTED]", text)
    text = JWT.sub("[REDACTED]", text)
    text = CREDENTIAL.sub(
        lambda match: f"{match.group(1)}{match.group(2)}[REDACTED]", text
    )
    return LONG_TOKEN.sub(
        lambda match: "[REDACTED]"
        if _looks_secret(match.group(0))
        else match.group(0),
        text,
    )


def select_diagnostic(output: str, status: int) -> str:
    """Select decisive failures plus enough trailing context to be actionable."""

    sanitized = redact(output)
    lines = [line.rstrip() for line in sanitized.splitlines() if line.strip()]
    if not lines:
        return f"command failed with exit status {status}; it produced no output"

    decisive_indices = [
        index for index, line in enumerate(lines) if DECISIVE.search(line)
    ][-40:]
    trailing_indices = list(range(max(0, len(lines) - 12), len(lines)))
    selected = [lines[index] for index in sorted(set(decisive_indices + trailing_indices))]
    return "\n".join(
        [f"command failed with exit status {status}", *selected]
    )


def escape_workflow_command(value: str) -> str:
    """Escape both workflow-command data and property delimiters."""

    return (
        value.replace("%", "%25")
        .replace("\r", "%0D")
        .replace("\n", "%0A")
        .replace(":", "%3A")
        .replace(",", "%2C")
    )


def _fit_escaped_tail(value: str, budget: int) -> str:
    escaped = escape_workflow_command(value)
    if len(escaped.encode("utf-8")) <= budget:
        return escaped

    marker = "[earlier diagnostic output truncated]\n"
    low = 0
    high = len(value)
    best = escape_workflow_command(marker)
    while low <= high:
        middle = (low + high) // 2
        candidate = marker + value[-middle:] if middle else marker
        encoded = escape_workflow_command(candidate)
        if len(encoded.encode("utf-8")) <= budget:
            best = encoded
            low = middle + 1
        else:
            high = middle - 1
    return best


def annotation(title: str, diagnostic: str) -> str:
    safe_title = redact(title).replace("\r", " ").replace("\n", " ")
    escaped_title = escape_workflow_command(safe_title[:MAX_TITLE_CHARS])
    prefix = f"::error title={escaped_title}::"
    budget = MAX_ANNOTATION_BYTES - len(prefix.encode("utf-8")) - 1
    escaped_diagnostic = _fit_escaped_tail(diagnostic, max(0, budget))
    return f"{prefix}{escaped_diagnostic}"


def normalized_status(returncode: int) -> int:
    return 128 + (-returncode) if returncode < 0 else returncode


def run(command: Sequence[str], title: str) -> int:
    tail = ByteTail()
    try:
        process = subprocess.Popen(
            command,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            bufsize=0,
        )
    except OSError as error:
        detail = error.strerror or "operating-system launch error"
        status = 127
        diagnostic = select_diagnostic(
            f"command launch failed: {type(error).__name__}: {detail}",
            status,
        )
        print(annotation(title, diagnostic), flush=True)
        return status

    assert process.stdout is not None
    while True:
        chunk = process.stdout.read(8192)
        if not chunk:
            break
        tail.append(chunk)
        sys.stdout.buffer.write(chunk)
        sys.stdout.buffer.flush()

    status = normalized_status(process.wait())
    if status != 0:
        print(annotation(title, select_diagnostic(tail.decode(), status)), flush=True)
    return status


def parse_args(argv: Sequence[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Run a command and annotate a sanitized bounded failure tail."
    )
    parser.add_argument("--title", required=True, help="Static CI annotation title")
    parser.add_argument("command", nargs=argparse.REMAINDER)
    args = parser.parse_args(argv)
    if args.command[:1] == ["--"]:
        args.command = args.command[1:]
    if not args.command:
        parser.error("a command is required after --")
    return args


def main(argv: Sequence[str] | None = None) -> int:
    args = parse_args(sys.argv[1:] if argv is None else argv)
    return run(args.command, args.title)


if __name__ == "__main__":
    raise SystemExit(main())
