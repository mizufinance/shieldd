"""Small write helper shared by generated-artifact producers."""

from __future__ import annotations

from pathlib import Path


def write_if_changed(path: Path, contents: str | bytes) -> bool:
    """Write ``contents`` only when the destination bytes differ."""
    data = contents.encode() if isinstance(contents, str) else contents
    if path.exists() and path.read_bytes() == data:
        return False
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(data)
    return True
