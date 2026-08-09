"""Small write helper shared by generated-artifact producers."""

from __future__ import annotations

from pathlib import Path


def normalize_generated_text(contents: str) -> str:
    """Remove trailing whitespace and emit exactly one final newline."""
    lines = [line.rstrip() for line in contents.splitlines()]
    while lines and not lines[-1]:
        lines.pop()
    return "\n".join(lines) + "\n"


def write_if_changed(path: Path, contents: str | bytes) -> bool:
    """Write ``contents`` only when the destination bytes differ."""
    data = contents.encode() if isinstance(contents, str) else contents
    if path.exists() and path.read_bytes() == data:
        return False
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(data)
    return True
